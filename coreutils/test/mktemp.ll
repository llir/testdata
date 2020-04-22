; ModuleID = 'coreutils-8.32/src/mktemp.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.randint_source = type { %struct.randread_source*, i64, i64 }
%struct.randread_source = type { %struct._IO_FILE*, void (i8*)*, i8*, %union.anon.35 }
%union.anon.35 = type { %struct.isaac }
%struct.isaac = type { i64, %struct.isaac_state, %union.anon.0 }
%struct.isaac_state = type { [256 x i64], i64, i64, i64 }
%union.anon.0 = type { [256 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Usage: %s [OPTION]... [TEMPLATE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [211 x i8] c"Create a temporary file or directory, safely, and print its name.\0ATEMPLATE must contain at least 3 consecutive 'X's in last component.\0AIf TEMPLATE is not specified, use tmp.XXXXXXXXXX, and --tmpdir is implied.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"Files are created u+rw, and directories u+rwx, minus umask restrictions.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [204 x i8] c"  -d, --directory     create a directory, not a file\0A  -u, --dry-run       do not create anything; merely print a name (unsafe)\0A  -q, --quiet         suppress diagnostics about file/dir-creation failure\0A\00", align 1
@.str.6 = private unnamed_addr constant [156 x i8] c"      --suffix=SUFF   append SUFF to TEMPLATE; SUFF must not contain a slash.\0A                        This option is implied if TEMPLATE does not end in X\0A\00", align 1
@.str.7 = private unnamed_addr constant [363 x i8] c"  -p DIR, --tmpdir[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not\0A                        specified, use $TMPDIR if set, else /tmp.  With\0A                        this option, TEMPLATE must not be an absolute name;\0A                        unlike with -t, TEMPLATE may contain slashes, but\0A                        mktemp creates only the final component\0A\00", align 1
@.str.8 = private unnamed_addr constant [225 x i8] c"  -t                  interpret TEMPLATE as a single file name component,\0A                        relative to a directory: $TMPDIR, if set; else the\0A                        directory specified via -p; else /tmp [deprecated]\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"dp:qtuV\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Eric Blake\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"too many templates\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"tmp.XXXXXXXXXX\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"with --suffix, template %s must end in X\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"invalid suffix %s, contains directory separator\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"too few X's in template %s\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"invalid template, %s, contains directory separator\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"invalid template, %s; with --tmpdir, it may not be absolute\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"failed to create directory via template %s\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"failed to create file via template %s\00", align 1
@stdout_closed = internal unnamed_addr global i1 false, align 1, !dbg !167
@.str.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"dry-run\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), align 8, !dbg !168
@.str.53 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !173
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !216
@.str.58 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.59 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !218
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !224
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16, !dbg !265
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !367
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !373
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !375
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.92 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !382
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !389
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !377
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !391
@.str.2.97 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16, !dbg !397
@.str.100 = private unnamed_addr constant [35 x i8] c"! \22invalid KIND in __gen_tempname\22\00", align 1
@.str.1.101 = private unnamed_addr constant [15 x i8] c"lib/tempname.c\00", align 1
@__PRETTY_FUNCTION__.gen_tempname_len = private unnamed_addr constant [52 x i8] c"int gen_tempname_len(char *, int, int, int, size_t)\00", align 1
@switch.table.gen_tempname = private unnamed_addr constant [3 x i32 (i8*, i8*)*] [i32 (i8*, i8*)* @try_file, i32 (i8*, i8*)* @try_dir, i32 (i8*, i8*)* @try_nocreate], align 8
@.str.102 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.103 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.104 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.105 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.106 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.107 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.108 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.109 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.110 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.111 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.112 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.113 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.114 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.115 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.116 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.117 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.125 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.126 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !426
@.str.1.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.153 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.157 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.167 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1.168 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@.str.2.169 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !434

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1330 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1335, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %0, metadata !1334, metadata !DIExpression()), !dbg !1356
  %3 = icmp eq i32 %0, 0, !dbg !1357
  br i1 %3, label %9, label %4, !dbg !1358

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1359, !tbaa !1361
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #21, !dbg !1359
  %7 = load i8*, i8** @program_name, align 8, !dbg !1359, !tbaa !1361
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #21, !dbg !1359
  br label %75, !dbg !1359

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 5) #21, !dbg !1365
  %11 = load i8*, i8** @program_name, align 8, !dbg !1365, !tbaa !1361
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #21, !dbg !1365
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.2, i64 0, i64 0), i32 5) #21, !dbg !1366
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1366, !tbaa !1361
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1366
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 5) #21, !dbg !1367
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1367, !tbaa !1361
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1367
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1368, !tbaa !1361
  %20 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %19), !dbg !1368
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.5, i64 0, i64 0), i32 5) #21, !dbg !1369
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1369, !tbaa !1361
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !1369
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.6, i64 0, i64 0), i32 5) #21, !dbg !1370
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1370, !tbaa !1361
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !1370
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.7, i64 0, i64 0), i32 5) #21, !dbg !1371
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1371, !tbaa !1361
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !1371
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.8, i64 0, i64 0), i32 5) #21, !dbg !1372
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1372, !tbaa !1361
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !1372
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #21, !dbg !1373
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1373, !tbaa !1361
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !1373
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #21, !dbg !1374
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1374, !tbaa !1361
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !1374
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), metadata !1339, metadata !DIExpression()) #21, !dbg !1375
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1376
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #21, !dbg !1376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %39, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #21, !dbg !1352
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), metadata !1340, metadata !DIExpression()) #21, !dbg !1375
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1341, metadata !DIExpression()) #21, !dbg !1375
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1377
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1341, metadata !DIExpression()) #21, !dbg !1375
  br label %41, !dbg !1378

41:                                               ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !1341, metadata !DIExpression()) #21, !dbg !1375
  %44 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* nonnull %42) #23, !dbg !1379
  %45 = icmp eq i32 %44, 0, !dbg !1379
  br i1 %45, label %51, label %46, !dbg !1378

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !1380
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1341, metadata !DIExpression()) #21, !dbg !1375
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !1381
  %49 = load i8*, i8** %48, align 8, !dbg !1381, !tbaa !1382
  %50 = icmp eq i8* %49, null, !dbg !1384
  br i1 %50, label %51, label %41, !dbg !1385, !llvm.loop !1386

51:                                               ; preds = %46, %41
  %52 = phi %struct.infomap* [ %47, %46 ], [ %43, %41 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !1341, metadata !DIExpression()) #21, !dbg !1375
  call void @llvm.dbg.value(metadata %struct.infomap* %52, metadata !1341, metadata !DIExpression()) #21, !dbg !1375
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !1387
  %54 = load i8*, i8** %53, align 8, !dbg !1387, !tbaa !1389
  %55 = icmp eq i8* %54, null, !dbg !1390
  %56 = select i1 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %54, !dbg !1391
  call void @llvm.dbg.value(metadata i8* %56, metadata !1340, metadata !DIExpression()) #21, !dbg !1375
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #21, !dbg !1392
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0)) #21, !dbg !1392
  %59 = tail call i8* @setlocale(i32 5, i8* null) #21, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %59, metadata !1348, metadata !DIExpression()) #21, !dbg !1375
  %60 = icmp eq i8* %59, null, !dbg !1394
  br i1 %60, label %68, label %61, !dbg !1396

61:                                               ; preds = %51
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #23, !dbg !1397
  %63 = icmp eq i32 %62, 0, !dbg !1397
  br i1 %63, label %68, label %64, !dbg !1398

64:                                               ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i32 5) #21, !dbg !1399
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1399, !tbaa !1361
  %67 = tail call i32 @fputs_unlocked(i8* %65, %struct._IO_FILE* %66) #21, !dbg !1399
  br label %68, !dbg !1401

68:                                               ; preds = %51, %61, %64
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i32 5) #21, !dbg !1402
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #21, !dbg !1402
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #21, !dbg !1403
  %72 = icmp eq i8* %56, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), !dbg !1403
  %73 = select i1 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), !dbg !1403
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* %56, i8* %73) #21, !dbg !1403
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #21, !dbg !1404
  br label %75

75:                                               ; preds = %68, %4
  tail call void @exit(i32 %0) #24, !dbg !1405
  unreachable, !dbg !1405
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !6 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !15 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !80 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1410, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8** %1, metadata !1411, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* null, metadata !1413, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 0, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* null, metadata !1418, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 0, metadata !1419, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 0, metadata !1420, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 0, metadata !1421, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 0, metadata !1422, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i32 0, metadata !1423, metadata !DIExpression()), !dbg !1449
  %3 = load i8*, i8** %1, align 8, !dbg !1450, !tbaa !1361
  tail call void @set_program_name(i8* %3) #21, !dbg !1451
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #21, !dbg !1452
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #21, !dbg !1453
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #21, !dbg !1454
  %7 = tail call i32 @atexit(void ()* nonnull @maybe_close_stdout) #21, !dbg !1455
  br label %8, !dbg !1456

8:                                                ; preds = %36, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %36 ]
  %10 = phi i8 [ 0, %2 ], [ %16, %36 ]
  %11 = phi i8 [ 0, %2 ], [ %23, %36 ]
  %12 = phi i8* [ null, %2 ], [ %34, %36 ]
  %13 = phi i8 [ 0, %2 ], [ %37, %36 ]
  %14 = phi i8* [ null, %2 ], [ %32, %36 ]
  br label %15, !dbg !1456

15:                                               ; preds = %36, %8
  %16 = phi i8 [ %10, %8 ], [ 1, %36 ]
  %17 = phi i8 [ %11, %8 ], [ %23, %36 ]
  %18 = phi i8 [ %9, %8 ], [ %29, %36 ]
  %19 = phi i8* [ %12, %8 ], [ %34, %36 ]
  %20 = phi i8 [ %13, %8 ], [ %37, %36 ]
  %21 = phi i8* [ %14, %8 ], [ %32, %36 ]
  br label %22, !dbg !1456

22:                                               ; preds = %36, %15
  %23 = phi i8 [ %17, %15 ], [ 1, %36 ]
  %24 = phi i8 [ %18, %15 ], [ %29, %36 ]
  %25 = phi i8* [ %19, %15 ], [ %34, %36 ]
  %26 = phi i8 [ %20, %15 ], [ %37, %36 ]
  %27 = phi i8* [ %21, %15 ], [ %32, %36 ]
  br label %28, !dbg !1456

28:                                               ; preds = %22, %39
  %29 = phi i8 [ %24, %22 ], [ 1, %39 ]
  %30 = phi i8* [ %25, %22 ], [ %34, %39 ]
  %31 = phi i8 [ %26, %22 ], [ %37, %39 ]
  %32 = phi i8* [ %27, %22 ], [ %40, %39 ]
  br label %33, !dbg !1456

33:                                               ; preds = %28, %41
  %34 = phi i8* [ %30, %28 ], [ %42, %41 ]
  %35 = phi i8 [ %31, %28 ], [ %37, %41 ]
  br label %36, !dbg !1456

36:                                               ; preds = %36, %33
  %37 = phi i8 [ %35, %33 ], [ 1, %36 ], !dbg !1457
  call void @llvm.dbg.value(metadata i8* %32, metadata !1413, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %34, metadata !1418, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %29, metadata !1419, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %23, metadata !1422, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %16, metadata !1421, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %9, metadata !1420, metadata !DIExpression()), !dbg !1449
  %38 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #21, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %38, metadata !1415, metadata !DIExpression()), !dbg !1449
  switch i32 %38, label %47 [
    i32 -1, label %48
    i32 100, label %15
    i32 112, label %39
    i32 113, label %36
    i32 116, label %8
    i32 117, label %22
    i32 128, label %41
    i32 -130, label %43
    i32 86, label %44
    i32 -131, label %44
  ], !dbg !1456, !llvm.loop !1459

39:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  %40 = load i8*, i8** @optarg, align 8, !dbg !1461, !tbaa !1361
  call void @llvm.dbg.value(metadata i8* %40, metadata !1413, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 1, metadata !1419, metadata !DIExpression()), !dbg !1449
  br label %28, !dbg !1464, !llvm.loop !1459

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  %42 = load i8*, i8** @optarg, align 8, !dbg !1465, !tbaa !1361
  call void @llvm.dbg.value(metadata i8* %42, metadata !1418, metadata !DIExpression()), !dbg !1449
  br label %33, !dbg !1466, !llvm.loop !1459

43:                                               ; preds = %36
  tail call void @usage(i32 0) #25, !dbg !1467
  unreachable, !dbg !1467

44:                                               ; preds = %36, %36
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1468, !tbaa !1361
  %46 = load i8*, i8** @Version, align 8, !dbg !1468, !tbaa !1361
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* null) #21, !dbg !1468
  tail call void @exit(i32 0) #24, !dbg !1468
  unreachable, !dbg !1468

47:                                               ; preds = %36
  tail call void @usage(i32 1) #25, !dbg !1469
  unreachable, !dbg !1469

48:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %9, metadata !1420, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %16, metadata !1421, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %23, metadata !1422, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %29, metadata !1419, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %34, metadata !1418, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %32, metadata !1413, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %9, metadata !1420, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %16, metadata !1421, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %23, metadata !1422, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %29, metadata !1419, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %34, metadata !1418, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %32, metadata !1413, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %9, metadata !1420, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %16, metadata !1421, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %23, metadata !1422, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %29, metadata !1419, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %34, metadata !1418, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %32, metadata !1413, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %9, metadata !1420, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %16, metadata !1421, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %23, metadata !1422, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %29, metadata !1419, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %34, metadata !1418, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %37, metadata !1414, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %32, metadata !1413, metadata !DIExpression()), !dbg !1449
  %49 = load i32, i32* @optind, align 4, !dbg !1470, !tbaa !1471
  %50 = sub nsw i32 %0, %49, !dbg !1473
  call void @llvm.dbg.value(metadata i32 %50, metadata !1416, metadata !DIExpression()), !dbg !1449
  %51 = icmp ugt i32 %50, 1, !dbg !1474
  br i1 %51, label %52, label %54, !dbg !1476

52:                                               ; preds = %48
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 5) #21, !dbg !1477
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %53) #21, !dbg !1479
  tail call void @usage(i32 1) #25, !dbg !1480
  unreachable, !dbg !1480

54:                                               ; preds = %48
  %55 = icmp eq i32 %50, 0, !dbg !1481
  br i1 %55, label %60, label %56, !dbg !1483

56:                                               ; preds = %54
  %57 = sext i32 %49 to i64, !dbg !1484
  %58 = getelementptr inbounds i8*, i8** %1, i64 %57, !dbg !1484
  %59 = load i8*, i8** %58, align 8, !dbg !1484, !tbaa !1361
  call void @llvm.dbg.value(metadata i8* %59, metadata !1417, metadata !DIExpression()), !dbg !1449
  br label %60

60:                                               ; preds = %54, %56
  %61 = phi i8 [ %29, %56 ], [ 1, %54 ], !dbg !1449
  %62 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), %54 ], !dbg !1486
  call void @llvm.dbg.value(metadata i8* %62, metadata !1417, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %61, metadata !1419, metadata !DIExpression()), !dbg !1449
  %63 = icmp eq i8* %34, null, !dbg !1487
  br i1 %63, label %81, label %64, !dbg !1488

64:                                               ; preds = %60
  %65 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %62) #23, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %65, metadata !1427, metadata !DIExpression()), !dbg !1490
  %66 = icmp eq i64 %65, 0, !dbg !1491
  br i1 %66, label %72, label %67, !dbg !1493

67:                                               ; preds = %64
  %68 = add i64 %65, -1, !dbg !1494
  %69 = getelementptr inbounds i8, i8* %62, i64 %68, !dbg !1495
  %70 = load i8, i8* %69, align 1, !dbg !1495, !tbaa !1496
  %71 = icmp eq i8 %70, 88, !dbg !1497
  br i1 %71, label %75, label %72, !dbg !1498

72:                                               ; preds = %67, %64
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 5) #21, !dbg !1499
  %74 = tail call i8* @quote(i8* %62) #21, !dbg !1499
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %73, i8* %74) #21, !dbg !1499
  unreachable, !dbg !1499

75:                                               ; preds = %67
  %76 = tail call i64 @strlen(i8* nonnull %34) #23, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %76, metadata !1425, metadata !DIExpression()), !dbg !1449
  %77 = add i64 %76, 1, !dbg !1502
  %78 = add i64 %77, %65, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %78, metadata !1504, metadata !DIExpression()) #21, !dbg !1509
  %79 = tail call noalias i8* @xmalloc(i64 %78) #21, !dbg !1511
  call void @llvm.dbg.value(metadata i8* %79, metadata !1426, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %79, metadata !1512, metadata !DIExpression()) #21, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %62, metadata !1520, metadata !DIExpression()) #21, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %65, metadata !1521, metadata !DIExpression()) #21, !dbg !1522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %79, i8* nonnull align 1 %62, i64 %65, i1 false) #21, !dbg !1524
  %80 = getelementptr inbounds i8, i8* %79, i64 %65, !dbg !1525
  call void @llvm.dbg.value(metadata i8* %80, metadata !1512, metadata !DIExpression()) #21, !dbg !1526
  call void @llvm.dbg.value(metadata i8* %34, metadata !1520, metadata !DIExpression()) #21, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %77, metadata !1521, metadata !DIExpression()) #21, !dbg !1526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %80, i8* nonnull align 1 %34, i64 %77, i1 false) #21, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %79, metadata !1417, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %80, metadata !1418, metadata !DIExpression()), !dbg !1449
  br label %93, !dbg !1529

81:                                               ; preds = %60
  %82 = tail call noalias i8* @xstrdup(i8* %62) #21, !dbg !1530
  call void @llvm.dbg.value(metadata i8* %82, metadata !1417, metadata !DIExpression()), !dbg !1449
  %83 = tail call i8* @strrchr(i8* nonnull dereferenceable(1) %82, i32 88) #23, !dbg !1532
  call void @llvm.dbg.value(metadata i8* %83, metadata !1418, metadata !DIExpression()), !dbg !1449
  %84 = icmp eq i8* %83, null, !dbg !1533
  br i1 %84, label %85, label %88, !dbg !1535

85:                                               ; preds = %81
  %86 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %82), !dbg !1536
  %87 = getelementptr i8, i8* %82, i64 %86, !dbg !1536
  call void @llvm.dbg.value(metadata i8* %87, metadata !1418, metadata !DIExpression()), !dbg !1449
  br label %90, !dbg !1537

88:                                               ; preds = %81
  %89 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1538
  call void @llvm.dbg.value(metadata i8* %89, metadata !1418, metadata !DIExpression()), !dbg !1449
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i8* [ %89, %88 ], [ %87, %85 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8* %91, metadata !1418, metadata !DIExpression()), !dbg !1449
  %92 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %91) #23, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %92, metadata !1425, metadata !DIExpression()), !dbg !1449
  br label %93

93:                                               ; preds = %90, %75
  %94 = phi i64 [ %76, %75 ], [ %92, %90 ], !dbg !1541
  %95 = phi i8* [ %80, %75 ], [ %91, %90 ], !dbg !1541
  %96 = phi i8* [ %79, %75 ], [ %82, %90 ], !dbg !1541
  call void @llvm.dbg.value(metadata i8* %96, metadata !1417, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8* %95, metadata !1418, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %94, metadata !1425, metadata !DIExpression()), !dbg !1449
  %97 = icmp eq i64 %94, 0, !dbg !1542
  br i1 %97, label %104, label %98, !dbg !1544

98:                                               ; preds = %93
  %99 = tail call i8* @last_component(i8* %95) #23, !dbg !1545
  %100 = icmp eq i8* %99, %95, !dbg !1546
  br i1 %100, label %104, label %101, !dbg !1547

101:                                              ; preds = %98
  %102 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0), i32 5) #21, !dbg !1548
  %103 = tail call i8* @quote(i8* %95) #21, !dbg !1548
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %102, i8* %103) #21, !dbg !1548
  unreachable, !dbg !1548

104:                                              ; preds = %98, %93
  %105 = ptrtoint i8* %95 to i64, !dbg !1550
  %106 = ptrtoint i8* %96 to i64, !dbg !1550
  %107 = sub i64 %105, %106, !dbg !1550
  call void @llvm.dbg.value(metadata i8* %96, metadata !1551, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %107, metadata !1556, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 0, metadata !1557, metadata !DIExpression()), !dbg !1558
  %108 = icmp eq i64 %107, 0, !dbg !1560
  br i1 %108, label %122, label %109, !dbg !1563

109:                                              ; preds = %104, %116
  %110 = phi i64 [ %117, %116 ], [ 0, %104 ]
  %111 = phi i64 [ %112, %116 ], [ %107, %104 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %111, metadata !1556, metadata !DIExpression()), !dbg !1558
  %112 = add i64 %111, -1, !dbg !1564
  %113 = getelementptr inbounds i8, i8* %96, i64 %112, !dbg !1565
  %114 = load i8, i8* %113, align 1, !dbg !1565, !tbaa !1496
  %115 = icmp eq i8 %114, 88, !dbg !1566
  br i1 %115, label %116, label %119, !dbg !1567

116:                                              ; preds = %109
  %117 = add nuw i64 %110, 1, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %117, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %112, metadata !1556, metadata !DIExpression()), !dbg !1558
  %118 = icmp eq i64 %112, 0, !dbg !1560
  br i1 %118, label %119, label %109, !dbg !1563, !llvm.loop !1569

119:                                              ; preds = %109, %116
  %120 = phi i64 [ %107, %116 ], [ %110, %109 ], !dbg !1558
  call void @llvm.dbg.value(metadata i64 %120, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %120, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %120, metadata !1424, metadata !DIExpression()), !dbg !1449
  %121 = icmp ult i64 %120, 3, !dbg !1571
  br i1 %121, label %122, label %125, !dbg !1573

122:                                              ; preds = %104, %119
  %123 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 5) #21, !dbg !1574
  %124 = tail call i8* @quote(i8* %96) #21, !dbg !1574
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %123, i8* %124) #21, !dbg !1574
  unreachable, !dbg !1574

125:                                              ; preds = %119
  %126 = and i8 %61, 1, !dbg !1575
  %127 = icmp eq i8 %126, 0, !dbg !1575
  br i1 %127, label %171, label %128, !dbg !1576

128:                                              ; preds = %125
  %129 = icmp eq i8 %9, 0, !dbg !1577
  br i1 %129, label %149, label %130, !dbg !1578

130:                                              ; preds = %128
  %131 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #21, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %131, metadata !1430, metadata !DIExpression()), !dbg !1580
  %132 = icmp eq i8* %131, null, !dbg !1581
  br i1 %132, label %136, label %133, !dbg !1583

133:                                              ; preds = %130
  %134 = load i8, i8* %131, align 1, !dbg !1584, !tbaa !1496
  %135 = icmp eq i8 %134, 0, !dbg !1584
  br i1 %135, label %136, label %142, !dbg !1585

136:                                              ; preds = %133, %130
  %137 = icmp eq i8* %32, null, !dbg !1586
  br i1 %137, label %141, label %138, !dbg !1588

138:                                              ; preds = %136
  %139 = load i8, i8* %32, align 1, !dbg !1589, !tbaa !1496
  %140 = icmp eq i8 %139, 0, !dbg !1589
  br i1 %140, label %141, label %142, !dbg !1590

141:                                              ; preds = %138, %136
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), metadata !1412, metadata !DIExpression()), !dbg !1449
  br label %142

142:                                              ; preds = %138, %133, %141
  %143 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %141 ], [ %131, %133 ], [ %32, %138 ], !dbg !1591
  call void @llvm.dbg.value(metadata i8* %143, metadata !1412, metadata !DIExpression()), !dbg !1449
  %144 = tail call i8* @last_component(i8* nonnull %96) #23, !dbg !1592
  %145 = icmp eq i8* %144, %96, !dbg !1594
  br i1 %145, label %168, label %146, !dbg !1595

146:                                              ; preds = %142
  %147 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #21, !dbg !1596
  %148 = tail call i8* @quote(i8* nonnull %96) #21, !dbg !1596
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %147, i8* %148) #21, !dbg !1596
  unreachable, !dbg !1596

149:                                              ; preds = %128
  %150 = icmp eq i8* %32, null, !dbg !1597
  br i1 %150, label %154, label %151, !dbg !1598

151:                                              ; preds = %149
  %152 = load i8, i8* %32, align 1, !dbg !1599, !tbaa !1496
  %153 = icmp eq i8 %152, 0, !dbg !1599
  br i1 %153, label %154, label %161, !dbg !1600

154:                                              ; preds = %151, %149
  %155 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #21, !dbg !1601
  call void @llvm.dbg.value(metadata i8* %155, metadata !1435, metadata !DIExpression()), !dbg !1602
  %156 = icmp eq i8* %155, null, !dbg !1603
  br i1 %156, label %161, label %157, !dbg !1604

157:                                              ; preds = %154
  %158 = load i8, i8* %155, align 1, !dbg !1605, !tbaa !1496
  %159 = icmp eq i8 %158, 0, !dbg !1605
  %160 = select i1 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %155, !dbg !1603
  br label %161, !dbg !1603

161:                                              ; preds = %157, %154, %151
  %162 = phi i8* [ %32, %151 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %154 ], [ %160, %157 ], !dbg !1606
  call void @llvm.dbg.value(metadata i8* %162, metadata !1412, metadata !DIExpression()), !dbg !1449
  %163 = load i8, i8* %96, align 1, !dbg !1607, !tbaa !1496
  %164 = icmp eq i8 %163, 47, !dbg !1607
  br i1 %164, label %165, label %168, !dbg !1609

165:                                              ; preds = %161
  %166 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0), i32 5) #21, !dbg !1610
  %167 = tail call i8* @quote(i8* nonnull %96) #21, !dbg !1610
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %166, i8* %167) #21, !dbg !1610
  unreachable, !dbg !1610

168:                                              ; preds = %142, %161
  %169 = phi i8* [ %162, %161 ], [ %143, %142 ], !dbg !1611
  call void @llvm.dbg.value(metadata i8* %169, metadata !1412, metadata !DIExpression()), !dbg !1449
  %170 = tail call i8* @file_name_concat(i8* %169, i8* nonnull %96, i8** null) #21, !dbg !1612
  call void @llvm.dbg.value(metadata i8* %170, metadata !1426, metadata !DIExpression()), !dbg !1449
  tail call void @free(i8* nonnull %96) #21, !dbg !1613
  call void @llvm.dbg.value(metadata i8* %170, metadata !1417, metadata !DIExpression()), !dbg !1449
  br label %171, !dbg !1614

171:                                              ; preds = %125, %168
  %172 = phi i8* [ %170, %168 ], [ %96, %125 ], !dbg !1449
  call void @llvm.dbg.value(metadata i8* %172, metadata !1417, metadata !DIExpression()), !dbg !1449
  %173 = tail call noalias i8* @xstrdup(i8* %172) #21, !dbg !1615
  call void @llvm.dbg.value(metadata i8* %173, metadata !1426, metadata !DIExpression()), !dbg !1449
  %174 = icmp eq i8 %16, 0, !dbg !1616
  %175 = icmp ne i8 %23, 0, !dbg !1617
  %176 = trunc i64 %94 to i32, !dbg !1617
  br i1 %174, label %188, label %177, !dbg !1618

177:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i8* %173, metadata !1619, metadata !DIExpression()) #21, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %94, metadata !1624, metadata !DIExpression()) #21, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %120, metadata !1625, metadata !DIExpression()) #21, !dbg !1627
  call void @llvm.dbg.value(metadata i1 %175, metadata !1626, metadata !DIExpression()) #21, !dbg !1627
  %178 = select i1 %175, i32 2, i32 1, !dbg !1629
  %179 = tail call i32 @gen_tempname_len(i8* %173, i32 %176, i32 0, i32 %178, i64 %120) #21, !dbg !1630
  call void @llvm.dbg.value(metadata i32 %179, metadata !1439, metadata !DIExpression()), !dbg !1631
  %180 = icmp eq i32 %179, 0, !dbg !1632
  br i1 %180, label %208, label %181, !dbg !1634

181:                                              ; preds = %177
  %182 = icmp eq i8 %37, 0, !dbg !1635
  br i1 %182, label %183, label %222, !dbg !1638

183:                                              ; preds = %181
  %184 = tail call i32* @__errno_location() #26, !dbg !1639
  %185 = load i32, i32* %184, align 4, !dbg !1639, !tbaa !1471
  %186 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 5) #21, !dbg !1640
  %187 = tail call i8* @quote(i8* %172) #21, !dbg !1641
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %185, i8* %186, i8* %187) #21, !dbg !1642
  br label %222, !dbg !1642

188:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i8* %173, metadata !1643, metadata !DIExpression()) #21, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %94, metadata !1646, metadata !DIExpression()) #21, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %120, metadata !1647, metadata !DIExpression()) #21, !dbg !1649
  call void @llvm.dbg.value(metadata i1 %175, metadata !1648, metadata !DIExpression()) #21, !dbg !1649
  %189 = shl nuw nsw i8 %23, 1, !dbg !1651
  %190 = zext i8 %189 to i32, !dbg !1651
  %191 = tail call i32 @gen_tempname_len(i8* %173, i32 %176, i32 0, i32 %190, i64 %120) #21, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %191, metadata !1442, metadata !DIExpression()), !dbg !1653
  %192 = icmp slt i32 %191, 0, !dbg !1654
  br i1 %192, label %201, label %193, !dbg !1656

193:                                              ; preds = %188
  br i1 %175, label %194, label %196, !dbg !1657

194:                                              ; preds = %193
  call void @llvm.dbg.value(metadata i32 0, metadata !1423, metadata !DIExpression()), !dbg !1449
  %195 = tail call i32 @puts(i8* nonnull dereferenceable(1) %173), !dbg !1658
  br label %222, !dbg !1659

196:                                              ; preds = %193
  %197 = tail call i32 @close(i32 %191) #21, !dbg !1660
  %198 = icmp eq i32 %197, 0, !dbg !1661
  br i1 %198, label %199, label %201, !dbg !1662

199:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i32 0, metadata !1423, metadata !DIExpression()), !dbg !1449
  %200 = tail call i32 @puts(i8* nonnull dereferenceable(1) %173), !dbg !1658
  br label %211, !dbg !1659

201:                                              ; preds = %196, %188
  %202 = icmp eq i8 %37, 0, !dbg !1663
  br i1 %202, label %203, label %222, !dbg !1666

203:                                              ; preds = %201
  %204 = tail call i32* @__errno_location() #26, !dbg !1667
  %205 = load i32, i32* %204, align 4, !dbg !1667, !tbaa !1471
  %206 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i32 5) #21, !dbg !1668
  %207 = tail call i8* @quote(i8* %172) #21, !dbg !1669
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %205, i8* %206, i8* %207) #21, !dbg !1670
  br label %222, !dbg !1670

208:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i32 0, metadata !1423, metadata !DIExpression()), !dbg !1449
  %209 = tail call i32 @puts(i8* nonnull dereferenceable(1) %173), !dbg !1658
  %210 = icmp eq i8 %23, 0, !dbg !1671
  br i1 %210, label %211, label %222, !dbg !1659

211:                                              ; preds = %199, %208
  store i1 true, i1* @stdout_closed, align 1, !dbg !1672
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1673, !tbaa !1361
  %213 = tail call i32 @close_stream(%struct._IO_FILE* %212) #21, !dbg !1674
  %214 = icmp eq i32 %213, 0, !dbg !1675
  br i1 %214, label %222, label %215, !dbg !1676

215:                                              ; preds = %211
  %216 = tail call i32* @__errno_location() #26, !dbg !1677
  %217 = load i32, i32* %216, align 4, !dbg !1677, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %217, metadata !1444, metadata !DIExpression()), !dbg !1678
  %218 = tail call i32 @remove(i8* %173) #21, !dbg !1679
  %219 = icmp eq i8 %37, 0, !dbg !1680
  br i1 %219, label %220, label %222, !dbg !1682

220:                                              ; preds = %215
  %221 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 5) #21, !dbg !1683
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %217, i8* %221) #21, !dbg !1684
  br label %222, !dbg !1684

222:                                              ; preds = %203, %201, %183, %181, %194, %220, %215, %211, %208
  %223 = phi i32 [ 0, %208 ], [ 0, %211 ], [ 1, %215 ], [ 1, %220 ], [ 0, %194 ], [ 1, %181 ], [ 1, %183 ], [ 1, %201 ], [ 1, %203 ], !dbg !1449
  call void @llvm.dbg.value(metadata i32 %223, metadata !1423, metadata !DIExpression()), !dbg !1449
  ret i32 %223, !dbg !1685
}

; Function Attrs: nounwind
declare !dbg !84 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !87 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @maybe_close_stdout() #8 !dbg !1686 {
  %1 = load i1, i1* @stdout_closed, align 1, !dbg !1687
  br i1 %1, label %3, label %2, !dbg !1689

2:                                                ; preds = %0
  tail call void @close_stdout() #21, !dbg !1690
  br label %8, !dbg !1690

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1691, !tbaa !1361
  %5 = tail call i32 @close_stream(%struct._IO_FILE* %4) #21, !dbg !1693
  %6 = icmp eq i32 %5, 0, !dbg !1694
  br i1 %6, label %8, label %7, !dbg !1695

7:                                                ; preds = %3
  tail call void @_exit(i32 1) #24, !dbg !1696
  unreachable, !dbg !1696

8:                                                ; preds = %3, %2
  ret void, !dbg !1697
}

; Function Attrs: nounwind
declare !dbg !90 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !97 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !116 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare !dbg !128 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !134 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !141 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

declare !dbg !137 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !148 i32 @remove(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !1698 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1705, metadata !DIExpression()), !dbg !1710
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #21, !dbg !1711
  call void @llvm.dbg.value(metadata i1 undef, metadata !1706, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1712, metadata !DIExpression()), !dbg !1716
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1718
  %4 = load i32, i32* %3, align 8, !dbg !1718, !tbaa !1719
  %5 = and i32 %4, 32, !dbg !1718
  %6 = icmp eq i32 %5, 0, !dbg !1723
  call void @llvm.dbg.value(metadata i1 %6, metadata !1708, metadata !DIExpression()), !dbg !1710
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #21, !dbg !1724
  %8 = icmp ne i32 %7, 0, !dbg !1725
  call void @llvm.dbg.value(metadata i1 %8, metadata !1709, metadata !DIExpression()), !dbg !1710
  br i1 %6, label %9, label %19, !dbg !1726

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !1728
  call void @llvm.dbg.value(metadata i1 %10, metadata !1706, metadata !DIExpression()), !dbg !1710
  %11 = xor i1 %8, true, !dbg !1729
  %12 = or i1 %10, %11, !dbg !1729
  %13 = sext i1 %8 to i32, !dbg !1729
  br i1 %12, label %22, label %14, !dbg !1729

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !1730
  %16 = load i32, i32* %15, align 4, !dbg !1730, !tbaa !1471
  %17 = icmp ne i32 %16, 9, !dbg !1731
  %18 = sext i1 %17 to i32, !dbg !1732
  br label %22, !dbg !1732

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !1733

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !1735
  store i32 0, i32* %21, align 4, !dbg !1737, !tbaa !1471
  br label %22, !dbg !1735

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !1710
  ret i32 %23, !dbg !1738
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1741, metadata !DIExpression()), !dbg !1742
  store i8* %0, i8** @file_name, align 8, !dbg !1743, !tbaa !1361
  ret void, !dbg !1744
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1745 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1749, metadata !DIExpression()), !dbg !1750
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1751, !tbaa !1752
  ret void, !dbg !1754
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() local_unnamed_addr #8 !dbg !1755 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1760, !tbaa !1361
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #21, !dbg !1761
  %3 = icmp eq i32 %2, 0, !dbg !1762
  br i1 %3, label %22, label %4, !dbg !1763

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1764, !tbaa !1752, !range !1765
  %6 = icmp eq i8 %5, 0, !dbg !1764
  br i1 %6, label %11, label %7, !dbg !1766

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !1767
  %9 = load i32, i32* %8, align 4, !dbg !1767, !tbaa !1471
  %10 = icmp eq i32 %9, 32, !dbg !1768
  br i1 %10, label %22, label %11, !dbg !1769

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i32 5) #21, !dbg !1770
  call void @llvm.dbg.value(metadata i8* %12, metadata !1757, metadata !DIExpression()), !dbg !1771
  %13 = load i8*, i8** @file_name, align 8, !dbg !1772, !tbaa !1361
  %14 = icmp eq i8* %13, null, !dbg !1772
  %15 = tail call i32* @__errno_location() #26, !dbg !1774
  %16 = load i32, i32* %15, align 4, !dbg !1774, !tbaa !1471
  br i1 %14, label %19, label %17, !dbg !1775

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #21, !dbg !1776
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %18, i8* %12) #21, !dbg !1777
  br label %20, !dbg !1777

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.60, i64 0, i64 0), i8* %12) #21, !dbg !1778
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1779, !tbaa !1471
  tail call void @_exit(i32 %21) #24, !dbg !1780
  unreachable, !dbg !1780

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1781, !tbaa !1361
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #21, !dbg !1783
  %25 = icmp eq i32 %24, 0, !dbg !1784
  br i1 %25, label %28, label %26, !dbg !1785

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1786, !tbaa !1471
  tail call void @_exit(i32 %27) #24, !dbg !1787
  unreachable, !dbg !1787

28:                                               ; preds = %22
  ret void, !dbg !1788
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #13 !dbg !1789 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1791, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %0, metadata !1792, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 0, metadata !1794, metadata !DIExpression()), !dbg !1795
  br label %2, !dbg !1796

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1795
  call void @llvm.dbg.value(metadata i8* %3, metadata !1792, metadata !DIExpression()), !dbg !1795
  %4 = load i8, i8* %3, align 1, !dbg !1797, !tbaa !1496
  %5 = icmp eq i8 %4, 47, !dbg !1797
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1798
  call void @llvm.dbg.value(metadata i8* %6, metadata !1792, metadata !DIExpression()), !dbg !1795
  br i1 %5, label %2, label %7, !dbg !1796, !llvm.loop !1799

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1800
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1803
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1804
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1795
  call void @llvm.dbg.value(metadata i8 %11, metadata !1794, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %10, metadata !1793, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %9, metadata !1792, metadata !DIExpression()), !dbg !1795
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1805

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !1806
  %14 = icmp eq i8 %13, 0, !dbg !1806
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1810
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1810
  br label %17, !dbg !1810

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1795
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1795
  call void @llvm.dbg.value(metadata i8 %19, metadata !1794, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %18, metadata !1792, metadata !DIExpression()), !dbg !1795
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1811
  call void @llvm.dbg.value(metadata i8* %20, metadata !1793, metadata !DIExpression()), !dbg !1795
  %21 = load i8, i8* %20, align 1, !dbg !1800, !tbaa !1496
  br label %7, !dbg !1812, !llvm.loop !1813

22:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !1792, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %9, metadata !1792, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %9, metadata !1792, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %9, metadata !1792, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %9, metadata !1792, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %9, metadata !1792, metadata !DIExpression()), !dbg !1795
  ret i8* %9, !dbg !1815
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #14 !dbg !1816 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1820, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 0, metadata !1822, metadata !DIExpression()), !dbg !1823
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %2, metadata !1821, metadata !DIExpression()), !dbg !1823
  br label %3, !dbg !1826

3:                                                ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !1827
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  %5 = icmp ugt i64 %4, 1, !dbg !1828
  br i1 %5, label %6, label %11, !dbg !1830

6:                                                ; preds = %3
  %7 = add i64 %4, -1, !dbg !1831
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1831
  %9 = load i8, i8* %8, align 1, !dbg !1831, !tbaa !1496
  %10 = icmp eq i8 %9, 47, !dbg !1831
  br i1 %10, label %3, label %11, !dbg !1832, !llvm.loop !1833

11:                                               ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !1821, metadata !DIExpression()), !dbg !1823
  ret i64 %4, !dbg !1835
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @file_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !1836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1838, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8* %1, metadata !1839, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8** %2, metadata !1840, metadata !DIExpression()), !dbg !1842
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #21, !dbg !1843
  call void @llvm.dbg.value(metadata i8* %4, metadata !1841, metadata !DIExpression()), !dbg !1842
  %5 = icmp eq i8* %4, null, !dbg !1844
  br i1 %5, label %6, label %7, !dbg !1846

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !1847
  unreachable, !dbg !1847

7:                                                ; preds = %3
  ret i8* %4, !dbg !1848
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !1849 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1851, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %1, metadata !1852, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8** %2, metadata !1853, metadata !DIExpression()), !dbg !1861
  %4 = tail call i8* @last_component(i8* %0) #23, !dbg !1862
  call void @llvm.dbg.value(metadata i8* %4, metadata !1854, metadata !DIExpression()), !dbg !1861
  %5 = tail call i64 @base_len(i8* %4) #23, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %5, metadata !1855, metadata !DIExpression()), !dbg !1861
  %6 = ptrtoint i8* %4 to i64, !dbg !1864
  %7 = ptrtoint i8* %0 to i64, !dbg !1864
  %8 = sub i64 %6, %7, !dbg !1864
  %9 = add i64 %8, %5, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %9, metadata !1856, metadata !DIExpression()), !dbg !1861
  %10 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #23, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %10, metadata !1857, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 0, metadata !1858, metadata !DIExpression()), !dbg !1861
  %11 = icmp eq i64 %5, 0, !dbg !1867
  br i1 %11, label %21, label %12, !dbg !1869

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1870
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1870
  %15 = load i8, i8* %14, align 1, !dbg !1870, !tbaa !1496
  %16 = icmp eq i8 %15, 47, !dbg !1870
  br i1 %16, label %25, label %17, !dbg !1873

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1874, !tbaa !1496
  %19 = icmp eq i8 %18, 47, !dbg !1874
  %20 = select i1 %19, i8 0, i8 47, !dbg !1875
  br label %25, !dbg !1875

21:                                               ; preds = %3
  %22 = load i8, i8* %1, align 1, !dbg !1876, !tbaa !1496
  %23 = icmp eq i8 %22, 47, !dbg !1876
  %24 = select i1 %23, i8 46, i8 0, !dbg !1878
  br label %25, !dbg !1878

25:                                               ; preds = %21, %17, %12
  %26 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1861
  call void @llvm.dbg.value(metadata i8 %26, metadata !1858, metadata !DIExpression()), !dbg !1861
  %27 = icmp ne i8 %26, 0, !dbg !1879
  %28 = zext i1 %27 to i64, !dbg !1880
  %29 = add i64 %10, 1, !dbg !1881
  %30 = add i64 %29, %9, !dbg !1882
  %31 = add i64 %30, %28, !dbg !1883
  %32 = tail call noalias i8* @malloc(i64 %31) #21, !dbg !1884
  call void @llvm.dbg.value(metadata i8* %32, metadata !1859, metadata !DIExpression()), !dbg !1861
  %33 = icmp eq i8* %32, null, !dbg !1885
  br i1 %33, label %41, label %34, !dbg !1887

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8* %32, metadata !1888, metadata !DIExpression()) #21, !dbg !1893
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()) #21, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %9, metadata !1892, metadata !DIExpression()) #21, !dbg !1893
  %35 = tail call i8* @__mempcpy_chk(i8* nonnull %32, i8* nonnull %0, i64 %9, i64 -1) #21, !dbg !1895
  call void @llvm.dbg.value(metadata i8* %35, metadata !1860, metadata !DIExpression()), !dbg !1861
  store i8 %26, i8* %35, align 1, !dbg !1896, !tbaa !1496
  %36 = getelementptr inbounds i8, i8* %35, i64 %28, !dbg !1897
  call void @llvm.dbg.value(metadata i8* %36, metadata !1860, metadata !DIExpression()), !dbg !1861
  %37 = icmp eq i8** %2, null, !dbg !1898
  br i1 %37, label %39, label %38, !dbg !1900

38:                                               ; preds = %34
  store i8* %36, i8** %2, align 8, !dbg !1901, !tbaa !1361
  br label %39, !dbg !1902

39:                                               ; preds = %34, %38
  call void @llvm.dbg.value(metadata i8* %36, metadata !1888, metadata !DIExpression()) #21, !dbg !1903
  call void @llvm.dbg.value(metadata i8* %1, metadata !1891, metadata !DIExpression()) #21, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %10, metadata !1892, metadata !DIExpression()) #21, !dbg !1903
  %40 = tail call i8* @__mempcpy_chk(i8* nonnull %36, i8* nonnull %1, i64 %10, i64 -1) #21, !dbg !1905
  call void @llvm.dbg.value(metadata i8* %40, metadata !1860, metadata !DIExpression()), !dbg !1861
  store i8 0, i8* %40, align 1, !dbg !1906, !tbaa !1496
  br label %41, !dbg !1907

41:                                               ; preds = %25, %39
  ret i8* %32, !dbg !1908
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1909 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1911, metadata !DIExpression()), !dbg !1914
  %2 = icmp eq i8* %0, null, !dbg !1915
  br i1 %2, label %3, label %6, !dbg !1917

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1918, !tbaa !1361
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !1920
  tail call void @abort() #24, !dbg !1921
  unreachable, !dbg !1921

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !1922
  call void @llvm.dbg.value(metadata i8* %7, metadata !1912, metadata !DIExpression()), !dbg !1914
  %8 = icmp eq i8* %7, null, !dbg !1923
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1924
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1924
  call void @llvm.dbg.value(metadata i8* %10, metadata !1913, metadata !DIExpression()), !dbg !1914
  %11 = ptrtoint i8* %10 to i64, !dbg !1925
  %12 = ptrtoint i8* %0 to i64, !dbg !1925
  %13 = sub i64 %11, %12, !dbg !1925
  %14 = icmp sgt i64 %13, 6, !dbg !1927
  br i1 %14, label %15, label %24, !dbg !1928

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1929
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #23, !dbg !1930
  %18 = icmp eq i32 %17, 0, !dbg !1931
  br i1 %18, label %19, label %24, !dbg !1932

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1911, metadata !DIExpression()), !dbg !1914
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #23, !dbg !1933
  %21 = icmp eq i32 %20, 0, !dbg !1936
  br i1 %21, label %22, label %24, !dbg !1937

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1938
  call void @llvm.dbg.value(metadata i8* %23, metadata !1911, metadata !DIExpression()), !dbg !1914
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1940, !tbaa !1361
  br label %24, !dbg !1941

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1911, metadata !DIExpression()), !dbg !1914
  store i8* %25, i8** @program_name, align 8, !dbg !1942, !tbaa !1361
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1943, !tbaa !1361
  ret void, !dbg !1944
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1945 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1950, metadata !DIExpression()), !dbg !1953
  %2 = tail call i32* @__errno_location() #26, !dbg !1954
  %3 = load i32, i32* %2, align 4, !dbg !1954, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %3, metadata !1951, metadata !DIExpression()), !dbg !1953
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1955
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1955
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1955
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #21, !dbg !1956
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1956
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1952, metadata !DIExpression()), !dbg !1953
  store i32 %3, i32* %2, align 4, !dbg !1957, !tbaa !1471
  ret %struct.quoting_options* %8, !dbg !1958
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1959 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1963, metadata !DIExpression()), !dbg !1964
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1965
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1965
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1966
  %5 = load i32, i32* %4, align 8, !dbg !1966, !tbaa !1967
  ret i32 %5, !dbg !1969
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1970 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1974, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %1, metadata !1975, metadata !DIExpression()), !dbg !1976
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1977
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1977
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1978
  store i32 %1, i32* %5, align 8, !dbg !1979, !tbaa !1967
  ret void, !dbg !1980
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1981 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1985, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 %1, metadata !1986, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i32 %2, metadata !1987, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 %1, metadata !1988, metadata !DIExpression()), !dbg !1994
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1995
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1995
  %6 = lshr i8 %1, 5, !dbg !1996
  %7 = zext i8 %6 to i64, !dbg !1996
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1997
  call void @llvm.dbg.value(metadata i32* %8, metadata !1990, metadata !DIExpression()), !dbg !1994
  %9 = and i8 %1, 31, !dbg !1998
  %10 = zext i8 %9 to i32, !dbg !1998
  call void @llvm.dbg.value(metadata i32 %10, metadata !1992, metadata !DIExpression()), !dbg !1994
  %11 = load i32, i32* %8, align 4, !dbg !1999, !tbaa !1471
  %12 = lshr i32 %11, %10, !dbg !2000
  %13 = and i32 %12, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %13, metadata !1993, metadata !DIExpression()), !dbg !1994
  %14 = and i32 %2, 1, !dbg !2002
  %15 = xor i32 %13, %14, !dbg !2003
  %16 = shl i32 %15, %10, !dbg !2004
  %17 = xor i32 %16, %11, !dbg !2005
  store i32 %17, i32* %8, align 4, !dbg !2005, !tbaa !1471
  ret i32 %13, !dbg !2006
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !2007 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2011, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 %1, metadata !2012, metadata !DIExpression()), !dbg !2014
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2015
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2011, metadata !DIExpression()), !dbg !2014
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2018
  %6 = load i32, i32* %5, align 4, !dbg !2018, !tbaa !2019
  call void @llvm.dbg.value(metadata i32 %6, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i32 %1, i32* %5, align 4, !dbg !2020, !tbaa !2019
  ret i32 %6, !dbg !2021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2022 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2026, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %1, metadata !2027, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %2, metadata !2028, metadata !DIExpression()), !dbg !2029
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2030
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2032
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2026, metadata !DIExpression()), !dbg !2029
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2033
  store i32 10, i32* %6, align 8, !dbg !2034, !tbaa !1967
  %7 = icmp ne i8* %1, null, !dbg !2035
  %8 = icmp ne i8* %2, null, !dbg !2037
  %9 = and i1 %7, %8, !dbg !2038
  br i1 %9, label %11, label %10, !dbg !2038

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2039
  unreachable, !dbg !2039

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2040
  store i8* %1, i8** %12, align 8, !dbg !2041, !tbaa !2042
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2043
  store i8* %2, i8** %13, align 8, !dbg !2044, !tbaa !2045
  ret void, !dbg !2046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2051, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %1, metadata !2052, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8* %2, metadata !2053, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %3, metadata !2054, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2055, metadata !DIExpression()), !dbg !2059
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2060
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2060
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2056, metadata !DIExpression()), !dbg !2059
  %8 = tail call i32* @__errno_location() #26, !dbg !2061
  %9 = load i32, i32* %8, align 4, !dbg !2061, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %9, metadata !2057, metadata !DIExpression()), !dbg !2059
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2062
  %11 = load i32, i32* %10, align 8, !dbg !2062, !tbaa !1967
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2063
  %13 = load i32, i32* %12, align 4, !dbg !2063, !tbaa !2019
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2064
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2065
  %16 = load i8*, i8** %15, align 8, !dbg !2065, !tbaa !2042
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2066
  %18 = load i8*, i8** %17, align 8, !dbg !2066, !tbaa !2045
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %19, metadata !2058, metadata !DIExpression()), !dbg !2059
  store i32 %9, i32* %8, align 4, !dbg !2068, !tbaa !1471
  ret i64 %19, !dbg !2069
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2070 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2076, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %1, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %2, metadata !2078, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %3, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %4, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %5, metadata !2081, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32* %6, metadata !2082, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %7, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %8, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* null, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2089, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2090, metadata !DIExpression()), !dbg !2134
  %13 = tail call i64 @__ctype_get_mb_cur_max() #21, !dbg !2135
  %14 = icmp eq i64 %13, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i1 %14, metadata !2091, metadata !DIExpression()), !dbg !2134
  %15 = lshr i32 %5, 1, !dbg !2137
  %16 = trunc i32 %15 to i8, !dbg !2137
  %17 = and i8 %16, 1, !dbg !2137
  call void @llvm.dbg.value(metadata i8 %17, metadata !2092, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 1, metadata !2095, metadata !DIExpression()), !dbg !2134
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2138
  %19 = and i32 %5, 4, !dbg !2140
  %20 = icmp eq i32 %19, 0, !dbg !2140
  %21 = and i32 %5, 1, !dbg !2143
  %22 = icmp eq i32 %21, 0, !dbg !2143
  %23 = bitcast i64* %10 to i8*, !dbg !2146
  %24 = bitcast i32* %12 to i8*, !dbg !2147
  %25 = icmp eq i32* %6, null, !dbg !2148
  br label %26, !dbg !2150

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2151
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2152
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2153
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2154
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2134
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2155
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2156
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2157
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %38, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %37, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %36, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %35, metadata !2092, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %34, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %33, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %32, metadata !2089, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %31, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %30, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %29, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %28, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %27, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.label(metadata !2128), !dbg !2158
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
  ], !dbg !2159

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 1, metadata !2092, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %35, metadata !2092, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 5, metadata !2080, metadata !DIExpression()), !dbg !2134
  br label %92, !dbg !2160

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2092, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 5, metadata !2080, metadata !DIExpression()), !dbg !2134
  %42 = and i8 %35, 1, !dbg !2162
  %43 = icmp eq i8 %42, 0, !dbg !2162
  br i1 %43, label %44, label %92, !dbg !2160

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2164
  br i1 %45, label %92, label %46, !dbg !2167

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2164, !tbaa !1496
  br label %92, !dbg !2164

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %27), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %48, metadata !2083, metadata !DIExpression()), !dbg !2134
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %27), !dbg !2172
  call void @llvm.dbg.value(metadata i8* %49, metadata !2084, metadata !DIExpression()), !dbg !2134
  br label %50, !dbg !2173

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %51, metadata !2083, metadata !DIExpression()), !dbg !2134
  %53 = and i8 %35, 1, !dbg !2174
  %54 = icmp eq i8 %53, 0, !dbg !2174
  br i1 %54, label %55, label %70, !dbg !2176

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2086, metadata !DIExpression()), !dbg !2134
  %56 = load i8, i8* %51, align 1, !dbg !2177, !tbaa !1496
  %57 = icmp eq i8 %56, 0, !dbg !2180
  br i1 %57, label %70, label %58, !dbg !2180

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %61, metadata !2086, metadata !DIExpression()), !dbg !2134
  %62 = icmp ult i64 %61, %39, !dbg !2181
  br i1 %62, label %63, label %65, !dbg !2184

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2181
  store i8 %59, i8* %64, align 1, !dbg !2181, !tbaa !1496
  br label %65, !dbg !2181

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %66, metadata !2086, metadata !DIExpression()), !dbg !2134
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2185
  call void @llvm.dbg.value(metadata i8* %67, metadata !2088, metadata !DIExpression()), !dbg !2134
  %68 = load i8, i8* %67, align 1, !dbg !2177, !tbaa !1496
  %69 = icmp eq i8 %68, 0, !dbg !2180
  br i1 %69, label %70, label %58, !dbg !2180, !llvm.loop !2186

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2188
  call void @llvm.dbg.value(metadata i64 %71, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 1, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %52, metadata !2088, metadata !DIExpression()), !dbg !2134
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %72, metadata !2089, metadata !DIExpression()), !dbg !2134
  br label %92, !dbg !2190

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2090, metadata !DIExpression()), !dbg !2134
  br label %74, !dbg !2191

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %75, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 1, metadata !2092, metadata !DIExpression()), !dbg !2134
  br label %76, !dbg !2192

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2154
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %78, metadata !2092, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %77, metadata !2090, metadata !DIExpression()), !dbg !2134
  %79 = and i8 %78, 1, !dbg !2193
  %80 = icmp eq i8 %79, 0, !dbg !2193
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2195
  br label %82, !dbg !2195

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2134
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2137
  call void @llvm.dbg.value(metadata i8 %84, metadata !2092, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %83, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  %85 = and i8 %84, 1, !dbg !2196
  %86 = icmp eq i8 %85, 0, !dbg !2196
  br i1 %86, label %87, label %92, !dbg !2198

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2199
  br i1 %88, label %92, label %89, !dbg !2202

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2199, !tbaa !1496
  br label %92, !dbg !2199

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2134
  br label %92, !dbg !2203

91:                                               ; preds = %26
  call void @abort() #24, !dbg !2204
  unreachable, !dbg !2204

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2188
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %40 ], !dbg !2134
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2134
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2134
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %100, metadata !2092, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %98, metadata !2089, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %96, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %93, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2085, metadata !DIExpression()), !dbg !2134
  %101 = and i8 %99, 1, !dbg !2205
  %102 = icmp ne i8 %101, 0, !dbg !2205
  %103 = icmp ne i32 %93, 2, !dbg !2205
  %104 = and i1 %103, %102, !dbg !2205
  %105 = icmp ne i64 %98, 0, !dbg !2205
  %106 = and i1 %105, %104, !dbg !2205
  %107 = icmp ugt i64 %98, 1, !dbg !2205
  %108 = and i8 %100, 1, !dbg !2207
  %109 = icmp eq i8 %108, 0, !dbg !2207
  %110 = icmp eq i32 %93, 2, !dbg !2210
  %111 = or i1 %103, %109, !dbg !2212
  %112 = icmp ne i8 %108, 0, !dbg !2214
  %113 = and i1 %110, %112, !dbg !2214
  %114 = xor i1 %102, true, !dbg !2215
  %115 = xor i1 %104, true, !dbg !2148
  %116 = and i1 %109, %115, !dbg !2148
  %117 = or i1 %25, %116, !dbg !2148
  %118 = and i8 %99, %100, !dbg !2216
  %119 = and i8 %118, 1, !dbg !2216
  %120 = icmp ne i8 %119, 0, !dbg !2216
  %121 = and i1 %120, %105, !dbg !2216
  br label %122, !dbg !2218

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2219
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2188
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2151
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2155
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2156
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2157
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %126, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %123, metadata !2085, metadata !DIExpression()), !dbg !2134
  %131 = icmp eq i64 %126, -1, !dbg !2220
  br i1 %131, label %132, label %136, !dbg !2221

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2222
  %134 = load i8, i8* %133, align 1, !dbg !2222, !tbaa !1496
  %135 = icmp eq i8 %134, 0, !dbg !2223
  br i1 %135, label %581, label %138, !dbg !2224

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2225
  br i1 %137, label %581, label %138, !dbg !2224

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2101, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, metadata !2102, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, metadata !2103, metadata !DIExpression()), !dbg !2226
  br i1 %106, label %139, label %154, !dbg !2227

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2228
  %141 = and i1 %107, %131, !dbg !2229
  br i1 %141, label %142, label %144, !dbg !2229

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %143, metadata !2079, metadata !DIExpression()), !dbg !2134
  br label %144, !dbg !2231

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2079, metadata !DIExpression()), !dbg !2134
  %146 = icmp ugt i64 %140, %145, !dbg !2232
  br i1 %146, label %154, label %147, !dbg !2233

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2234
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2235
  %150 = icmp ne i32 %149, 0, !dbg !2236
  %151 = or i1 %150, %109, !dbg !2237
  %152 = xor i1 %150, true, !dbg !2237
  %153 = zext i1 %152 to i8, !dbg !2237
  br i1 %151, label %154, label %639, !dbg !2237

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2226
  call void @llvm.dbg.value(metadata i8 %156, metadata !2101, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %155, metadata !2079, metadata !DIExpression()), !dbg !2134
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2238
  %158 = load i8, i8* %157, align 1, !dbg !2238, !tbaa !1496
  call void @llvm.dbg.value(metadata i8 %158, metadata !2096, metadata !DIExpression()), !dbg !2226
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
  ], !dbg !2239

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2240

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2241

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2102, metadata !DIExpression()), !dbg !2226
  %162 = and i8 %127, 1, !dbg !2244
  %163 = icmp eq i8 %162, 0, !dbg !2244
  %164 = and i1 %110, %163, !dbg !2244
  br i1 %164, label %165, label %181, !dbg !2244

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2246
  br i1 %166, label %167, label %169, !dbg !2250

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2246
  store i8 39, i8* %168, align 1, !dbg !2246, !tbaa !1496
  br label %169, !dbg !2246

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %170, metadata !2086, metadata !DIExpression()), !dbg !2134
  %171 = icmp ult i64 %170, %130, !dbg !2251
  br i1 %171, label %172, label %174, !dbg !2254

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2251
  store i8 36, i8* %173, align 1, !dbg !2251, !tbaa !1496
  br label %174, !dbg !2251

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %175, metadata !2086, metadata !DIExpression()), !dbg !2134
  %176 = icmp ult i64 %175, %130, !dbg !2255
  br i1 %176, label %177, label %179, !dbg !2258

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2255
  store i8 39, i8* %178, align 1, !dbg !2255, !tbaa !1496
  br label %179, !dbg !2255

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %180, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 1, metadata !2093, metadata !DIExpression()), !dbg !2134
  br label %181, !dbg !2259

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2134
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %183, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %182, metadata !2086, metadata !DIExpression()), !dbg !2134
  %184 = icmp ult i64 %182, %130, !dbg !2260
  br i1 %184, label %185, label %187, !dbg !2263

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2260
  store i8 92, i8* %186, align 1, !dbg !2260, !tbaa !1496
  br label %187, !dbg !2260

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %188, metadata !2086, metadata !DIExpression()), !dbg !2134
  br i1 %103, label %189, label %463, !dbg !2264

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2266
  %191 = icmp ult i64 %190, %155, !dbg !2267
  br i1 %191, label %192, label %463, !dbg !2268

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2269
  %194 = load i8, i8* %193, align 1, !dbg !2269, !tbaa !1496
  %195 = add i8 %194, -48, !dbg !2270
  %196 = icmp ult i8 %195, 10, !dbg !2270
  br i1 %196, label %197, label %463, !dbg !2270

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2271
  br i1 %198, label %199, label %201, !dbg !2275

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2271
  store i8 48, i8* %200, align 1, !dbg !2271, !tbaa !1496
  br label %201, !dbg !2271

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %202, metadata !2086, metadata !DIExpression()), !dbg !2134
  %203 = icmp ult i64 %202, %130, !dbg !2276
  br i1 %203, label %204, label %206, !dbg !2279

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2276
  store i8 48, i8* %205, align 1, !dbg !2276, !tbaa !1496
  br label %206, !dbg !2276

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %207, metadata !2086, metadata !DIExpression()), !dbg !2134
  br label %463, !dbg !2280

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2281

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2282

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2283

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2284

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2285
  %214 = icmp ult i64 %213, %155, !dbg !2286
  br i1 %214, label %215, label %463, !dbg !2287

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2288
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2289
  %218 = load i8, i8* %217, align 1, !dbg !2289, !tbaa !1496
  %219 = icmp eq i8 %218, 63, !dbg !2290
  br i1 %219, label %220, label %463, !dbg !2291

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2292
  %222 = load i8, i8* %221, align 1, !dbg !2292, !tbaa !1496
  %223 = sext i8 %222 to i32, !dbg !2292
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
  ], !dbg !2293

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2294

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2096, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %213, metadata !2085, metadata !DIExpression()), !dbg !2134
  %226 = icmp ult i64 %124, %130, !dbg !2296
  br i1 %226, label %227, label %229, !dbg !2299

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2296
  store i8 63, i8* %228, align 1, !dbg !2296, !tbaa !1496
  br label %229, !dbg !2296

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %230, metadata !2086, metadata !DIExpression()), !dbg !2134
  %231 = icmp ult i64 %230, %130, !dbg !2300
  br i1 %231, label %232, label %234, !dbg !2303

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2300
  store i8 34, i8* %233, align 1, !dbg !2300, !tbaa !1496
  br label %234, !dbg !2300

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %235, metadata !2086, metadata !DIExpression()), !dbg !2134
  %236 = icmp ult i64 %235, %130, !dbg !2304
  br i1 %236, label %237, label %239, !dbg !2307

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2304
  store i8 34, i8* %238, align 1, !dbg !2304, !tbaa !1496
  br label %239, !dbg !2304

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %240, metadata !2086, metadata !DIExpression()), !dbg !2134
  %241 = icmp ult i64 %240, %130, !dbg !2308
  br i1 %241, label %242, label %244, !dbg !2311

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2308
  store i8 63, i8* %243, align 1, !dbg !2308, !tbaa !1496
  br label %244, !dbg !2308

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %245, metadata !2086, metadata !DIExpression()), !dbg !2134
  br label %463, !dbg !2312

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2100, metadata !DIExpression()), !dbg !2226
  br label %256, !dbg !2313

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2100, metadata !DIExpression()), !dbg !2226
  br label %256, !dbg !2314

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2100, metadata !DIExpression()), !dbg !2226
  br label %254, !dbg !2315

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2100, metadata !DIExpression()), !dbg !2226
  br label %254, !dbg !2316

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2100, metadata !DIExpression()), !dbg !2226
  br label %256, !dbg !2317

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2100, metadata !DIExpression()), !dbg !2226
  br i1 %110, label %252, label %253, !dbg !2318

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2319

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2322

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2323
  call void @llvm.dbg.value(metadata i8 %255, metadata !2100, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.label(metadata !2129), !dbg !2324
  br i1 %111, label %256, label %625, !dbg !2325

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2323
  call void @llvm.dbg.value(metadata i8 %257, metadata !2100, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.label(metadata !2130), !dbg !2327
  br i1 %102, label %488, label %463, !dbg !2328

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2329

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2330, !tbaa !1496
  %261 = icmp eq i8 %260, 0, !dbg !2331
  br i1 %261, label %262, label %463, !dbg !2332

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2333
  br i1 %263, label %264, label %463, !dbg !2335

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2103, metadata !DIExpression()), !dbg !2226
  br label %265, !dbg !2336

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2226
  call void @llvm.dbg.value(metadata i8 %266, metadata !2103, metadata !DIExpression()), !dbg !2226
  br i1 %111, label %463, label %625, !dbg !2337

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 1, metadata !2103, metadata !DIExpression()), !dbg !2226
  br i1 %110, label %268, label %463, !dbg !2338

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2339

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2341
  %271 = icmp ne i64 %125, 0, !dbg !2343
  %272 = or i1 %271, %270, !dbg !2344
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2344
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %274, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %273, metadata !2087, metadata !DIExpression()), !dbg !2134
  %275 = icmp ult i64 %124, %274, !dbg !2345
  br i1 %275, label %276, label %278, !dbg !2348

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2345
  store i8 39, i8* %277, align 1, !dbg !2345, !tbaa !1496
  br label %278, !dbg !2345

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %279, metadata !2086, metadata !DIExpression()), !dbg !2134
  %280 = icmp ult i64 %279, %274, !dbg !2349
  br i1 %280, label %281, label %283, !dbg !2352

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2349
  store i8 92, i8* %282, align 1, !dbg !2349, !tbaa !1496
  br label %283, !dbg !2349

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %284, metadata !2086, metadata !DIExpression()), !dbg !2134
  %285 = icmp ult i64 %284, %274, !dbg !2353
  br i1 %285, label %286, label %288, !dbg !2356

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2353
  store i8 39, i8* %287, align 1, !dbg !2353, !tbaa !1496
  br label %288, !dbg !2353

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %289, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2134
  br label %463, !dbg !2357

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2358

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2104, metadata !DIExpression()), !dbg !2359
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !2360
  %293 = load i16*, i16** %292, align 8, !dbg !2360, !tbaa !1361
  %294 = zext i8 %158 to i64, !dbg !2360
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2360
  %296 = load i16, i16* %295, align 2, !dbg !2360, !tbaa !2362
  %297 = lshr i16 %296, 14, !dbg !2363
  %298 = trunc i16 %297 to i8, !dbg !2363
  %299 = and i8 %298, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i8 %299, metadata !2107, metadata !DIExpression()), !dbg !2359
  br label %355, !dbg !2364

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #21, !dbg !2365
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2108, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %23, metadata !2367, metadata !DIExpression()) #21, !dbg !2374
  call void @llvm.dbg.value(metadata i32 0, metadata !2372, metadata !DIExpression()) #21, !dbg !2374
  call void @llvm.dbg.value(metadata i64 8, metadata !2373, metadata !DIExpression()) #21, !dbg !2374
  store i64 0, i64* %10, align 8, !dbg !2376
  call void @llvm.dbg.value(metadata i64 0, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 1, metadata !2107, metadata !DIExpression()), !dbg !2359
  %301 = icmp eq i64 %155, -1, !dbg !2377
  br i1 %301, label %302, label %304, !dbg !2379

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %303, metadata !2079, metadata !DIExpression()), !dbg !2134
  br label %304, !dbg !2381

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2226
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  br label %306, !dbg !2382

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2383
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2384
  call void @llvm.dbg.value(metadata i8 %308, metadata !2107, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %307, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #21, !dbg !2385
  %309 = add i64 %307, %123, !dbg !2386
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2387
  %311 = sub i64 %305, %309, !dbg !2388
  call void @llvm.dbg.value(metadata i32* %12, metadata !2114, metadata !DIExpression(DW_OP_deref)), !dbg !2147
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #21, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %312, metadata !2117, metadata !DIExpression()), !dbg !2147
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2390

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %307, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %307, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %307, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %307, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %307, metadata !2104, metadata !DIExpression()), !dbg !2359
  %314 = icmp ugt i64 %305, %309, !dbg !2391
  br i1 %314, label %315, label %340, !dbg !2393

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2394
  br label %317, !dbg !2394

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2104, metadata !DIExpression()), !dbg !2359
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2395
  %321 = load i8, i8* %320, align 1, !dbg !2395, !tbaa !1496
  %322 = icmp eq i8 %321, 0, !dbg !2393
  br i1 %322, label %340, label %323, !dbg !2394

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %324, metadata !2104, metadata !DIExpression()), !dbg !2359
  %325 = add i64 %324, %123, !dbg !2397
  %326 = icmp ult i64 %325, %305, !dbg !2391
  br i1 %326, label %317, label %340, !dbg !2393, !llvm.loop !2398

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2399
  %329 = and i1 %113, %328, !dbg !2402
  call void @llvm.dbg.value(metadata i64 1, metadata !2118, metadata !DIExpression()), !dbg !2403
  br i1 %329, label %330, label %343, !dbg !2402

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2118, metadata !DIExpression()), !dbg !2403
  %332 = add i64 %331, %309, !dbg !2404
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2405
  %334 = load i8, i8* %333, align 1, !dbg !2405, !tbaa !1496
  %335 = sext i8 %334 to i32, !dbg !2405
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2406

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %337, metadata !2118, metadata !DIExpression()), !dbg !2403
  %338 = icmp eq i64 %337, %312, !dbg !2399
  br i1 %338, label %343, label %330, !dbg !2408, !llvm.loop !2409

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %308, metadata !2107, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %307, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %308, metadata !2107, metadata !DIExpression()), !dbg !2359
  br label %340, !dbg !2411

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #21, !dbg !2411
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2412, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %344, metadata !2114, metadata !DIExpression()), !dbg !2147
  %345 = call i32 @iswprint(i32 %344) #21, !dbg !2414
  %346 = icmp eq i32 %345, 0, !dbg !2414
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2415
  call void @llvm.dbg.value(metadata i8 %347, metadata !2107, metadata !DIExpression()), !dbg !2359
  %348 = add i64 %312, %307, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %348, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8 %347, metadata !2107, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %348, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #21, !dbg !2411
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !2417
  %350 = icmp eq i32 %349, 0, !dbg !2418
  br i1 %350, label %306, label %351, !dbg !2419, !llvm.loop !2420

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #21, !dbg !2422
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !2080, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %99, metadata !2090, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %305, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #21, !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #21, !dbg !2422
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2226
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2423
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2423
  call void @llvm.dbg.value(metadata i8 %358, metadata !2107, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %357, metadata !2104, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %356, metadata !2079, metadata !DIExpression()), !dbg !2134
  %359 = and i8 %358, 1, !dbg !2424
  %360 = icmp ne i8 %359, 0, !dbg !2424
  call void @llvm.dbg.value(metadata i8 %359, metadata !2103, metadata !DIExpression()), !dbg !2226
  %361 = icmp ult i64 %357, 2, !dbg !2425
  %362 = or i1 %360, %114, !dbg !2426
  %363 = and i1 %361, %362, !dbg !2427
  br i1 %363, label %463, label %364, !dbg !2427

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %365, metadata !2125, metadata !DIExpression()), !dbg !2429
  br label %366, !dbg !2430

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2219
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2134
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2155
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2226
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2226
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2431
  call void @llvm.dbg.value(metadata i8 %372, metadata !2102, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %371, metadata !2101, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %370, metadata !2096, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %369, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %368, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %367, metadata !2085, metadata !DIExpression()), !dbg !2134
  br i1 %362, label %419, label %373, !dbg !2432

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2437

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2102, metadata !DIExpression()), !dbg !2226
  %375 = and i8 %369, 1, !dbg !2440
  %376 = icmp eq i8 %375, 0, !dbg !2440
  %377 = and i1 %110, %376, !dbg !2440
  br i1 %377, label %378, label %394, !dbg !2440

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2442
  br i1 %379, label %380, label %382, !dbg !2446

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2442
  store i8 39, i8* %381, align 1, !dbg !2442, !tbaa !1496
  br label %382, !dbg !2442

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %383, metadata !2086, metadata !DIExpression()), !dbg !2134
  %384 = icmp ult i64 %383, %130, !dbg !2447
  br i1 %384, label %385, label %387, !dbg !2450

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2447
  store i8 36, i8* %386, align 1, !dbg !2447, !tbaa !1496
  br label %387, !dbg !2447

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %388, metadata !2086, metadata !DIExpression()), !dbg !2134
  %389 = icmp ult i64 %388, %130, !dbg !2451
  br i1 %389, label %390, label %392, !dbg !2454

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2451
  store i8 39, i8* %391, align 1, !dbg !2451, !tbaa !1496
  br label %392, !dbg !2451

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %393, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 1, metadata !2093, metadata !DIExpression()), !dbg !2134
  br label %394, !dbg !2455

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2134
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %396, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %395, metadata !2086, metadata !DIExpression()), !dbg !2134
  %397 = icmp ult i64 %395, %130, !dbg !2456
  br i1 %397, label %398, label %400, !dbg !2459

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2456
  store i8 92, i8* %399, align 1, !dbg !2456, !tbaa !1496
  br label %400, !dbg !2456

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %401, metadata !2086, metadata !DIExpression()), !dbg !2134
  %402 = icmp ult i64 %401, %130, !dbg !2460
  br i1 %402, label %403, label %407, !dbg !2463

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2460
  %405 = or i8 %404, 48, !dbg !2460
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2460
  store i8 %405, i8* %406, align 1, !dbg !2460, !tbaa !1496
  br label %407, !dbg !2460

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %408, metadata !2086, metadata !DIExpression()), !dbg !2134
  %409 = icmp ult i64 %408, %130, !dbg !2464
  br i1 %409, label %410, label %415, !dbg !2467

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2464
  %412 = and i8 %411, 7, !dbg !2464
  %413 = or i8 %412, 48, !dbg !2464
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2464
  store i8 %413, i8* %414, align 1, !dbg !2464, !tbaa !1496
  br label %415, !dbg !2464

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %416, metadata !2086, metadata !DIExpression()), !dbg !2134
  %417 = and i8 %370, 7, !dbg !2468
  %418 = or i8 %417, 48, !dbg !2469
  call void @llvm.dbg.value(metadata i8 %418, metadata !2096, metadata !DIExpression()), !dbg !2226
  br label %428, !dbg !2470

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2471
  %421 = icmp eq i8 %420, 0, !dbg !2471
  br i1 %421, label %428, label %422, !dbg !2473

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2474
  br i1 %423, label %424, label %426, !dbg !2478

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2474
  store i8 92, i8* %425, align 1, !dbg !2474, !tbaa !1496
  br label %426, !dbg !2474

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %427, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2101, metadata !DIExpression()), !dbg !2226
  br label %428, !dbg !2479

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2134
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2155
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2226
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2226
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2226
  call void @llvm.dbg.value(metadata i8 %433, metadata !2102, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %432, metadata !2101, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %431, metadata !2096, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %430, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %429, metadata !2086, metadata !DIExpression()), !dbg !2134
  %434 = add i64 %367, 1, !dbg !2480
  %435 = icmp ugt i64 %365, %434, !dbg !2482
  br i1 %435, label %436, label %526, !dbg !2483

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2484
  %438 = icmp ne i8 %437, 0, !dbg !2484
  %439 = and i8 %433, 1, !dbg !2484
  %440 = icmp eq i8 %439, 0, !dbg !2484
  %441 = and i1 %438, %440, !dbg !2484
  br i1 %441, label %442, label %453, !dbg !2484

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2487
  br i1 %443, label %444, label %446, !dbg !2491

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2487
  store i8 39, i8* %445, align 1, !dbg !2487, !tbaa !1496
  br label %446, !dbg !2487

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %447, metadata !2086, metadata !DIExpression()), !dbg !2134
  %448 = icmp ult i64 %447, %130, !dbg !2492
  br i1 %448, label %449, label %451, !dbg !2495

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2492
  store i8 39, i8* %450, align 1, !dbg !2492, !tbaa !1496
  br label %451, !dbg !2492

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %452, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2134
  br label %453, !dbg !2496

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2497
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %455, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %454, metadata !2086, metadata !DIExpression()), !dbg !2134
  %456 = icmp ult i64 %454, %130, !dbg !2498
  br i1 %456, label %457, label %459, !dbg !2501

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2498
  store i8 %431, i8* %458, align 1, !dbg !2498, !tbaa !1496
  br label %459, !dbg !2498

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %460, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %434, metadata !2085, metadata !DIExpression()), !dbg !2134
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2502
  %462 = load i8, i8* %461, align 1, !dbg !2502, !tbaa !1496
  call void @llvm.dbg.value(metadata i8 %462, metadata !2096, metadata !DIExpression()), !dbg !2226
  br label %366, !dbg !2503, !llvm.loop !2504

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2219
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2134
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2151
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2507
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2134
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2134
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2226
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2226
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2226
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %472, metadata !2103, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %471, metadata !2102, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %156, metadata !2101, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %470, metadata !2096, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %469, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %468, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %467, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %466, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %465, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %464, metadata !2085, metadata !DIExpression()), !dbg !2134
  br i1 %117, label %486, label %474, !dbg !2508

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2509
  %476 = zext i8 %475 to i64, !dbg !2509
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2510
  %478 = load i32, i32* %477, align 4, !dbg !2510, !tbaa !1471
  %479 = and i8 %470, 31, !dbg !2511
  %480 = zext i8 %479 to i32, !dbg !2511
  %481 = shl nuw i32 1, %480, !dbg !2512
  %482 = and i32 %478, %481, !dbg !2512
  %483 = icmp eq i32 %482, 0, !dbg !2512
  %484 = icmp eq i8 %156, 0, !dbg !2513
  %485 = and i1 %484, %483, !dbg !2514
  br i1 %485, label %526, label %488, !dbg !2514

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2513
  br i1 %487, label %526, label %488, !dbg !2515

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2516
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2134
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2151
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2507
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2155
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2156
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2226
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2226
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %496, metadata !2103, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %495, metadata !2096, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %494, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %493, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %492, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %491, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %490, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %489, metadata !2085, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.label(metadata !2131), !dbg !2517
  br i1 %109, label %498, label %629, !dbg !2518

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2102, metadata !DIExpression()), !dbg !2226
  %499 = and i8 %493, 1, !dbg !2520
  %500 = icmp eq i8 %499, 0, !dbg !2520
  %501 = and i1 %110, %500, !dbg !2520
  br i1 %501, label %502, label %518, !dbg !2520

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2522
  br i1 %503, label %504, label %506, !dbg !2526

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2522
  store i8 39, i8* %505, align 1, !dbg !2522, !tbaa !1496
  br label %506, !dbg !2522

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %507, metadata !2086, metadata !DIExpression()), !dbg !2134
  %508 = icmp ult i64 %507, %497, !dbg !2527
  br i1 %508, label %509, label %511, !dbg !2530

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2527
  store i8 36, i8* %510, align 1, !dbg !2527, !tbaa !1496
  br label %511, !dbg !2527

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %512, metadata !2086, metadata !DIExpression()), !dbg !2134
  %513 = icmp ult i64 %512, %497, !dbg !2531
  br i1 %513, label %514, label %516, !dbg !2534

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2531
  store i8 39, i8* %515, align 1, !dbg !2531, !tbaa !1496
  br label %516, !dbg !2531

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %517, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 1, metadata !2093, metadata !DIExpression()), !dbg !2134
  br label %518, !dbg !2535

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2226
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %520, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %519, metadata !2086, metadata !DIExpression()), !dbg !2134
  %521 = icmp ult i64 %519, %497, !dbg !2536
  br i1 %521, label %522, label %524, !dbg !2539

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2536
  store i8 92, i8* %523, align 1, !dbg !2536, !tbaa !1496
  br label %524, !dbg !2536

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %525, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %536, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %535, metadata !2103, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %534, metadata !2102, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %533, metadata !2096, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %532, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %531, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %530, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %529, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %528, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %527, metadata !2085, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.label(metadata !2132), !dbg !2540
  br label %553, !dbg !2541

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2516
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2134
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2151
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2507
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2155
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2156
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2544
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2226
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2226
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %535, metadata !2103, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %534, metadata !2102, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %533, metadata !2096, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 %532, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %531, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %530, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %529, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %528, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %527, metadata !2085, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.label(metadata !2132), !dbg !2540
  %537 = and i8 %531, 1, !dbg !2541
  %538 = icmp ne i8 %537, 0, !dbg !2541
  %539 = and i8 %534, 1, !dbg !2541
  %540 = icmp eq i8 %539, 0, !dbg !2541
  %541 = and i1 %538, %540, !dbg !2541
  br i1 %541, label %542, label %553, !dbg !2541

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2545
  br i1 %543, label %544, label %546, !dbg !2549

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2545
  store i8 39, i8* %545, align 1, !dbg !2545, !tbaa !1496
  br label %546, !dbg !2545

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %547, metadata !2086, metadata !DIExpression()), !dbg !2134
  %548 = icmp ult i64 %547, %536, !dbg !2550
  br i1 %548, label %549, label %551, !dbg !2553

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2550
  store i8 39, i8* %550, align 1, !dbg !2550, !tbaa !1496
  br label %551, !dbg !2550

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %552, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2134
  br label %553, !dbg !2554

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2226
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %562, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %561, metadata !2086, metadata !DIExpression()), !dbg !2134
  %563 = icmp ult i64 %561, %554, !dbg !2555
  br i1 %563, label %564, label %566, !dbg !2558

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2555
  store i8 %556, i8* %565, align 1, !dbg !2555, !tbaa !1496
  br label %566, !dbg !2555

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %567, metadata !2086, metadata !DIExpression()), !dbg !2134
  %568 = and i8 %555, 1, !dbg !2559
  %569 = icmp eq i8 %568, 0, !dbg !2559
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2561
  call void @llvm.dbg.value(metadata i8 %570, metadata !2095, metadata !DIExpression()), !dbg !2134
  br label %571, !dbg !2562

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2516
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2134
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2151
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2507
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2155
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2134
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2157
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %578, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %577, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %576, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %575, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %574, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %573, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %572, metadata !2085, metadata !DIExpression()), !dbg !2134
  %580 = add i64 %572, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %580, metadata !2085, metadata !DIExpression()), !dbg !2134
  br label %122, !dbg !2564, !llvm.loop !2565

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %127, metadata !2093, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %128, metadata !2094, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %129, metadata !2095, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  %583 = icmp eq i64 %124, 0, !dbg !2567
  %584 = and i1 %110, %583, !dbg !2569
  %585 = xor i1 %584, true, !dbg !2569
  %586 = or i1 %109, %585, !dbg !2569
  br i1 %586, label %587, label %629, !dbg !2569

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2570
  %589 = xor i1 %588, true, !dbg !2570
  %590 = and i8 %128, 1, !dbg !2572
  %591 = icmp eq i8 %590, 0, !dbg !2572
  %592 = or i1 %591, %589, !dbg !2570
  br i1 %592, label %602, label %593, !dbg !2570

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2573
  %595 = icmp eq i8 %594, 0, !dbg !2573
  br i1 %595, label %598, label %596, !dbg !2576

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %94, metadata !2083, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %95, metadata !2084, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %125, metadata !2087, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %582, metadata !2079, metadata !DIExpression()), !dbg !2134
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2577
  br label %645, !dbg !2578

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2579
  %600 = icmp ne i64 %125, 0, !dbg !2581
  %601 = and i1 %600, %599, !dbg !2582
  br i1 %601, label %26, label %602, !dbg !2582

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %130, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  %603 = icmp ne i8* %97, null, !dbg !2583
  %604 = and i1 %603, %109, !dbg !2585
  br i1 %604, label %605, label %620, !dbg !2585

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %124, metadata !2086, metadata !DIExpression()), !dbg !2134
  %606 = load i8, i8* %97, align 1, !dbg !2586, !tbaa !1496
  %607 = icmp eq i8 %606, 0, !dbg !2589
  br i1 %607, label %620, label %608, !dbg !2589

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2088, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %611, metadata !2086, metadata !DIExpression()), !dbg !2134
  %612 = icmp ult i64 %611, %130, !dbg !2590
  br i1 %612, label %613, label %615, !dbg !2593

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2590
  store i8 %609, i8* %614, align 1, !dbg !2590, !tbaa !1496
  br label %615, !dbg !2590

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %616, metadata !2086, metadata !DIExpression()), !dbg !2134
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2594
  call void @llvm.dbg.value(metadata i8* %617, metadata !2088, metadata !DIExpression()), !dbg !2134
  %618 = load i8, i8* %617, align 1, !dbg !2586, !tbaa !1496
  %619 = icmp eq i8 %618, 0, !dbg !2589
  br i1 %619, label %620, label %608, !dbg !2589, !llvm.loop !2595

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2188
  call void @llvm.dbg.value(metadata i64 %621, metadata !2086, metadata !DIExpression()), !dbg !2134
  %622 = icmp ult i64 %621, %130, !dbg !2597
  br i1 %622, label %623, label %645, !dbg !2599

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2600
  store i8 0, i8* %624, align 1, !dbg !2601, !tbaa !1496
  br label %645, !dbg !2600

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %630, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.label(metadata !2133), !dbg !2602
  %627 = icmp eq i8 %101, 0, !dbg !2603
  %628 = select i1 %627, i32 2, i32 4, !dbg !2603
  br label %635, !dbg !2603

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2077, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %630, metadata !2079, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.label(metadata !2133), !dbg !2602
  %632 = icmp eq i32 %93, 2, !dbg !2605
  %633 = icmp eq i8 %101, 0, !dbg !2603
  %634 = select i1 %633, i32 2, i32 4, !dbg !2603
  br i1 %632, label %635, label %639, !dbg !2603

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2603

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2080, metadata !DIExpression()), !dbg !2134
  %643 = and i32 %5, -3, !dbg !2606
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2607
  br label %645, !dbg !2608

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2609
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2610 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2614, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i32 %1, metadata !2615, metadata !DIExpression()), !dbg !2618
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #21, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %3, metadata !2616, metadata !DIExpression()), !dbg !2618
  %4 = icmp eq i8* %3, %0, !dbg !2620
  br i1 %4, label %5, label %71, !dbg !2622

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #21, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %6, metadata !2617, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %6, metadata !2624, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* undef, metadata !2630, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 85, metadata !2631, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 84, metadata !2632, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 70, metadata !2633, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 45, metadata !2634, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 56, metadata !2635, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2636, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2637, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2638, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2639, metadata !DIExpression()), !dbg !2640
  %7 = load i8, i8* %6, align 1, !dbg !2643, !tbaa !1496
  %8 = and i8 %7, -33, !dbg !2643
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2643

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2645, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* undef, metadata !2650, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 84, metadata !2651, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 70, metadata !2652, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 45, metadata !2653, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 56, metadata !2654, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 0, metadata !2655, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 0, metadata !2656, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 0, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8 0, metadata !2658, metadata !DIExpression()), !dbg !2659
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2663
  %11 = load i8, i8* %10, align 1, !dbg !2663, !tbaa !1496
  %12 = and i8 %11, -33, !dbg !2663
  %13 = icmp eq i8 %12, 84, !dbg !2663
  br i1 %13, label %14, label %68, !dbg !2663

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2665, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8* undef, metadata !2670, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 70, metadata !2671, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 45, metadata !2672, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 56, metadata !2673, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 0, metadata !2674, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 0, metadata !2675, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 0, metadata !2676, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 0, metadata !2677, metadata !DIExpression()), !dbg !2678
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2682
  %16 = load i8, i8* %15, align 1, !dbg !2682, !tbaa !1496
  %17 = and i8 %16, -33, !dbg !2682
  %18 = icmp eq i8 %17, 70, !dbg !2682
  br i1 %18, label %19, label %68, !dbg !2682

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2684, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8* undef, metadata !2689, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 45, metadata !2690, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 56, metadata !2691, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 0, metadata !2692, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 0, metadata !2693, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 0, metadata !2694, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2696
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2700
  %21 = load i8, i8* %20, align 1, !dbg !2700, !tbaa !1496
  %22 = icmp eq i8 %21, 45, !dbg !2700
  br i1 %22, label %23, label %68, !dbg !2702

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2703, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8* undef, metadata !2708, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 56, metadata !2709, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 0, metadata !2710, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 0, metadata !2711, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 0, metadata !2712, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2714
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2718
  %25 = load i8, i8* %24, align 1, !dbg !2718, !tbaa !1496
  %26 = icmp eq i8 %25, 56, !dbg !2718
  br i1 %26, label %27, label %68, !dbg !2720

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2721, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* undef, metadata !2726, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 0, metadata !2727, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 0, metadata !2728, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 0, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 0, metadata !2730, metadata !DIExpression()), !dbg !2731
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2735
  %29 = load i8, i8* %28, align 1, !dbg !2735, !tbaa !1496
  %30 = icmp eq i8 %29, 0, !dbg !2735
  br i1 %30, label %31, label %68, !dbg !2737

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2738, !tbaa !1496
  %33 = icmp eq i8 %32, 96, !dbg !2739
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0), !dbg !2738
  br label %71, !dbg !2740

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2645, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8* undef, metadata !2650, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 66, metadata !2651, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 49, metadata !2652, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 56, metadata !2653, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 48, metadata !2654, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 51, metadata !2655, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 48, metadata !2656, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 0, metadata !2657, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8 0, metadata !2658, metadata !DIExpression()), !dbg !2741
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2745
  %37 = load i8, i8* %36, align 1, !dbg !2745, !tbaa !1496
  %38 = and i8 %37, -33, !dbg !2745
  %39 = icmp eq i8 %38, 66, !dbg !2745
  br i1 %39, label %40, label %68, !dbg !2745

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2665, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8* undef, metadata !2670, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 49, metadata !2671, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 56, metadata !2672, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 48, metadata !2673, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 51, metadata !2674, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 48, metadata !2675, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 0, metadata !2676, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 0, metadata !2677, metadata !DIExpression()), !dbg !2746
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2748
  %42 = load i8, i8* %41, align 1, !dbg !2748, !tbaa !1496
  %43 = icmp eq i8 %42, 49, !dbg !2748
  br i1 %43, label %44, label %68, !dbg !2749

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2684, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* undef, metadata !2689, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 56, metadata !2690, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 48, metadata !2691, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 51, metadata !2692, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 48, metadata !2693, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 0, metadata !2694, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2750
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2752
  %46 = load i8, i8* %45, align 1, !dbg !2752, !tbaa !1496
  %47 = icmp eq i8 %46, 56, !dbg !2752
  br i1 %47, label %48, label %68, !dbg !2753

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* undef, metadata !2708, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 48, metadata !2709, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 51, metadata !2710, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 48, metadata !2711, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2712, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2754
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2756
  %50 = load i8, i8* %49, align 1, !dbg !2756, !tbaa !1496
  %51 = icmp eq i8 %50, 48, !dbg !2756
  br i1 %51, label %52, label %68, !dbg !2757

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2721, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* undef, metadata !2726, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 51, metadata !2727, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 48, metadata !2728, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 0, metadata !2729, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8 0, metadata !2730, metadata !DIExpression()), !dbg !2758
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2760
  %54 = load i8, i8* %53, align 1, !dbg !2760, !tbaa !1496
  %55 = icmp eq i8 %54, 51, !dbg !2760
  br i1 %55, label %56, label %68, !dbg !2761

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2762, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* undef, metadata !2767, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 48, metadata !2768, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2770, metadata !DIExpression()), !dbg !2771
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2775
  %58 = load i8, i8* %57, align 1, !dbg !2775, !tbaa !1496
  %59 = icmp eq i8 %58, 48, !dbg !2775
  br i1 %59, label %60, label %68, !dbg !2777

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2778, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* undef, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8 0, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8 0, metadata !2785, metadata !DIExpression()), !dbg !2786
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2790
  %62 = load i8, i8* %61, align 1, !dbg !2790, !tbaa !1496
  %63 = icmp eq i8 %62, 0, !dbg !2790
  br i1 %63, label %64, label %68, !dbg !2792

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2793, !tbaa !1496
  %66 = icmp eq i8 %65, 96, !dbg !2794
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.92, i64 0, i64 0), !dbg !2793
  br label %71, !dbg !2795

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2796
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !2797
  br label %71, !dbg !2798

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2618
  ret i8* %72, !dbg !2799
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !344 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !348 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2800 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2804, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %1, metadata !2805, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8* %0, metadata !2808, metadata !DIExpression()) #21, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %1, metadata !2813, metadata !DIExpression()) #21, !dbg !2821
  call void @llvm.dbg.value(metadata i64* null, metadata !2814, metadata !DIExpression()) #21, !dbg !2821
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2815, metadata !DIExpression()) #21, !dbg !2821
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2823
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2823
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2816, metadata !DIExpression()) #21, !dbg !2821
  %6 = tail call i32* @__errno_location() #26, !dbg !2824
  %7 = load i32, i32* %6, align 4, !dbg !2824, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %7, metadata !2817, metadata !DIExpression()) #21, !dbg !2821
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2825
  %9 = load i32, i32* %8, align 4, !dbg !2825, !tbaa !2019
  %10 = or i32 %9, 1, !dbg !2826
  call void @llvm.dbg.value(metadata i32 %10, metadata !2818, metadata !DIExpression()) #21, !dbg !2821
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2827
  %12 = load i32, i32* %11, align 8, !dbg !2827, !tbaa !1967
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2828
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2829
  %15 = load i8*, i8** %14, align 8, !dbg !2829, !tbaa !2042
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2830
  %17 = load i8*, i8** %16, align 8, !dbg !2830, !tbaa !2045
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #21, !dbg !2831
  %19 = add i64 %18, 1, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %19, metadata !2819, metadata !DIExpression()) #21, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %19, metadata !2833, metadata !DIExpression()) #21, !dbg !2836
  %20 = tail call noalias i8* @xmalloc(i64 %19) #21, !dbg !2838
  call void @llvm.dbg.value(metadata i8* %20, metadata !2820, metadata !DIExpression()) #21, !dbg !2821
  %21 = load i32, i32* %11, align 8, !dbg !2839, !tbaa !1967
  %22 = load i8*, i8** %14, align 8, !dbg !2840, !tbaa !2042
  %23 = load i8*, i8** %16, align 8, !dbg !2841, !tbaa !2045
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #21, !dbg !2842
  store i32 %7, i32* %6, align 4, !dbg !2843, !tbaa !1471
  ret i8* %20, !dbg !2844
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2809 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2808, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %1, metadata !2813, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64* %2, metadata !2814, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2815, metadata !DIExpression()), !dbg !2845
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2846
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2816, metadata !DIExpression()), !dbg !2845
  %7 = tail call i32* @__errno_location() #26, !dbg !2847
  %8 = load i32, i32* %7, align 4, !dbg !2847, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %8, metadata !2817, metadata !DIExpression()), !dbg !2845
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2848
  %10 = load i32, i32* %9, align 4, !dbg !2848, !tbaa !2019
  %11 = icmp ne i64* %2, null, !dbg !2849
  %12 = xor i1 %11, true, !dbg !2849
  %13 = zext i1 %12 to i32, !dbg !2849
  %14 = or i32 %10, %13, !dbg !2850
  call void @llvm.dbg.value(metadata i32 %14, metadata !2818, metadata !DIExpression()), !dbg !2845
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2851
  %16 = load i32, i32* %15, align 8, !dbg !2851, !tbaa !1967
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2852
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2853
  %19 = load i8*, i8** %18, align 8, !dbg !2853, !tbaa !2042
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2854
  %21 = load i8*, i8** %20, align 8, !dbg !2854, !tbaa !2045
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2855
  %23 = add i64 %22, 1, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %23, metadata !2819, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %23, metadata !2833, metadata !DIExpression()) #21, !dbg !2857
  %24 = tail call noalias i8* @xmalloc(i64 %23) #21, !dbg !2859
  call void @llvm.dbg.value(metadata i8* %24, metadata !2820, metadata !DIExpression()), !dbg !2845
  %25 = load i32, i32* %15, align 8, !dbg !2860, !tbaa !1967
  %26 = load i8*, i8** %18, align 8, !dbg !2861, !tbaa !2042
  %27 = load i8*, i8** %20, align 8, !dbg !2862, !tbaa !2045
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2863
  store i32 %8, i32* %7, align 4, !dbg !2864, !tbaa !1471
  br i1 %11, label %29, label %30, !dbg !2865

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2866, !tbaa !2868
  br label %30, !dbg !2869

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2870
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2871 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2875, !tbaa !1361
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 1, metadata !2874, metadata !DIExpression()), !dbg !2876
  %2 = load i32, i32* @nslots, align 4, !dbg !2877, !tbaa !1471
  %3 = icmp sgt i32 %2, 1, !dbg !2880
  br i1 %3, label %4, label %12, !dbg !2881

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2874, metadata !DIExpression()), !dbg !2876
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2882
  %7 = load i8*, i8** %6, align 8, !dbg !2882, !tbaa !2883
  tail call void @free(i8* %7) #21, !dbg !2885
  %8 = add nuw nsw i64 %5, 1, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %8, metadata !2874, metadata !DIExpression()), !dbg !2876
  %9 = load i32, i32* @nslots, align 4, !dbg !2877, !tbaa !1471
  %10 = sext i32 %9 to i64, !dbg !2880
  %11 = icmp slt i64 %8, %10, !dbg !2880
  br i1 %11, label %4, label %12, !dbg !2881, !llvm.loop !2887

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2889
  %14 = load i8*, i8** %13, align 8, !dbg !2889, !tbaa !2883
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2891
  br i1 %15, label %17, label %16, !dbg !2892

16:                                               ; preds = %12
  tail call void @free(i8* %14) #21, !dbg !2893
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2895, !tbaa !2896
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2897, !tbaa !2883
  br label %17, !dbg !2898

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2899
  br i1 %18, label %21, label %19, !dbg !2901

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2902
  tail call void @free(i8* %20) #21, !dbg !2904
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2905, !tbaa !1361
  br label %21, !dbg !2906

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2907, !tbaa !1471
  ret void, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2909 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2911, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8* %1, metadata !2912, metadata !DIExpression()), !dbg !2913
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2914
  ret i8* %3, !dbg !2915
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2920, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8* %1, metadata !2921, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %2, metadata !2922, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2923, metadata !DIExpression()), !dbg !2935
  %5 = tail call i32* @__errno_location() #26, !dbg !2936
  %6 = load i32, i32* %5, align 4, !dbg !2936, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %6, metadata !2924, metadata !DIExpression()), !dbg !2935
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2937, !tbaa !1361
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2925, metadata !DIExpression()), !dbg !2935
  %8 = icmp slt i32 %0, 0, !dbg !2938
  br i1 %8, label %9, label %10, !dbg !2940

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !2941
  unreachable, !dbg !2941

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2942, !tbaa !1471
  %12 = icmp sgt i32 %11, %0, !dbg !2943
  br i1 %12, label %34, label %13, !dbg !2944

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2945
  call void @llvm.dbg.value(metadata i1 %14, metadata !2926, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2929, metadata !DIExpression()), !dbg !2946
  %15 = icmp eq i32 %0, 2147483647, !dbg !2947
  br i1 %15, label %16, label %17, !dbg !2949

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !2950
  unreachable, !dbg !2950

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2951
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2951
  %20 = add nuw nsw i32 %0, 1, !dbg !2952
  %21 = sext i32 %20 to i64, !dbg !2953
  %22 = shl nuw nsw i64 %21, 4, !dbg !2954
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #21, !dbg !2955
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2955
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2925, metadata !DIExpression()), !dbg !2935
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2956, !tbaa !1361
  br i1 %14, label %25, label %26, !dbg !2957

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2958, !tbaa.struct !2960
  br label %26, !dbg !2961

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2962, !tbaa !1471
  %28 = sext i32 %27 to i64, !dbg !2963
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2963
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2964
  %31 = sub nsw i32 %20, %27, !dbg !2965
  %32 = sext i32 %31 to i64, !dbg !2966
  %33 = shl nsw i64 %32, 4, !dbg !2967
  call void @llvm.dbg.value(metadata i8* %30, metadata !2367, metadata !DIExpression()) #21, !dbg !2968
  call void @llvm.dbg.value(metadata i32 0, metadata !2372, metadata !DIExpression()) #21, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %33, metadata !2373, metadata !DIExpression()) #21, !dbg !2968
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #21, !dbg !2970
  store i32 %20, i32* @nslots, align 4, !dbg !2971, !tbaa !1471
  br label %34, !dbg !2972

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2935
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2925, metadata !DIExpression()), !dbg !2935
  %36 = zext i32 %0 to i64, !dbg !2973
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2974
  %38 = load i64, i64* %37, align 8, !dbg !2974, !tbaa !2896
  call void @llvm.dbg.value(metadata i64 %38, metadata !2930, metadata !DIExpression()), !dbg !2975
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2976
  %40 = load i8*, i8** %39, align 8, !dbg !2976, !tbaa !2883
  call void @llvm.dbg.value(metadata i8* %40, metadata !2932, metadata !DIExpression()), !dbg !2975
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2977
  %42 = load i32, i32* %41, align 4, !dbg !2977, !tbaa !2019
  %43 = or i32 %42, 1, !dbg !2978
  call void @llvm.dbg.value(metadata i32 %43, metadata !2933, metadata !DIExpression()), !dbg !2975
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2979
  %45 = load i32, i32* %44, align 8, !dbg !2979, !tbaa !1967
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2980
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2981
  %48 = load i8*, i8** %47, align 8, !dbg !2981, !tbaa !2042
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2982
  %50 = load i8*, i8** %49, align 8, !dbg !2982, !tbaa !2045
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %51, metadata !2934, metadata !DIExpression()), !dbg !2975
  %52 = icmp ugt i64 %38, %51, !dbg !2984
  br i1 %52, label %63, label %53, !dbg !2986

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %54, metadata !2930, metadata !DIExpression()), !dbg !2975
  store i64 %54, i64* %37, align 8, !dbg !2989, !tbaa !2896
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2990
  br i1 %55, label %57, label %56, !dbg !2992

56:                                               ; preds = %53
  tail call void @free(i8* %40) #21, !dbg !2993
  br label %57, !dbg !2993

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2833, metadata !DIExpression()) #21, !dbg !2994
  %58 = tail call noalias i8* @xmalloc(i64 %54) #21, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %58, metadata !2932, metadata !DIExpression()), !dbg !2975
  store i8* %58, i8** %39, align 8, !dbg !2997, !tbaa !2883
  %59 = load i32, i32* %44, align 8, !dbg !2998, !tbaa !1967
  %60 = load i8*, i8** %47, align 8, !dbg !2999, !tbaa !2042
  %61 = load i8*, i8** %49, align 8, !dbg !3000, !tbaa !2045
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3001
  br label %63, !dbg !3002

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2975
  call void @llvm.dbg.value(metadata i8* %64, metadata !2932, metadata !DIExpression()), !dbg !2975
  store i32 %6, i32* %5, align 4, !dbg !3003, !tbaa !1471
  ret i8* %64, !dbg !3004
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %1, metadata !3010, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %2, metadata !3011, metadata !DIExpression()), !dbg !3012
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3013
  ret i8* %4, !dbg !3014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 0, metadata !2911, metadata !DIExpression()) #21, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %0, metadata !2912, metadata !DIExpression()) #21, !dbg !3019
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #21, !dbg !3021
  ret i8* %2, !dbg !3022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %1, metadata !3028, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 0, metadata !3009, metadata !DIExpression()) #21, !dbg !3030
  call void @llvm.dbg.value(metadata i8* %0, metadata !3010, metadata !DIExpression()) #21, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3011, metadata !DIExpression()) #21, !dbg !3030
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #21, !dbg !3032
  ret i8* %3, !dbg !3033
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3034 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3038, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %1, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %2, metadata !3040, metadata !DIExpression()), !dbg !3042
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3043
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3041, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %1, metadata !3045, metadata !DIExpression()) #21, !dbg !3051
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3050, metadata !DIExpression()) #21, !dbg !3053
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #21, !dbg !3053, !alias.scope !3054
  %6 = icmp eq i32 %1, 10, !dbg !3057
  br i1 %6, label %7, label %8, !dbg !3059

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3060, !noalias !3054
  unreachable, !dbg !3060

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3061
  store i32 %1, i32* %9, align 8, !dbg !3062, !tbaa !1967, !alias.scope !3054
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3064
  ret i8* %10, !dbg !3065
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3066 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3070, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %1, metadata !3071, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %2, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %3, metadata !3073, metadata !DIExpression()), !dbg !3075
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3076
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3076
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3074, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 %1, metadata !3045, metadata !DIExpression()) #21, !dbg !3078
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3050, metadata !DIExpression()) #21, !dbg !3080
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #21, !dbg !3080, !alias.scope !3081
  %7 = icmp eq i32 %1, 10, !dbg !3084
  br i1 %7, label %8, label %9, !dbg !3085

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3086, !noalias !3081
  unreachable, !dbg !3086

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3087
  store i32 %1, i32* %10, align 8, !dbg !3088, !tbaa !1967, !alias.scope !3081
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3089
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3090
  ret i8* %11, !dbg !3091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3092 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3050, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3041, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i8* %1, metadata !3097, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i32 0, metadata !3038, metadata !DIExpression()) #21, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %0, metadata !3039, metadata !DIExpression()) #21, !dbg !3103
  call void @llvm.dbg.value(metadata i8* %1, metadata !3040, metadata !DIExpression()) #21, !dbg !3103
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3104
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %0, metadata !3045, metadata !DIExpression()) #21, !dbg !3105
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #21, !dbg !3098, !alias.scope !3106
  %5 = icmp eq i32 %0, 10, !dbg !3109
  br i1 %5, label %6, label %7, !dbg !3110

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !3111, !noalias !3106
  unreachable, !dbg !3111

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3112
  store i32 %0, i32* %8, align 8, !dbg !3113, !tbaa !1967, !alias.scope !3106
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #21, !dbg !3114
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3115
  ret i8* %9, !dbg !3116
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3117 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3050, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3074, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 %0, metadata !3121, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %1, metadata !3122, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %2, metadata !3123, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 0, metadata !3070, metadata !DIExpression()) #21, !dbg !3129
  call void @llvm.dbg.value(metadata i32 %0, metadata !3071, metadata !DIExpression()) #21, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %1, metadata !3072, metadata !DIExpression()) #21, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %2, metadata !3073, metadata !DIExpression()) #21, !dbg !3129
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3130
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %0, metadata !3045, metadata !DIExpression()) #21, !dbg !3131
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #21, !dbg !3124, !alias.scope !3132
  %6 = icmp eq i32 %0, 10, !dbg !3135
  br i1 %6, label %7, label %8, !dbg !3136

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3137, !noalias !3132
  unreachable, !dbg !3137

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3138
  store i32 %0, i32* %9, align 8, !dbg !3139, !tbaa !1967, !alias.scope !3132
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #21, !dbg !3140
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3141
  ret i8* %10, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3143 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %1, metadata !3148, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8 %2, metadata !3149, metadata !DIExpression()), !dbg !3151
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3152
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3152
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3154, !tbaa.struct !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1985, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8 %2, metadata !1986, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 1, metadata !1987, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8 %2, metadata !1988, metadata !DIExpression()), !dbg !3156
  %6 = lshr i8 %2, 5, !dbg !3158
  %7 = zext i8 %6 to i64, !dbg !3158
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3159
  call void @llvm.dbg.value(metadata i32* %8, metadata !1990, metadata !DIExpression()), !dbg !3156
  %9 = and i8 %2, 31, !dbg !3160
  %10 = zext i8 %9 to i32, !dbg !3160
  call void @llvm.dbg.value(metadata i32 %10, metadata !1992, metadata !DIExpression()), !dbg !3156
  %11 = load i32, i32* %8, align 4, !dbg !3161, !tbaa !1471
  %12 = lshr i32 %11, %10, !dbg !3162
  %13 = and i32 %12, 1, !dbg !3163
  call void @llvm.dbg.value(metadata i32 %13, metadata !1993, metadata !DIExpression()), !dbg !3156
  %14 = xor i32 %13, 1, !dbg !3164
  %15 = shl i32 %14, %10, !dbg !3165
  %16 = xor i32 %15, %11, !dbg !3166
  store i32 %16, i32* %8, align 4, !dbg !3166, !tbaa !1471
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3167
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3168
  ret i8* %17, !dbg !3169
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3170 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3150, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %0, metadata !3174, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8 %1, metadata !3175, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()) #21, !dbg !3179
  call void @llvm.dbg.value(metadata i64 -1, metadata !3148, metadata !DIExpression()) #21, !dbg !3179
  call void @llvm.dbg.value(metadata i8 %1, metadata !3149, metadata !DIExpression()) #21, !dbg !3179
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3180
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3181, !tbaa.struct !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1985, metadata !DIExpression()) #21, !dbg !3182
  call void @llvm.dbg.value(metadata i8 %1, metadata !1986, metadata !DIExpression()) #21, !dbg !3182
  call void @llvm.dbg.value(metadata i32 1, metadata !1987, metadata !DIExpression()) #21, !dbg !3182
  call void @llvm.dbg.value(metadata i8 %1, metadata !1988, metadata !DIExpression()) #21, !dbg !3182
  %5 = lshr i8 %1, 5, !dbg !3184
  %6 = zext i8 %5 to i64, !dbg !3184
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3185
  call void @llvm.dbg.value(metadata i32* %7, metadata !1990, metadata !DIExpression()) #21, !dbg !3182
  %8 = and i8 %1, 31, !dbg !3186
  %9 = zext i8 %8 to i32, !dbg !3186
  call void @llvm.dbg.value(metadata i32 %9, metadata !1992, metadata !DIExpression()) #21, !dbg !3182
  %10 = load i32, i32* %7, align 4, !dbg !3187, !tbaa !1471
  %11 = lshr i32 %10, %9, !dbg !3188
  %12 = and i32 %11, 1, !dbg !3189
  call void @llvm.dbg.value(metadata i32 %12, metadata !1993, metadata !DIExpression()) #21, !dbg !3182
  %13 = xor i32 %12, 1, !dbg !3190
  %14 = shl i32 %13, %9, !dbg !3191
  %15 = xor i32 %14, %10, !dbg !3192
  store i32 %15, i32* %7, align 4, !dbg !3192, !tbaa !1471
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #21, !dbg !3193
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3194
  ret i8* %16, !dbg !3195
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3196 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3150, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %0, metadata !3198, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8* %0, metadata !3174, metadata !DIExpression()) #21, !dbg !3203
  call void @llvm.dbg.value(metadata i8 58, metadata !3175, metadata !DIExpression()) #21, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()) #21, !dbg !3204
  call void @llvm.dbg.value(metadata i64 -1, metadata !3148, metadata !DIExpression()) #21, !dbg !3204
  call void @llvm.dbg.value(metadata i8 58, metadata !3149, metadata !DIExpression()) #21, !dbg !3204
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3205
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #21, !dbg !3205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3206, !tbaa.struct !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1985, metadata !DIExpression()) #21, !dbg !3207
  call void @llvm.dbg.value(metadata i8 58, metadata !1986, metadata !DIExpression()) #21, !dbg !3207
  call void @llvm.dbg.value(metadata i32 1, metadata !1987, metadata !DIExpression()) #21, !dbg !3207
  call void @llvm.dbg.value(metadata i8 58, metadata !1988, metadata !DIExpression()) #21, !dbg !3207
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3209
  call void @llvm.dbg.value(metadata i32* %4, metadata !1990, metadata !DIExpression()) #21, !dbg !3207
  call void @llvm.dbg.value(metadata i32 26, metadata !1992, metadata !DIExpression()) #21, !dbg !3207
  %5 = load i32, i32* %4, align 4, !dbg !3210, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %5, metadata !1993, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #21, !dbg !3207
  %6 = or i32 %5, 67108864, !dbg !3211
  store i32 %6, i32* %4, align 4, !dbg !3211, !tbaa !1471
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #21, !dbg !3212
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #21, !dbg !3213
  ret i8* %7, !dbg !3214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3215 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3150, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %0, metadata !3217, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()) #21, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %1, metadata !3148, metadata !DIExpression()) #21, !dbg !3222
  call void @llvm.dbg.value(metadata i8 58, metadata !3149, metadata !DIExpression()) #21, !dbg !3222
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3224, !tbaa.struct !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1985, metadata !DIExpression()) #21, !dbg !3225
  call void @llvm.dbg.value(metadata i8 58, metadata !1986, metadata !DIExpression()) #21, !dbg !3225
  call void @llvm.dbg.value(metadata i32 1, metadata !1987, metadata !DIExpression()) #21, !dbg !3225
  call void @llvm.dbg.value(metadata i8 58, metadata !1988, metadata !DIExpression()) #21, !dbg !3225
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3227
  call void @llvm.dbg.value(metadata i32* %5, metadata !1990, metadata !DIExpression()) #21, !dbg !3225
  call void @llvm.dbg.value(metadata i32 26, metadata !1992, metadata !DIExpression()) #21, !dbg !3225
  %6 = load i32, i32* %5, align 4, !dbg !3228, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %6, metadata !1993, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #21, !dbg !3225
  %7 = or i32 %6, 67108864, !dbg !3229
  store i32 %7, i32* %5, align 4, !dbg !3229, !tbaa !1471
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #21, !dbg !3230
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #21, !dbg !3231
  ret i8* %8, !dbg !3232
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3233 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3050, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3239
  call void @llvm.dbg.value(metadata i32 %0, metadata !3235, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %1, metadata !3236, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8* %2, metadata !3237, metadata !DIExpression()), !dbg !3241
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3242
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3242
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3238, metadata !DIExpression()), !dbg !3243
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3244
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3244
  call void @llvm.dbg.value(metadata i32 %1, metadata !3045, metadata !DIExpression()) #21, !dbg !3245
  call void @llvm.dbg.value(metadata i32 0, metadata !3050, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3245
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3239, !alias.scope !3246
  %8 = icmp eq i32 %1, 10, !dbg !3249
  br i1 %8, label %9, label %10, !dbg !3250

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3251, !noalias !3246
  unreachable, !dbg !3251

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3050, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3245
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3244
  store i32 %1, i32* %11, align 8, !dbg !3244, !tbaa.struct !3155
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3244
  %13 = bitcast i32* %12 to i8*, !dbg !3244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3244, !tbaa.struct !3155
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3244
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1985, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 58, metadata !1986, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 1, metadata !1987, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8 58, metadata !1988, metadata !DIExpression()), !dbg !3252
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32* %14, metadata !1990, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 26, metadata !1992, metadata !DIExpression()), !dbg !3252
  %15 = load i32, i32* %14, align 4, !dbg !3255, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %15, metadata !1993, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3252
  %16 = or i32 %15, 67108864, !dbg !3256
  store i32 %16, i32* %14, align 4, !dbg !3256, !tbaa !1471
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3257
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3258
  ret i8* %17, !dbg !3259
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3260 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3268, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i32 %0, metadata !3264, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %1, metadata !3265, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %2, metadata !3266, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %3, metadata !3267, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 %0, metadata !3273, metadata !DIExpression()) #21, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !3274, metadata !DIExpression()) #21, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %2, metadata !3275, metadata !DIExpression()) #21, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %3, metadata !3276, metadata !DIExpression()) #21, !dbg !3281
  call void @llvm.dbg.value(metadata i64 -1, metadata !3277, metadata !DIExpression()) #21, !dbg !3281
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3282
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3283, !tbaa.struct !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2026, metadata !DIExpression()) #21, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %1, metadata !2027, metadata !DIExpression()) #21, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %2, metadata !2028, metadata !DIExpression()) #21, !dbg !3284
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2026, metadata !DIExpression()) #21, !dbg !3284
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3286
  store i32 10, i32* %7, align 8, !dbg !3287, !tbaa !1967
  %8 = icmp ne i8* %1, null, !dbg !3288
  %9 = icmp ne i8* %2, null, !dbg !3289
  %10 = and i1 %8, %9, !dbg !3290
  br i1 %10, label %12, label %11, !dbg !3290

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3291
  unreachable, !dbg !3291

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3292
  store i8* %1, i8** %13, align 8, !dbg !3293, !tbaa !2042
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3294
  store i8* %2, i8** %14, align 8, !dbg !3295, !tbaa !2045
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #21, !dbg !3296
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3297
  ret i8* %15, !dbg !3298
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3269 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3273, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8* %1, metadata !3274, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8* %2, metadata !3275, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8* %3, metadata !3276, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %4, metadata !3277, metadata !DIExpression()), !dbg !3299
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3300
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #21, !dbg !3300
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3268, metadata !DIExpression()), !dbg !3301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3302, !tbaa.struct !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2026, metadata !DIExpression()) #21, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %1, metadata !2027, metadata !DIExpression()) #21, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %2, metadata !2028, metadata !DIExpression()) #21, !dbg !3303
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2026, metadata !DIExpression()) #21, !dbg !3303
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3305
  store i32 10, i32* %8, align 8, !dbg !3306, !tbaa !1967
  %9 = icmp ne i8* %1, null, !dbg !3307
  %10 = icmp ne i8* %2, null, !dbg !3308
  %11 = and i1 %9, %10, !dbg !3309
  br i1 %11, label %13, label %12, !dbg !3309

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !3310
  unreachable, !dbg !3310

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3311
  store i8* %1, i8** %14, align 8, !dbg !3312, !tbaa !2042
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3313
  store i8* %2, i8** %15, align 8, !dbg !3314, !tbaa !2045
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3315
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #21, !dbg !3316
  ret i8* %16, !dbg !3317
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3318 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3268, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8* %0, metadata !3322, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8* %1, metadata !3323, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8* %2, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 0, metadata !3264, metadata !DIExpression()) #21, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #21, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %1, metadata !3266, metadata !DIExpression()) #21, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %2, metadata !3267, metadata !DIExpression()) #21, !dbg !3329
  call void @llvm.dbg.value(metadata i32 0, metadata !3273, metadata !DIExpression()) #21, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %0, metadata !3274, metadata !DIExpression()) #21, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %1, metadata !3275, metadata !DIExpression()) #21, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %2, metadata !3276, metadata !DIExpression()) #21, !dbg !3330
  call void @llvm.dbg.value(metadata i64 -1, metadata !3277, metadata !DIExpression()) #21, !dbg !3330
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3331
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3332, !tbaa.struct !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2026, metadata !DIExpression()) #21, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !2027, metadata !DIExpression()) #21, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %1, metadata !2028, metadata !DIExpression()) #21, !dbg !3333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2026, metadata !DIExpression()) #21, !dbg !3333
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3335
  store i32 10, i32* %6, align 8, !dbg !3336, !tbaa !1967
  %7 = icmp ne i8* %0, null, !dbg !3337
  %8 = icmp ne i8* %1, null, !dbg !3338
  %9 = and i1 %7, %8, !dbg !3339
  br i1 %9, label %11, label %10, !dbg !3339

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !3340
  unreachable, !dbg !3340

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3341
  store i8* %0, i8** %12, align 8, !dbg !3342, !tbaa !2042
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3343
  store i8* %1, i8** %13, align 8, !dbg !3344, !tbaa !2045
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #21, !dbg !3345
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #21, !dbg !3346
  ret i8* %14, !dbg !3347
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3348 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3268, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %1, metadata !3353, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %2, metadata !3354, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %3, metadata !3355, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 0, metadata !3273, metadata !DIExpression()) #21, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %0, metadata !3274, metadata !DIExpression()) #21, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %1, metadata !3275, metadata !DIExpression()) #21, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %2, metadata !3276, metadata !DIExpression()) #21, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %3, metadata !3277, metadata !DIExpression()) #21, !dbg !3359
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3360
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #21, !dbg !3361, !tbaa.struct !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2026, metadata !DIExpression()) #21, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %0, metadata !2027, metadata !DIExpression()) #21, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !2028, metadata !DIExpression()) #21, !dbg !3362
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2026, metadata !DIExpression()) #21, !dbg !3362
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3364
  store i32 10, i32* %7, align 8, !dbg !3365, !tbaa !1967
  %8 = icmp ne i8* %0, null, !dbg !3366
  %9 = icmp ne i8* %1, null, !dbg !3367
  %10 = and i1 %8, %9, !dbg !3368
  br i1 %10, label %12, label %11, !dbg !3368

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3369
  unreachable, !dbg !3369

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3370
  store i8* %0, i8** %13, align 8, !dbg !3371, !tbaa !2042
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3372
  store i8* %1, i8** %14, align 8, !dbg !3373, !tbaa !2045
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #21, !dbg !3374
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #21, !dbg !3375
  ret i8* %15, !dbg !3376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3377 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3381, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %1, metadata !3382, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %2, metadata !3383, metadata !DIExpression()), !dbg !3384
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3385
  ret i8* %4, !dbg !3386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3387 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3391, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i32 0, metadata !3381, metadata !DIExpression()) #21, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %0, metadata !3382, metadata !DIExpression()) #21, !dbg !3394
  call void @llvm.dbg.value(metadata i64 %1, metadata !3383, metadata !DIExpression()) #21, !dbg !3394
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #21, !dbg !3396
  ret i8* %3, !dbg !3397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3402, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8* %1, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i32 %0, metadata !3381, metadata !DIExpression()) #21, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %1, metadata !3382, metadata !DIExpression()) #21, !dbg !3405
  call void @llvm.dbg.value(metadata i64 -1, metadata !3383, metadata !DIExpression()) #21, !dbg !3405
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #21, !dbg !3407
  ret i8* %3, !dbg !3408
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3409 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3411, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i32 0, metadata !3402, metadata !DIExpression()) #21, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %0, metadata !3403, metadata !DIExpression()) #21, !dbg !3413
  call void @llvm.dbg.value(metadata i32 0, metadata !3381, metadata !DIExpression()) #21, !dbg !3415
  call void @llvm.dbg.value(metadata i8* %0, metadata !3382, metadata !DIExpression()) #21, !dbg !3415
  call void @llvm.dbg.value(metadata i64 -1, metadata !3383, metadata !DIExpression()) #21, !dbg !3415
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #21, !dbg !3417
  ret i8* %2, !dbg !3418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @try_tempname_len(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* nocapture %3, i64 %4) local_unnamed_addr #8 !dbg !3419 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3426, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %1, metadata !3427, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i8* %2, metadata !3428, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, metadata !3429, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %4, metadata !3430, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 -1, metadata !3434, metadata !DIExpression()), !dbg !3445
  %6 = tail call i32* @__errno_location() #26, !dbg !3446
  %7 = load i32, i32* %6, align 4, !dbg !3446, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %7, metadata !3435, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 238328, metadata !3437, metadata !DIExpression()), !dbg !3445
  %8 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !3447
  call void @llvm.dbg.value(metadata i64 %8, metadata !3431, metadata !DIExpression()), !dbg !3445
  %9 = sext i32 %1 to i64, !dbg !3448
  %10 = add i64 %9, %4, !dbg !3450
  %11 = icmp ult i64 %8, %10, !dbg !3451
  br i1 %11, label %48, label %12, !dbg !3452

12:                                               ; preds = %5
  %13 = sub i64 %8, %10, !dbg !3453
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !3454
  call void @llvm.dbg.value(metadata i8* %14, metadata !3455, metadata !DIExpression()) #21, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %4, metadata !3460, metadata !DIExpression()) #21, !dbg !3461
  %15 = tail call i64 @strspn(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.97, i64 0, i64 0)) #23, !dbg !3463
  %16 = icmp ult i64 %15, %4, !dbg !3464
  br i1 %16, label %48, label %17, !dbg !3465

17:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8* %14, metadata !3432, metadata !DIExpression()), !dbg !3445
  %18 = tail call %struct.randint_source* @randint_all_new(i8* null, i64 %4) #21, !dbg !3466
  call void @llvm.dbg.value(metadata %struct.randint_source* %18, metadata !3436, metadata !DIExpression()), !dbg !3445
  %19 = icmp eq %struct.randint_source* %18, null, !dbg !3467
  br i1 %19, label %51, label %20, !dbg !3469

20:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 0, metadata !3433, metadata !DIExpression()), !dbg !3445
  %21 = icmp eq i64 %4, 0, !dbg !3470
  br label %24, !dbg !3473

22:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %41, metadata !3433, metadata !DIExpression()), !dbg !3445
  %23 = icmp eq i32 %41, 238328, !dbg !3474
  br i1 %23, label %42, label %24, !dbg !3473, !llvm.loop !3475

24:                                               ; preds = %22, %20
  %25 = phi i32 [ 0, %20 ], [ %41, %22 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !3433, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 0, metadata !3438, metadata !DIExpression()), !dbg !3477
  br i1 %21, label %34, label %26, !dbg !3478

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %32, %26 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !3438, metadata !DIExpression()), !dbg !3477
  %28 = tail call i64 @randint_genmax(%struct.randint_source* nonnull %18, i64 61) #21, !dbg !3479
  %29 = getelementptr inbounds [63 x i8], [63 x i8]* @letters, i64 0, i64 %28, !dbg !3480
  %30 = load i8, i8* %29, align 1, !dbg !3480, !tbaa !1496
  %31 = getelementptr inbounds i8, i8* %14, i64 %27, !dbg !3481
  store i8 %30, i8* %31, align 1, !dbg !3482, !tbaa !1496
  %32 = add nuw i64 %27, 1, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %32, metadata !3438, metadata !DIExpression()), !dbg !3477
  %33 = icmp eq i64 %32, %4, !dbg !3484
  br i1 %33, label %34, label %26, !dbg !3478, !llvm.loop !3485

34:                                               ; preds = %26, %24
  %35 = tail call i32 %3(i8* %0, i8* %2) #21, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %35, metadata !3434, metadata !DIExpression()), !dbg !3445
  %36 = icmp sgt i32 %35, -1, !dbg !3488
  br i1 %36, label %37, label %38, !dbg !3490

37:                                               ; preds = %34
  store i32 %7, i32* %6, align 4, !dbg !3491, !tbaa !1471
  br label %44, !dbg !3493

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4, !dbg !3494, !tbaa !1471
  %40 = icmp eq i32 %39, 17, !dbg !3496
  call void @llvm.dbg.value(metadata i32 undef, metadata !3434, metadata !DIExpression()), !dbg !3445
  %41 = add nuw nsw i32 %25, 1, !dbg !3497
  call void @llvm.dbg.value(metadata i32 %41, metadata !3433, metadata !DIExpression()), !dbg !3445
  br i1 %40, label %22, label %44

42:                                               ; preds = %22
  %43 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #21, !dbg !3498
  br label %48, !dbg !3499

44:                                               ; preds = %38, %37
  %45 = phi i32 [ %7, %37 ], [ %39, %38 ], !dbg !3500
  %46 = phi i32 [ %35, %37 ], [ -1, %38 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3434, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.label(metadata !3444), !dbg !3501
  call void @llvm.dbg.value(metadata i32 %45, metadata !3442, metadata !DIExpression()), !dbg !3502
  %47 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #21, !dbg !3503
  br label %48, !dbg !3504

48:                                               ; preds = %5, %12, %42, %44
  %49 = phi i32 [ %45, %44 ], [ 17, %42 ], [ 22, %12 ], [ 22, %5 ]
  %50 = phi i32 [ %46, %44 ], [ -1, %42 ], [ -1, %12 ], [ -1, %5 ]
  store i32 %49, i32* %6, align 4, !dbg !3445, !tbaa !1471
  br label %51, !dbg !3505

51:                                               ; preds = %48, %17
  %52 = phi i32 [ -1, %17 ], [ %50, %48 ]
  ret i32 %52, !dbg !3505
}

; Function Attrs: nofree nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @gen_tempname_len(i8* %0, i32 %1, i32 %2, i32 %3, i64 %4) local_unnamed_addr #8 !dbg !3506 {
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3510, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %1, metadata !3511, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %2, metadata !3512, metadata !DIExpression()), !dbg !3516
  store i32 %2, i32* %6, align 4, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %3, metadata !3513, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 %4, metadata !3514, metadata !DIExpression()), !dbg !3516
  %7 = icmp ult i32 %3, 3, !dbg !3517
  br i1 %7, label %9, label %8, !dbg !3517

8:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.101, i64 0, i64 0), i32 327, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #24, !dbg !3518
  unreachable, !dbg !3518

9:                                                ; preds = %5
  %10 = sext i32 %3 to i64, !dbg !3517
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.gen_tempname, i64 0, i64 %10, !dbg !3517
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3517
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, metadata !3515, metadata !DIExpression()), !dbg !3516
  %13 = bitcast i32* %6 to i8*, !dbg !3522
  call void @llvm.dbg.value(metadata i32* %6, metadata !3512, metadata !DIExpression(DW_OP_deref)), !dbg !3516
  %14 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %13, i32 (i8*, i8*)* nonnull %12, i64 %4), !dbg !3523
  ret i32 %14, !dbg !3524
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind sspstrong uwtable
define internal i32 @try_file(i8* nocapture readonly %0, i8* nocapture readonly %1) #19 !dbg !3525 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3527, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8* %1, metadata !3528, metadata !DIExpression()), !dbg !3530
  %3 = bitcast i8* %1 to i32*, !dbg !3531
  call void @llvm.dbg.value(metadata i32* %3, metadata !3529, metadata !DIExpression()), !dbg !3530
  %4 = load i32, i32* %3, align 4, !dbg !3532, !tbaa !1471
  %5 = and i32 %4, -196, !dbg !3533
  %6 = or i32 %5, 194, !dbg !3534
  %7 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 %6, i32 384) #21, !dbg !3535
  ret i32 %7, !dbg !3536
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal i32 @try_dir(i8* nocapture readonly %0, i8* nocapture readnone %1) #19 !dbg !3537 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3539, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !3540, metadata !DIExpression()), !dbg !3541
  %3 = tail call i32 @mkdir(i8* %0, i32 448) #21, !dbg !3542
  ret i32 %3, !dbg !3543
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_nocreate(i8* %0, i8* nocapture readnone %1) #8 !dbg !3544 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3546, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8* %1, metadata !3547, metadata !DIExpression()), !dbg !3584
  %4 = bitcast %struct.stat* %3 to i8*, !dbg !3585
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %4) #21, !dbg !3585
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !3548, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()) #21, !dbg !3594
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !3593, metadata !DIExpression()) #21, !dbg !3594
  %5 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %3) #21, !dbg !3597
  %6 = icmp eq i32 %5, 0, !dbg !3598
  %7 = tail call i32* @__errno_location() #26, !dbg !3599
  br i1 %6, label %11, label %8, !dbg !3600

8:                                                ; preds = %2
  %9 = load i32, i32* %7, align 4, !dbg !3601, !tbaa !1471
  %10 = icmp eq i32 %9, 75, !dbg !3602
  br i1 %10, label %11, label %12, !dbg !3603

11:                                               ; preds = %2, %8
  store i32 17, i32* %7, align 4, !dbg !3604, !tbaa !1471
  br label %12, !dbg !3604

12:                                               ; preds = %11, %8
  %13 = load i32, i32* %7, align 4, !dbg !3605, !tbaa !1471
  %14 = icmp ne i32 %13, 2, !dbg !3606
  %15 = sext i1 %14 to i32, !dbg !3605
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %4) #21, !dbg !3607
  ret i32 %15, !dbg !3608
}

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !418 i32 @mkdir(i8* nocapture readonly, i32) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !414 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @gen_tempname(i8* %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #8 !dbg !3609 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3613, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %1, metadata !3614, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %2, metadata !3615, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %3, metadata !3616, metadata !DIExpression()), !dbg !3617
  %6 = bitcast i32* %5 to i8*, !dbg !3618
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6), !dbg !3618
  call void @llvm.dbg.value(metadata i8* %0, metadata !3510, metadata !DIExpression()) #21, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %1, metadata !3511, metadata !DIExpression()) #21, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %2, metadata !3512, metadata !DIExpression()) #21, !dbg !3618
  store i32 %2, i32* %5, align 4, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %3, metadata !3513, metadata !DIExpression()) #21, !dbg !3618
  call void @llvm.dbg.value(metadata i64 6, metadata !3514, metadata !DIExpression()) #21, !dbg !3618
  %7 = icmp ult i32 %3, 3, !dbg !3620
  br i1 %7, label %9, label %8, !dbg !3620

8:                                                ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.101, i64 0, i64 0), i32 327, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #24, !dbg !3621
  unreachable, !dbg !3621

9:                                                ; preds = %4
  %10 = sext i32 %3 to i64, !dbg !3620
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.gen_tempname, i64 0, i64 %10, !dbg !3620
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3620
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, metadata !3515, metadata !DIExpression()) #21, !dbg !3618
  call void @llvm.dbg.value(metadata i32* %5, metadata !3512, metadata !DIExpression(DW_OP_deref)) #21, !dbg !3618
  %13 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %6, i32 (i8*, i8*)* nonnull %12, i64 6) #21, !dbg !3622
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6), !dbg !3623
  ret i32 %13, !dbg !3624
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @try_tempname(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* nocapture %3) local_unnamed_addr #8 !dbg !3625 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3629, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i32 %1, metadata !3630, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8* %2, metadata !3631, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, metadata !3632, metadata !DIExpression()), !dbg !3633
  %5 = tail call i32 @try_tempname_len(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* %3, i64 6), !dbg !3634
  ret i32 %5, !dbg !3635
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3636 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3643, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8* %1, metadata !3644, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8* %2, metadata !3645, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8* %3, metadata !3646, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8** %4, metadata !3647, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %5, metadata !3648, metadata !DIExpression()), !dbg !3649
  %7 = icmp eq i8* %1, null, !dbg !3650
  br i1 %7, label %10, label %8, !dbg !3652

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #21, !dbg !3653
  br label %12, !dbg !3653

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.103, i64 0, i64 0), i8* %2, i8* %3) #21, !dbg !3654
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.104, i64 0, i64 0), i32 5) #21, !dbg !3655
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #21, !dbg !3655
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3656
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.106, i64 0, i64 0), i32 5) #21, !dbg !3657
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.107, i64 0, i64 0)) #21, !dbg !3657
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3658
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
  ], !dbg !3659

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.108, i64 0, i64 0), i32 5) #21, !dbg !3660
  %21 = load i8*, i8** %4, align 8, !dbg !3660, !tbaa !1361
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #21, !dbg !3660
  br label %147, !dbg !3662

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.109, i64 0, i64 0), i32 5) #21, !dbg !3663
  %25 = load i8*, i8** %4, align 8, !dbg !3663, !tbaa !1361
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3663
  %27 = load i8*, i8** %26, align 8, !dbg !3663, !tbaa !1361
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #21, !dbg !3663
  br label %147, !dbg !3664

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.110, i64 0, i64 0), i32 5) #21, !dbg !3665
  %31 = load i8*, i8** %4, align 8, !dbg !3665, !tbaa !1361
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3665
  %33 = load i8*, i8** %32, align 8, !dbg !3665, !tbaa !1361
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3665
  %35 = load i8*, i8** %34, align 8, !dbg !3665, !tbaa !1361
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #21, !dbg !3665
  br label %147, !dbg !3666

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.111, i64 0, i64 0), i32 5) #21, !dbg !3667
  %39 = load i8*, i8** %4, align 8, !dbg !3667, !tbaa !1361
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3667
  %41 = load i8*, i8** %40, align 8, !dbg !3667, !tbaa !1361
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3667
  %43 = load i8*, i8** %42, align 8, !dbg !3667, !tbaa !1361
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3667
  %45 = load i8*, i8** %44, align 8, !dbg !3667, !tbaa !1361
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #21, !dbg !3667
  br label %147, !dbg !3668

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.112, i64 0, i64 0), i32 5) #21, !dbg !3669
  %49 = load i8*, i8** %4, align 8, !dbg !3669, !tbaa !1361
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3669
  %51 = load i8*, i8** %50, align 8, !dbg !3669, !tbaa !1361
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3669
  %53 = load i8*, i8** %52, align 8, !dbg !3669, !tbaa !1361
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3669
  %55 = load i8*, i8** %54, align 8, !dbg !3669, !tbaa !1361
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3669
  %57 = load i8*, i8** %56, align 8, !dbg !3669, !tbaa !1361
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #21, !dbg !3669
  br label %147, !dbg !3670

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.113, i64 0, i64 0), i32 5) #21, !dbg !3671
  %61 = load i8*, i8** %4, align 8, !dbg !3671, !tbaa !1361
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3671
  %63 = load i8*, i8** %62, align 8, !dbg !3671, !tbaa !1361
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3671
  %65 = load i8*, i8** %64, align 8, !dbg !3671, !tbaa !1361
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3671
  %67 = load i8*, i8** %66, align 8, !dbg !3671, !tbaa !1361
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3671
  %69 = load i8*, i8** %68, align 8, !dbg !3671, !tbaa !1361
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3671
  %71 = load i8*, i8** %70, align 8, !dbg !3671, !tbaa !1361
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #21, !dbg !3671
  br label %147, !dbg !3672

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.114, i64 0, i64 0), i32 5) #21, !dbg !3673
  %75 = load i8*, i8** %4, align 8, !dbg !3673, !tbaa !1361
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3673
  %77 = load i8*, i8** %76, align 8, !dbg !3673, !tbaa !1361
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3673
  %79 = load i8*, i8** %78, align 8, !dbg !3673, !tbaa !1361
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3673
  %81 = load i8*, i8** %80, align 8, !dbg !3673, !tbaa !1361
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3673
  %83 = load i8*, i8** %82, align 8, !dbg !3673, !tbaa !1361
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3673
  %85 = load i8*, i8** %84, align 8, !dbg !3673, !tbaa !1361
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3673
  %87 = load i8*, i8** %86, align 8, !dbg !3673, !tbaa !1361
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #21, !dbg !3673
  br label %147, !dbg !3674

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.115, i64 0, i64 0), i32 5) #21, !dbg !3675
  %91 = load i8*, i8** %4, align 8, !dbg !3675, !tbaa !1361
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3675
  %93 = load i8*, i8** %92, align 8, !dbg !3675, !tbaa !1361
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3675
  %95 = load i8*, i8** %94, align 8, !dbg !3675, !tbaa !1361
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3675
  %97 = load i8*, i8** %96, align 8, !dbg !3675, !tbaa !1361
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3675
  %99 = load i8*, i8** %98, align 8, !dbg !3675, !tbaa !1361
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3675
  %101 = load i8*, i8** %100, align 8, !dbg !3675, !tbaa !1361
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3675
  %103 = load i8*, i8** %102, align 8, !dbg !3675, !tbaa !1361
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3675
  %105 = load i8*, i8** %104, align 8, !dbg !3675, !tbaa !1361
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #21, !dbg !3675
  br label %147, !dbg !3676

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.116, i64 0, i64 0), i32 5) #21, !dbg !3677
  %109 = load i8*, i8** %4, align 8, !dbg !3677, !tbaa !1361
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3677
  %111 = load i8*, i8** %110, align 8, !dbg !3677, !tbaa !1361
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3677
  %113 = load i8*, i8** %112, align 8, !dbg !3677, !tbaa !1361
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3677
  %115 = load i8*, i8** %114, align 8, !dbg !3677, !tbaa !1361
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3677
  %117 = load i8*, i8** %116, align 8, !dbg !3677, !tbaa !1361
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3677
  %119 = load i8*, i8** %118, align 8, !dbg !3677, !tbaa !1361
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3677
  %121 = load i8*, i8** %120, align 8, !dbg !3677, !tbaa !1361
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3677
  %123 = load i8*, i8** %122, align 8, !dbg !3677, !tbaa !1361
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3677
  %125 = load i8*, i8** %124, align 8, !dbg !3677, !tbaa !1361
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #21, !dbg !3677
  br label %147, !dbg !3678

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.117, i64 0, i64 0), i32 5) #21, !dbg !3679
  %129 = load i8*, i8** %4, align 8, !dbg !3679, !tbaa !1361
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3679
  %131 = load i8*, i8** %130, align 8, !dbg !3679, !tbaa !1361
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3679
  %133 = load i8*, i8** %132, align 8, !dbg !3679, !tbaa !1361
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3679
  %135 = load i8*, i8** %134, align 8, !dbg !3679, !tbaa !1361
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3679
  %137 = load i8*, i8** %136, align 8, !dbg !3679, !tbaa !1361
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3679
  %139 = load i8*, i8** %138, align 8, !dbg !3679, !tbaa !1361
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3679
  %141 = load i8*, i8** %140, align 8, !dbg !3679, !tbaa !1361
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3679
  %143 = load i8*, i8** %142, align 8, !dbg !3679, !tbaa !1361
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3679
  %145 = load i8*, i8** %144, align 8, !dbg !3679, !tbaa !1361
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #21, !dbg !3679
  br label %147, !dbg !3680

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3681
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3682 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3686, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8* %1, metadata !3687, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8* %2, metadata !3688, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8* %3, metadata !3689, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8** %4, metadata !3690, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 0, metadata !3691, metadata !DIExpression()), !dbg !3692
  br label %6, !dbg !3693

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3695
  call void @llvm.dbg.value(metadata i64 %7, metadata !3691, metadata !DIExpression()), !dbg !3692
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3696
  %9 = load i8*, i8** %8, align 8, !dbg !3696, !tbaa !1361
  %10 = icmp eq i8* %9, null, !dbg !3698
  %11 = add i64 %7, 1, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %11, metadata !3691, metadata !DIExpression()), !dbg !3692
  br i1 %10, label %12, label %6, !dbg !3698, !llvm.loop !3700

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %7, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %7, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %7, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %7, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %7, metadata !3691, metadata !DIExpression()), !dbg !3692
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3702
  ret void, !dbg !3703
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3704 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3715, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i8* %1, metadata !3716, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i8* %2, metadata !3717, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i8* %3, metadata !3718, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3719, metadata !DIExpression()), !dbg !3723
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3724
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #21, !dbg !3724
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3721, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 0, metadata !3720, metadata !DIExpression()), !dbg !3723
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3726
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3726
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3726
  %11 = load i32, i32* %8, align 8, !dbg !3729
  %12 = icmp ult i32 %11, 41, !dbg !3729
  br i1 %12, label %13, label %18, !dbg !3729

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3729
  %15 = zext i32 %11 to i64, !dbg !3729
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3729
  %17 = add nuw nsw i32 %11, 8, !dbg !3729
  store i32 %17, i32* %8, align 8, !dbg !3729
  br label %21, !dbg !3729

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3729
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3729
  store i8* %20, i8** %9, align 8, !dbg !3729
  br label %21, !dbg !3729

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3729
  %25 = load i8*, i8** %24, align 8, !dbg !3729
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3730
  store i8* %25, i8** %26, align 16, !dbg !3731, !tbaa !1361
  %27 = icmp eq i8* %25, null, !dbg !3732
  br i1 %27, label %30, label %28, !dbg !3733

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3720, metadata !DIExpression()), !dbg !3723
  %29 = icmp ult i32 %22, 41, !dbg !3729
  br i1 %29, label %35, label %32, !dbg !3729

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3734
  call void @llvm.dbg.value(metadata i64 %31, metadata !3720, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 %31, metadata !3720, metadata !DIExpression()), !dbg !3723
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3735
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #21, !dbg !3736
  ret void, !dbg !3736

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3729
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3729
  store i8* %34, i8** %9, align 8, !dbg !3729
  br label %40, !dbg !3729

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3729
  %37 = zext i32 %22 to i64, !dbg !3729
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3729
  %39 = add nuw nsw i32 %22, 8, !dbg !3729
  store i32 %39, i32* %8, align 8, !dbg !3729
  br label %40, !dbg !3729

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3729
  %44 = load i8*, i8** %43, align 8, !dbg !3729
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3730
  store i8* %44, i8** %45, align 8, !dbg !3731, !tbaa !1361
  %46 = icmp eq i8* %44, null, !dbg !3732
  br i1 %46, label %30, label %47, !dbg !3733

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3720, metadata !DIExpression()), !dbg !3723
  %48 = icmp ult i32 %41, 41, !dbg !3729
  br i1 %48, label %52, label %49, !dbg !3729

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3729
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3729
  store i8* %51, i8** %9, align 8, !dbg !3729
  br label %57, !dbg !3729

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3729
  %54 = zext i32 %41 to i64, !dbg !3729
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3729
  %56 = add nuw nsw i32 %41, 8, !dbg !3729
  store i32 %56, i32* %8, align 8, !dbg !3729
  br label %57, !dbg !3729

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3729
  %61 = load i8*, i8** %60, align 8, !dbg !3729
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3730
  store i8* %61, i8** %62, align 16, !dbg !3731, !tbaa !1361
  %63 = icmp eq i8* %61, null, !dbg !3732
  br i1 %63, label %30, label %64, !dbg !3733

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3720, metadata !DIExpression()), !dbg !3723
  %65 = icmp ult i32 %58, 41, !dbg !3729
  br i1 %65, label %69, label %66, !dbg !3729

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3729
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3729
  store i8* %68, i8** %9, align 8, !dbg !3729
  br label %74, !dbg !3729

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3729
  %71 = zext i32 %58 to i64, !dbg !3729
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3729
  %73 = add nuw nsw i32 %58, 8, !dbg !3729
  store i32 %73, i32* %8, align 8, !dbg !3729
  br label %74, !dbg !3729

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3729
  %78 = load i8*, i8** %77, align 8, !dbg !3729
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3730
  store i8* %78, i8** %79, align 8, !dbg !3731, !tbaa !1361
  %80 = icmp eq i8* %78, null, !dbg !3732
  br i1 %80, label %30, label %81, !dbg !3733

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3720, metadata !DIExpression()), !dbg !3723
  %82 = icmp ult i32 %75, 41, !dbg !3729
  br i1 %82, label %86, label %83, !dbg !3729

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3729
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3729
  store i8* %85, i8** %9, align 8, !dbg !3729
  br label %91, !dbg !3729

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3729
  %88 = zext i32 %75 to i64, !dbg !3729
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3729
  %90 = add nuw nsw i32 %75, 8, !dbg !3729
  store i32 %90, i32* %8, align 8, !dbg !3729
  br label %91, !dbg !3729

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3729
  %95 = load i8*, i8** %94, align 8, !dbg !3729
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3730
  store i8* %95, i8** %96, align 16, !dbg !3731, !tbaa !1361
  %97 = icmp eq i8* %95, null, !dbg !3732
  br i1 %97, label %30, label %98, !dbg !3733

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3720, metadata !DIExpression()), !dbg !3723
  %99 = icmp ult i32 %92, 41, !dbg !3729
  br i1 %99, label %103, label %100, !dbg !3729

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3729
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3729
  store i8* %102, i8** %9, align 8, !dbg !3729
  br label %108, !dbg !3729

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3729
  %105 = zext i32 %92 to i64, !dbg !3729
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3729
  %107 = add nuw nsw i32 %92, 8, !dbg !3729
  store i32 %107, i32* %8, align 8, !dbg !3729
  br label %108, !dbg !3729

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3729
  %111 = load i8*, i8** %110, align 8, !dbg !3729
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3730
  store i8* %111, i8** %112, align 8, !dbg !3731, !tbaa !1361
  %113 = icmp eq i8* %111, null, !dbg !3732
  br i1 %113, label %30, label %114, !dbg !3733

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3720, metadata !DIExpression()), !dbg !3723
  %115 = load i8*, i8** %9, align 8, !dbg !3729
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3729
  store i8* %116, i8** %9, align 8, !dbg !3729
  %117 = bitcast i8* %115 to i8**, !dbg !3729
  %118 = load i8*, i8** %117, align 8, !dbg !3729
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3730
  store i8* %118, i8** %119, align 16, !dbg !3731, !tbaa !1361
  %120 = icmp eq i8* %118, null, !dbg !3732
  br i1 %120, label %30, label %121, !dbg !3733

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3720, metadata !DIExpression()), !dbg !3723
  %122 = load i8*, i8** %9, align 8, !dbg !3729
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3729
  store i8* %123, i8** %9, align 8, !dbg !3729
  %124 = bitcast i8* %122 to i8**, !dbg !3729
  %125 = load i8*, i8** %124, align 8, !dbg !3729
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3730
  store i8* %125, i8** %126, align 8, !dbg !3731, !tbaa !1361
  %127 = icmp eq i8* %125, null, !dbg !3732
  br i1 %127, label %30, label %128, !dbg !3733

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3720, metadata !DIExpression()), !dbg !3723
  %129 = load i8*, i8** %9, align 8, !dbg !3729
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3729
  store i8* %130, i8** %9, align 8, !dbg !3729
  %131 = bitcast i8* %129 to i8**, !dbg !3729
  %132 = load i8*, i8** %131, align 8, !dbg !3729
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3730
  store i8* %132, i8** %133, align 16, !dbg !3731, !tbaa !1361
  %134 = icmp eq i8* %132, null, !dbg !3732
  br i1 %134, label %30, label %135, !dbg !3733

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3720, metadata !DIExpression()), !dbg !3723
  %136 = load i8*, i8** %9, align 8, !dbg !3729
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3729
  store i8* %137, i8** %9, align 8, !dbg !3729
  %138 = bitcast i8* %136 to i8**, !dbg !3729
  %139 = load i8*, i8** %138, align 8, !dbg !3729
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3730
  store i8* %139, i8** %140, align 8, !dbg !3731, !tbaa !1361
  %141 = icmp eq i8* %139, null, !dbg !3732
  %142 = select i1 %141, i64 9, i64 10, !dbg !3733
  br label %30, !dbg !3733
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3737 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3741, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i8* %1, metadata !3742, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i8* %2, metadata !3743, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i8* %3, metadata !3744, metadata !DIExpression()), !dbg !3751
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3752
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #21, !dbg !3752
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3745, metadata !DIExpression()), !dbg !3753
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3754
  call void @llvm.va_start(i8* nonnull %6), !dbg !3754
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3755
  call void @llvm.va_end(i8* nonnull %6), !dbg !3756
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #21, !dbg !3757
  ret void, !dbg !3757
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #21

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3758 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3759, !tbaa !1361
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3759
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.120, i64 0, i64 0), i32 5) #21, !dbg !3760
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.121, i64 0, i64 0)) #21, !dbg !3760
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.122, i64 0, i64 0), i32 5) #21, !dbg !3761
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.123, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.124, i64 0, i64 0)) #21, !dbg !3761
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.125, i64 0, i64 0), i32 5) #21, !dbg !3762
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.126, i64 0, i64 0)) #21, !dbg !3762
  ret void, !dbg !3763
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !3764 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3768, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i64 %1, metadata !3769, metadata !DIExpression()), !dbg !3770
  %3 = udiv i64 9223372036854775807, %1, !dbg !3771
  %4 = icmp ult i64 %3, %0, !dbg !3771
  br i1 %4, label %5, label %6, !dbg !3773

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3774
  unreachable, !dbg !3774

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3775
  call void @llvm.dbg.value(metadata i64 %7, metadata !3776, metadata !DIExpression()) #21, !dbg !3782
  %8 = tail call noalias i8* @malloc(i64 %7) #21, !dbg !3784
  call void @llvm.dbg.value(metadata i8* %8, metadata !3781, metadata !DIExpression()) #21, !dbg !3782
  %9 = icmp eq i8* %8, null, !dbg !3785
  %10 = icmp ne i64 %7, 0, !dbg !3787
  %11 = and i1 %10, %9, !dbg !3788
  br i1 %11, label %12, label %13, !dbg !3788

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !3789
  unreachable, !dbg !3789

13:                                               ; preds = %6
  ret i8* %8, !dbg !3790
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3777 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3776, metadata !DIExpression()), !dbg !3791
  %2 = tail call noalias i8* @malloc(i64 %0) #21, !dbg !3792
  call void @llvm.dbg.value(metadata i8* %2, metadata !3781, metadata !DIExpression()), !dbg !3791
  %3 = icmp eq i8* %2, null, !dbg !3793
  %4 = icmp ne i64 %0, 0, !dbg !3794
  %5 = and i1 %4, %3, !dbg !3795
  br i1 %5, label %6, label %7, !dbg !3795

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3796
  unreachable, !dbg !3796

7:                                                ; preds = %1
  ret i8* %2, !dbg !3797
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !3798 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i64 %1, metadata !3803, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i64 %2, metadata !3804, metadata !DIExpression()), !dbg !3805
  %4 = udiv i64 9223372036854775807, %2, !dbg !3806
  %5 = icmp ult i64 %4, %1, !dbg !3806
  br i1 %5, label %6, label %7, !dbg !3808

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !3809
  unreachable, !dbg !3809

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()) #21, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %8, metadata !3816, metadata !DIExpression()) #21, !dbg !3817
  %9 = icmp eq i64 %8, 0, !dbg !3819
  %10 = icmp ne i8* %0, null, !dbg !3821
  %11 = and i1 %10, %9, !dbg !3822
  br i1 %11, label %12, label %13, !dbg !3822

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #21, !dbg !3823
  br label %19, !dbg !3825

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #21, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %14, metadata !3811, metadata !DIExpression()) #21, !dbg !3817
  %15 = icmp eq i8* %14, null, !dbg !3827
  %16 = icmp ne i64 %8, 0, !dbg !3829
  %17 = and i1 %16, %15, !dbg !3830
  br i1 %17, label %18, label %19, !dbg !3830

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3831
  unreachable, !dbg !3831

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3817
  ret i8* %20, !dbg !3832
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3812 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 %1, metadata !3816, metadata !DIExpression()), !dbg !3833
  %3 = icmp eq i64 %1, 0, !dbg !3834
  %4 = icmp ne i8* %0, null, !dbg !3835
  %5 = and i1 %4, %3, !dbg !3836
  br i1 %5, label %6, label %7, !dbg !3836

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #21, !dbg !3837
  br label %13, !dbg !3838

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #21, !dbg !3839
  call void @llvm.dbg.value(metadata i8* %8, metadata !3811, metadata !DIExpression()), !dbg !3833
  %9 = icmp eq i8* %8, null, !dbg !3840
  %10 = icmp ne i64 %1, 0, !dbg !3841
  %11 = and i1 %10, %9, !dbg !3842
  br i1 %11, label %12, label %13, !dbg !3842

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3843
  unreachable, !dbg !3843

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3833
  ret i8* %14, !dbg !3844
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !554 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !559, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64* %1, metadata !560, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %2, metadata !561, metadata !DIExpression()), !dbg !3845
  %4 = load i64, i64* %1, align 8, !dbg !3846, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %4, metadata !562, metadata !DIExpression()), !dbg !3845
  %5 = icmp eq i8* %0, null, !dbg !3847
  br i1 %5, label %6, label %20, !dbg !3849

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3850
  br i1 %7, label %8, label %13, !dbg !3853

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3854
  call void @llvm.dbg.value(metadata i64 %9, metadata !562, metadata !DIExpression()), !dbg !3845
  %10 = icmp ugt i64 %2, 128, !dbg !3856
  %11 = zext i1 %10 to i64, !dbg !3856
  %12 = add nuw nsw i64 %9, %11, !dbg !3857
  call void @llvm.dbg.value(metadata i64 %12, metadata !562, metadata !DIExpression()), !dbg !3845
  br label %13, !dbg !3858

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3845
  call void @llvm.dbg.value(metadata i64 %14, metadata !562, metadata !DIExpression()), !dbg !3845
  %15 = udiv i64 9223372036854775807, %2, !dbg !3859
  %16 = icmp ult i64 %15, %14, !dbg !3859
  br i1 %16, label %19, label %17, !dbg !3861

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !562, metadata !DIExpression()), !dbg !3845
  store i64 %14, i64* %1, align 8, !dbg !3862, !tbaa !2868
  %18 = mul i64 %14, %2, !dbg !3863
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()) #21, !dbg !3864
  call void @llvm.dbg.value(metadata i64 %28, metadata !3816, metadata !DIExpression()) #21, !dbg !3864
  br label %31, !dbg !3866

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3867
  unreachable, !dbg !3867

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3868
  %22 = icmp ugt i64 %21, %4, !dbg !3871
  br i1 %22, label %24, label %23, !dbg !3872

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !3873
  unreachable, !dbg !3873

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3874
  %26 = add nuw i64 %4, 1, !dbg !3875
  %27 = add i64 %26, %25, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %27, metadata !562, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %27, metadata !562, metadata !DIExpression()), !dbg !3845
  store i64 %27, i64* %1, align 8, !dbg !3862, !tbaa !2868
  %28 = mul i64 %27, %2, !dbg !3863
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()) #21, !dbg !3864
  call void @llvm.dbg.value(metadata i64 %28, metadata !3816, metadata !DIExpression()) #21, !dbg !3864
  %29 = icmp eq i64 %28, 0, !dbg !3877
  br i1 %29, label %30, label %31, !dbg !3866

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #21, !dbg !3878
  br label %38, !dbg !3879

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #21, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %33, metadata !3811, metadata !DIExpression()) #21, !dbg !3864
  %34 = icmp eq i8* %33, null, !dbg !3881
  %35 = icmp ne i64 %32, 0, !dbg !3882
  %36 = and i1 %35, %34, !dbg !3883
  br i1 %36, label %37, label %38, !dbg !3883

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !3884
  unreachable, !dbg !3884

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3864
  ret i8* %39, !dbg !3885
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !3886 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3888, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %0, metadata !3776, metadata !DIExpression()) #21, !dbg !3890
  %2 = tail call noalias i8* @malloc(i64 %0) #21, !dbg !3892
  call void @llvm.dbg.value(metadata i8* %2, metadata !3781, metadata !DIExpression()) #21, !dbg !3890
  %3 = icmp eq i8* %2, null, !dbg !3893
  %4 = icmp ne i64 %0, 0, !dbg !3894
  %5 = and i1 %4, %3, !dbg !3895
  br i1 %5, label %6, label %7, !dbg !3895

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3896
  unreachable, !dbg !3896

7:                                                ; preds = %1
  ret i8* %2, !dbg !3897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3898 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3902, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i64* %1, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i8* %0, metadata !559, metadata !DIExpression()) #21, !dbg !3905
  call void @llvm.dbg.value(metadata i64* %1, metadata !560, metadata !DIExpression()) #21, !dbg !3905
  call void @llvm.dbg.value(metadata i64 1, metadata !561, metadata !DIExpression()) #21, !dbg !3905
  %3 = load i64, i64* %1, align 8, !dbg !3907, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %3, metadata !562, metadata !DIExpression()) #21, !dbg !3905
  %4 = icmp eq i8* %0, null, !dbg !3908
  br i1 %4, label %5, label %12, !dbg !3909

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3910
  br i1 %6, label %9, label %7, !dbg !3911

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !562, metadata !DIExpression()) #21, !dbg !3905
  %8 = icmp slt i64 %3, 0, !dbg !3912
  br i1 %8, label %11, label %9, !dbg !3913

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !562, metadata !DIExpression()) #21, !dbg !3905
  store i64 %10, i64* %1, align 8, !dbg !3914, !tbaa !2868
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()) #21, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %18, metadata !3816, metadata !DIExpression()) #21, !dbg !3915
  br label %21, !dbg !3917

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3918
  unreachable, !dbg !3918

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3919
  br i1 %13, label %15, label %14, !dbg !3920

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !3921
  unreachable, !dbg !3921

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3922
  %17 = add nuw nsw i64 %3, 1, !dbg !3923
  %18 = add nuw nsw i64 %17, %16, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %18, metadata !562, metadata !DIExpression()) #21, !dbg !3905
  call void @llvm.dbg.value(metadata i64 %18, metadata !562, metadata !DIExpression()) #21, !dbg !3905
  store i64 %18, i64* %1, align 8, !dbg !3914, !tbaa !2868
  call void @llvm.dbg.value(metadata i8* %0, metadata !3811, metadata !DIExpression()) #21, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %18, metadata !3816, metadata !DIExpression()) #21, !dbg !3915
  %19 = icmp eq i64 %18, 0, !dbg !3925
  br i1 %19, label %20, label %21, !dbg !3917

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #21, !dbg !3926
  br label %28, !dbg !3927

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #21, !dbg !3928
  call void @llvm.dbg.value(metadata i8* %23, metadata !3811, metadata !DIExpression()) #21, !dbg !3915
  %24 = icmp eq i8* %23, null, !dbg !3929
  %25 = icmp ne i64 %22, 0, !dbg !3930
  %26 = and i1 %25, %24, !dbg !3931
  br i1 %26, label %27, label %28, !dbg !3931

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !3932
  unreachable, !dbg !3932

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3915
  ret i8* %29, !dbg !3933
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3934 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %0, metadata !3938, metadata !DIExpression()) #21, !dbg !3943
  call void @llvm.dbg.value(metadata i64 1, metadata !3941, metadata !DIExpression()) #21, !dbg !3943
  %2 = icmp slt i64 %0, 0, !dbg !3945
  br i1 %2, label %6, label %3, !dbg !3947

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #21, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %4, metadata !3942, metadata !DIExpression()) #21, !dbg !3943
  %5 = icmp eq i8* %4, null, !dbg !3949
  br i1 %5, label %6, label %7, !dbg !3950

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !3951
  unreachable, !dbg !3951

7:                                                ; preds = %3
  ret i8* %4, !dbg !3952
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3939 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3938, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3941, metadata !DIExpression()), !dbg !3953
  %3 = udiv i64 9223372036854775807, %1, !dbg !3954
  %4 = icmp ult i64 %3, %0, !dbg !3954
  br i1 %4, label %8, label %5, !dbg !3955

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #21, !dbg !3956
  call void @llvm.dbg.value(metadata i8* %6, metadata !3942, metadata !DIExpression()), !dbg !3953
  %7 = icmp eq i8* %6, null, !dbg !3957
  br i1 %7, label %8, label %9, !dbg !3958

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !3959
  unreachable, !dbg !3959

9:                                                ; preds = %5
  ret i8* %6, !dbg !3960
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3961 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3965, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i64 %1, metadata !3966, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i64 %1, metadata !3776, metadata !DIExpression()) #21, !dbg !3968
  %3 = tail call noalias i8* @malloc(i64 %1) #21, !dbg !3970
  call void @llvm.dbg.value(metadata i8* %3, metadata !3781, metadata !DIExpression()) #21, !dbg !3968
  %4 = icmp eq i8* %3, null, !dbg !3971
  %5 = icmp ne i64 %1, 0, !dbg !3972
  %6 = and i1 %5, %4, !dbg !3973
  br i1 %6, label %7, label %8, !dbg !3973

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3974
  unreachable, !dbg !3974

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3975, metadata !DIExpression()) #21, !dbg !3980
  call void @llvm.dbg.value(metadata i8* %0, metadata !3978, metadata !DIExpression()) #21, !dbg !3980
  call void @llvm.dbg.value(metadata i64 %1, metadata !3979, metadata !DIExpression()) #21, !dbg !3980
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #21, !dbg !3982
  ret i8* %3, !dbg !3983
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3984 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3986, metadata !DIExpression()), !dbg !3987
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !3988
  %3 = add i64 %2, 1, !dbg !3989
  call void @llvm.dbg.value(metadata i8* %0, metadata !3965, metadata !DIExpression()) #21, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %3, metadata !3966, metadata !DIExpression()) #21, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %3, metadata !3776, metadata !DIExpression()) #21, !dbg !3992
  %4 = tail call noalias i8* @malloc(i64 %3) #21, !dbg !3994
  call void @llvm.dbg.value(metadata i8* %4, metadata !3781, metadata !DIExpression()) #21, !dbg !3992
  %5 = icmp eq i8* %4, null, !dbg !3995
  %6 = icmp ne i64 %3, 0, !dbg !3996
  %7 = and i1 %6, %5, !dbg !3997
  br i1 %7, label %8, label %9, !dbg !3997

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3998
  unreachable, !dbg !3998

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3975, metadata !DIExpression()) #21, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %0, metadata !3978, metadata !DIExpression()) #21, !dbg !3999
  call void @llvm.dbg.value(metadata i64 %3, metadata !3979, metadata !DIExpression()) #21, !dbg !3999
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #21, !dbg !4001
  ret i8* %4, !dbg !4002
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4003 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4004, !tbaa !1471
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.139, i64 0, i64 0), i32 5) #21, !dbg !4005
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* %2) #21, !dbg !4006
  tail call void @abort() #24, !dbg !4007
  unreachable, !dbg !4007
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !4008 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4010, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 %1, metadata !4011, metadata !DIExpression()), !dbg !4016
  %3 = icmp eq i64 %0, 0, !dbg !4017
  %4 = icmp eq i64 %1, 0, !dbg !4018
  %5 = or i1 %3, %4, !dbg !4019
  br i1 %5, label %11, label %6, !dbg !4019

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4013, metadata !DIExpression()), !dbg !4020
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4021
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4021
  br i1 %8, label %9, label %11, !dbg !4023

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !4024
  store i32 12, i32* %10, align 4, !dbg !4026, !tbaa !1471
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4010, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 %12, metadata !4011, metadata !DIExpression()), !dbg !4016
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #21, !dbg !4027
  call void @llvm.dbg.value(metadata i8* %14, metadata !4012, metadata !DIExpression()), !dbg !4016
  br label %15, !dbg !4028

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4016
  ret i8* %16, !dbg !4029
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4030 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4036, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 0, metadata !4037, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 0, metadata !4039, metadata !DIExpression()), !dbg !4040
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #21, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %2, metadata !4038, metadata !DIExpression()), !dbg !4040
  %3 = icmp slt i32 %2, 0, !dbg !4042
  br i1 %3, label %4, label %6, !dbg !4044

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4045
  br label %24, !dbg !4046

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #21, !dbg !4047
  %8 = icmp eq i32 %7, 0, !dbg !4047
  br i1 %8, label %13, label %9, !dbg !4049

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #21, !dbg !4050
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #21, !dbg !4051
  %12 = icmp eq i64 %11, -1, !dbg !4052
  br i1 %12, label %16, label %13, !dbg !4053

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #21, !dbg !4054
  %15 = icmp eq i32 %14, 0, !dbg !4054
  br i1 %15, label %16, label %18, !dbg !4055

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4037, metadata !DIExpression()), !dbg !4040
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4056
  call void @llvm.dbg.value(metadata i32 %21, metadata !4039, metadata !DIExpression()), !dbg !4040
  br label %24, !dbg !4057

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !4058
  %20 = load i32, i32* %19, align 4, !dbg !4058, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %20, metadata !4037, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 %20, metadata !4037, metadata !DIExpression()), !dbg !4040
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4056
  call void @llvm.dbg.value(metadata i32 %21, metadata !4039, metadata !DIExpression()), !dbg !4040
  %22 = icmp eq i32 %20, 0, !dbg !4059
  br i1 %22, label %24, label %23, !dbg !4057

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4061, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 -1, metadata !4039, metadata !DIExpression()), !dbg !4040
  br label %24, !dbg !4063

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4040
  ret i32 %25, !dbg !4064
}

; Function Attrs: nofree nounwind
declare !dbg !580 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !615 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !616 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4065 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4071, metadata !DIExpression()), !dbg !4072
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4073
  br i1 %2, label %6, label %3, !dbg !4075

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #21, !dbg !4076
  %5 = icmp eq i32 %4, 0, !dbg !4076
  br i1 %5, label %6, label %8, !dbg !4077

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4078
  br label %17, !dbg !4079

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4080, metadata !DIExpression()) #21, !dbg !4085
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4087
  %10 = load i32, i32* %9, align 8, !dbg !4087, !tbaa !1719
  %11 = and i32 %10, 256, !dbg !4089
  %12 = icmp eq i32 %11, 0, !dbg !4089
  br i1 %12, label %15, label %13, !dbg !4090

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #21, !dbg !4091
  br label %15, !dbg !4091

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4092
  br label %17, !dbg !4093

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4072
  ret i32 %18, !dbg !4094
}

; Function Attrs: nofree nounwind
declare !dbg !623 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4095 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4102, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 %1, metadata !4103, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 %2, metadata !4104, metadata !DIExpression()), !dbg !4108
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4109
  %5 = load i8*, i8** %4, align 8, !dbg !4109, !tbaa !4110
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4111
  %7 = load i8*, i8** %6, align 8, !dbg !4111, !tbaa !4112
  %8 = icmp eq i8* %5, %7, !dbg !4113
  br i1 %8, label %9, label %28, !dbg !4114

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4115
  %11 = load i8*, i8** %10, align 8, !dbg !4115, !tbaa !4116
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4117
  %13 = load i8*, i8** %12, align 8, !dbg !4117, !tbaa !4118
  %14 = icmp eq i8* %11, %13, !dbg !4119
  br i1 %14, label %15, label %28, !dbg !4120

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4121
  %17 = load i8*, i8** %16, align 8, !dbg !4121, !tbaa !4122
  %18 = icmp eq i8* %17, null, !dbg !4123
  br i1 %18, label %19, label %28, !dbg !4124

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #21, !dbg !4125
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #21, !dbg !4126
  call void @llvm.dbg.value(metadata i64 %21, metadata !4105, metadata !DIExpression()), !dbg !4127
  %22 = icmp eq i64 %21, -1, !dbg !4128
  br i1 %22, label %30, label %23, !dbg !4130

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4131
  %25 = load i32, i32* %24, align 8, !dbg !4132, !tbaa !1719
  %26 = and i32 %25, -17, !dbg !4132
  store i32 %26, i32* %24, align 8, !dbg !4132, !tbaa !1719
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4133
  store i64 %21, i64* %27, align 8, !dbg !4134, !tbaa !4135
  br label %30, !dbg !4136

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4137
  br label %30, !dbg !4138

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4108
  ret i32 %31, !dbg !4139
}

; Function Attrs: nofree nounwind
declare !dbg !699 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4140 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4148, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i8* %1, metadata !4149, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %2, metadata !4150, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4151, metadata !DIExpression()), !dbg !4157
  %6 = bitcast i32* %5 to i8*, !dbg !4158
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #21, !dbg !4158
  %7 = icmp eq i32* %0, null, !dbg !4159
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4161
  call void @llvm.dbg.value(metadata i32* %8, metadata !4148, metadata !DIExpression()), !dbg !4157
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #21, !dbg !4162
  call void @llvm.dbg.value(metadata i64 %9, metadata !4152, metadata !DIExpression()), !dbg !4157
  %10 = icmp ugt i64 %9, -3, !dbg !4163
  %11 = icmp ne i64 %2, 0, !dbg !4164
  %12 = and i1 %11, %10, !dbg !4165
  br i1 %12, label %13, label %18, !dbg !4165

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #21, !dbg !4166
  br i1 %14, label %18, label %15, !dbg !4167

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4168, !tbaa !1496
  call void @llvm.dbg.value(metadata i8 %16, metadata !4154, metadata !DIExpression()), !dbg !4169
  %17 = zext i8 %16 to i32, !dbg !4170
  store i32 %17, i32* %8, align 4, !dbg !4171, !tbaa !1471
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #21, !dbg !4172
  ret i64 %19, !dbg !4172
}

; Function Attrs: nounwind
declare !dbg !705 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4173 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4175, metadata !DIExpression()), !dbg !4180
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4181
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #21, !dbg !4181
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4176, metadata !DIExpression()), !dbg !4182
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #21, !dbg !4183
  %5 = icmp eq i32 %4, 0, !dbg !4183
  br i1 %5, label %6, label %13, !dbg !4185

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4186
  %8 = load i16, i16* %7, align 16, !dbg !4186
  %9 = icmp eq i16 %8, 67, !dbg !4186
  br i1 %9, label %13, label %10, !dbg !4187

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0), i64 6), !dbg !4188
  %12 = icmp ne i32 %11, 0, !dbg !4189
  br label %13, !dbg !4187

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4180
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #21, !dbg !4190
  ret i1 %14, !dbg !4190
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4191 {
  %1 = tail call i8* @nl_langinfo(i32 14) #21, !dbg !4194
  call void @llvm.dbg.value(metadata i8* %1, metadata !4193, metadata !DIExpression()), !dbg !4195
  %2 = icmp eq i8* %1, null, !dbg !4196
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.156, i64 0, i64 0), i8* %1, !dbg !4198
  call void @llvm.dbg.value(metadata i8* %3, metadata !4193, metadata !DIExpression()), !dbg !4195
  %4 = load i8, i8* %3, align 1, !dbg !4199, !tbaa !1496
  %5 = icmp eq i8 %4, 0, !dbg !4203
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0), i8* %3, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %6, metadata !4193, metadata !DIExpression()), !dbg !4195
  ret i8* %6, !dbg !4205
}

; Function Attrs: nounwind
declare !dbg !1118 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.randint_source* @randint_new(%struct.randread_source* %0) local_unnamed_addr #8 !dbg !4206 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4219, metadata !DIExpression()), !dbg !4221
  %2 = tail call noalias i8* @xmalloc(i64 24) #21, !dbg !4222
  %3 = bitcast i8* %2 to %struct.randint_source*, !dbg !4222
  call void @llvm.dbg.value(metadata %struct.randint_source* %3, metadata !4220, metadata !DIExpression()), !dbg !4221
  %4 = bitcast i8* %2 to %struct.randread_source**, !dbg !4223
  store %struct.randread_source* %0, %struct.randread_source** %4, align 8, !dbg !4224, !tbaa !4225
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !4227
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !4228
  ret %struct.randint_source* %3, !dbg !4229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.randint_source* @randint_all_new(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4230 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4234, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %1, metadata !4235, metadata !DIExpression()), !dbg !4237
  %3 = tail call %struct.randread_source* @randread_new(i8* %0, i64 %1) #21, !dbg !4238
  call void @llvm.dbg.value(metadata %struct.randread_source* %3, metadata !4236, metadata !DIExpression()), !dbg !4237
  %4 = icmp eq %struct.randread_source* %3, null, !dbg !4239
  br i1 %4, label %10, label %5, !dbg !4239

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.randread_source* %3, metadata !4219, metadata !DIExpression()) #21, !dbg !4240
  %6 = tail call noalias i8* @xmalloc(i64 24) #21, !dbg !4242
  %7 = bitcast i8* %6 to %struct.randint_source*, !dbg !4242
  call void @llvm.dbg.value(metadata %struct.randint_source* %7, metadata !4220, metadata !DIExpression()) #21, !dbg !4240
  %8 = bitcast i8* %6 to %struct.randread_source**, !dbg !4243
  store %struct.randread_source* %3, %struct.randread_source** %8, align 8, !dbg !4244, !tbaa !4225
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !4245
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false) #21, !dbg !4246
  br label %10, !dbg !4239

10:                                               ; preds = %2, %5
  %11 = phi %struct.randint_source* [ %7, %5 ], [ null, %2 ], !dbg !4239
  ret %struct.randint_source* %11, !dbg !4247
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local %struct.randread_source* @randint_get_source(%struct.randint_source* nocapture readonly %0) local_unnamed_addr #13 !dbg !4248 {
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4254, metadata !DIExpression()), !dbg !4255
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4256
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !4256, !tbaa !4225
  ret %struct.randread_source* %3, !dbg !4257
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @randint_genmax(%struct.randint_source* nocapture %0, i64 %1) local_unnamed_addr #8 !dbg !4258 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4262, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %1, metadata !4263, metadata !DIExpression()), !dbg !4281
  %4 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4282
  %5 = load %struct.randread_source*, %struct.randread_source** %4, align 8, !dbg !4282, !tbaa !4225
  call void @llvm.dbg.value(metadata %struct.randread_source* %5, metadata !4264, metadata !DIExpression()), !dbg !4281
  %6 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 1, !dbg !4283
  %7 = load i64, i64* %6, align 8, !dbg !4283, !tbaa !4284
  call void @llvm.dbg.value(metadata i64 %7, metadata !4265, metadata !DIExpression()), !dbg !4281
  %8 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 2, !dbg !4285
  %9 = load i64, i64* %8, align 8, !dbg !4285, !tbaa !4286
  call void @llvm.dbg.value(metadata i64 %9, metadata !4266, metadata !DIExpression()), !dbg !4281
  %10 = add i64 %1, 1, !dbg !4287
  call void @llvm.dbg.value(metadata i64 %10, metadata !4267, metadata !DIExpression()), !dbg !4281
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0, !dbg !4288
  br label %12, !dbg !4289

12:                                               ; preds = %45, %2
  %13 = phi i64 [ %9, %2 ], [ %53, %45 ], !dbg !4281
  %14 = phi i64 [ %7, %2 ], [ %50, %45 ], !dbg !4281
  call void @llvm.dbg.value(metadata i64 %14, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %13, metadata !4266, metadata !DIExpression()), !dbg !4281
  %15 = icmp ult i64 %13, %1, !dbg !4290
  br i1 %15, label %16, label %39, !dbg !4291

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 0, metadata !4268, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %13, metadata !4272, metadata !DIExpression()), !dbg !4288
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #21, !dbg !4292
  call void @llvm.dbg.declare(metadata [8 x i8]* %3, metadata !4273, metadata !DIExpression()), !dbg !4293
  br label %17, !dbg !4294

17:                                               ; preds = %17, %16
  %18 = phi i64 [ %13, %16 ], [ %21, %17 ], !dbg !4288
  %19 = phi i64 [ 0, %16 ], [ %22, %17 ], !dbg !4288
  call void @llvm.dbg.value(metadata i64 %19, metadata !4268, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %18, metadata !4272, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %18, metadata !4295, metadata !DIExpression()), !dbg !4300
  %20 = shl i64 %18, 8, !dbg !4303
  %21 = or i64 %20, 255, !dbg !4304
  call void @llvm.dbg.value(metadata i64 %21, metadata !4272, metadata !DIExpression()), !dbg !4288
  %22 = add i64 %19, 1, !dbg !4305
  call void @llvm.dbg.value(metadata i64 %22, metadata !4268, metadata !DIExpression()), !dbg !4288
  %23 = icmp ult i64 %21, %1, !dbg !4306
  br i1 %23, label %17, label %24, !dbg !4307, !llvm.loop !4308

24:                                               ; preds = %17
  call void @randread(%struct.randread_source* %5, i8* nonnull %11, i64 %22) #21, !dbg !4310
  call void @llvm.dbg.value(metadata i64 0, metadata !4268, metadata !DIExpression()), !dbg !4288
  br label %25, !dbg !4311

25:                                               ; preds = %25, %24
  %26 = phi i64 [ 0, %24 ], [ %36, %25 ], !dbg !4288
  %27 = phi i64 [ %13, %24 ], [ %35, %25 ], !dbg !4281
  %28 = phi i64 [ %14, %24 ], [ %33, %25 ], !dbg !4281
  call void @llvm.dbg.value(metadata i64 %28, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %27, metadata !4266, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %26, metadata !4268, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %28, metadata !4295, metadata !DIExpression()), !dbg !4312
  %29 = shl i64 %28, 8, !dbg !4315
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %26, !dbg !4316
  %31 = load i8, i8* %30, align 1, !dbg !4316, !tbaa !1496
  %32 = zext i8 %31 to i64, !dbg !4316
  %33 = or i64 %29, %32, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %33, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %27, metadata !4295, metadata !DIExpression()), !dbg !4318
  %34 = shl i64 %27, 8, !dbg !4320
  %35 = or i64 %34, 255, !dbg !4321
  call void @llvm.dbg.value(metadata i64 %35, metadata !4266, metadata !DIExpression()), !dbg !4281
  %36 = add i64 %26, 1, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %36, metadata !4268, metadata !DIExpression()), !dbg !4288
  %37 = icmp ult i64 %35, %1, !dbg !4323
  br i1 %37, label %25, label %38, !dbg !4324, !llvm.loop !4325

38:                                               ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #21, !dbg !4327
  br label %39, !dbg !4328

39:                                               ; preds = %38, %12
  %40 = phi i64 [ %35, %38 ], [ %13, %12 ], !dbg !4281
  %41 = phi i64 [ %33, %38 ], [ %14, %12 ], !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %40, metadata !4266, metadata !DIExpression()), !dbg !4281
  %42 = icmp eq i64 %40, %1, !dbg !4329
  br i1 %42, label %43, label %45, !dbg !4330

43:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  %44 = bitcast i64* %6 to i8*, !dbg !4331
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false), !dbg !4333
  br label %55, !dbg !4331

45:                                               ; preds = %39
  %46 = sub i64 %40, %1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %46, metadata !4275, metadata !DIExpression()), !dbg !4335
  %47 = urem i64 %46, %10, !dbg !4336
  %48 = udiv i64 %46, %10, !dbg !4337
  call void @llvm.dbg.value(metadata i64 %47, metadata !4278, metadata !DIExpression()), !dbg !4335
  %49 = sub i64 %40, %47, !dbg !4340
  call void @llvm.dbg.value(metadata i64 %49, metadata !4279, metadata !DIExpression()), !dbg !4335
  %50 = urem i64 %41, %10, !dbg !4341
  %51 = udiv i64 %41, %10, !dbg !4342
  call void @llvm.dbg.value(metadata i64 %50, metadata !4280, metadata !DIExpression()), !dbg !4335
  %52 = icmp ugt i64 %41, %49, !dbg !4343
  call void @llvm.dbg.value(metadata i64 %50, metadata !4265, metadata !DIExpression()), !dbg !4281
  %53 = add i64 %47, -1, !dbg !4344
  call void @llvm.dbg.value(metadata i64 %53, metadata !4266, metadata !DIExpression()), !dbg !4281
  br i1 %52, label %12, label %54, !dbg !4345

54:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %41, metadata !4265, metadata !DIExpression()), !dbg !4281
  store i64 %51, i64* %6, align 8, !dbg !4346, !tbaa !4284
  store i64 %48, i64* %8, align 8, !dbg !4347, !tbaa !4286
  call void @llvm.dbg.value(metadata i64 %50, metadata !4265, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %53, metadata !4266, metadata !DIExpression()), !dbg !4281
  br label %55

55:                                               ; preds = %54, %43
  %56 = phi i64 [ %41, %43 ], [ %50, %54 ], !dbg !4348
  ret i64 %56, !dbg !4349
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @randint_free(%struct.randint_source* %0) local_unnamed_addr #8 !dbg !4350 {
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4354, metadata !DIExpression()), !dbg !4355
  %2 = bitcast %struct.randint_source* %0 to i8*, !dbg !4356
  call void @llvm.dbg.value(metadata i8* %2, metadata !4357, metadata !DIExpression()) #21, !dbg !4363
  call void @llvm.dbg.value(metadata i64 24, metadata !4362, metadata !DIExpression()) #21, !dbg !4363
  tail call void @__explicit_bzero_chk(i8* nonnull %2, i64 24, i64 -1) #21, !dbg !4365
  tail call void @free(i8* %2) #21, !dbg !4366
  ret void, !dbg !4367
}

; Function Attrs: nounwind
declare void @__explicit_bzero_chk(i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @randint_all_free(%struct.randint_source* %0) local_unnamed_addr #8 !dbg !4368 {
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4372, metadata !DIExpression()), !dbg !4375
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4376
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !4376, !tbaa !4225
  %4 = tail call i32 @randread_free(%struct.randread_source* %3) #21, !dbg !4377
  call void @llvm.dbg.value(metadata i32 %4, metadata !4373, metadata !DIExpression()), !dbg !4375
  %5 = tail call i32* @__errno_location() #26, !dbg !4378
  %6 = load i32, i32* %5, align 4, !dbg !4378, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %6, metadata !4374, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4354, metadata !DIExpression()) #21, !dbg !4379
  %7 = bitcast %struct.randint_source* %0 to i8*, !dbg !4381
  call void @llvm.dbg.value(metadata i8* %7, metadata !4357, metadata !DIExpression()) #21, !dbg !4382
  call void @llvm.dbg.value(metadata i64 24, metadata !4362, metadata !DIExpression()) #21, !dbg !4382
  tail call void @__explicit_bzero_chk(i8* nonnull %7, i64 24, i64 -1) #21, !dbg !4384
  tail call void @free(i8* %7) #21, !dbg !4385
  store i32 %6, i32* %5, align 4, !dbg !4386, !tbaa !1471
  ret i32 %4, !dbg !4387
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.randread_source* @randread_new(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4388 {
  %3 = alloca %struct.timespec, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec* %3, metadata !4429, metadata !DIExpression()), !dbg !4465
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4423, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %1, metadata !4424, metadata !DIExpression()), !dbg !4469
  %8 = icmp eq i64 %1, 0, !dbg !4470
  br i1 %8, label %9, label %17, !dbg !4471

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !4472, metadata !DIExpression()) #21, !dbg !4479
  call void @llvm.dbg.value(metadata i8* null, metadata !4477, metadata !DIExpression()) #21, !dbg !4479
  %10 = tail call noalias i8* @xmalloc(i64 4152) #21, !dbg !4481
  %11 = bitcast i8* %10 to %struct.randread_source*, !dbg !4481
  call void @llvm.dbg.value(metadata %struct.randread_source* %11, metadata !4478, metadata !DIExpression()) #21, !dbg !4479
  %12 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !4482
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8, !dbg !4483, !tbaa !4484
  %13 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !4486
  %14 = bitcast i8* %13 to void (i8*)**, !dbg !4486
  store void (i8*)* @randread_error, void (i8*)** %14, align 8, !dbg !4487, !tbaa !4488
  %15 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !4489
  %16 = bitcast i8* %15 to i8**, !dbg !4489
  store i8* null, i8** %16, align 8, !dbg !4490, !tbaa !4491
  br label %96, !dbg !4492

17:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !4425, metadata !DIExpression()), !dbg !4493
  %18 = icmp eq i8* %0, null, !dbg !4494
  br i1 %18, label %22, label %19, !dbg !4496

19:                                               ; preds = %17
  %20 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0)) #21, !dbg !4497
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, metadata !4425, metadata !DIExpression()), !dbg !4493
  %21 = icmp eq %struct._IO_FILE* %20, null, !dbg !4499
  br i1 %21, label %96, label %22, !dbg !4500

22:                                               ; preds = %19, %17
  %23 = phi %struct._IO_FILE* [ %20, %19 ], [ null, %17 ], !dbg !4493
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !4425, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !4472, metadata !DIExpression()) #21, !dbg !4501
  call void @llvm.dbg.value(metadata i8* %0, metadata !4477, metadata !DIExpression()) #21, !dbg !4501
  %24 = tail call noalias i8* @xmalloc(i64 4152) #21, !dbg !4503
  %25 = bitcast i8* %24 to %struct.randread_source*, !dbg !4503
  call void @llvm.dbg.value(metadata %struct.randread_source* %25, metadata !4478, metadata !DIExpression()) #21, !dbg !4501
  %26 = bitcast i8* %24 to %struct._IO_FILE**, !dbg !4504
  store %struct._IO_FILE* %23, %struct._IO_FILE** %26, align 8, !dbg !4505, !tbaa !4484
  %27 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !4506
  %28 = bitcast i8* %27 to void (i8*)**, !dbg !4506
  store void (i8*)* @randread_error, void (i8*)** %28, align 8, !dbg !4507, !tbaa !4488
  %29 = getelementptr inbounds i8, i8* %24, i64 16, !dbg !4508
  %30 = bitcast i8* %29 to i8**, !dbg !4508
  store i8* %0, i8** %30, align 8, !dbg !4509, !tbaa !4491
  call void @llvm.dbg.value(metadata %struct.randread_source* %25, metadata !4428, metadata !DIExpression()), !dbg !4493
  %31 = icmp eq %struct._IO_FILE* %23, null, !dbg !4510
  %32 = getelementptr inbounds i8, i8* %24, i64 24, !dbg !4511
  br i1 %31, label %37, label %33, !dbg !4512

33:                                               ; preds = %22
  %34 = icmp ult i64 %1, 4096, !dbg !4513
  %35 = select i1 %34, i64 %1, i64 4096, !dbg !4513
  %36 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %23, i8* nonnull %32, i32 0, i64 %35) #21, !dbg !4514
  br label %96, !dbg !4514

37:                                               ; preds = %22
  %38 = bitcast i8* %32 to i64*, !dbg !4515
  store i64 0, i64* %38, align 8, !dbg !4516, !tbaa !1496
  %39 = getelementptr inbounds i8, i8* %24, i64 32, !dbg !4517
  %40 = bitcast i8* %39 to %struct.isaac_state*, !dbg !4517
  call void @llvm.dbg.value(metadata i8* %39, metadata !4436, metadata !DIExpression()) #21, !dbg !4518
  call void @llvm.dbg.value(metadata i64 2048, metadata !4437, metadata !DIExpression()) #21, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %1, metadata !4438, metadata !DIExpression()) #21, !dbg !4518
  call void @llvm.dbg.value(metadata i8* %39, metadata !4439, metadata !DIExpression()) #21, !dbg !4518
  call void @llvm.dbg.value(metadata i64 0, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  %41 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.167, i64 0, i64 0), i32 0) #21, !dbg !4519
  call void @llvm.dbg.value(metadata i32 %41, metadata !4444, metadata !DIExpression()) #21, !dbg !4518
  %42 = icmp sgt i32 %41, -1, !dbg !4520
  br i1 %42, label %43, label %51, !dbg !4522

43:                                               ; preds = %37
  %44 = icmp ult i64 %1, 2048, !dbg !4523
  %45 = select i1 %44, i64 %1, i64 2048, !dbg !4523
  %46 = tail call i64 @read(i32 %41, i8* nonnull %39, i64 %45) #21, !dbg !4525
  call void @llvm.dbg.value(metadata i64 %46, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  %47 = icmp sgt i64 %46, 0, !dbg !4526
  %48 = tail call i32 @close(i32 %41) #21, !dbg !4527
  br i1 %47, label %49, label %51

49:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %46, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  %50 = icmp ult i64 %46, 2048, !dbg !4528
  br i1 %50, label %51, label %95, !dbg !4529

51:                                               ; preds = %49, %43, %37
  %52 = phi i64 [ %46, %49 ], [ 0, %43 ], [ 0, %37 ]
  %53 = bitcast %struct.timespec* %3 to i8*, !dbg !4465
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #21, !dbg !4465
  %54 = sub nuw nsw i64 2048, %52, !dbg !4465
  %55 = icmp ult i64 %54, 16, !dbg !4465
  %56 = select i1 %55, i64 %54, i64 16, !dbg !4465
  call void @llvm.dbg.value(metadata i64 %56, metadata !4445, metadata !DIExpression()) #21, !dbg !4530
  %57 = call i32 @gettimeofday(%struct.timespec* nonnull %3, i8* null) #21, !dbg !4465
  %58 = getelementptr inbounds i8, i8* %39, i64 %52, !dbg !4465
  call void @llvm.dbg.value(metadata i8* %58, metadata !4531, metadata !DIExpression()) #21, !dbg !4536
  call void @llvm.dbg.value(metadata i8* %53, metadata !4534, metadata !DIExpression()) #21, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %56, metadata !4535, metadata !DIExpression()) #21, !dbg !4536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %58, i8* nonnull align 8 %53, i64 %56, i1 false) #21, !dbg !4538
  %59 = add nuw nsw i64 %56, %52, !dbg !4465
  call void @llvm.dbg.value(metadata i64 %59, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #21, !dbg !4528
  call void @llvm.dbg.value(metadata i64 %59, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  %60 = icmp ult i64 %59, 2048, !dbg !4539
  br i1 %60, label %61, label %95, !dbg !4540

61:                                               ; preds = %51
  %62 = bitcast i32* %4 to i8*, !dbg !4541
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %62) #21, !dbg !4541
  %63 = sub nuw nsw i64 2048, %59, !dbg !4541
  %64 = icmp ult i64 %63, 4, !dbg !4541
  %65 = select i1 %64, i64 %63, i64 4, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %65, metadata !4451, metadata !DIExpression()) #21, !dbg !4542
  %66 = call i32 @getpid() #21, !dbg !4541
  call void @llvm.dbg.value(metadata i32 %66, metadata !4446, metadata !DIExpression()) #21, !dbg !4542
  store i32 %66, i32* %4, align 4, !dbg !4541, !tbaa !1471
  %67 = getelementptr inbounds i8, i8* %39, i64 %59, !dbg !4541
  call void @llvm.dbg.value(metadata i32* %4, metadata !4446, metadata !DIExpression(DW_OP_deref)) #21, !dbg !4542
  call void @llvm.dbg.value(metadata i8* %67, metadata !4531, metadata !DIExpression()) #21, !dbg !4543
  call void @llvm.dbg.value(metadata i8* %62, metadata !4534, metadata !DIExpression()) #21, !dbg !4543
  call void @llvm.dbg.value(metadata i64 %65, metadata !4535, metadata !DIExpression()) #21, !dbg !4543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %67, i8* nonnull align 4 %62, i64 %65, i1 false) #21, !dbg !4545
  %68 = add nuw nsw i64 %65, %59, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %68, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %62) #21, !dbg !4539
  call void @llvm.dbg.value(metadata i64 %68, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  %69 = icmp ult i64 %68, 2048, !dbg !4546
  br i1 %69, label %70, label %95, !dbg !4547

70:                                               ; preds = %61
  %71 = bitcast i32* %5 to i8*, !dbg !4548
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %71) #21, !dbg !4548
  %72 = sub nuw nsw i64 2048, %68, !dbg !4548
  %73 = icmp ult i64 %72, 4, !dbg !4548
  %74 = select i1 %73, i64 %72, i64 4, !dbg !4548
  call void @llvm.dbg.value(metadata i64 %74, metadata !4455, metadata !DIExpression()) #21, !dbg !4549
  %75 = call i32 @getppid() #21, !dbg !4548
  call void @llvm.dbg.value(metadata i32 %75, metadata !4452, metadata !DIExpression()) #21, !dbg !4549
  store i32 %75, i32* %5, align 4, !dbg !4548, !tbaa !1471
  %76 = getelementptr inbounds i8, i8* %39, i64 %68, !dbg !4548
  call void @llvm.dbg.value(metadata i32* %5, metadata !4452, metadata !DIExpression(DW_OP_deref)) #21, !dbg !4549
  call void @llvm.dbg.value(metadata i8* %76, metadata !4531, metadata !DIExpression()) #21, !dbg !4550
  call void @llvm.dbg.value(metadata i8* %71, metadata !4534, metadata !DIExpression()) #21, !dbg !4550
  call void @llvm.dbg.value(metadata i64 %74, metadata !4535, metadata !DIExpression()) #21, !dbg !4550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %76, i8* nonnull align 4 %71, i64 %74, i1 false) #21, !dbg !4552
  %77 = add nuw nsw i64 %74, %68, !dbg !4548
  call void @llvm.dbg.value(metadata i64 %77, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #21, !dbg !4546
  call void @llvm.dbg.value(metadata i64 %77, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  %78 = icmp ult i64 %77, 2048, !dbg !4553
  br i1 %78, label %79, label %95, !dbg !4554

79:                                               ; preds = %70
  %80 = bitcast i32* %6 to i8*, !dbg !4555
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %80) #21, !dbg !4555
  %81 = sub nuw nsw i64 2048, %77, !dbg !4555
  %82 = icmp ult i64 %81, 4, !dbg !4555
  %83 = select i1 %82, i64 %81, i64 4, !dbg !4555
  call void @llvm.dbg.value(metadata i64 %83, metadata !4460, metadata !DIExpression()) #21, !dbg !4556
  %84 = call i32 @getuid() #21, !dbg !4555
  call void @llvm.dbg.value(metadata i32 %84, metadata !4456, metadata !DIExpression()) #21, !dbg !4556
  store i32 %84, i32* %6, align 4, !dbg !4555, !tbaa !1471
  %85 = getelementptr inbounds i8, i8* %39, i64 %77, !dbg !4555
  call void @llvm.dbg.value(metadata i32* %6, metadata !4456, metadata !DIExpression(DW_OP_deref)) #21, !dbg !4556
  call void @llvm.dbg.value(metadata i8* %85, metadata !4531, metadata !DIExpression()) #21, !dbg !4557
  call void @llvm.dbg.value(metadata i8* %80, metadata !4534, metadata !DIExpression()) #21, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %83, metadata !4535, metadata !DIExpression()) #21, !dbg !4557
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %85, i8* nonnull align 4 %80, i64 %83, i1 false) #21, !dbg !4559
  %86 = add nuw nsw i64 %83, %77, !dbg !4555
  call void @llvm.dbg.value(metadata i64 %86, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80) #21, !dbg !4553
  call void @llvm.dbg.value(metadata i64 %86, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  %87 = icmp ult i64 %86, 2048, !dbg !4560
  br i1 %87, label %88, label %95, !dbg !4561

88:                                               ; preds = %79
  %89 = bitcast i32* %7 to i8*, !dbg !4562
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89) #21, !dbg !4562
  %90 = sub nuw nsw i64 2048, %86, !dbg !4562
  %91 = icmp ult i64 %90, 4, !dbg !4562
  %92 = select i1 %91, i64 %90, i64 4, !dbg !4562
  call void @llvm.dbg.value(metadata i64 %92, metadata !4464, metadata !DIExpression()) #21, !dbg !4563
  %93 = call i32 @getgid() #21, !dbg !4562
  call void @llvm.dbg.value(metadata i32 %93, metadata !4461, metadata !DIExpression()) #21, !dbg !4563
  store i32 %93, i32* %7, align 4, !dbg !4562, !tbaa !1471
  %94 = getelementptr inbounds i8, i8* %39, i64 %86, !dbg !4562
  call void @llvm.dbg.value(metadata i32* %7, metadata !4461, metadata !DIExpression(DW_OP_deref)) #21, !dbg !4563
  call void @llvm.dbg.value(metadata i8* %94, metadata !4531, metadata !DIExpression()) #21, !dbg !4564
  call void @llvm.dbg.value(metadata i8* %89, metadata !4534, metadata !DIExpression()) #21, !dbg !4564
  call void @llvm.dbg.value(metadata i64 %92, metadata !4535, metadata !DIExpression()) #21, !dbg !4564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %94, i8* nonnull align 4 %89, i64 %92, i1 false) #21, !dbg !4566
  call void @llvm.dbg.value(metadata i64 undef, metadata !4440, metadata !DIExpression()) #21, !dbg !4518
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89) #21, !dbg !4560
  br label %95, !dbg !4562

95:                                               ; preds = %49, %51, %61, %70, %79, %88
  call void @isaac_seed(%struct.isaac_state* nonnull %40) #21, !dbg !4567
  br label %96

96:                                               ; preds = %19, %95, %33, %9
  %97 = phi %struct.randread_source* [ %11, %9 ], [ null, %19 ], [ %25, %95 ], [ %25, %33 ], !dbg !4568
  ret %struct.randread_source* %97, !dbg !4569
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @randread_error(i8* %0) #0 !dbg !4570 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4572, metadata !DIExpression()), !dbg !4573
  %2 = icmp eq i8* %0, null, !dbg !4574
  br i1 %2, label %11, label %3, !dbg !4576

3:                                                ; preds = %1
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !4577, !tbaa !1471
  %5 = tail call i32* @__errno_location() #26, !dbg !4578
  %6 = load i32, i32* %5, align 4, !dbg !4578, !tbaa !1471
  %7 = icmp eq i32 %6, 0, !dbg !4579
  %8 = select i1 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.168, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.169, i64 0, i64 0), !dbg !4580
  %9 = tail call i8* @dcgettext(i8* null, i8* %8, i32 5) #21, !dbg !4581
  %10 = tail call i8* @quote(i8* nonnull %0) #21, !dbg !4582
  tail call void (i32, i32, i8*, ...) @error(i32 %4, i32 %6, i8* %9, i8* %10) #21, !dbg !4583
  br label %11, !dbg !4583

11:                                               ; preds = %1, %3
  tail call void @abort() #24, !dbg !4584
  unreachable, !dbg !4584
}

; Function Attrs: nofree nounwind
declare !dbg !1175 i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nofree
declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare !dbg !1198 i32 @gettimeofday(%struct.timespec* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1210 i32 @getpid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1213 i32 @getppid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1214 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1217 i32 @getgid() local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @randread_set_handler(%struct.randread_source* nocapture %0, void (i8*)* %1) local_unnamed_addr #12 !dbg !4585 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4589, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4590, metadata !DIExpression()), !dbg !4591
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1, !dbg !4592
  store void (i8*)* %1, void (i8*)** %3, align 8, !dbg !4593, !tbaa !4488
  ret void, !dbg !4594
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @randread_set_handler_arg(%struct.randread_source* nocapture %0, i8* %1) local_unnamed_addr #12 !dbg !4595 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4599, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i8* %1, metadata !4600, metadata !DIExpression()), !dbg !4601
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2, !dbg !4602
  store i8* %1, i8** %3, align 8, !dbg !4603, !tbaa !4491
  ret void, !dbg !4604
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @randread(%struct.randread_source* %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4605 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4609, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i8* %1, metadata !4610, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i64 %2, metadata !4611, metadata !DIExpression()), !dbg !4612
  %4 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !4613
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4613, !tbaa !4484
  %6 = icmp eq %struct._IO_FILE* %5, null, !dbg !4615
  br i1 %6, label %33, label %7, !dbg !4616

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4617, metadata !DIExpression()) #21, !dbg !4628
  call void @llvm.dbg.value(metadata i8* %1, metadata !4623, metadata !DIExpression()) #21, !dbg !4628
  call void @llvm.dbg.value(metadata i64 %2, metadata !4624, metadata !DIExpression()) #21, !dbg !4628
  %8 = tail call i64 @fread_unlocked(i8* %1, i64 1, i64 %2, %struct._IO_FILE* nonnull %5) #21, !dbg !4630
  call void @llvm.dbg.value(metadata i64 %8, metadata !4625, metadata !DIExpression()) #21, !dbg !4631
  %9 = tail call i32* @__errno_location() #26, !dbg !4632
  call void @llvm.dbg.value(metadata i32 undef, metadata !4627, metadata !DIExpression()) #21, !dbg !4631
  call void @llvm.dbg.value(metadata i8* undef, metadata !4623, metadata !DIExpression()) #21, !dbg !4628
  %10 = sub i64 %2, %8, !dbg !4633
  call void @llvm.dbg.value(metadata i64 %10, metadata !4624, metadata !DIExpression()) #21, !dbg !4628
  %11 = icmp eq i64 %10, 0, !dbg !4634
  br i1 %11, label %80, label %12, !dbg !4636

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1, !dbg !4631
  %14 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2, !dbg !4631
  br label %15, !dbg !4636

15:                                               ; preds = %15, %12
  %16 = phi i64 [ %10, %12 ], [ %31, %15 ]
  %17 = phi i64 [ %8, %12 ], [ %30, %15 ]
  %18 = phi i8* [ %1, %12 ], [ %19, %15 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !4623, metadata !DIExpression()) #21, !dbg !4628
  %19 = getelementptr inbounds i8, i8* %18, i64 %17, !dbg !4637
  call void @llvm.dbg.value(metadata i8* %19, metadata !4623, metadata !DIExpression()) #21, !dbg !4628
  %20 = load i32, i32* %9, align 4, !dbg !4632, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %20, metadata !4627, metadata !DIExpression()) #21, !dbg !4631
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4638, !tbaa !4484
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, metadata !4639, metadata !DIExpression()) #21, !dbg !4644
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 0, !dbg !4646
  %23 = load i32, i32* %22, align 8, !dbg !4646, !tbaa !1719
  %24 = and i32 %23, 32, !dbg !4646
  %25 = icmp eq i32 %24, 0, !dbg !4638
  %26 = select i1 %25, i32 0, i32 %20, !dbg !4638
  store i32 %26, i32* %9, align 4, !dbg !4647, !tbaa !1471
  %27 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !4648, !tbaa !4488
  %28 = load i8*, i8** %14, align 8, !dbg !4649, !tbaa !4491
  tail call void %27(i8* %28) #21, !dbg !4650
  call void @llvm.dbg.value(metadata i64 %16, metadata !4624, metadata !DIExpression()) #21, !dbg !4628
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4630, !tbaa !4484
  %30 = tail call i64 @fread_unlocked(i8* %19, i64 1, i64 %16, %struct._IO_FILE* %29) #21, !dbg !4630
  call void @llvm.dbg.value(metadata i64 %30, metadata !4625, metadata !DIExpression()) #21, !dbg !4631
  call void @llvm.dbg.value(metadata i32 undef, metadata !4627, metadata !DIExpression()) #21, !dbg !4631
  call void @llvm.dbg.value(metadata i8* undef, metadata !4623, metadata !DIExpression()) #21, !dbg !4628
  %31 = sub i64 %16, %30, !dbg !4633
  call void @llvm.dbg.value(metadata i64 %31, metadata !4624, metadata !DIExpression()) #21, !dbg !4628
  %32 = icmp eq i64 %31, 0, !dbg !4634
  br i1 %32, label %80, label %15, !dbg !4636

33:                                               ; preds = %3
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4651, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i8* %1, metadata !4657, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %2, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  %34 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 0, !dbg !4667
  %35 = load i64, i64* %34, align 8, !dbg !4667, !tbaa !4668
  call void @llvm.dbg.value(metadata i64 %35, metadata !4659, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i8* %1, metadata !4657, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %2, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i8* %1, metadata !4660, metadata !DIExpression()) #21, !dbg !4671
  %36 = icmp ult i64 %35, %2, !dbg !4672
  %37 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 2, !dbg !4671
  %38 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 1, !dbg !4671
  %39 = bitcast %union.anon.0* %38 to i8*, !dbg !4671
  %40 = sub i64 0, %35, !dbg !4671
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !4671
  call void @llvm.dbg.value(metadata i8* %1, metadata !4531, metadata !DIExpression()) #21, !dbg !4674
  call void @llvm.dbg.value(metadata i8* %1, metadata !4531, metadata !DIExpression()) #21, !dbg !4676
  call void @llvm.dbg.value(metadata i8* %41, metadata !4534, metadata !DIExpression()) #21, !dbg !4674
  call void @llvm.dbg.value(metadata i8* %41, metadata !4534, metadata !DIExpression()) #21, !dbg !4676
  br i1 %36, label %42, label %46, !dbg !4679

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 1, !dbg !4680
  %44 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 0, i32 0, i64 0, !dbg !4671
  %45 = bitcast %union.anon.0* %37 to i8*, !dbg !4671
  br label %52, !dbg !4679

46:                                               ; preds = %74, %33
  %47 = phi i64 [ %2, %33 ], [ %75, %74 ]
  %48 = phi i64 [ %35, %33 ], [ 2048, %74 ], !dbg !4682
  %49 = phi i8* [ %1, %33 ], [ %76, %74 ]
  %50 = phi i8* [ %41, %33 ], [ %45, %74 ], !dbg !4671
  call void @llvm.dbg.value(metadata i64 %47, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %48, metadata !4659, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i8* %49, metadata !4657, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %47, metadata !4535, metadata !DIExpression()) #21, !dbg !4676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %49, i8* nonnull align 1 %50, i64 %47, i1 false) #21, !dbg !4683
  %51 = sub i64 %48, %47, !dbg !4684
  br label %78, !dbg !4685

52:                                               ; preds = %74, %42
  %53 = phi i8* [ %41, %42 ], [ %45, %74 ]
  %54 = phi i8* [ %1, %42 ], [ %76, %74 ]
  %55 = phi i64 [ %35, %42 ], [ 2048, %74 ]
  %56 = phi i64 [ %2, %42 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata i8* %54, metadata !4657, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %55, metadata !4659, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %56, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %55, metadata !4535, metadata !DIExpression()) #21, !dbg !4674
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %54, i8* nonnull align 1 %53, i64 %55, i1 false) #21, !dbg !4686
  %57 = getelementptr inbounds i8, i8* %54, i64 %55, !dbg !4687
  call void @llvm.dbg.value(metadata i8* %57, metadata !4657, metadata !DIExpression()) #21, !dbg !4665
  %58 = sub i64 %56, %55, !dbg !4688
  call void @llvm.dbg.value(metadata i64 %58, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  %59 = ptrtoint i8* %57 to i64, !dbg !4689
  %60 = and i64 %59, 7, !dbg !4689
  %61 = icmp eq i64 %60, 0, !dbg !4689
  br i1 %61, label %62, label %74, !dbg !4690

62:                                               ; preds = %52
  %63 = bitcast i8* %57 to i64*, !dbg !4691
  call void @llvm.dbg.value(metadata i64* %63, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  br label %64, !dbg !4693

64:                                               ; preds = %68, %62
  %65 = phi i64 [ %58, %62 ], [ %70, %68 ], !dbg !4671
  %66 = phi i64* [ %63, %62 ], [ %69, %68 ], !dbg !4692
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  %67 = icmp ugt i64 %65, 2047, !dbg !4694
  br i1 %67, label %68, label %72, !dbg !4693

68:                                               ; preds = %64
  tail call void @isaac_refill(%struct.isaac_state* nonnull %43, i64* %66) #21, !dbg !4695
  %69 = getelementptr inbounds i64, i64* %66, i64 256, !dbg !4696
  call void @llvm.dbg.value(metadata i64* %69, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  %70 = add i64 %65, -2048, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %70, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  %71 = icmp eq i64 %70, 0, !dbg !4698
  br i1 %71, label %78, label %64, !dbg !4700, !llvm.loop !4701

72:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %65, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64* %66, metadata !4662, metadata !DIExpression()) #21, !dbg !4692
  %73 = bitcast i64* %66 to i8*, !dbg !4703
  call void @llvm.dbg.value(metadata i8* %73, metadata !4657, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i8* %57, metadata !4657, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64 0, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  br label %74

74:                                               ; preds = %72, %52
  %75 = phi i64 [ %58, %52 ], [ %65, %72 ], !dbg !4671
  %76 = phi i8* [ %57, %52 ], [ %73, %72 ], !dbg !4704
  call void @llvm.dbg.value(metadata i8* %76, metadata !4657, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %75, metadata !4658, metadata !DIExpression()) #21, !dbg !4665
  tail call void @isaac_refill(%struct.isaac_state* nonnull %43, i64* nonnull %44) #21, !dbg !4705
  call void @llvm.dbg.value(metadata i64 2048, metadata !4659, metadata !DIExpression()) #21, !dbg !4665
  call void @llvm.dbg.value(metadata i8* %76, metadata !4660, metadata !DIExpression()) #21, !dbg !4671
  %77 = icmp ugt i64 %75, 2048, !dbg !4672
  call void @llvm.dbg.value(metadata i8* %76, metadata !4531, metadata !DIExpression()) #21, !dbg !4674
  call void @llvm.dbg.value(metadata i8* %76, metadata !4531, metadata !DIExpression()) #21, !dbg !4676
  call void @llvm.dbg.value(metadata i8* %45, metadata !4534, metadata !DIExpression()) #21, !dbg !4674
  call void @llvm.dbg.value(metadata i8* %45, metadata !4534, metadata !DIExpression()) #21, !dbg !4676
  br i1 %77, label %52, label %46, !dbg !4679

78:                                               ; preds = %68, %46
  %79 = phi i64 [ %51, %46 ], [ 0, %68 ], !dbg !4671
  store i64 %79, i64* %34, align 8, !dbg !4671, !tbaa !4668
  call void @llvm.dbg.value(metadata i64 2048, metadata !4659, metadata !DIExpression()) #21, !dbg !4665
  br label %80

80:                                               ; preds = %15, %7, %78
  ret void, !dbg !4706
}

; Function Attrs: nofree nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @randread_free(%struct.randread_source* %0) local_unnamed_addr #8 !dbg !4707 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4711, metadata !DIExpression()), !dbg !4713
  %2 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !4714
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4714, !tbaa !4484
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !4712, metadata !DIExpression()), !dbg !4713
  %4 = bitcast %struct.randread_source* %0 to i8*, !dbg !4715
  call void @llvm.dbg.value(metadata i8* %4, metadata !4716, metadata !DIExpression()) #21, !dbg !4720
  call void @llvm.dbg.value(metadata i64 4152, metadata !4719, metadata !DIExpression()) #21, !dbg !4720
  tail call void @__explicit_bzero_chk(i8* nonnull %4, i64 4152, i64 -1) #21, !dbg !4722
  tail call void @free(i8* %4) #21, !dbg !4723
  %5 = icmp eq %struct._IO_FILE* %3, null, !dbg !4724
  br i1 %5, label %8, label %6, !dbg !4724

6:                                                ; preds = %1
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #21, !dbg !4725
  br label %8, !dbg !4724

8:                                                ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ], !dbg !4724
  ret i32 %9, !dbg !4726
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local void @isaac_refill(%struct.isaac_state* %0, i64* nocapture %1) local_unnamed_addr #16 !dbg !1225 {
  call void @llvm.dbg.value(metadata %struct.isaac_state* %0, metadata !1237, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64* %1, metadata !1238, metadata !DIExpression()), !dbg !4727
  %3 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !4728
  %4 = load i64, i64* %3, align 8, !dbg !4728, !tbaa !4729
  call void @llvm.dbg.value(metadata i64 %4, metadata !1239, metadata !DIExpression()), !dbg !4727
  %5 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 2, !dbg !4730
  %6 = load i64, i64* %5, align 8, !dbg !4730, !tbaa !4731
  %7 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 3, !dbg !4732
  %8 = load i64, i64* %7, align 8, !dbg !4733, !tbaa !4734
  %9 = add i64 %8, 1, !dbg !4733
  store i64 %9, i64* %7, align 8, !dbg !4733, !tbaa !4734
  %10 = add i64 %9, %6, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %10, metadata !1240, metadata !DIExpression()), !dbg !4727
  %11 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 0, !dbg !4736
  call void @llvm.dbg.value(metadata i64* %11, metadata !1241, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64* %1, metadata !1242, metadata !DIExpression()), !dbg !4727
  %12 = bitcast %struct.isaac_state* %0 to i8*, !dbg !4737
  %13 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 128, !dbg !4727
  br label %14, !dbg !4753

14:                                               ; preds = %14, %2
  %15 = phi i64* [ %1, %2 ], [ %98, %14 ], !dbg !4727
  %16 = phi i64* [ %11, %2 ], [ %99, %14 ], !dbg !4727
  %17 = phi i64 [ %10, %2 ], [ %96, %14 ], !dbg !4727
  %18 = phi i64 [ %4, %2 ], [ %82, %14 ], !dbg !4727
  call void @llvm.dbg.value(metadata i64 %18, metadata !1239, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64 %17, metadata !1240, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64* %16, metadata !1241, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64* %15, metadata !1242, metadata !DIExpression()), !dbg !4727
  %19 = shl i64 %18, 21, !dbg !4754
  %20 = xor i64 %18, -1, !dbg !4754
  %21 = xor i64 %19, %20, !dbg !4754
  %22 = getelementptr inbounds i64, i64* %16, i64 128, !dbg !4754
  %23 = load i64, i64* %22, align 8, !dbg !4754, !tbaa !2868
  %24 = add i64 %21, %23, !dbg !4754
  call void @llvm.dbg.value(metadata i64 %24, metadata !1239, metadata !DIExpression()), !dbg !4727
  %25 = load i64, i64* %16, align 8, !dbg !4754, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %25, metadata !1243, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i64 %25, metadata !4747, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4737
  %26 = and i64 %25, 2040, !dbg !4757
  %27 = getelementptr inbounds i8, i8* %12, i64 %26, !dbg !4758
  call void @llvm.dbg.value(metadata i8* %27, metadata !4750, metadata !DIExpression()), !dbg !4737
  %28 = bitcast i8* %27 to i64*, !dbg !4759
  call void @llvm.dbg.value(metadata i64* %28, metadata !4751, metadata !DIExpression()), !dbg !4737
  %29 = load i64, i64* %28, align 8, !dbg !4760, !tbaa !2868
  %30 = add i64 %24, %17, !dbg !4754
  %31 = add i64 %30, %29, !dbg !4754
  call void @llvm.dbg.value(metadata i64 %31, metadata !1246, metadata !DIExpression()), !dbg !4755
  store i64 %31, i64* %16, align 8, !dbg !4754, !tbaa !2868
  %32 = lshr i64 %31, 8, !dbg !4754
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 %32, metadata !4747, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4763
  %33 = and i64 %32, 2040, !dbg !4764
  %34 = getelementptr inbounds i8, i8* %12, i64 %33, !dbg !4765
  call void @llvm.dbg.value(metadata i8* %34, metadata !4750, metadata !DIExpression()), !dbg !4763
  %35 = bitcast i8* %34 to i64*, !dbg !4766
  call void @llvm.dbg.value(metadata i64* %35, metadata !4751, metadata !DIExpression()), !dbg !4763
  %36 = load i64, i64* %35, align 8, !dbg !4767, !tbaa !2868
  %37 = add i64 %36, %25, !dbg !4754
  call void @llvm.dbg.value(metadata i64 %37, metadata !1240, metadata !DIExpression()), !dbg !4727
  store i64 %37, i64* %15, align 8, !dbg !4754, !tbaa !2868
  %38 = lshr i64 %24, 5, !dbg !4768
  %39 = xor i64 %38, %24, !dbg !4768
  %40 = getelementptr inbounds i64, i64* %16, i64 129, !dbg !4768
  %41 = load i64, i64* %40, align 8, !dbg !4768, !tbaa !2868
  %42 = add i64 %41, %39, !dbg !4768
  call void @llvm.dbg.value(metadata i64 %42, metadata !1239, metadata !DIExpression()), !dbg !4727
  %43 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !4768
  %44 = load i64, i64* %43, align 8, !dbg !4768, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %44, metadata !1247, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.value(metadata i64 %44, metadata !4747, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4772
  %45 = and i64 %44, 2040, !dbg !4773
  %46 = getelementptr inbounds i8, i8* %12, i64 %45, !dbg !4774
  call void @llvm.dbg.value(metadata i8* %46, metadata !4750, metadata !DIExpression()), !dbg !4772
  %47 = bitcast i8* %46 to i64*, !dbg !4775
  call void @llvm.dbg.value(metadata i64* %47, metadata !4751, metadata !DIExpression()), !dbg !4772
  %48 = load i64, i64* %47, align 8, !dbg !4776, !tbaa !2868
  %49 = add i64 %42, %37, !dbg !4768
  %50 = add i64 %49, %48, !dbg !4768
  call void @llvm.dbg.value(metadata i64 %50, metadata !1249, metadata !DIExpression()), !dbg !4769
  store i64 %50, i64* %43, align 8, !dbg !4768, !tbaa !2868
  %51 = lshr i64 %50, 8, !dbg !4768
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i64 %51, metadata !4747, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4779
  %52 = and i64 %51, 2040, !dbg !4780
  %53 = getelementptr inbounds i8, i8* %12, i64 %52, !dbg !4781
  call void @llvm.dbg.value(metadata i8* %53, metadata !4750, metadata !DIExpression()), !dbg !4779
  %54 = bitcast i8* %53 to i64*, !dbg !4782
  call void @llvm.dbg.value(metadata i64* %54, metadata !4751, metadata !DIExpression()), !dbg !4779
  %55 = load i64, i64* %54, align 8, !dbg !4783, !tbaa !2868
  %56 = add i64 %55, %44, !dbg !4768
  call void @llvm.dbg.value(metadata i64 %56, metadata !1240, metadata !DIExpression()), !dbg !4727
  %57 = getelementptr inbounds i64, i64* %15, i64 1, !dbg !4768
  store i64 %56, i64* %57, align 8, !dbg !4768, !tbaa !2868
  %58 = shl i64 %42, 12, !dbg !4784
  %59 = xor i64 %58, %42, !dbg !4784
  %60 = getelementptr inbounds i64, i64* %16, i64 130, !dbg !4784
  %61 = load i64, i64* %60, align 8, !dbg !4784, !tbaa !2868
  %62 = add i64 %61, %59, !dbg !4784
  call void @llvm.dbg.value(metadata i64 %62, metadata !1239, metadata !DIExpression()), !dbg !4727
  %63 = getelementptr inbounds i64, i64* %16, i64 2, !dbg !4784
  %64 = load i64, i64* %63, align 8, !dbg !4784, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %64, metadata !1250, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 %64, metadata !4747, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4788
  %65 = and i64 %64, 2040, !dbg !4789
  %66 = getelementptr inbounds i8, i8* %12, i64 %65, !dbg !4790
  call void @llvm.dbg.value(metadata i8* %66, metadata !4750, metadata !DIExpression()), !dbg !4788
  %67 = bitcast i8* %66 to i64*, !dbg !4791
  call void @llvm.dbg.value(metadata i64* %67, metadata !4751, metadata !DIExpression()), !dbg !4788
  %68 = load i64, i64* %67, align 8, !dbg !4792, !tbaa !2868
  %69 = add i64 %62, %56, !dbg !4784
  %70 = add i64 %69, %68, !dbg !4784
  call void @llvm.dbg.value(metadata i64 %70, metadata !1252, metadata !DIExpression()), !dbg !4785
  store i64 %70, i64* %63, align 8, !dbg !4784, !tbaa !2868
  %71 = lshr i64 %70, 8, !dbg !4784
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata i64 %71, metadata !4747, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4795
  %72 = and i64 %71, 2040, !dbg !4796
  %73 = getelementptr inbounds i8, i8* %12, i64 %72, !dbg !4797
  call void @llvm.dbg.value(metadata i8* %73, metadata !4750, metadata !DIExpression()), !dbg !4795
  %74 = bitcast i8* %73 to i64*, !dbg !4798
  call void @llvm.dbg.value(metadata i64* %74, metadata !4751, metadata !DIExpression()), !dbg !4795
  %75 = load i64, i64* %74, align 8, !dbg !4799, !tbaa !2868
  %76 = add i64 %75, %64, !dbg !4784
  call void @llvm.dbg.value(metadata i64 %76, metadata !1240, metadata !DIExpression()), !dbg !4727
  %77 = getelementptr inbounds i64, i64* %15, i64 2, !dbg !4784
  store i64 %76, i64* %77, align 8, !dbg !4784, !tbaa !2868
  %78 = lshr i64 %62, 33, !dbg !4800
  %79 = xor i64 %78, %62, !dbg !4800
  %80 = getelementptr inbounds i64, i64* %16, i64 131, !dbg !4800
  %81 = load i64, i64* %80, align 8, !dbg !4800, !tbaa !2868
  %82 = add i64 %81, %79, !dbg !4800
  call void @llvm.dbg.value(metadata i64 %82, metadata !1239, metadata !DIExpression()), !dbg !4727
  %83 = getelementptr inbounds i64, i64* %16, i64 3, !dbg !4800
  %84 = load i64, i64* %83, align 8, !dbg !4800, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %84, metadata !1253, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %84, metadata !4747, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4804
  %85 = and i64 %84, 2040, !dbg !4805
  %86 = getelementptr inbounds i8, i8* %12, i64 %85, !dbg !4806
  call void @llvm.dbg.value(metadata i8* %86, metadata !4750, metadata !DIExpression()), !dbg !4804
  %87 = bitcast i8* %86 to i64*, !dbg !4807
  call void @llvm.dbg.value(metadata i64* %87, metadata !4751, metadata !DIExpression()), !dbg !4804
  %88 = load i64, i64* %87, align 8, !dbg !4808, !tbaa !2868
  %89 = add i64 %82, %76, !dbg !4800
  %90 = add i64 %89, %88, !dbg !4800
  call void @llvm.dbg.value(metadata i64 %90, metadata !1255, metadata !DIExpression()), !dbg !4801
  store i64 %90, i64* %83, align 8, !dbg !4800, !tbaa !2868
  %91 = lshr i64 %90, 8, !dbg !4800
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i64 %91, metadata !4747, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4811
  %92 = and i64 %91, 2040, !dbg !4812
  %93 = getelementptr inbounds i8, i8* %12, i64 %92, !dbg !4813
  call void @llvm.dbg.value(metadata i8* %93, metadata !4750, metadata !DIExpression()), !dbg !4811
  %94 = bitcast i8* %93 to i64*, !dbg !4814
  call void @llvm.dbg.value(metadata i64* %94, metadata !4751, metadata !DIExpression()), !dbg !4811
  %95 = load i64, i64* %94, align 8, !dbg !4815, !tbaa !2868
  %96 = add i64 %95, %84, !dbg !4800
  call void @llvm.dbg.value(metadata i64 %96, metadata !1240, metadata !DIExpression()), !dbg !4727
  %97 = getelementptr inbounds i64, i64* %15, i64 3, !dbg !4800
  store i64 %96, i64* %97, align 8, !dbg !4800, !tbaa !2868
  %98 = getelementptr inbounds i64, i64* %15, i64 4, !dbg !4816
  call void @llvm.dbg.value(metadata i64* %98, metadata !1242, metadata !DIExpression()), !dbg !4727
  %99 = getelementptr inbounds i64, i64* %16, i64 4, !dbg !4817
  call void @llvm.dbg.value(metadata i64* %99, metadata !1241, metadata !DIExpression()), !dbg !4727
  %100 = icmp ult i64* %99, %13, !dbg !4818
  br i1 %100, label %14, label %101, !dbg !4819, !llvm.loop !4820

101:                                              ; preds = %14
  %102 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 256, !dbg !4727
  br label %103, !dbg !4822

103:                                              ; preds = %101, %103
  %104 = phi i64* [ %187, %103 ], [ %98, %101 ], !dbg !4727
  %105 = phi i64* [ %188, %103 ], [ %99, %101 ], !dbg !4727
  %106 = phi i64 [ %185, %103 ], [ %96, %101 ], !dbg !4727
  %107 = phi i64 [ %171, %103 ], [ %82, %101 ], !dbg !4727
  call void @llvm.dbg.value(metadata i64 %107, metadata !1239, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64 %106, metadata !1240, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64* %105, metadata !1241, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64* %104, metadata !1242, metadata !DIExpression()), !dbg !4727
  %108 = shl i64 %107, 21, !dbg !4823
  %109 = xor i64 %107, -1, !dbg !4823
  %110 = xor i64 %108, %109, !dbg !4823
  %111 = getelementptr inbounds i64, i64* %105, i64 -128, !dbg !4823
  %112 = load i64, i64* %111, align 8, !dbg !4823, !tbaa !2868
  %113 = add i64 %110, %112, !dbg !4823
  call void @llvm.dbg.value(metadata i64 %113, metadata !1239, metadata !DIExpression()), !dbg !4727
  %114 = load i64, i64* %105, align 8, !dbg !4823, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %114, metadata !1256, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %114, metadata !4747, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4827
  %115 = and i64 %114, 2040, !dbg !4828
  %116 = getelementptr inbounds i8, i8* %12, i64 %115, !dbg !4829
  call void @llvm.dbg.value(metadata i8* %116, metadata !4750, metadata !DIExpression()), !dbg !4827
  %117 = bitcast i8* %116 to i64*, !dbg !4830
  call void @llvm.dbg.value(metadata i64* %117, metadata !4751, metadata !DIExpression()), !dbg !4827
  %118 = load i64, i64* %117, align 8, !dbg !4831, !tbaa !2868
  %119 = add i64 %113, %106, !dbg !4823
  %120 = add i64 %119, %118, !dbg !4823
  call void @llvm.dbg.value(metadata i64 %120, metadata !1259, metadata !DIExpression()), !dbg !4824
  store i64 %120, i64* %105, align 8, !dbg !4823, !tbaa !2868
  %121 = lshr i64 %120, 8, !dbg !4823
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %121, metadata !4747, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4834
  %122 = and i64 %121, 2040, !dbg !4835
  %123 = getelementptr inbounds i8, i8* %12, i64 %122, !dbg !4836
  call void @llvm.dbg.value(metadata i8* %123, metadata !4750, metadata !DIExpression()), !dbg !4834
  %124 = bitcast i8* %123 to i64*, !dbg !4837
  call void @llvm.dbg.value(metadata i64* %124, metadata !4751, metadata !DIExpression()), !dbg !4834
  %125 = load i64, i64* %124, align 8, !dbg !4838, !tbaa !2868
  %126 = add i64 %125, %114, !dbg !4823
  call void @llvm.dbg.value(metadata i64 %126, metadata !1240, metadata !DIExpression()), !dbg !4727
  store i64 %126, i64* %104, align 8, !dbg !4823, !tbaa !2868
  %127 = lshr i64 %113, 5, !dbg !4839
  %128 = xor i64 %127, %113, !dbg !4839
  %129 = getelementptr inbounds i64, i64* %105, i64 -127, !dbg !4839
  %130 = load i64, i64* %129, align 8, !dbg !4839, !tbaa !2868
  %131 = add i64 %130, %128, !dbg !4839
  call void @llvm.dbg.value(metadata i64 %131, metadata !1239, metadata !DIExpression()), !dbg !4727
  %132 = getelementptr inbounds i64, i64* %105, i64 1, !dbg !4839
  %133 = load i64, i64* %132, align 8, !dbg !4839, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %133, metadata !1260, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i64 %133, metadata !4747, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4843
  %134 = and i64 %133, 2040, !dbg !4844
  %135 = getelementptr inbounds i8, i8* %12, i64 %134, !dbg !4845
  call void @llvm.dbg.value(metadata i8* %135, metadata !4750, metadata !DIExpression()), !dbg !4843
  %136 = bitcast i8* %135 to i64*, !dbg !4846
  call void @llvm.dbg.value(metadata i64* %136, metadata !4751, metadata !DIExpression()), !dbg !4843
  %137 = load i64, i64* %136, align 8, !dbg !4847, !tbaa !2868
  %138 = add i64 %131, %126, !dbg !4839
  %139 = add i64 %138, %137, !dbg !4839
  call void @llvm.dbg.value(metadata i64 %139, metadata !1262, metadata !DIExpression()), !dbg !4840
  store i64 %139, i64* %132, align 8, !dbg !4839, !tbaa !2868
  %140 = lshr i64 %139, 8, !dbg !4839
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %140, metadata !4747, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4850
  %141 = and i64 %140, 2040, !dbg !4851
  %142 = getelementptr inbounds i8, i8* %12, i64 %141, !dbg !4852
  call void @llvm.dbg.value(metadata i8* %142, metadata !4750, metadata !DIExpression()), !dbg !4850
  %143 = bitcast i8* %142 to i64*, !dbg !4853
  call void @llvm.dbg.value(metadata i64* %143, metadata !4751, metadata !DIExpression()), !dbg !4850
  %144 = load i64, i64* %143, align 8, !dbg !4854, !tbaa !2868
  %145 = add i64 %144, %133, !dbg !4839
  call void @llvm.dbg.value(metadata i64 %145, metadata !1240, metadata !DIExpression()), !dbg !4727
  %146 = getelementptr inbounds i64, i64* %104, i64 1, !dbg !4839
  store i64 %145, i64* %146, align 8, !dbg !4839, !tbaa !2868
  %147 = shl i64 %131, 12, !dbg !4855
  %148 = xor i64 %147, %131, !dbg !4855
  %149 = getelementptr inbounds i64, i64* %105, i64 -126, !dbg !4855
  %150 = load i64, i64* %149, align 8, !dbg !4855, !tbaa !2868
  %151 = add i64 %150, %148, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %151, metadata !1239, metadata !DIExpression()), !dbg !4727
  %152 = getelementptr inbounds i64, i64* %105, i64 2, !dbg !4855
  %153 = load i64, i64* %152, align 8, !dbg !4855, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %153, metadata !1263, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i64 %153, metadata !4747, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4859
  %154 = and i64 %153, 2040, !dbg !4860
  %155 = getelementptr inbounds i8, i8* %12, i64 %154, !dbg !4861
  call void @llvm.dbg.value(metadata i8* %155, metadata !4750, metadata !DIExpression()), !dbg !4859
  %156 = bitcast i8* %155 to i64*, !dbg !4862
  call void @llvm.dbg.value(metadata i64* %156, metadata !4751, metadata !DIExpression()), !dbg !4859
  %157 = load i64, i64* %156, align 8, !dbg !4863, !tbaa !2868
  %158 = add i64 %151, %145, !dbg !4855
  %159 = add i64 %158, %157, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %159, metadata !1265, metadata !DIExpression()), !dbg !4856
  store i64 %159, i64* %152, align 8, !dbg !4855, !tbaa !2868
  %160 = lshr i64 %159, 8, !dbg !4855
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i64 %160, metadata !4747, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4866
  %161 = and i64 %160, 2040, !dbg !4867
  %162 = getelementptr inbounds i8, i8* %12, i64 %161, !dbg !4868
  call void @llvm.dbg.value(metadata i8* %162, metadata !4750, metadata !DIExpression()), !dbg !4866
  %163 = bitcast i8* %162 to i64*, !dbg !4869
  call void @llvm.dbg.value(metadata i64* %163, metadata !4751, metadata !DIExpression()), !dbg !4866
  %164 = load i64, i64* %163, align 8, !dbg !4870, !tbaa !2868
  %165 = add i64 %164, %153, !dbg !4855
  call void @llvm.dbg.value(metadata i64 %165, metadata !1240, metadata !DIExpression()), !dbg !4727
  %166 = getelementptr inbounds i64, i64* %104, i64 2, !dbg !4855
  store i64 %165, i64* %166, align 8, !dbg !4855, !tbaa !2868
  %167 = lshr i64 %151, 33, !dbg !4871
  %168 = xor i64 %167, %151, !dbg !4871
  %169 = getelementptr inbounds i64, i64* %105, i64 -125, !dbg !4871
  %170 = load i64, i64* %169, align 8, !dbg !4871, !tbaa !2868
  %171 = add i64 %170, %168, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %171, metadata !1239, metadata !DIExpression()), !dbg !4727
  %172 = getelementptr inbounds i64, i64* %105, i64 3, !dbg !4871
  %173 = load i64, i64* %172, align 8, !dbg !4871, !tbaa !2868
  call void @llvm.dbg.value(metadata i64 %173, metadata !1266, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.value(metadata i64 %173, metadata !4747, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4875
  %174 = and i64 %173, 2040, !dbg !4876
  %175 = getelementptr inbounds i8, i8* %12, i64 %174, !dbg !4877
  call void @llvm.dbg.value(metadata i8* %175, metadata !4750, metadata !DIExpression()), !dbg !4875
  %176 = bitcast i8* %175 to i64*, !dbg !4878
  call void @llvm.dbg.value(metadata i64* %176, metadata !4751, metadata !DIExpression()), !dbg !4875
  %177 = load i64, i64* %176, align 8, !dbg !4879, !tbaa !2868
  %178 = add i64 %171, %165, !dbg !4871
  %179 = add i64 %178, %177, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %179, metadata !1268, metadata !DIExpression()), !dbg !4872
  store i64 %179, i64* %172, align 8, !dbg !4871, !tbaa !2868
  %180 = lshr i64 %179, 8, !dbg !4871
  call void @llvm.dbg.value(metadata i64* %11, metadata !4746, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i64 %180, metadata !4747, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i8* %12, metadata !4748, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i8* %12, metadata !4749, metadata !DIExpression()), !dbg !4882
  %181 = and i64 %180, 2040, !dbg !4883
  %182 = getelementptr inbounds i8, i8* %12, i64 %181, !dbg !4884
  call void @llvm.dbg.value(metadata i8* %182, metadata !4750, metadata !DIExpression()), !dbg !4882
  %183 = bitcast i8* %182 to i64*, !dbg !4885
  call void @llvm.dbg.value(metadata i64* %183, metadata !4751, metadata !DIExpression()), !dbg !4882
  %184 = load i64, i64* %183, align 8, !dbg !4886, !tbaa !2868
  %185 = add i64 %184, %173, !dbg !4871
  call void @llvm.dbg.value(metadata i64 %185, metadata !1240, metadata !DIExpression()), !dbg !4727
  %186 = getelementptr inbounds i64, i64* %104, i64 3, !dbg !4871
  store i64 %185, i64* %186, align 8, !dbg !4871, !tbaa !2868
  %187 = getelementptr inbounds i64, i64* %104, i64 4, !dbg !4887
  call void @llvm.dbg.value(metadata i64* %187, metadata !1242, metadata !DIExpression()), !dbg !4727
  %188 = getelementptr inbounds i64, i64* %105, i64 4, !dbg !4888
  call void @llvm.dbg.value(metadata i64* %188, metadata !1241, metadata !DIExpression()), !dbg !4727
  %189 = icmp ult i64* %188, %102, !dbg !4889
  br i1 %189, label %103, label %190, !dbg !4890, !llvm.loop !4891

190:                                              ; preds = %103
  store i64 %171, i64* %3, align 8, !dbg !4893, !tbaa !4729
  store i64 %185, i64* %5, align 8, !dbg !4894, !tbaa !4731
  ret void, !dbg !4895
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local void @isaac_seed(%struct.isaac_state* nocapture %0) local_unnamed_addr #16 !dbg !4896 {
  call void @llvm.dbg.value(metadata %struct.isaac_state* %0, metadata !4900, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 7240739780546808700, metadata !4901, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 -5046086420515862430, metadata !4902, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 -8354558816804203872, metadata !4903, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 -5576812576440232668, metadata !4904, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 -9011610652101975858, metadata !4905, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 5259722845879046933, metadata !4906, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 -5865837416287532563, metadata !4907, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 -7424904924229222229, metadata !4908, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i32 0, metadata !4909, metadata !DIExpression()), !dbg !4914
  br label %2, !dbg !4915

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %75, %2 ]
  %4 = phi i64 [ -7424904924229222229, %1 ], [ %71, %2 ]
  %5 = phi i64 [ -5865837416287532563, %1 ], [ %74, %2 ]
  %6 = phi i64 [ 5259722845879046933, %1 ], [ %70, %2 ]
  %7 = phi i64 [ -9011610652101975858, %1 ], [ %73, %2 ]
  %8 = phi i64 [ -5576812576440232668, %1 ], [ %69, %2 ]
  %9 = phi i64 [ -8354558816804203872, %1 ], [ %65, %2 ]
  %10 = phi i64 [ -5046086420515862430, %1 ], [ %61, %2 ]
  %11 = phi i64 [ 7240739780546808700, %1 ], [ %57, %2 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !4909, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i64 %4, metadata !4908, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %5, metadata !4907, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %6, metadata !4906, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %7, metadata !4905, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %8, metadata !4904, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %9, metadata !4903, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %10, metadata !4902, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %11, metadata !4901, metadata !DIExpression()), !dbg !4913
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %3, !dbg !4917
  %13 = load i64, i64* %12, align 8, !dbg !4917, !tbaa !2868
  %14 = add i64 %13, %11, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %14, metadata !4901, metadata !DIExpression()), !dbg !4913
  %15 = or i64 %3, 1, !dbg !4917
  %16 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %15, !dbg !4917
  %17 = load i64, i64* %16, align 8, !dbg !4917, !tbaa !2868
  %18 = add i64 %17, %10, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %18, metadata !4902, metadata !DIExpression()), !dbg !4913
  %19 = or i64 %3, 2, !dbg !4917
  %20 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %19, !dbg !4917
  %21 = load i64, i64* %20, align 8, !dbg !4917, !tbaa !2868
  %22 = add i64 %21, %9, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %22, metadata !4903, metadata !DIExpression()), !dbg !4913
  %23 = or i64 %3, 3, !dbg !4917
  %24 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %23, !dbg !4917
  %25 = load i64, i64* %24, align 8, !dbg !4917, !tbaa !2868
  %26 = add i64 %25, %8, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %26, metadata !4904, metadata !DIExpression()), !dbg !4913
  %27 = or i64 %3, 4, !dbg !4917
  %28 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %27, !dbg !4917
  %29 = load i64, i64* %28, align 8, !dbg !4917, !tbaa !2868
  %30 = add i64 %29, %7, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %30, metadata !4905, metadata !DIExpression()), !dbg !4913
  %31 = or i64 %3, 5, !dbg !4917
  %32 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %31, !dbg !4917
  %33 = load i64, i64* %32, align 8, !dbg !4917, !tbaa !2868
  %34 = add i64 %33, %6, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %34, metadata !4906, metadata !DIExpression()), !dbg !4913
  %35 = or i64 %3, 6, !dbg !4917
  %36 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %35, !dbg !4917
  %37 = load i64, i64* %36, align 8, !dbg !4917, !tbaa !2868
  %38 = add i64 %37, %5, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %38, metadata !4907, metadata !DIExpression()), !dbg !4913
  %39 = or i64 %3, 7, !dbg !4917
  %40 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %39, !dbg !4917
  %41 = load i64, i64* %40, align 8, !dbg !4917, !tbaa !2868
  %42 = add i64 %41, %4, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %42, metadata !4908, metadata !DIExpression()), !dbg !4913
  %43 = sub i64 %14, %30, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %43, metadata !4901, metadata !DIExpression()), !dbg !4913
  %44 = lshr i64 %42, 9, !dbg !4920
  %45 = xor i64 %44, %34, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %45, metadata !4906, metadata !DIExpression()), !dbg !4913
  %46 = add i64 %42, %43, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %46, metadata !4908, metadata !DIExpression()), !dbg !4913
  %47 = sub i64 %18, %45, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %47, metadata !4902, metadata !DIExpression()), !dbg !4913
  %48 = shl i64 %43, 9, !dbg !4920
  %49 = xor i64 %38, %48, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %49, metadata !4907, metadata !DIExpression()), !dbg !4913
  %50 = add i64 %47, %43, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %50, metadata !4901, metadata !DIExpression()), !dbg !4913
  %51 = sub i64 %22, %49, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %51, metadata !4903, metadata !DIExpression()), !dbg !4913
  %52 = lshr i64 %47, 23, !dbg !4920
  %53 = xor i64 %52, %46, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %53, metadata !4908, metadata !DIExpression()), !dbg !4913
  %54 = add i64 %47, %51, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %54, metadata !4902, metadata !DIExpression()), !dbg !4913
  %55 = sub i64 %26, %53, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %55, metadata !4904, metadata !DIExpression()), !dbg !4913
  %56 = shl i64 %51, 15, !dbg !4920
  %57 = xor i64 %50, %56, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %57, metadata !4901, metadata !DIExpression()), !dbg !4913
  %58 = add i64 %55, %51, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %58, metadata !4903, metadata !DIExpression()), !dbg !4913
  %59 = sub i64 %30, %57, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %59, metadata !4905, metadata !DIExpression()), !dbg !4913
  %60 = lshr i64 %55, 14, !dbg !4920
  %61 = xor i64 %60, %54, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %61, metadata !4902, metadata !DIExpression()), !dbg !4913
  %62 = add i64 %55, %59, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %62, metadata !4904, metadata !DIExpression()), !dbg !4913
  %63 = sub i64 %45, %61, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %63, metadata !4906, metadata !DIExpression()), !dbg !4913
  %64 = shl i64 %59, 20, !dbg !4920
  %65 = xor i64 %58, %64, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %65, metadata !4903, metadata !DIExpression()), !dbg !4913
  %66 = add i64 %63, %59, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %66, metadata !4905, metadata !DIExpression()), !dbg !4913
  %67 = sub i64 %49, %65, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %67, metadata !4907, metadata !DIExpression()), !dbg !4913
  %68 = lshr i64 %63, 17, !dbg !4920
  %69 = xor i64 %68, %62, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %69, metadata !4904, metadata !DIExpression()), !dbg !4913
  %70 = add i64 %63, %67, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %70, metadata !4906, metadata !DIExpression()), !dbg !4913
  %71 = sub i64 %53, %69, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %71, metadata !4908, metadata !DIExpression()), !dbg !4913
  %72 = shl i64 %67, 14, !dbg !4920
  %73 = xor i64 %66, %72, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %73, metadata !4905, metadata !DIExpression()), !dbg !4913
  %74 = add i64 %71, %67, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %74, metadata !4907, metadata !DIExpression()), !dbg !4913
  store i64 %57, i64* %12, align 8, !dbg !4917, !tbaa !2868
  store i64 %61, i64* %16, align 8, !dbg !4917, !tbaa !2868
  store i64 %65, i64* %20, align 8, !dbg !4917, !tbaa !2868
  store i64 %69, i64* %24, align 8, !dbg !4917, !tbaa !2868
  store i64 %73, i64* %28, align 8, !dbg !4917, !tbaa !2868
  store i64 %70, i64* %32, align 8, !dbg !4917, !tbaa !2868
  store i64 %74, i64* %36, align 8, !dbg !4917, !tbaa !2868
  store i64 %71, i64* %40, align 8, !dbg !4917, !tbaa !2868
  %75 = add nuw nsw i64 %3, 8, !dbg !4922
  call void @llvm.dbg.value(metadata i64 %75, metadata !4909, metadata !DIExpression()), !dbg !4914
  %76 = icmp ult i64 %3, 248, !dbg !4922
  br i1 %76, label %2, label %77, !dbg !4915, !llvm.loop !4923

77:                                               ; preds = %2, %77
  %78 = phi i64 [ %150, %77 ], [ 0, %2 ]
  %79 = phi i64 [ %146, %77 ], [ %71, %2 ]
  %80 = phi i64 [ %149, %77 ], [ %74, %2 ]
  %81 = phi i64 [ %145, %77 ], [ %70, %2 ]
  %82 = phi i64 [ %148, %77 ], [ %73, %2 ]
  %83 = phi i64 [ %144, %77 ], [ %69, %2 ]
  %84 = phi i64 [ %140, %77 ], [ %65, %2 ]
  %85 = phi i64 [ %136, %77 ], [ %61, %2 ]
  %86 = phi i64 [ %132, %77 ], [ %57, %2 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !4911, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i64 %79, metadata !4908, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %80, metadata !4907, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %81, metadata !4906, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %82, metadata !4905, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %83, metadata !4904, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %84, metadata !4903, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %85, metadata !4902, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %86, metadata !4901, metadata !DIExpression()), !dbg !4913
  %87 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %78, !dbg !4925
  %88 = load i64, i64* %87, align 8, !dbg !4925, !tbaa !2868
  %89 = add i64 %88, %86, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %89, metadata !4901, metadata !DIExpression()), !dbg !4913
  %90 = or i64 %78, 1, !dbg !4925
  %91 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %90, !dbg !4925
  %92 = load i64, i64* %91, align 8, !dbg !4925, !tbaa !2868
  %93 = add i64 %92, %85, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %93, metadata !4902, metadata !DIExpression()), !dbg !4913
  %94 = or i64 %78, 2, !dbg !4925
  %95 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %94, !dbg !4925
  %96 = load i64, i64* %95, align 8, !dbg !4925, !tbaa !2868
  %97 = add i64 %96, %84, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %97, metadata !4903, metadata !DIExpression()), !dbg !4913
  %98 = or i64 %78, 3, !dbg !4925
  %99 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %98, !dbg !4925
  %100 = load i64, i64* %99, align 8, !dbg !4925, !tbaa !2868
  %101 = add i64 %100, %83, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %101, metadata !4904, metadata !DIExpression()), !dbg !4913
  %102 = or i64 %78, 4, !dbg !4925
  %103 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %102, !dbg !4925
  %104 = load i64, i64* %103, align 8, !dbg !4925, !tbaa !2868
  %105 = add i64 %104, %82, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %105, metadata !4905, metadata !DIExpression()), !dbg !4913
  %106 = or i64 %78, 5, !dbg !4925
  %107 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %106, !dbg !4925
  %108 = load i64, i64* %107, align 8, !dbg !4925, !tbaa !2868
  %109 = add i64 %108, %81, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %109, metadata !4906, metadata !DIExpression()), !dbg !4913
  %110 = or i64 %78, 6, !dbg !4925
  %111 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %110, !dbg !4925
  %112 = load i64, i64* %111, align 8, !dbg !4925, !tbaa !2868
  %113 = add i64 %112, %80, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %113, metadata !4907, metadata !DIExpression()), !dbg !4913
  %114 = or i64 %78, 7, !dbg !4925
  %115 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %114, !dbg !4925
  %116 = load i64, i64* %115, align 8, !dbg !4925, !tbaa !2868
  %117 = add i64 %116, %79, !dbg !4925
  call void @llvm.dbg.value(metadata i64 %117, metadata !4908, metadata !DIExpression()), !dbg !4913
  %118 = sub i64 %89, %105, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %118, metadata !4901, metadata !DIExpression()), !dbg !4913
  %119 = lshr i64 %117, 9, !dbg !4929
  %120 = xor i64 %119, %109, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %120, metadata !4906, metadata !DIExpression()), !dbg !4913
  %121 = add i64 %117, %118, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %121, metadata !4908, metadata !DIExpression()), !dbg !4913
  %122 = sub i64 %93, %120, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %122, metadata !4902, metadata !DIExpression()), !dbg !4913
  %123 = shl i64 %118, 9, !dbg !4929
  %124 = xor i64 %113, %123, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %124, metadata !4907, metadata !DIExpression()), !dbg !4913
  %125 = add i64 %122, %118, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %125, metadata !4901, metadata !DIExpression()), !dbg !4913
  %126 = sub i64 %97, %124, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %126, metadata !4903, metadata !DIExpression()), !dbg !4913
  %127 = lshr i64 %122, 23, !dbg !4929
  %128 = xor i64 %127, %121, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %128, metadata !4908, metadata !DIExpression()), !dbg !4913
  %129 = add i64 %122, %126, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %129, metadata !4902, metadata !DIExpression()), !dbg !4913
  %130 = sub i64 %101, %128, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %130, metadata !4904, metadata !DIExpression()), !dbg !4913
  %131 = shl i64 %126, 15, !dbg !4929
  %132 = xor i64 %125, %131, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %132, metadata !4901, metadata !DIExpression()), !dbg !4913
  %133 = add i64 %130, %126, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %133, metadata !4903, metadata !DIExpression()), !dbg !4913
  %134 = sub i64 %105, %132, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %134, metadata !4905, metadata !DIExpression()), !dbg !4913
  %135 = lshr i64 %130, 14, !dbg !4929
  %136 = xor i64 %135, %129, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %136, metadata !4902, metadata !DIExpression()), !dbg !4913
  %137 = add i64 %130, %134, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %137, metadata !4904, metadata !DIExpression()), !dbg !4913
  %138 = sub i64 %120, %136, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %138, metadata !4906, metadata !DIExpression()), !dbg !4913
  %139 = shl i64 %134, 20, !dbg !4929
  %140 = xor i64 %133, %139, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %140, metadata !4903, metadata !DIExpression()), !dbg !4913
  %141 = add i64 %138, %134, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %141, metadata !4905, metadata !DIExpression()), !dbg !4913
  %142 = sub i64 %124, %140, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %142, metadata !4907, metadata !DIExpression()), !dbg !4913
  %143 = lshr i64 %138, 17, !dbg !4929
  %144 = xor i64 %143, %137, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %144, metadata !4904, metadata !DIExpression()), !dbg !4913
  %145 = add i64 %138, %142, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %145, metadata !4906, metadata !DIExpression()), !dbg !4913
  %146 = sub i64 %128, %144, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %146, metadata !4908, metadata !DIExpression()), !dbg !4913
  %147 = shl i64 %142, 14, !dbg !4929
  %148 = xor i64 %141, %147, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %148, metadata !4905, metadata !DIExpression()), !dbg !4913
  %149 = add i64 %146, %142, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %149, metadata !4907, metadata !DIExpression()), !dbg !4913
  store i64 %132, i64* %87, align 8, !dbg !4925, !tbaa !2868
  store i64 %136, i64* %91, align 8, !dbg !4925, !tbaa !2868
  store i64 %140, i64* %95, align 8, !dbg !4925, !tbaa !2868
  store i64 %144, i64* %99, align 8, !dbg !4925, !tbaa !2868
  store i64 %148, i64* %103, align 8, !dbg !4925, !tbaa !2868
  store i64 %145, i64* %107, align 8, !dbg !4925, !tbaa !2868
  store i64 %149, i64* %111, align 8, !dbg !4925, !tbaa !2868
  store i64 %146, i64* %115, align 8, !dbg !4925, !tbaa !2868
  %150 = add nuw nsw i64 %78, 8, !dbg !4931
  call void @llvm.dbg.value(metadata i64 %150, metadata !4911, metadata !DIExpression()), !dbg !4924
  %151 = icmp ult i64 %78, 248, !dbg !4931
  br i1 %151, label %77, label %152, !dbg !4932, !llvm.loop !4933

152:                                              ; preds = %77
  %153 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !4934
  %154 = bitcast i64* %153 to i8*, !dbg !4935
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %154, i8 0, i64 24, i1 false), !dbg !4936
  ret void, !dbg !4935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4941, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i8* %1, metadata !4942, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i64 %2, metadata !4943, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i32 %0, metadata !4945, metadata !DIExpression()) #21, !dbg !4954
  call void @llvm.dbg.value(metadata i8* %1, metadata !4948, metadata !DIExpression()) #21, !dbg !4954
  call void @llvm.dbg.value(metadata i64 %2, metadata !4949, metadata !DIExpression()) #21, !dbg !4954
  call void @llvm.dbg.value(metadata i32 %0, metadata !4956, metadata !DIExpression()) #21, !dbg !4962
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #21, !dbg !4964
  call void @llvm.dbg.value(metadata i8* %4, metadata !4961, metadata !DIExpression()) #21, !dbg !4962
  call void @llvm.dbg.value(metadata i8* %4, metadata !4950, metadata !DIExpression()) #21, !dbg !4954
  %5 = icmp eq i8* %4, null, !dbg !4965
  br i1 %5, label %6, label %9, !dbg !4966

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4967
  br i1 %7, label %19, label %8, !dbg !4970

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4971, !tbaa !1496
  br label %19, !dbg !4972

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !4973
  call void @llvm.dbg.value(metadata i64 %10, metadata !4951, metadata !DIExpression()) #21, !dbg !4974
  %11 = icmp ult i64 %10, %2, !dbg !4975
  br i1 %11, label %12, label %14, !dbg !4977

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4978
  call void @llvm.dbg.value(metadata i8* %1, metadata !4980, metadata !DIExpression()) #21, !dbg !4985
  call void @llvm.dbg.value(metadata i8* %4, metadata !4983, metadata !DIExpression()) #21, !dbg !4985
  call void @llvm.dbg.value(metadata i64 %13, metadata !4984, metadata !DIExpression()) #21, !dbg !4985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #21, !dbg !4987
  br label %19, !dbg !4988

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4989
  br i1 %15, label %19, label %16, !dbg !4992

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4993
  call void @llvm.dbg.value(metadata i8* %1, metadata !4980, metadata !DIExpression()) #21, !dbg !4995
  call void @llvm.dbg.value(metadata i8* %4, metadata !4983, metadata !DIExpression()) #21, !dbg !4995
  call void @llvm.dbg.value(metadata i64 %17, metadata !4984, metadata !DIExpression()) #21, !dbg !4995
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #21, !dbg !4997
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4998
  store i8 0, i8* %18, align 1, !dbg !4999, !tbaa !1496
  br label %19, !dbg !5000

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !5001
  ret i32 %20, !dbg !5002
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5003 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5005, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata i32 %0, metadata !4956, metadata !DIExpression()) #21, !dbg !5007
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #21, !dbg !5009
  call void @llvm.dbg.value(metadata i8* %2, metadata !4961, metadata !DIExpression()) #21, !dbg !5007
  ret i8* %2, !dbg !5010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !5011 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5017, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata i8* %1, metadata !5018, metadata !DIExpression()), !dbg !5032
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !5033
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !5019, metadata !DIExpression()), !dbg !5032
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !5034
  br i1 %4, label %25, label %5, !dbg !5035

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #21, !dbg !5036
  call void @llvm.dbg.value(metadata i32 %6, metadata !5020, metadata !DIExpression()), !dbg !5037
  %7 = icmp ult i32 %6, 3, !dbg !5038
  br i1 %7, label %8, label %25, !dbg !5038

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #21, !dbg !5039
  call void @llvm.dbg.value(metadata i32 %9, metadata !5023, metadata !DIExpression()), !dbg !5040
  %10 = icmp slt i32 %9, 0, !dbg !5041
  br i1 %10, label %11, label %15, !dbg !5042

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #26, !dbg !5043
  %13 = load i32, i32* %12, align 4, !dbg !5043, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %13, metadata !5026, metadata !DIExpression()), !dbg !5044
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #21, !dbg !5045
  store i32 %13, i32* %12, align 4, !dbg !5046, !tbaa !1471
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #21, !dbg !5047
  %17 = icmp eq i32 %16, 0, !dbg !5048
  br i1 %17, label %18, label %21, !dbg !5049

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #21, !dbg !5050
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !5019, metadata !DIExpression()), !dbg !5032
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !5051
  br i1 %20, label %21, label %25, !dbg !5052

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !5019, metadata !DIExpression()), !dbg !5032
  %22 = tail call i32* @__errno_location() #26, !dbg !5053
  %23 = load i32, i32* %22, align 4, !dbg !5053, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %23, metadata !5029, metadata !DIExpression()), !dbg !5054
  %24 = tail call i32 @close(i32 %9) #21, !dbg !5055
  store i32 %23, i32* %22, align 4, !dbg !5056, !tbaa !1471
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !5032
  ret %struct._IO_FILE* %26, !dbg !5057
}

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1316 noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !5058 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5060, metadata !DIExpression()), !dbg !5061
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #21, !dbg !5062
  ret i32 %2, !dbg !5063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !5064 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5066, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata i32 %1, metadata !5067, metadata !DIExpression()), !dbg !5090
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5091
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #21, !dbg !5091
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !5068, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata i32 -1, metadata !5078, metadata !DIExpression()), !dbg !5090
  call void @llvm.va_start(i8* nonnull %4), !dbg !5093
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
  ], !dbg !5094

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5095
  %7 = load i32, i32* %6, align 16, !dbg !5095
  %8 = icmp ult i32 %7, 41, !dbg !5095
  br i1 %8, label %9, label %15, !dbg !5095

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5095
  %11 = load i8*, i8** %10, align 16, !dbg !5095
  %12 = zext i32 %7 to i64, !dbg !5095
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !5095
  %14 = add nuw nsw i32 %7, 8, !dbg !5095
  store i32 %14, i32* %6, align 16, !dbg !5095
  br label %19, !dbg !5095

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5095
  %17 = load i8*, i8** %16, align 8, !dbg !5095
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !5095
  store i8* %18, i8** %16, align 8, !dbg !5095
  br label %19, !dbg !5095

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !5095
  %22 = load i32, i32* %21, align 4, !dbg !5095
  call void @llvm.dbg.value(metadata i32 %22, metadata !5079, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.value(metadata i32 %0, metadata !5097, metadata !DIExpression()) #21, !dbg !5102
  call void @llvm.dbg.value(metadata i32 %22, metadata !5100, metadata !DIExpression()) #21, !dbg !5102
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #21, !dbg !5104
  call void @llvm.dbg.value(metadata i32 %23, metadata !5101, metadata !DIExpression()) #21, !dbg !5102
  call void @llvm.dbg.value(metadata i32 %23, metadata !5078, metadata !DIExpression()), !dbg !5090
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5105
  %26 = load i32, i32* %25, align 16, !dbg !5105
  %27 = icmp ult i32 %26, 41, !dbg !5105
  br i1 %27, label %28, label %34, !dbg !5105

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5105
  %30 = load i8*, i8** %29, align 16, !dbg !5105
  %31 = zext i32 %26 to i64, !dbg !5105
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !5105
  %33 = add nuw nsw i32 %26, 8, !dbg !5105
  store i32 %33, i32* %25, align 16, !dbg !5105
  br label %38, !dbg !5105

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5105
  %36 = load i8*, i8** %35, align 8, !dbg !5105
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !5105
  store i8* %37, i8** %35, align 8, !dbg !5105
  br label %38, !dbg !5105

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !5105
  %41 = load i32, i32* %40, align 4, !dbg !5105
  call void @llvm.dbg.value(metadata i32 %41, metadata !5082, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.value(metadata i32 %0, metadata !447, metadata !DIExpression()) #21, !dbg !5107
  call void @llvm.dbg.value(metadata i32 %41, metadata !448, metadata !DIExpression()) #21, !dbg !5107
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5109, !tbaa !1471
  %43 = icmp sgt i32 %42, -1, !dbg !5111
  br i1 %43, label %44, label %56, !dbg !5112

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #21, !dbg !5113
  call void @llvm.dbg.value(metadata i32 %45, metadata !449, metadata !DIExpression()) #21, !dbg !5107
  %46 = icmp sgt i32 %45, -1, !dbg !5115
  br i1 %46, label %51, label %47, !dbg !5117

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #26, !dbg !5118
  %49 = load i32, i32* %48, align 4, !dbg !5118, !tbaa !1471
  %50 = icmp eq i32 %49, 22, !dbg !5119
  br i1 %50, label %52, label %51, !dbg !5120

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5121, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %62, metadata !449, metadata !DIExpression()) #21, !dbg !5107
  br label %116, !dbg !5123

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !5097, metadata !DIExpression()) #21, !dbg !5124
  call void @llvm.dbg.value(metadata i32 %41, metadata !5100, metadata !DIExpression()) #21, !dbg !5124
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #21, !dbg !5127
  call void @llvm.dbg.value(metadata i32 %53, metadata !5101, metadata !DIExpression()) #21, !dbg !5124
  call void @llvm.dbg.value(metadata i32 %53, metadata !449, metadata !DIExpression()) #21, !dbg !5107
  %54 = icmp sgt i32 %53, -1, !dbg !5128
  br i1 %54, label %55, label %116, !dbg !5130

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5131, !tbaa !1471
  br label %60, !dbg !5132

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !5097, metadata !DIExpression()) #21, !dbg !5133
  call void @llvm.dbg.value(metadata i32 %41, metadata !5100, metadata !DIExpression()) #21, !dbg !5133
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #21, !dbg !5135
  call void @llvm.dbg.value(metadata i32 %57, metadata !5101, metadata !DIExpression()) #21, !dbg !5133
  call void @llvm.dbg.value(metadata i32 %57, metadata !449, metadata !DIExpression()) #21, !dbg !5107
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5136
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !5137
  call void @llvm.dbg.value(metadata i32 %62, metadata !449, metadata !DIExpression()) #21, !dbg !5107
  %63 = icmp sgt i32 %62, -1, !dbg !5138
  %64 = and i1 %61, %63, !dbg !5123
  br i1 %64, label %65, label %116, !dbg !5123

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #21, !dbg !5139
  call void @llvm.dbg.value(metadata i32 %66, metadata !450, metadata !DIExpression()) #21, !dbg !5140
  %67 = icmp slt i32 %66, 0, !dbg !5141
  br i1 %67, label %72, label %68, !dbg !5142

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !5143
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #21, !dbg !5144
  %71 = icmp eq i32 %70, -1, !dbg !5145
  br i1 %71, label %72, label %116, !dbg !5146

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #26, !dbg !5147
  %74 = load i32, i32* %73, align 4, !dbg !5147, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %74, metadata !453, metadata !DIExpression()) #21, !dbg !5148
  %75 = call i32 @close(i32 %62) #21, !dbg !5149
  store i32 %74, i32* %73, align 4, !dbg !5150, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 -1, metadata !449, metadata !DIExpression()) #21, !dbg !5107
  br label %116, !dbg !5151

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #21, !dbg !5152
  call void @llvm.dbg.value(metadata i32 %77, metadata !5078, metadata !DIExpression()), !dbg !5090
  br label %116, !dbg !5153

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5154
  %80 = load i32, i32* %79, align 16, !dbg !5154
  %81 = icmp ult i32 %80, 41, !dbg !5154
  br i1 %81, label %82, label %88, !dbg !5154

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5154
  %84 = load i8*, i8** %83, align 16, !dbg !5154
  %85 = zext i32 %80 to i64, !dbg !5154
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !5154
  %87 = add nuw nsw i32 %80, 8, !dbg !5154
  store i32 %87, i32* %79, align 16, !dbg !5154
  br label %92, !dbg !5154

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5154
  %90 = load i8*, i8** %89, align 8, !dbg !5154
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !5154
  store i8* %91, i8** %89, align 8, !dbg !5154
  br label %92, !dbg !5154

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !5154
  %95 = load i32, i32* %94, align 4, !dbg !5154
  call void @llvm.dbg.value(metadata i32 %95, metadata !5084, metadata !DIExpression()), !dbg !5155
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #21, !dbg !5156
  call void @llvm.dbg.value(metadata i32 %96, metadata !5078, metadata !DIExpression()), !dbg !5090
  br label %116, !dbg !5157

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5158
  %99 = load i32, i32* %98, align 16, !dbg !5158
  %100 = icmp ult i32 %99, 41, !dbg !5158
  br i1 %100, label %101, label %107, !dbg !5158

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5158
  %103 = load i8*, i8** %102, align 16, !dbg !5158
  %104 = zext i32 %99 to i64, !dbg !5158
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !5158
  %106 = add nuw nsw i32 %99, 8, !dbg !5158
  store i32 %106, i32* %98, align 16, !dbg !5158
  br label %111, !dbg !5158

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5158
  %109 = load i8*, i8** %108, align 8, !dbg !5158
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !5158
  store i8* %110, i8** %108, align 8, !dbg !5158
  br label %111, !dbg !5158

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !5158
  %114 = load i8*, i8** %113, align 8, !dbg !5158
  call void @llvm.dbg.value(metadata i8* %114, metadata !5088, metadata !DIExpression()), !dbg !5159
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #21, !dbg !5160
  call void @llvm.dbg.value(metadata i32 %115, metadata !5078, metadata !DIExpression()), !dbg !5090
  br label %116, !dbg !5161

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !5162
  call void @llvm.dbg.value(metadata i32 %117, metadata !5078, metadata !DIExpression()), !dbg !5090
  call void @llvm.va_end(i8* nonnull %4), !dbg !5163
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #21, !dbg !5164
  ret i32 %117, !dbg !5165
}

declare !dbg !442 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind }
attributes #22 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold }

!llvm.dbg.cu = !{!2, !170, !456, !175, !495, !220, !498, !502, !226, !267, !399, !508, !428, !550, !571, !574, !577, !620, !661, !702, !721, !728, !1121, !1136, !1221, !1272, !1275, !1319, !440}
!llvm.ident = !{!1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324, !1324}
!llvm.module.flags = !{!1325, !1326, !1327, !1328, !1329}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 48, type: !164, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !158, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mktemp.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !15, !76, !80, !84, !87, !90, !97, !10, !66, !112, !116, !120, !124, !126, !128, !129, !134, !137, !141, !144, !148, !149, !151, !154}
!6 = !DISubprogram(name: "dcgettext", scope: !7, file: !7, line: 51, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !12, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!16 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!17 = !DISubroutineType(types: !18)
!18 = !{!14, !12, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !39, !40, !41, !45, !47, !49, !53, !56, !58, !61, !64, !65, !67, !71, !72}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 51, baseType: !14, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 36, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 70, baseType: !19, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 152, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!48 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 1)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 43, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 153, baseType: !44)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !20, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !21, line: 37, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !20, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !21, line: 38, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !20, file: !21, line: 93, baseType: !19, size: 64, offset: 1344)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !20, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 20)
!76 = !DISubprogram(name: "set_program_name", scope: !77, file: !77, line: 37, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!77 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !DISubroutineType(types: !79)
!79 = !{null, !12}
!80 = !DISubprogram(name: "setlocale", scope: !81, file: !81, line: 122, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!81 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!82 = !DISubroutineType(types: !83)
!83 = !{!10, !14, !12}
!84 = !DISubprogram(name: "bindtextdomain", scope: !7, file: !7, line: 86, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!85 = !DISubroutineType(types: !86)
!86 = !{!10, !12, !12}
!87 = !DISubprogram(name: "textdomain", scope: !7, file: !7, line: 82, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!88 = !DISubroutineType(types: !89)
!89 = !{!10, !12}
!90 = !DISubprogram(name: "atexit", scope: !91, file: !91, line: 595, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!91 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!92 = !DISubroutineType(types: !93)
!93 = !{!14, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DISubprogram(name: "getopt_long", scope: !98, file: !98, line: 66, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!98 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!99 = !DISubroutineType(types: !100)
!100 = !{!14, !14, !101, !12, !103, !110}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !98, line: 50, size: 256, elements: !106)
!106 = !{!107, !108, !109, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !98, line: 52, baseType: !12, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !105, file: !98, line: 55, baseType: !14, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !105, file: !98, line: 56, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !105, file: !98, line: 57, baseType: !14, size: 32, offset: 192)
!112 = !DISubprogram(name: "version_etc", scope: !113, file: !113, line: 69, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!113 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!114 = !DISubroutineType(types: !115)
!115 = !{null, !19, !12, !12, !12, null}
!116 = !DISubprogram(name: "error", scope: !117, file: !117, line: 52, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!117 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !DISubroutineType(types: !119)
!119 = !{null, !14, !14, !12, null}
!120 = !DISubprogram(name: "quote", scope: !121, file: !121, line: 44, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!121 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!122 = !DISubroutineType(types: !123)
!123 = !{!12, !12}
!124 = !DISubprogram(name: "xstrdup", scope: !125, file: !125, line: 64, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!125 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!126 = !DISubprogram(name: "last_component", scope: !127, file: !127, line: 46, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!127 = !DIFile(filename: "./lib/dirname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!128 = !DISubprogram(name: "getenv", scope: !91, file: !91, line: 634, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!129 = !DISubprogram(name: "file_name_concat", scope: !130, file: !130, line: 22, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!130 = !DIFile(filename: "./lib/filenamecat.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!131 = !DISubroutineType(types: !132)
!132 = !{!10, !12, !12, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!134 = !DISubprogram(name: "free", scope: !91, file: !91, line: 565, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !66}
!137 = !DISubprogram(name: "close", scope: !138, file: !138, line: 353, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!138 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!139 = !DISubroutineType(types: !140)
!140 = !{!14, !14}
!141 = !DISubprogram(name: "puts", scope: !16, file: !16, line: 632, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!142 = !DISubroutineType(types: !143)
!143 = !{!14, !12}
!144 = !DISubprogram(name: "close_stream", scope: !145, file: !145, line: 2, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!145 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!146 = !DISubroutineType(types: !147)
!147 = !{!14, !19}
!148 = !DISubprogram(name: "remove", scope: !16, file: !16, line: 146, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!149 = !DISubprogram(name: "close_stdout", scope: !150, file: !150, line: 30, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!150 = !DIFile(filename: "./lib/closeout.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !DISubprogram(name: "xmalloc", scope: !125, file: !125, line: 53, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!152 = !DISubroutineType(types: !153)
!153 = !{!66, !70}
!154 = !DISubprogram(name: "gen_tempname_len", scope: !155, file: !155, line: 53, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!155 = !DIFile(filename: "./lib/tempname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!156 = !DISubroutineType(types: !157)
!157 = !{!14, !10, !14, !14, !14, !70}
!158 = !{!159, !0, !162}
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "stdout_closed", scope: !2, file: !3, line: 130, type: !161, isLocal: true, isDefinition: true)
!161 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "default_template", scope: !2, file: !3, line: 39, type: !12, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 8)
!167 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "Version", scope: !170, file: !171, line: 2, type: !12, isLocal: false, isDefinition: true)
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !172, splitDebugInlining: false, nameTableKind: None)
!171 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!172 = !{!168}
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "file_name", scope: !175, file: !176, line: 46, type: !12, isLocal: true, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !177, globals: !215, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !{!178, !6, !213, !116}
!178 = !DISubprogram(name: "close_stream", scope: !145, file: !145, line: 2, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!179 = !DISubroutineType(types: !180)
!180 = !{!14, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !182, file: !21, line: 51, baseType: !14, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !182, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !182, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !182, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !182, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !182, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !182, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !182, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !182, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !182, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !182, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !182, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !182, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !182, file: !21, line: 70, baseType: !181, size: 64, offset: 832)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !182, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !182, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !182, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !182, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !182, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !182, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !182, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !182, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !182, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !182, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !182, file: !21, line: 93, baseType: !181, size: 64, offset: 1344)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !182, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !182, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !182, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !182, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!213 = !DISubprogram(name: "quotearg_colon", scope: !214, file: !214, line: 391, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!214 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = !{!173, !216}
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !175, file: !176, line: 56, type: !161, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "exit_failure", scope: !220, file: !221, line: 24, type: !223, isLocal: false, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !222, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!222 = !{!218}
!223 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "program_name", scope: !226, file: !227, line: 33, type: !12, isLocal: false, isDefinition: true)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !228, globals: !264, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = !{!66, !229, !10}
!229 = !DISubprogram(name: "fputs", scope: !16, file: !16, line: 626, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!230 = !DISubroutineType(types: !231)
!231 = !{!14, !12, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !233, file: !21, line: 51, baseType: !14, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !233, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !233, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !233, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !233, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !233, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !233, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !233, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !233, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !233, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !233, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !233, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !233, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !233, file: !21, line: 70, baseType: !232, size: 64, offset: 832)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !233, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !233, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !233, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !233, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !233, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !233, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !233, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !233, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !233, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !233, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !233, file: !21, line: 93, baseType: !232, size: 64, offset: 1344)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !233, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !233, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !233, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !233, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!264 = !{!224}
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !267, file: !268, line: 85, type: !393, isLocal: false, isDefinition: true)
!267 = distinct !DICompileUnit(language: DW_LANG_C99, file: !268, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !269, retainedTypes: !304, globals: !366, splitDebugInlining: false, nameTableKind: None)
!268 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!269 = !{!270, !284, !289}
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !214, line: 32, baseType: !271, size: 32, elements: !272)
!271 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!273 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!274 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!275 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!276 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!277 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!278 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!279 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!280 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!281 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!282 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!283 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !214, line: 242, baseType: !271, size: 32, elements: !285)
!285 = !{!286, !287, !288}
!286 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!287 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!288 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 46, baseType: !271, size: 32, elements: !291)
!290 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!292 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!293 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!294 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!295 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!296 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!297 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!298 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!299 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!300 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!301 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!302 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!303 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!304 = !{!305, !310, !134, !324, !14, !46, !327, !68, !344, !348, !6, !354, !358, !10, !151, !362, !363}
!305 = !DISubprogram(name: "xmemdup", scope: !125, file: !125, line: 62, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!306 = !DISubroutineType(types: !307)
!307 = !{!66, !308, !70}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!310 = !DISubprogram(name: "quotearg_alloc_mem", scope: !214, file: !214, line: 342, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!311 = !DISubroutineType(types: !312)
!312 = !{!10, !12, !70, !313, !314}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !268, line: 65, size: 448, elements: !317)
!317 = !{!318, !319, !320, !322, !323}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !316, file: !268, line: 68, baseType: !270, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !268, line: 71, baseType: !14, size: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !316, file: !268, line: 75, baseType: !321, size: 256, offset: 64)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 256, elements: !165)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !316, file: !268, line: 78, baseType: !12, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !316, file: !268, line: 81, baseType: !12, size: 64, offset: 384)
!324 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !214, file: !214, line: 408, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!325 = !DISubroutineType(types: !326)
!326 = !{!10, !14, !12, !12, !12, !70}
!327 = !DISubprogram(name: "rpl_mbrtowc", scope: !328, file: !328, line: 717, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!328 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!329 = !DISubroutineType(types: !330)
!330 = !{!70, !110, !12, !70, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 13, size: 64, elements: !334)
!333 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !332, file: !333, line: 15, baseType: !14, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !332, file: !333, line: 20, baseType: !337, size: 32, offset: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 16, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !337, file: !333, line: 18, baseType: !271, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !337, file: !333, line: 19, baseType: !341, size: 32)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 4)
!344 = !DISubprogram(name: "iswprint", scope: !345, file: !345, line: 120, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!345 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!346 = !DISubroutineType(types: !347)
!347 = !{!14, !271}
!348 = !DISubprogram(name: "mbsinit", scope: !349, file: !349, line: 292, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!349 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!350 = !DISubroutineType(types: !351)
!351 = !{!14, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!354 = !DISubprogram(name: "locale_charset", scope: !355, file: !355, line: 35, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!355 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!356 = !DISubroutineType(types: !357)
!357 = !{!12}
!358 = !DISubprogram(name: "c_strcasecmp", scope: !359, file: !359, line: 42, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!359 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!360 = !DISubroutineType(types: !361)
!361 = !{!14, !12, !12}
!362 = !DISubprogram(name: "xalloc_die", scope: !125, file: !125, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!363 = !DISubprogram(name: "xrealloc", scope: !125, file: !125, line: 59, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!364 = !DISubroutineType(types: !365)
!365 = !{!66, !66, !70}
!366 = !{!265, !367, !373, !375, !377, !382, !389, !391}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !267, file: !268, line: 101, type: !369, isLocal: false, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 320, elements: !371)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!371 = !{!372}
!372 = !DISubrange(count: 10)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !267, file: !268, line: 1052, type: !316, isLocal: false, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !267, file: !268, line: 116, type: !316, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "slot0", scope: !267, file: !268, line: 842, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 256)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "slotvec", scope: !267, file: !268, line: 845, type: !384, isLocal: true, isDefinition: true)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !268, line: 834, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !385, file: !268, line: 836, baseType: !68, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !385, file: !268, line: 837, baseType: !10, size: 64, offset: 64)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "nslots", scope: !267, file: !268, line: 843, type: !14, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "slotvec0", scope: !267, file: !268, line: 844, type: !385, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 704, elements: !395)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!395 = !{!396}
!396 = !DISubrange(count: 11)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "letters", scope: !399, file: !400, line: 184, type: !423, isLocal: true, isDefinition: true)
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !401, globals: !422, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/tempname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!401 = !{!402, !408, !411, !414, !418}
!402 = !DISubprogram(name: "randint_all_new", scope: !403, file: !403, line: 36, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!403 = !DIFile(filename: "./lib/randint.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !12, !70}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !403, line: 33, flags: DIFlagFwdDecl)
!408 = !DISubprogram(name: "randint_genmax", scope: !403, file: !403, line: 39, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!409 = !DISubroutineType(types: !410)
!410 = !{!70, !406, !70}
!411 = !DISubprogram(name: "randint_all_free", scope: !403, file: !403, line: 50, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{!14, !406}
!414 = !DISubprogram(name: "open", scope: !415, file: !415, line: 196, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!415 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!416 = !DISubroutineType(types: !417)
!417 = !{!14, !12, !14, null}
!418 = !DISubprogram(name: "mkdir", scope: !419, file: !419, line: 317, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!419 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!420 = !DISubroutineType(types: !421)
!421 = !{!14, !12, !271}
!422 = !{!397}
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 504, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 63)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !428, file: !429, line: 26, type: !431, isLocal: false, isDefinition: true)
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !430, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!430 = !{!426}
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 376, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 47)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !436, file: !437, line: 507, type: !14, isLocal: true, isDefinition: true)
!436 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !437, file: !437, line: 488, type: !438, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !446)
!437 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!438 = !DISubroutineType(types: !439)
!439 = !{!14, !14, !14}
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !437, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !441, globals: !445, splitDebugInlining: false, nameTableKind: None)
!441 = !{!442, !137}
!442 = !DISubprogram(name: "fcntl", scope: !415, file: !415, line: 176, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!443 = !DISubroutineType(types: !444)
!444 = !{!14, !14, !14, null}
!445 = !{!434}
!446 = !{!447, !448, !449, !450, !453}
!447 = !DILocalVariable(name: "fd", arg: 1, scope: !436, file: !437, line: 488, type: !14)
!448 = !DILocalVariable(name: "target", arg: 2, scope: !436, file: !437, line: 488, type: !14)
!449 = !DILocalVariable(name: "result", scope: !436, file: !437, line: 490, type: !14)
!450 = !DILocalVariable(name: "flags", scope: !451, file: !437, line: 531, type: !14)
!451 = distinct !DILexicalBlock(scope: !452, file: !437, line: 530, column: 5)
!452 = distinct !DILexicalBlock(scope: !436, file: !437, line: 529, column: 7)
!453 = !DILocalVariable(name: "saved_errno", scope: !454, file: !437, line: 534, type: !14)
!454 = distinct !DILexicalBlock(scope: !455, file: !437, line: 533, column: 9)
!455 = distinct !DILexicalBlock(scope: !451, file: !437, line: 532, column: 11)
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !458, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!458 = !{!459}
!459 = !DISubprogram(name: "rpl_fclose", scope: !460, file: !460, line: 672, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!460 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!461 = !DISubroutineType(types: !462)
!462 = !{!14, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !464, file: !21, line: 51, baseType: !14, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !464, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !464, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !464, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !464, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !464, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !464, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !464, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !464, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !464, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !464, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !464, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !464, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !464, file: !21, line: 70, baseType: !463, size: 64, offset: 832)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !464, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !464, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !464, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !464, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !464, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !464, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !464, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !464, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !464, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !464, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !464, file: !21, line: 93, baseType: !463, size: 64, offset: 1344)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !464, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !464, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !464, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !464, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !497, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!497 = !{!10}
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !500, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!500 = !{!501, !66, !362}
!501 = !DISubprogram(name: "mfile_name_concat", scope: !130, file: !130, line: 26, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !504, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!504 = !{!126, !505, !66}
!505 = !DISubprogram(name: "base_len", scope: !127, file: !127, line: 44, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!506 = !DISubroutineType(types: !507)
!507 = !{!70, !12}
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !510, retainedTypes: !514, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!510 = !{!511}
!511 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !509, line: 40, baseType: !271, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!514 = !{!6, !515, !66}
!515 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!516 = !DISubroutineType(types: !517)
!517 = !{!14, !12, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !519, file: !21, line: 51, baseType: !14, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !519, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !519, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !519, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !519, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !519, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !519, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !519, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !519, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !519, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !519, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !519, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !519, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !519, file: !21, line: 70, baseType: !518, size: 64, offset: 832)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !519, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !519, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !519, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !519, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !519, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !519, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !519, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !519, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !519, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !519, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !519, file: !21, line: 93, baseType: !518, size: 64, offset: 1344)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !519, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !519, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !519, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !519, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !552, retainedTypes: !565, splitDebugInlining: false, nameTableKind: None)
!551 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!552 = !{!553}
!553 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !554, file: !125, line: 186, baseType: !271, size: 32, elements: !563)
!554 = distinct !DISubprogram(name: "x2nrealloc", scope: !125, file: !125, line: 174, type: !555, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !558)
!555 = !DISubroutineType(types: !556)
!556 = !{!66, !66, !557, !68}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!558 = !{!559, !560, !561, !562}
!559 = !DILocalVariable(name: "p", arg: 1, scope: !554, file: !125, line: 174, type: !66)
!560 = !DILocalVariable(name: "pn", arg: 2, scope: !554, file: !125, line: 174, type: !557)
!561 = !DILocalVariable(name: "s", arg: 3, scope: !554, file: !125, line: 174, type: !68)
!562 = !DILocalVariable(name: "n", scope: !554, file: !125, line: 176, type: !68)
!563 = !{!564}
!564 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!565 = !{!68, !362, !151, !363, !10, !134, !66, !566, !569}
!566 = !DISubprogram(name: "xcalloc", scope: !125, file: !125, line: 57, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!567 = !DISubroutineType(types: !568)
!568 = !{!66, !70, !70}
!569 = !DISubprogram(name: "rpl_calloc", scope: !570, file: !570, line: 688, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!570 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573, splitDebugInlining: false, nameTableKind: None)
!572 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!573 = !{!6, !116}
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !576, splitDebugInlining: false, nameTableKind: None)
!575 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!576 = !{!66}
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !579, splitDebugInlining: false, nameTableKind: None)
!578 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!579 = !{!580, !615, !616, !619}
!580 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!581 = !DISubroutineType(types: !582)
!582 = !{!14, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !584, file: !21, line: 51, baseType: !14, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !584, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !584, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !584, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !584, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !584, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !584, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !584, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !584, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !584, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !584, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !584, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !584, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !584, file: !21, line: 70, baseType: !583, size: 64, offset: 832)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !584, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !584, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !584, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !584, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !584, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !584, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !584, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !584, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !584, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !584, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !584, file: !21, line: 93, baseType: !583, size: 64, offset: 1344)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !584, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !584, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !584, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !584, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!615 = !DISubprogram(name: "fclose", scope: !16, file: !16, line: 213, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!616 = !DISubprogram(name: "lseek", scope: !138, file: !138, line: 334, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!617 = !DISubroutineType(types: !618)
!618 = !{!44, !14, !44, !14}
!619 = !DISubprogram(name: "rpl_fflush", scope: !460, file: !460, line: 718, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !622, splitDebugInlining: false, nameTableKind: None)
!621 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!622 = !{!66, !623, !658}
!623 = !DISubprogram(name: "fflush", scope: !16, file: !16, line: 218, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!624 = !DISubroutineType(types: !625)
!625 = !{!14, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !627, file: !21, line: 51, baseType: !14, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !627, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !627, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !627, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !627, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !627, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !627, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !627, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !627, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !627, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !627, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !627, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !627, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !627, file: !21, line: 70, baseType: !626, size: 64, offset: 832)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !627, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !627, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !627, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !627, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !627, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !627, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !627, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !627, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !627, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !627, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !627, file: !21, line: 93, baseType: !626, size: 64, offset: 1344)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !627, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !627, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !627, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !627, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!658 = !DISubprogram(name: "rpl_fseeko", scope: !460, file: !460, line: 1034, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!659 = !DISubroutineType(types: !660)
!660 = !{!14, !626, !44, !14}
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!663 = !{!66, !664, !616, !699}
!664 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!665 = !DISubroutineType(types: !666)
!666 = !{!14, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !668, file: !21, line: 51, baseType: !14, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !668, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !668, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !668, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !668, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !668, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !668, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !668, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !668, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !668, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !668, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !668, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !668, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !668, file: !21, line: 70, baseType: !667, size: 64, offset: 832)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !668, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !668, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !668, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !668, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !668, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !668, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !668, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !668, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !668, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !668, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !668, file: !21, line: 93, baseType: !667, size: 64, offset: 1344)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !668, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !668, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !668, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !668, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!699 = !DISubprogram(name: "fseeko", scope: !16, file: !16, line: 707, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!700 = !DISubroutineType(types: !701)
!701 = !{!14, !667, !44, !14}
!702 = distinct !DICompileUnit(language: DW_LANG_C99, file: !703, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !704, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!704 = !{!705, !68, !717}
!705 = !DISubprogram(name: "mbrtowc", scope: !349, file: !349, line: 296, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!706 = !DISubroutineType(types: !707)
!707 = !{!70, !110, !12, !70, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 13, size: 64, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !709, file: !333, line: 15, baseType: !14, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !709, file: !333, line: 20, baseType: !713, size: 32, offset: 32)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !709, file: !333, line: 16, size: 32, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !713, file: !333, line: 18, baseType: !271, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !713, file: !333, line: 19, baseType: !341, size: 32)
!717 = !DISubprogram(name: "hard_locale", scope: !718, file: !718, line: 26, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!718 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!719 = !DISubroutineType(types: !720)
!720 = !{!161, !14}
!721 = distinct !DICompileUnit(language: DW_LANG_C99, file: !722, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !723, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!723 = !{!724}
!724 = !DISubprogram(name: "setlocale_null_r", scope: !725, file: !725, line: 64, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!725 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!726 = !DISubroutineType(types: !727)
!727 = !{!14, !14, !10, !70}
!728 = distinct !DICompileUnit(language: DW_LANG_C99, file: !729, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !730, retainedTypes: !1117, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!730 = !{!731}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !732, line: 41, baseType: !271, size: 32, elements: !733)
!732 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116}
!734 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!735 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!736 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!737 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!738 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!739 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!740 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!741 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!742 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!743 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!744 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!745 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!746 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!747 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!748 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!749 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!750 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!751 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!752 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!753 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!754 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!755 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!756 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!757 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!758 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!759 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!760 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!761 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!762 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!763 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!764 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!765 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!766 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!767 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!768 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!769 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!770 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!771 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!772 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!773 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!774 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!775 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!776 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!777 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!778 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!779 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!780 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!781 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!782 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!783 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!842 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!845 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!846 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!847 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!848 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!849 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!850 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!851 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!852 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!853 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!854 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!855 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!856 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!929 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1002 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1003 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1004 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1005 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1006 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1007 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1008 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1009 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1010 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1011 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1012 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1013 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1014 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1015 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1016 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1018 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1019 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1020 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1021 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1022 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1023 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1049 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1050 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1051 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1052 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1053 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1058 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1059 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1060 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1061 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1117 = !{!1118, !66}
!1118 = !DISubprogram(name: "nl_langinfo", scope: !732, file: !732, line: 661, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!10, !14}
!1121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1122, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1123, splitDebugInlining: false, nameTableKind: None)
!1122 = !DIFile(filename: "lib/randint.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1123 = !{!151, !1124, !1130, !134, !1133}
!1124 = !DISubprogram(name: "randread_new", scope: !1125, file: !1125, line: 27, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1125 = !DIFile(filename: "./lib/randread.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1128, !12, !70}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !1125, line: 25, flags: DIFlagFwdDecl)
!1130 = !DISubprogram(name: "randread", scope: !1125, file: !1125, line: 28, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !1128, !66, !70}
!1133 = !DISubprogram(name: "randread_free", scope: !1125, file: !1125, line: 31, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!14, !1128}
!1136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1137, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1138, splitDebugInlining: false, nameTableKind: None)
!1137 = !DIFile(filename: "lib/randread.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1138 = !{!1139, !1175, !1178, !134, !1195, !151, !6, !120, !116, !414, !137, !66, !1198, !1210, !1213, !1214, !1217, !68, !1218}
!1139 = !DISubprogram(name: "fopen_safer", scope: !1140, file: !1140, line: 23, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1140 = !DIFile(filename: "./lib/stdio-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!1143, !12, !12}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1144, file: !21, line: 51, baseType: !14, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1144, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1144, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1144, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1144, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1144, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1144, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1144, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1144, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1144, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1144, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1144, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1144, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1144, file: !21, line: 70, baseType: !1143, size: 64, offset: 832)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1144, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1144, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1144, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1144, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1144, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1144, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1144, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1144, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1144, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1144, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1144, file: !21, line: 93, baseType: !1143, size: 64, offset: 1344)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1144, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1144, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1144, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1144, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1175 = !DISubprogram(name: "setvbuf", scope: !16, file: !16, line: 308, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!14, !1143, !10, !14, !70}
!1178 = !DISubprogram(name: "isaac_seed", scope: !1179, file: !1179, line: 62, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1179 = !DIFile(filename: "./lib/rand-isaac.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !1179, line: 56, size: 16576, elements: !1184)
!1184 = !{!1185, !1192, !1193, !1194}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !1183, file: !1179, line: 58, baseType: !1186, size: 16384)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 16384, elements: !380)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "isaac_word", file: !1179, line: 44, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1189, line: 52, baseType: !1190)
!1189 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !43, line: 59, baseType: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !43, line: 45, baseType: !70)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1183, file: !1179, line: 59, baseType: !1187, size: 64, offset: 16384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1183, file: !1179, line: 59, baseType: !1187, size: 64, offset: 16448)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1183, file: !1179, line: 59, baseType: !1187, size: 64, offset: 16512)
!1195 = !DISubprogram(name: "rpl_fclose", scope: !460, file: !460, line: 672, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!14, !1143}
!1198 = !DISubprogram(name: "gettimeofday", scope: !1199, file: !1199, line: 66, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1199 = !DIFile(filename: "/usr/include/sys/time.h", directory: "")
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!14, !1202, !66}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1204, line: 8, size: 128, elements: !1205)
!1204 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "")
!1205 = !{!1206, !1208}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1203, file: !1204, line: 10, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !43, line: 160, baseType: !44)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1203, file: !1204, line: 11, baseType: !1209, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !43, line: 162, baseType: !44)
!1210 = !DISubprogram(name: "getpid", scope: !138, file: !138, line: 628, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!14}
!1213 = !DISubprogram(name: "getppid", scope: !138, file: !138, line: 631, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1214 = !DISubprogram(name: "getuid", scope: !138, file: !138, line: 675, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!271}
!1217 = !DISubprogram(name: "getgid", scope: !138, file: !138, line: 681, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1218 = !DISubprogram(name: "isaac_refill", scope: !1179, file: !1179, line: 63, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !1182, !313}
!1221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1222, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1223, retainedTypes: !1271, splitDebugInlining: false, nameTableKind: None)
!1222 = !DIFile(filename: "lib/rand-isaac.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1223 = !{!1224}
!1224 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1225, file: !1222, line: 100, baseType: !271, size: 32, elements: !1269)
!1225 = distinct !DISubprogram(name: "isaac_refill", scope: !1222, file: !1222, line: 90, type: !1226, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1221, retainedNodes: !1236)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1228, !1235}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !1179, line: 56, size: 16576, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !1229, file: !1179, line: 58, baseType: !1186, size: 16384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1229, file: !1179, line: 59, baseType: !1187, size: 64, offset: 16384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1229, file: !1179, line: 59, baseType: !1187, size: 64, offset: 16448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1229, file: !1179, line: 59, baseType: !1187, size: 64, offset: 16512)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243, !1246, !1247, !1249, !1250, !1252, !1253, !1255, !1256, !1259, !1260, !1262, !1263, !1265, !1266, !1268}
!1237 = !DILocalVariable(name: "s", arg: 1, scope: !1225, file: !1222, line: 90, type: !1228)
!1238 = !DILocalVariable(name: "result", arg: 2, scope: !1225, file: !1222, line: 90, type: !1235)
!1239 = !DILocalVariable(name: "a", scope: !1225, file: !1222, line: 93, type: !1187)
!1240 = !DILocalVariable(name: "b", scope: !1225, file: !1222, line: 94, type: !1187)
!1241 = !DILocalVariable(name: "m", scope: !1225, file: !1222, line: 97, type: !1235)
!1242 = !DILocalVariable(name: "r", scope: !1225, file: !1222, line: 98, type: !1235)
!1243 = !DILocalVariable(name: "x", scope: !1244, file: !1222, line: 118, type: !1187)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !1222, line: 118, column: 7)
!1245 = distinct !DILexicalBlock(scope: !1225, file: !1222, line: 117, column: 5)
!1246 = !DILocalVariable(name: "y", scope: !1244, file: !1222, line: 118, type: !1187)
!1247 = !DILocalVariable(name: "x", scope: !1248, file: !1222, line: 119, type: !1187)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !1222, line: 119, column: 7)
!1249 = !DILocalVariable(name: "y", scope: !1248, file: !1222, line: 119, type: !1187)
!1250 = !DILocalVariable(name: "x", scope: !1251, file: !1222, line: 120, type: !1187)
!1251 = distinct !DILexicalBlock(scope: !1245, file: !1222, line: 120, column: 7)
!1252 = !DILocalVariable(name: "y", scope: !1251, file: !1222, line: 120, type: !1187)
!1253 = !DILocalVariable(name: "x", scope: !1254, file: !1222, line: 121, type: !1187)
!1254 = distinct !DILexicalBlock(scope: !1245, file: !1222, line: 121, column: 7)
!1255 = !DILocalVariable(name: "y", scope: !1254, file: !1222, line: 121, type: !1187)
!1256 = !DILocalVariable(name: "x", scope: !1257, file: !1222, line: 128, type: !1187)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !1222, line: 128, column: 7)
!1258 = distinct !DILexicalBlock(scope: !1225, file: !1222, line: 127, column: 5)
!1259 = !DILocalVariable(name: "y", scope: !1257, file: !1222, line: 128, type: !1187)
!1260 = !DILocalVariable(name: "x", scope: !1261, file: !1222, line: 129, type: !1187)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !1222, line: 129, column: 7)
!1262 = !DILocalVariable(name: "y", scope: !1261, file: !1222, line: 129, type: !1187)
!1263 = !DILocalVariable(name: "x", scope: !1264, file: !1222, line: 130, type: !1187)
!1264 = distinct !DILexicalBlock(scope: !1258, file: !1222, line: 130, column: 7)
!1265 = !DILocalVariable(name: "y", scope: !1264, file: !1222, line: 130, type: !1187)
!1266 = !DILocalVariable(name: "x", scope: !1267, file: !1222, line: 131, type: !1187)
!1267 = distinct !DILexicalBlock(scope: !1258, file: !1222, line: 131, column: 7)
!1268 = !DILocalVariable(name: "y", scope: !1267, file: !1222, line: 131, type: !1187)
!1269 = !{!1270}
!1270 = !DIEnumerator(name: "HALF", value: 128, isUnsigned: true)
!1271 = !{!1187}
!1272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1273, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1274, splitDebugInlining: false, nameTableKind: None)
!1273 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1274 = !{!66, !80}
!1275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1276, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1277, splitDebugInlining: false, nameTableKind: None)
!1276 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1277 = !{!1278, !1313, !1315, !1316, !137}
!1278 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !1279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!14, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1282, file: !21, line: 51, baseType: !14, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1282, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1282, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1282, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1282, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1282, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1282, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1282, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1282, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1282, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1282, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1282, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1282, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1282, file: !21, line: 70, baseType: !1281, size: 64, offset: 832)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1282, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1282, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1282, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1282, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1282, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1282, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1282, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1282, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1282, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1282, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1282, file: !21, line: 93, baseType: !1281, size: 64, offset: 1344)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1282, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1282, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1282, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1282, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1313 = !DISubprogram(name: "dup_safer", scope: !1314, file: !1314, line: 20, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1314 = !DIFile(filename: "./lib/unistd-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1315 = !DISubprogram(name: "rpl_fclose", scope: !460, file: !460, line: 672, type: !1279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1316 = !DISubprogram(name: "fdopen", scope: !16, file: !16, line: 279, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1281, !14, !12}
!1319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1320, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1321, splitDebugInlining: false, nameTableKind: None)
!1320 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1321 = !{!1322}
!1322 = !DISubprogram(name: "rpl_fcntl", scope: !1323, file: !1323, line: 588, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1323 = !DIFile(filename: "./lib/fcntl.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1324 = !{!"clang version 10.0.0 "}
!1325 = !{i32 7, !"Dwarf Version", i32 4}
!1326 = !{i32 2, !"Debug Info Version", i32 3}
!1327 = !{i32 1, !"wchar_size", i32 4}
!1328 = !{i32 7, !"PIC Level", i32 2}
!1329 = !{i32 7, !"PIE Level", i32 2}
!1330 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 61, type: !1331, scopeLine: 62, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1333)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !14}
!1333 = !{!1334}
!1334 = !DILocalVariable(name: "status", arg: 1, scope: !1330, file: !3, line: 61, type: !14)
!1335 = !DILocalVariable(name: "infomap", scope: !1336, file: !1337, line: 636, type: !1349)
!1336 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1337, file: !1337, line: 634, type: !78, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1338)
!1337 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1338 = !{!1339, !1335, !1340, !1341, !1348}
!1339 = !DILocalVariable(name: "program", arg: 1, scope: !1336, file: !1337, line: 634, type: !12)
!1340 = !DILocalVariable(name: "node", scope: !1336, file: !1337, line: 646, type: !12)
!1341 = !DILocalVariable(name: "map_prog", scope: !1336, file: !1337, line: 647, type: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1336, file: !1337, line: 636, size: 128, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1344, file: !1337, line: 636, baseType: !12, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1344, file: !1337, line: 636, baseType: !12, size: 64, offset: 64)
!1348 = !DILocalVariable(name: "lc_messages", scope: !1336, file: !1337, line: 659, type: !12)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1343, size: 896, elements: !1350)
!1350 = !{!1351}
!1351 = !DISubrange(count: 7)
!1352 = !DILocation(line: 636, column: 67, scope: !1336, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 100, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 66, column: 5)
!1355 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 63, column: 7)
!1356 = !DILocation(line: 0, scope: !1330)
!1357 = !DILocation(line: 63, column: 14, scope: !1355)
!1358 = !DILocation(line: 63, column: 7, scope: !1330)
!1359 = !DILocation(line: 64, column: 5, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 64, column: 5)
!1361 = !{!1362, !1362, i64 0}
!1362 = !{!"any pointer", !1363, i64 0}
!1363 = !{!"omnipotent char", !1364, i64 0}
!1364 = !{!"Simple C/C++ TBAA"}
!1365 = !DILocation(line: 67, column: 7, scope: !1354)
!1366 = !DILocation(line: 68, column: 7, scope: !1354)
!1367 = !DILocation(line: 73, column: 7, scope: !1354)
!1368 = !DILocation(line: 76, column: 7, scope: !1354)
!1369 = !DILocation(line: 77, column: 7, scope: !1354)
!1370 = !DILocation(line: 82, column: 7, scope: !1354)
!1371 = !DILocation(line: 86, column: 7, scope: !1354)
!1372 = !DILocation(line: 93, column: 7, scope: !1354)
!1373 = !DILocation(line: 98, column: 7, scope: !1354)
!1374 = !DILocation(line: 99, column: 7, scope: !1354)
!1375 = !DILocation(line: 0, scope: !1336, inlinedAt: !1353)
!1376 = !DILocation(line: 636, column: 3, scope: !1336, inlinedAt: !1353)
!1377 = !DILocation(line: 647, column: 36, scope: !1336, inlinedAt: !1353)
!1378 = !DILocation(line: 649, column: 3, scope: !1336, inlinedAt: !1353)
!1379 = !DILocation(line: 649, column: 33, scope: !1336, inlinedAt: !1353)
!1380 = !DILocation(line: 650, column: 13, scope: !1336, inlinedAt: !1353)
!1381 = !DILocation(line: 649, column: 20, scope: !1336, inlinedAt: !1353)
!1382 = !{!1383, !1362, i64 0}
!1383 = !{!"infomap", !1362, i64 0, !1362, i64 8}
!1384 = !DILocation(line: 649, column: 10, scope: !1336, inlinedAt: !1353)
!1385 = !DILocation(line: 649, column: 28, scope: !1336, inlinedAt: !1353)
!1386 = distinct !{!1386, !1378, !1380}
!1387 = !DILocation(line: 652, column: 17, scope: !1388, inlinedAt: !1353)
!1388 = distinct !DILexicalBlock(scope: !1336, file: !1337, line: 652, column: 7)
!1389 = !{!1383, !1362, i64 8}
!1390 = !DILocation(line: 652, column: 7, scope: !1388, inlinedAt: !1353)
!1391 = !DILocation(line: 652, column: 7, scope: !1336, inlinedAt: !1353)
!1392 = !DILocation(line: 655, column: 3, scope: !1336, inlinedAt: !1353)
!1393 = !DILocation(line: 659, column: 29, scope: !1336, inlinedAt: !1353)
!1394 = !DILocation(line: 660, column: 7, scope: !1395, inlinedAt: !1353)
!1395 = distinct !DILexicalBlock(scope: !1336, file: !1337, line: 660, column: 7)
!1396 = !DILocation(line: 660, column: 19, scope: !1395, inlinedAt: !1353)
!1397 = !DILocation(line: 660, column: 22, scope: !1395, inlinedAt: !1353)
!1398 = !DILocation(line: 660, column: 7, scope: !1336, inlinedAt: !1353)
!1399 = !DILocation(line: 666, column: 7, scope: !1400, inlinedAt: !1353)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !1337, line: 661, column: 5)
!1401 = !DILocation(line: 668, column: 5, scope: !1400, inlinedAt: !1353)
!1402 = !DILocation(line: 669, column: 3, scope: !1336, inlinedAt: !1353)
!1403 = !DILocation(line: 671, column: 3, scope: !1336, inlinedAt: !1353)
!1404 = !DILocation(line: 673, column: 1, scope: !1336, inlinedAt: !1353)
!1405 = !DILocation(line: 103, column: 3, scope: !1330)
!1406 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 146, type: !1407, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!14, !14, !133}
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1430, !1435, !1439, !1442, !1444}
!1410 = !DILocalVariable(name: "argc", arg: 1, scope: !1406, file: !3, line: 146, type: !14)
!1411 = !DILocalVariable(name: "argv", arg: 2, scope: !1406, file: !3, line: 146, type: !133)
!1412 = !DILocalVariable(name: "dest_dir", scope: !1406, file: !3, line: 148, type: !12)
!1413 = !DILocalVariable(name: "dest_dir_arg", scope: !1406, file: !3, line: 149, type: !12)
!1414 = !DILocalVariable(name: "suppress_file_err", scope: !1406, file: !3, line: 150, type: !161)
!1415 = !DILocalVariable(name: "c", scope: !1406, file: !3, line: 151, type: !14)
!1416 = !DILocalVariable(name: "n_args", scope: !1406, file: !3, line: 152, type: !271)
!1417 = !DILocalVariable(name: "template", scope: !1406, file: !3, line: 153, type: !10)
!1418 = !DILocalVariable(name: "suffix", scope: !1406, file: !3, line: 154, type: !10)
!1419 = !DILocalVariable(name: "use_dest_dir", scope: !1406, file: !3, line: 155, type: !161)
!1420 = !DILocalVariable(name: "deprecated_t_option", scope: !1406, file: !3, line: 156, type: !161)
!1421 = !DILocalVariable(name: "create_directory", scope: !1406, file: !3, line: 157, type: !161)
!1422 = !DILocalVariable(name: "dry_run", scope: !1406, file: !3, line: 158, type: !161)
!1423 = !DILocalVariable(name: "status", scope: !1406, file: !3, line: 159, type: !14)
!1424 = !DILocalVariable(name: "x_count", scope: !1406, file: !3, line: 160, type: !68)
!1425 = !DILocalVariable(name: "suffix_len", scope: !1406, file: !3, line: 161, type: !68)
!1426 = !DILocalVariable(name: "dest_name", scope: !1406, file: !3, line: 162, type: !10)
!1427 = !DILocalVariable(name: "len", scope: !1428, file: !3, line: 227, type: !68)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 226, column: 5)
!1429 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 225, column: 7)
!1430 = !DILocalVariable(name: "env", scope: !1431, file: !3, line: 267, type: !10)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 266, column: 9)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 265, column: 11)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 264, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 263, column: 7)
!1435 = !DILocalVariable(name: "env", scope: !1436, file: !3, line: 286, type: !10)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 285, column: 13)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 282, column: 15)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 281, column: 9)
!1439 = !DILocalVariable(name: "err", scope: !1440, file: !3, line: 308, type: !14)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 307, column: 5)
!1441 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 306, column: 7)
!1442 = !DILocalVariable(name: "fd", scope: !1443, file: !3, line: 319, type: !14)
!1443 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 318, column: 5)
!1444 = !DILocalVariable(name: "saved_errno", scope: !1445, file: !3, line: 336, type: !14)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 335, column: 9)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 334, column: 11)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 330, column: 5)
!1448 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 329, column: 7)
!1449 = !DILocation(line: 0, scope: !1406)
!1450 = !DILocation(line: 165, column: 21, scope: !1406)
!1451 = !DILocation(line: 165, column: 3, scope: !1406)
!1452 = !DILocation(line: 166, column: 3, scope: !1406)
!1453 = !DILocation(line: 167, column: 3, scope: !1406)
!1454 = !DILocation(line: 168, column: 3, scope: !1406)
!1455 = !DILocation(line: 170, column: 3, scope: !1406)
!1456 = !DILocation(line: 172, column: 3, scope: !1406)
!1457 = !DILocation(line: 150, column: 8, scope: !1406)
!1458 = !DILocation(line: 172, column: 15, scope: !1406)
!1459 = distinct !{!1459, !1456, !1460}
!1460 = !DILocation(line: 206, column: 5, scope: !1406)
!1461 = !DILocation(line: 180, column: 26, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 175, column: 9)
!1463 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 173, column: 5)
!1464 = !DILocation(line: 182, column: 11, scope: !1462)
!1465 = !DILocation(line: 195, column: 20, scope: !1462)
!1466 = !DILocation(line: 196, column: 11, scope: !1462)
!1467 = !DILocation(line: 198, column: 9, scope: !1462)
!1468 = !DILocation(line: 202, column: 9, scope: !1462)
!1469 = !DILocation(line: 204, column: 11, scope: !1462)
!1470 = !DILocation(line: 208, column: 19, scope: !1406)
!1471 = !{!1472, !1472, i64 0}
!1472 = !{!"int", !1363, i64 0}
!1473 = !DILocation(line: 208, column: 17, scope: !1406)
!1474 = !DILocation(line: 209, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 209, column: 7)
!1476 = !DILocation(line: 209, column: 7, scope: !1406)
!1477 = !DILocation(line: 211, column: 20, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 210, column: 5)
!1479 = !DILocation(line: 211, column: 7, scope: !1478)
!1480 = !DILocation(line: 212, column: 7, scope: !1478)
!1481 = !DILocation(line: 215, column: 14, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 215, column: 7)
!1483 = !DILocation(line: 215, column: 7, scope: !1406)
!1484 = !DILocation(line: 222, column: 18, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 221, column: 5)
!1486 = !DILocation(line: 0, scope: !1482)
!1487 = !DILocation(line: 225, column: 7, scope: !1429)
!1488 = !DILocation(line: 225, column: 7, scope: !1406)
!1489 = !DILocation(line: 227, column: 20, scope: !1428)
!1490 = !DILocation(line: 0, scope: !1428)
!1491 = !DILocation(line: 228, column: 12, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 228, column: 11)
!1493 = !DILocation(line: 228, column: 16, scope: !1492)
!1494 = !DILocation(line: 228, column: 32, scope: !1492)
!1495 = !DILocation(line: 228, column: 19, scope: !1492)
!1496 = !{!1363, !1363, i64 0}
!1497 = !DILocation(line: 228, column: 37, scope: !1492)
!1498 = !DILocation(line: 228, column: 11, scope: !1428)
!1499 = !DILocation(line: 230, column: 11, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 229, column: 9)
!1501 = !DILocation(line: 234, column: 20, scope: !1428)
!1502 = !DILocation(line: 235, column: 35, scope: !1428)
!1503 = !DILocation(line: 235, column: 48, scope: !1428)
!1504 = !DILocalVariable(name: "n", arg: 1, scope: !1505, file: !125, line: 216, type: !68)
!1505 = distinct !DISubprogram(name: "xcharalloc", scope: !125, file: !125, line: 216, type: !1506, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!10, !68}
!1508 = !{!1504}
!1509 = !DILocation(line: 0, scope: !1505, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 235, column: 19, scope: !1428)
!1511 = !DILocation(line: 218, column: 10, scope: !1505, inlinedAt: !1510)
!1512 = !DILocalVariable(name: "__dest", arg: 1, scope: !1513, file: !1514, line: 31, type: !1517)
!1513 = distinct !DISubprogram(name: "memcpy", scope: !1514, file: !1514, line: 31, type: !1515, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1519)
!1514 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!66, !1517, !1518, !68}
!1517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!1518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !308)
!1519 = !{!1512, !1520, !1521}
!1520 = !DILocalVariable(name: "__src", arg: 2, scope: !1513, file: !1514, line: 31, type: !1518)
!1521 = !DILocalVariable(name: "__len", arg: 3, scope: !1513, file: !1514, line: 31, type: !68)
!1522 = !DILocation(line: 0, scope: !1513, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 236, column: 7, scope: !1428)
!1524 = !DILocation(line: 34, column: 10, scope: !1513, inlinedAt: !1523)
!1525 = !DILocation(line: 237, column: 25, scope: !1428)
!1526 = !DILocation(line: 0, scope: !1513, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 237, column: 7, scope: !1428)
!1528 = !DILocation(line: 34, column: 10, scope: !1513, inlinedAt: !1527)
!1529 = !DILocation(line: 240, column: 5, scope: !1428)
!1530 = !DILocation(line: 243, column: 18, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 242, column: 5)
!1532 = !DILocation(line: 244, column: 16, scope: !1531)
!1533 = !DILocation(line: 245, column: 12, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 245, column: 11)
!1535 = !DILocation(line: 245, column: 11, scope: !1531)
!1536 = !DILocation(line: 246, column: 18, scope: !1534)
!1537 = !DILocation(line: 246, column: 9, scope: !1534)
!1538 = !DILocation(line: 248, column: 15, scope: !1534)
!1539 = !DILocation(line: 0, scope: !1534)
!1540 = !DILocation(line: 249, column: 20, scope: !1531)
!1541 = !DILocation(line: 0, scope: !1429)
!1542 = !DILocation(line: 253, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 253, column: 7)
!1544 = !DILocation(line: 253, column: 18, scope: !1543)
!1545 = !DILocation(line: 253, column: 21, scope: !1543)
!1546 = !DILocation(line: 253, column: 45, scope: !1543)
!1547 = !DILocation(line: 253, column: 7, scope: !1406)
!1548 = !DILocation(line: 255, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 254, column: 5)
!1550 = !DILocation(line: 259, column: 53, scope: !1406)
!1551 = !DILocalVariable(name: "s", arg: 1, scope: !1552, file: !3, line: 107, type: !12)
!1552 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !3, file: !3, line: 107, type: !1553, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1555)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!68, !12, !68}
!1555 = !{!1551, !1556, !1557}
!1556 = !DILocalVariable(name: "len", arg: 2, scope: !1552, file: !3, line: 107, type: !68)
!1557 = !DILocalVariable(name: "n", scope: !1552, file: !3, line: 109, type: !68)
!1558 = !DILocation(line: 0, scope: !1552, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 259, column: 13, scope: !1406)
!1560 = !DILocation(line: 110, column: 11, scope: !1561, inlinedAt: !1559)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 110, column: 3)
!1562 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 110, column: 3)
!1563 = !DILocation(line: 110, column: 15, scope: !1561, inlinedAt: !1559)
!1564 = !DILocation(line: 110, column: 23, scope: !1561, inlinedAt: !1559)
!1565 = !DILocation(line: 110, column: 18, scope: !1561, inlinedAt: !1559)
!1566 = !DILocation(line: 110, column: 27, scope: !1561, inlinedAt: !1559)
!1567 = !DILocation(line: 110, column: 3, scope: !1562, inlinedAt: !1559)
!1568 = !DILocation(line: 111, column: 5, scope: !1561, inlinedAt: !1559)
!1569 = distinct !{!1569, !1567, !1570}
!1570 = !DILocation(line: 111, column: 7, scope: !1562, inlinedAt: !1559)
!1571 = !DILocation(line: 260, column: 15, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 260, column: 7)
!1573 = !DILocation(line: 260, column: 7, scope: !1406)
!1574 = !DILocation(line: 261, column: 5, scope: !1572)
!1575 = !DILocation(line: 263, column: 7, scope: !1434)
!1576 = !DILocation(line: 263, column: 7, scope: !1406)
!1577 = !DILocation(line: 265, column: 11, scope: !1432)
!1578 = !DILocation(line: 265, column: 11, scope: !1433)
!1579 = !DILocation(line: 267, column: 23, scope: !1431)
!1580 = !DILocation(line: 0, scope: !1431)
!1581 = !DILocation(line: 268, column: 15, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 268, column: 15)
!1583 = !DILocation(line: 268, column: 19, scope: !1582)
!1584 = !DILocation(line: 268, column: 22, scope: !1582)
!1585 = !DILocation(line: 268, column: 15, scope: !1431)
!1586 = !DILocation(line: 270, column: 20, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 270, column: 20)
!1588 = !DILocation(line: 270, column: 33, scope: !1587)
!1589 = !DILocation(line: 270, column: 36, scope: !1587)
!1590 = !DILocation(line: 270, column: 20, scope: !1582)
!1591 = !DILocation(line: 0, scope: !1582)
!1592 = !DILocation(line: 275, column: 15, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 275, column: 15)
!1594 = !DILocation(line: 275, column: 41, scope: !1593)
!1595 = !DILocation(line: 275, column: 15, scope: !1431)
!1596 = !DILocation(line: 276, column: 13, scope: !1593)
!1597 = !DILocation(line: 282, column: 15, scope: !1437)
!1598 = !DILocation(line: 282, column: 28, scope: !1437)
!1599 = !DILocation(line: 282, column: 31, scope: !1437)
!1600 = !DILocation(line: 282, column: 15, scope: !1438)
!1601 = !DILocation(line: 286, column: 27, scope: !1436)
!1602 = !DILocation(line: 0, scope: !1436)
!1603 = !DILocation(line: 287, column: 27, scope: !1436)
!1604 = !DILocation(line: 287, column: 31, scope: !1436)
!1605 = !DILocation(line: 287, column: 34, scope: !1436)
!1606 = !DILocation(line: 0, scope: !1437)
!1607 = !DILocation(line: 289, column: 15, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 289, column: 15)
!1609 = !DILocation(line: 289, column: 15, scope: !1438)
!1610 = !DILocation(line: 290, column: 13, scope: !1608)
!1611 = !DILocation(line: 0, scope: !1432)
!1612 = !DILocation(line: 296, column: 19, scope: !1433)
!1613 = !DILocation(line: 297, column: 7, scope: !1433)
!1614 = !DILocation(line: 300, column: 5, scope: !1433)
!1615 = !DILocation(line: 304, column: 15, scope: !1406)
!1616 = !DILocation(line: 306, column: 7, scope: !1441)
!1617 = !DILocation(line: 0, scope: !1441)
!1618 = !DILocation(line: 306, column: 7, scope: !1406)
!1619 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1620, file: !3, line: 123, type: !10)
!1620 = distinct !DISubprogram(name: "mkdtemp_len", scope: !3, file: !3, line: 123, type: !1621, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!14, !10, !68, !68, !161}
!1623 = !{!1619, !1624, !1625, !1626}
!1624 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1620, file: !3, line: 123, type: !68)
!1625 = !DILocalVariable(name: "x_len", arg: 3, scope: !1620, file: !3, line: 123, type: !68)
!1626 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1620, file: !3, line: 123, type: !161)
!1627 = !DILocation(line: 0, scope: !1620, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 308, column: 17, scope: !1440)
!1629 = !DILocation(line: 125, column: 47, scope: !1620, inlinedAt: !1628)
!1630 = !DILocation(line: 125, column: 10, scope: !1620, inlinedAt: !1628)
!1631 = !DILocation(line: 0, scope: !1440)
!1632 = !DILocation(line: 309, column: 15, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 309, column: 11)
!1634 = !DILocation(line: 309, column: 11, scope: !1440)
!1635 = !DILocation(line: 311, column: 16, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 311, column: 15)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 310, column: 9)
!1638 = !DILocation(line: 311, column: 15, scope: !1637)
!1639 = !DILocation(line: 312, column: 23, scope: !1636)
!1640 = !DILocation(line: 312, column: 30, scope: !1636)
!1641 = !DILocation(line: 313, column: 20, scope: !1636)
!1642 = !DILocation(line: 312, column: 13, scope: !1636)
!1643 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1644, file: !3, line: 116, type: !10)
!1644 = distinct !DISubprogram(name: "mkstemp_len", scope: !3, file: !3, line: 116, type: !1621, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1645)
!1645 = !{!1643, !1646, !1647, !1648}
!1646 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1644, file: !3, line: 116, type: !68)
!1647 = !DILocalVariable(name: "x_len", arg: 3, scope: !1644, file: !3, line: 116, type: !68)
!1648 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1644, file: !3, line: 116, type: !161)
!1649 = !DILocation(line: 0, scope: !1644, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 319, column: 16, scope: !1443)
!1651 = !DILocation(line: 118, column: 47, scope: !1644, inlinedAt: !1650)
!1652 = !DILocation(line: 118, column: 10, scope: !1644, inlinedAt: !1650)
!1653 = !DILocation(line: 0, scope: !1443)
!1654 = !DILocation(line: 320, column: 14, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 320, column: 11)
!1656 = !DILocation(line: 320, column: 18, scope: !1655)
!1657 = !DILocation(line: 320, column: 31, scope: !1655)
!1658 = !DILocation(line: 331, column: 7, scope: !1447)
!1659 = !DILocation(line: 334, column: 20, scope: !1446)
!1660 = !DILocation(line: 320, column: 34, scope: !1655)
!1661 = !DILocation(line: 320, column: 45, scope: !1655)
!1662 = !DILocation(line: 320, column: 11, scope: !1443)
!1663 = !DILocation(line: 322, column: 16, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 322, column: 15)
!1665 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 321, column: 9)
!1666 = !DILocation(line: 322, column: 15, scope: !1665)
!1667 = !DILocation(line: 323, column: 23, scope: !1664)
!1668 = !DILocation(line: 323, column: 30, scope: !1664)
!1669 = !DILocation(line: 324, column: 20, scope: !1664)
!1670 = !DILocation(line: 323, column: 13, scope: !1664)
!1671 = !DILocation(line: 334, column: 12, scope: !1446)
!1672 = !DILocation(line: 334, column: 39, scope: !1446)
!1673 = !DILocation(line: 334, column: 62, scope: !1446)
!1674 = !DILocation(line: 334, column: 48, scope: !1446)
!1675 = !DILocation(line: 334, column: 70, scope: !1446)
!1676 = !DILocation(line: 334, column: 11, scope: !1447)
!1677 = !DILocation(line: 336, column: 29, scope: !1445)
!1678 = !DILocation(line: 0, scope: !1445)
!1679 = !DILocation(line: 337, column: 11, scope: !1445)
!1680 = !DILocation(line: 338, column: 16, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 338, column: 15)
!1682 = !DILocation(line: 338, column: 15, scope: !1445)
!1683 = !DILocation(line: 339, column: 36, scope: !1681)
!1684 = !DILocation(line: 339, column: 13, scope: !1681)
!1685 = !DILocation(line: 350, column: 1, scope: !1406)
!1686 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !3, file: !3, line: 137, type: !95, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1687 = !DILocation(line: 139, column: 8, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 139, column: 7)
!1689 = !DILocation(line: 139, column: 7, scope: !1686)
!1690 = !DILocation(line: 140, column: 5, scope: !1688)
!1691 = !DILocation(line: 141, column: 26, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 141, column: 12)
!1693 = !DILocation(line: 141, column: 12, scope: !1692)
!1694 = !DILocation(line: 141, column: 34, scope: !1692)
!1695 = !DILocation(line: 141, column: 12, scope: !1688)
!1696 = !DILocation(line: 142, column: 5, scope: !1692)
!1697 = !DILocation(line: 143, column: 1, scope: !1686)
!1698 = distinct !DISubprogram(name: "close_stream", scope: !457, file: !457, line: 56, type: !1699, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1704)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!14, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1703, line: 7, baseType: !464)
!1703 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1704 = !{!1705, !1706, !1708, !1709}
!1705 = !DILocalVariable(name: "stream", arg: 1, scope: !1698, file: !457, line: 56, type: !1701)
!1706 = !DILocalVariable(name: "some_pending", scope: !1698, file: !457, line: 58, type: !1707)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1708 = !DILocalVariable(name: "prev_fail", scope: !1698, file: !457, line: 59, type: !1707)
!1709 = !DILocalVariable(name: "fclose_fail", scope: !1698, file: !457, line: 60, type: !1707)
!1710 = !DILocation(line: 0, scope: !1698)
!1711 = !DILocation(line: 58, column: 30, scope: !1698)
!1712 = !DILocalVariable(name: "__stream", arg: 1, scope: !1713, file: !1714, line: 135, type: !1701)
!1713 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1714, file: !1714, line: 135, type: !1699, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1715)
!1714 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1715 = !{!1712}
!1716 = !DILocation(line: 0, scope: !1713, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 59, column: 27, scope: !1698)
!1718 = !DILocation(line: 137, column: 10, scope: !1713, inlinedAt: !1717)
!1719 = !{!1720, !1472, i64 0}
!1720 = !{!"_IO_FILE", !1472, i64 0, !1362, i64 8, !1362, i64 16, !1362, i64 24, !1362, i64 32, !1362, i64 40, !1362, i64 48, !1362, i64 56, !1362, i64 64, !1362, i64 72, !1362, i64 80, !1362, i64 88, !1362, i64 96, !1362, i64 104, !1472, i64 112, !1472, i64 116, !1721, i64 120, !1722, i64 128, !1363, i64 130, !1363, i64 131, !1362, i64 136, !1721, i64 144, !1362, i64 152, !1362, i64 160, !1362, i64 168, !1362, i64 176, !1721, i64 184, !1472, i64 192, !1363, i64 196}
!1721 = !{!"long", !1363, i64 0}
!1722 = !{!"short", !1363, i64 0}
!1723 = !DILocation(line: 59, column: 43, scope: !1698)
!1724 = !DILocation(line: 60, column: 29, scope: !1698)
!1725 = !DILocation(line: 60, column: 45, scope: !1698)
!1726 = !DILocation(line: 70, column: 17, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1698, file: !457, line: 70, column: 7)
!1728 = !DILocation(line: 58, column: 50, scope: !1698)
!1729 = !DILocation(line: 70, column: 33, scope: !1727)
!1730 = !DILocation(line: 70, column: 53, scope: !1727)
!1731 = !DILocation(line: 70, column: 59, scope: !1727)
!1732 = !DILocation(line: 70, column: 7, scope: !1698)
!1733 = !DILocation(line: 72, column: 11, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1727, file: !457, line: 71, column: 5)
!1735 = !DILocation(line: 73, column: 9, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1734, file: !457, line: 72, column: 11)
!1737 = !DILocation(line: 73, column: 15, scope: !1736)
!1738 = !DILocation(line: 78, column: 1, scope: !1698)
!1739 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !176, file: !176, line: 51, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1740)
!1740 = !{!1741}
!1741 = !DILocalVariable(name: "file", arg: 1, scope: !1739, file: !176, line: 51, type: !12)
!1742 = !DILocation(line: 0, scope: !1739)
!1743 = !DILocation(line: 53, column: 13, scope: !1739)
!1744 = !DILocation(line: 54, column: 1, scope: !1739)
!1745 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !176, file: !176, line: 88, type: !1746, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !161}
!1748 = !{!1749}
!1749 = !DILocalVariable(name: "ignore", arg: 1, scope: !1745, file: !176, line: 88, type: !161)
!1750 = !DILocation(line: 0, scope: !1745)
!1751 = !DILocation(line: 90, column: 16, scope: !1745)
!1752 = !{!1753, !1753, i64 0}
!1753 = !{!"_Bool", !1363, i64 0}
!1754 = !DILocation(line: 91, column: 1, scope: !1745)
!1755 = distinct !DISubprogram(name: "close_stdout", scope: !176, file: !176, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1756)
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "write_error", scope: !1758, file: !176, line: 122, type: !12)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !176, line: 121, column: 5)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !176, line: 119, column: 7)
!1760 = !DILocation(line: 119, column: 21, scope: !1759)
!1761 = !DILocation(line: 119, column: 7, scope: !1759)
!1762 = !DILocation(line: 119, column: 29, scope: !1759)
!1763 = !DILocation(line: 120, column: 7, scope: !1759)
!1764 = !DILocation(line: 120, column: 12, scope: !1759)
!1765 = !{i8 0, i8 2}
!1766 = !DILocation(line: 120, column: 25, scope: !1759)
!1767 = !DILocation(line: 120, column: 28, scope: !1759)
!1768 = !DILocation(line: 120, column: 34, scope: !1759)
!1769 = !DILocation(line: 119, column: 7, scope: !1755)
!1770 = !DILocation(line: 122, column: 33, scope: !1758)
!1771 = !DILocation(line: 0, scope: !1758)
!1772 = !DILocation(line: 123, column: 11, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1758, file: !176, line: 123, column: 11)
!1774 = !DILocation(line: 0, scope: !1773)
!1775 = !DILocation(line: 123, column: 11, scope: !1758)
!1776 = !DILocation(line: 124, column: 36, scope: !1773)
!1777 = !DILocation(line: 124, column: 9, scope: !1773)
!1778 = !DILocation(line: 127, column: 9, scope: !1773)
!1779 = !DILocation(line: 129, column: 14, scope: !1758)
!1780 = !DILocation(line: 129, column: 7, scope: !1758)
!1781 = !DILocation(line: 134, column: 42, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1755, file: !176, line: 134, column: 7)
!1783 = !DILocation(line: 134, column: 28, scope: !1782)
!1784 = !DILocation(line: 134, column: 50, scope: !1782)
!1785 = !DILocation(line: 134, column: 7, scope: !1755)
!1786 = !DILocation(line: 135, column: 12, scope: !1782)
!1787 = !DILocation(line: 135, column: 5, scope: !1782)
!1788 = !DILocation(line: 136, column: 1, scope: !1755)
!1789 = distinct !DISubprogram(name: "last_component", scope: !496, file: !496, line: 30, type: !88, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !1790)
!1790 = !{!1791, !1792, !1793, !1794}
!1791 = !DILocalVariable(name: "name", arg: 1, scope: !1789, file: !496, line: 30, type: !12)
!1792 = !DILocalVariable(name: "base", scope: !1789, file: !496, line: 32, type: !12)
!1793 = !DILocalVariable(name: "p", scope: !1789, file: !496, line: 33, type: !12)
!1794 = !DILocalVariable(name: "saw_slash", scope: !1789, file: !496, line: 34, type: !161)
!1795 = !DILocation(line: 0, scope: !1789)
!1796 = !DILocation(line: 36, column: 3, scope: !1789)
!1797 = !DILocation(line: 36, column: 10, scope: !1789)
!1798 = !DILocation(line: 37, column: 9, scope: !1789)
!1799 = distinct !{!1799, !1796, !1798}
!1800 = !DILocation(line: 39, column: 18, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !496, line: 39, column: 3)
!1802 = distinct !DILexicalBlock(scope: !1789, file: !496, line: 39, column: 3)
!1803 = !DILocation(line: 32, column: 15, scope: !1789)
!1804 = !DILocation(line: 0, scope: !1802)
!1805 = !DILocation(line: 39, column: 3, scope: !1802)
!1806 = !DILocation(line: 43, column: 16, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !496, line: 43, column: 16)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !496, line: 41, column: 11)
!1809 = distinct !DILexicalBlock(scope: !1801, file: !496, line: 40, column: 5)
!1810 = !DILocation(line: 43, column: 16, scope: !1808)
!1811 = !DILocation(line: 39, column: 23, scope: !1801)
!1812 = !DILocation(line: 39, column: 3, scope: !1801)
!1813 = distinct !{!1813, !1805, !1814}
!1814 = !DILocation(line: 48, column: 5, scope: !1802)
!1815 = !DILocation(line: 50, column: 3, scope: !1789)
!1816 = distinct !DISubprogram(name: "base_len", scope: !496, file: !496, line: 58, type: !1817, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!68, !12}
!1819 = !{!1820, !1821, !1822}
!1820 = !DILocalVariable(name: "name", arg: 1, scope: !1816, file: !496, line: 58, type: !12)
!1821 = !DILocalVariable(name: "len", scope: !1816, file: !496, line: 60, type: !68)
!1822 = !DILocalVariable(name: "prefix_len", scope: !1816, file: !496, line: 61, type: !68)
!1823 = !DILocation(line: 0, scope: !1816)
!1824 = !DILocation(line: 63, column: 14, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !496, line: 63, column: 3)
!1826 = !DILocation(line: 63, column: 8, scope: !1825)
!1827 = !DILocation(line: 0, scope: !1825)
!1828 = !DILocation(line: 63, column: 32, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !496, line: 63, column: 3)
!1830 = !DILocation(line: 63, column: 38, scope: !1829)
!1831 = !DILocation(line: 63, column: 41, scope: !1829)
!1832 = !DILocation(line: 63, column: 3, scope: !1825)
!1833 = distinct !{!1833, !1832, !1834}
!1834 = !DILocation(line: 64, column: 5, scope: !1825)
!1835 = !DILocation(line: 74, column: 3, scope: !1816)
!1836 = distinct !DISubprogram(name: "file_name_concat", scope: !499, file: !499, line: 35, type: !131, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1837)
!1837 = !{!1838, !1839, !1840, !1841}
!1838 = !DILocalVariable(name: "dir", arg: 1, scope: !1836, file: !499, line: 35, type: !12)
!1839 = !DILocalVariable(name: "base", arg: 2, scope: !1836, file: !499, line: 35, type: !12)
!1840 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1836, file: !499, line: 35, type: !133)
!1841 = !DILocalVariable(name: "p", scope: !1836, file: !499, line: 37, type: !10)
!1842 = !DILocation(line: 0, scope: !1836)
!1843 = !DILocation(line: 37, column: 13, scope: !1836)
!1844 = !DILocation(line: 38, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1836, file: !499, line: 38, column: 7)
!1846 = !DILocation(line: 38, column: 7, scope: !1836)
!1847 = !DILocation(line: 39, column: 5, scope: !1845)
!1848 = !DILocation(line: 40, column: 3, scope: !1836)
!1849 = distinct !DISubprogram(name: "mfile_name_concat", scope: !503, file: !503, line: 47, type: !131, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !1850)
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1851 = !DILocalVariable(name: "dir", arg: 1, scope: !1849, file: !503, line: 47, type: !12)
!1852 = !DILocalVariable(name: "base", arg: 2, scope: !1849, file: !503, line: 47, type: !12)
!1853 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1849, file: !503, line: 47, type: !133)
!1854 = !DILocalVariable(name: "dirbase", scope: !1849, file: !503, line: 49, type: !12)
!1855 = !DILocalVariable(name: "dirbaselen", scope: !1849, file: !503, line: 50, type: !68)
!1856 = !DILocalVariable(name: "dirlen", scope: !1849, file: !503, line: 51, type: !68)
!1857 = !DILocalVariable(name: "baselen", scope: !1849, file: !503, line: 52, type: !68)
!1858 = !DILocalVariable(name: "sep", scope: !1849, file: !503, line: 53, type: !11)
!1859 = !DILocalVariable(name: "p_concat", scope: !1849, file: !503, line: 70, type: !10)
!1860 = !DILocalVariable(name: "p", scope: !1849, file: !503, line: 71, type: !10)
!1861 = !DILocation(line: 0, scope: !1849)
!1862 = !DILocation(line: 49, column: 25, scope: !1849)
!1863 = !DILocation(line: 50, column: 23, scope: !1849)
!1864 = !DILocation(line: 51, column: 27, scope: !1849)
!1865 = !DILocation(line: 51, column: 33, scope: !1849)
!1866 = !DILocation(line: 52, column: 20, scope: !1849)
!1867 = !DILocation(line: 54, column: 7, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1849, file: !503, line: 54, column: 7)
!1869 = !DILocation(line: 54, column: 7, scope: !1849)
!1870 = !DILocation(line: 57, column: 13, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !503, line: 57, column: 11)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !503, line: 55, column: 5)
!1873 = !DILocation(line: 57, column: 39, scope: !1871)
!1874 = !DILocation(line: 57, column: 44, scope: !1871)
!1875 = !DILocation(line: 57, column: 11, scope: !1872)
!1876 = !DILocation(line: 60, column: 12, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1868, file: !503, line: 60, column: 12)
!1878 = !DILocation(line: 60, column: 12, scope: !1868)
!1879 = !DILocation(line: 70, column: 42, scope: !1849)
!1880 = !DILocation(line: 70, column: 37, scope: !1849)
!1881 = !DILocation(line: 70, column: 35, scope: !1849)
!1882 = !DILocation(line: 70, column: 52, scope: !1849)
!1883 = !DILocation(line: 70, column: 62, scope: !1849)
!1884 = !DILocation(line: 70, column: 20, scope: !1849)
!1885 = !DILocation(line: 73, column: 16, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1849, file: !503, line: 73, column: 7)
!1887 = !DILocation(line: 73, column: 7, scope: !1849)
!1888 = !DILocalVariable(name: "__dest", arg: 1, scope: !1889, file: !1514, line: 45, type: !1517)
!1889 = distinct !DISubprogram(name: "mempcpy", scope: !1514, file: !1514, line: 45, type: !1515, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !1890)
!1890 = !{!1888, !1891, !1892}
!1891 = !DILocalVariable(name: "__src", arg: 2, scope: !1889, file: !1514, line: 45, type: !1518)
!1892 = !DILocalVariable(name: "__len", arg: 3, scope: !1889, file: !1514, line: 45, type: !68)
!1893 = !DILocation(line: 0, scope: !1889, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 76, column: 7, scope: !1849)
!1895 = !DILocation(line: 48, column: 10, scope: !1889, inlinedAt: !1894)
!1896 = !DILocation(line: 77, column: 6, scope: !1849)
!1897 = !DILocation(line: 78, column: 5, scope: !1849)
!1898 = !DILocation(line: 80, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1849, file: !503, line: 80, column: 7)
!1900 = !DILocation(line: 80, column: 7, scope: !1849)
!1901 = !DILocation(line: 81, column: 21, scope: !1899)
!1902 = !DILocation(line: 81, column: 5, scope: !1899)
!1903 = !DILocation(line: 0, scope: !1889, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 83, column: 7, scope: !1849)
!1905 = !DILocation(line: 48, column: 10, scope: !1889, inlinedAt: !1904)
!1906 = !DILocation(line: 84, column: 6, scope: !1849)
!1907 = !DILocation(line: 86, column: 3, scope: !1849)
!1908 = !DILocation(line: 87, column: 1, scope: !1849)
!1909 = distinct !DISubprogram(name: "set_program_name", scope: !227, file: !227, line: 39, type: !78, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1910)
!1910 = !{!1911, !1912, !1913}
!1911 = !DILocalVariable(name: "argv0", arg: 1, scope: !1909, file: !227, line: 39, type: !12)
!1912 = !DILocalVariable(name: "slash", scope: !1909, file: !227, line: 46, type: !12)
!1913 = !DILocalVariable(name: "base", scope: !1909, file: !227, line: 47, type: !12)
!1914 = !DILocation(line: 0, scope: !1909)
!1915 = !DILocation(line: 51, column: 13, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1909, file: !227, line: 51, column: 7)
!1917 = !DILocation(line: 51, column: 7, scope: !1909)
!1918 = !DILocation(line: 55, column: 14, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !227, line: 52, column: 5)
!1920 = !DILocation(line: 54, column: 7, scope: !1919)
!1921 = !DILocation(line: 56, column: 7, scope: !1919)
!1922 = !DILocation(line: 59, column: 11, scope: !1909)
!1923 = !DILocation(line: 60, column: 17, scope: !1909)
!1924 = !DILocation(line: 60, column: 11, scope: !1909)
!1925 = !DILocation(line: 61, column: 12, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1909, file: !227, line: 61, column: 7)
!1927 = !DILocation(line: 61, column: 20, scope: !1926)
!1928 = !DILocation(line: 61, column: 25, scope: !1926)
!1929 = !DILocation(line: 61, column: 42, scope: !1926)
!1930 = !DILocation(line: 61, column: 28, scope: !1926)
!1931 = !DILocation(line: 61, column: 61, scope: !1926)
!1932 = !DILocation(line: 61, column: 7, scope: !1909)
!1933 = !DILocation(line: 64, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !227, line: 64, column: 11)
!1935 = distinct !DILexicalBlock(scope: !1926, file: !227, line: 62, column: 5)
!1936 = !DILocation(line: 64, column: 36, scope: !1934)
!1937 = !DILocation(line: 64, column: 11, scope: !1935)
!1938 = !DILocation(line: 66, column: 24, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !227, line: 65, column: 9)
!1940 = !DILocation(line: 70, column: 41, scope: !1939)
!1941 = !DILocation(line: 72, column: 9, scope: !1939)
!1942 = !DILocation(line: 84, column: 16, scope: !1909)
!1943 = !DILocation(line: 90, column: 27, scope: !1909)
!1944 = !DILocation(line: 92, column: 1, scope: !1909)
!1945 = distinct !DISubprogram(name: "clone_quoting_options", scope: !268, file: !268, line: 122, type: !1946, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !1949)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1948, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!1949 = !{!1950, !1951, !1952}
!1950 = !DILocalVariable(name: "o", arg: 1, scope: !1945, file: !268, line: 122, type: !1948)
!1951 = !DILocalVariable(name: "e", scope: !1945, file: !268, line: 124, type: !14)
!1952 = !DILocalVariable(name: "p", scope: !1945, file: !268, line: 125, type: !1948)
!1953 = !DILocation(line: 0, scope: !1945)
!1954 = !DILocation(line: 124, column: 11, scope: !1945)
!1955 = !DILocation(line: 125, column: 40, scope: !1945)
!1956 = !DILocation(line: 125, column: 31, scope: !1945)
!1957 = !DILocation(line: 127, column: 9, scope: !1945)
!1958 = !DILocation(line: 128, column: 3, scope: !1945)
!1959 = distinct !DISubprogram(name: "get_quoting_style", scope: !268, file: !268, line: 133, type: !1960, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!270, !314}
!1962 = !{!1963}
!1963 = !DILocalVariable(name: "o", arg: 1, scope: !1959, file: !268, line: 133, type: !314)
!1964 = !DILocation(line: 0, scope: !1959)
!1965 = !DILocation(line: 135, column: 11, scope: !1959)
!1966 = !DILocation(line: 135, column: 46, scope: !1959)
!1967 = !{!1968, !1363, i64 0}
!1968 = !{!"quoting_options", !1363, i64 0, !1472, i64 4, !1363, i64 8, !1362, i64 40, !1362, i64 48}
!1969 = !DILocation(line: 135, column: 3, scope: !1959)
!1970 = distinct !DISubprogram(name: "set_quoting_style", scope: !268, file: !268, line: 141, type: !1971, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1948, !270}
!1973 = !{!1974, !1975}
!1974 = !DILocalVariable(name: "o", arg: 1, scope: !1970, file: !268, line: 141, type: !1948)
!1975 = !DILocalVariable(name: "s", arg: 2, scope: !1970, file: !268, line: 141, type: !270)
!1976 = !DILocation(line: 0, scope: !1970)
!1977 = !DILocation(line: 143, column: 4, scope: !1970)
!1978 = !DILocation(line: 143, column: 39, scope: !1970)
!1979 = !DILocation(line: 143, column: 45, scope: !1970)
!1980 = !DILocation(line: 144, column: 1, scope: !1970)
!1981 = distinct !DISubprogram(name: "set_char_quoting", scope: !268, file: !268, line: 152, type: !1982, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!14, !1948, !11, !14}
!1984 = !{!1985, !1986, !1987, !1988, !1990, !1992, !1993}
!1985 = !DILocalVariable(name: "o", arg: 1, scope: !1981, file: !268, line: 152, type: !1948)
!1986 = !DILocalVariable(name: "c", arg: 2, scope: !1981, file: !268, line: 152, type: !11)
!1987 = !DILocalVariable(name: "i", arg: 3, scope: !1981, file: !268, line: 152, type: !14)
!1988 = !DILocalVariable(name: "uc", scope: !1981, file: !268, line: 154, type: !1989)
!1989 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1990 = !DILocalVariable(name: "p", scope: !1981, file: !268, line: 155, type: !1991)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1992 = !DILocalVariable(name: "shift", scope: !1981, file: !268, line: 157, type: !14)
!1993 = !DILocalVariable(name: "r", scope: !1981, file: !268, line: 158, type: !14)
!1994 = !DILocation(line: 0, scope: !1981)
!1995 = !DILocation(line: 156, column: 6, scope: !1981)
!1996 = !DILocation(line: 156, column: 62, scope: !1981)
!1997 = !DILocation(line: 156, column: 57, scope: !1981)
!1998 = !DILocation(line: 157, column: 15, scope: !1981)
!1999 = !DILocation(line: 158, column: 12, scope: !1981)
!2000 = !DILocation(line: 158, column: 15, scope: !1981)
!2001 = !DILocation(line: 158, column: 25, scope: !1981)
!2002 = !DILocation(line: 159, column: 13, scope: !1981)
!2003 = !DILocation(line: 159, column: 18, scope: !1981)
!2004 = !DILocation(line: 159, column: 23, scope: !1981)
!2005 = !DILocation(line: 159, column: 6, scope: !1981)
!2006 = !DILocation(line: 160, column: 3, scope: !1981)
!2007 = distinct !DISubprogram(name: "set_quoting_flags", scope: !268, file: !268, line: 168, type: !2008, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!14, !1948, !14}
!2010 = !{!2011, !2012, !2013}
!2011 = !DILocalVariable(name: "o", arg: 1, scope: !2007, file: !268, line: 168, type: !1948)
!2012 = !DILocalVariable(name: "i", arg: 2, scope: !2007, file: !268, line: 168, type: !14)
!2013 = !DILocalVariable(name: "r", scope: !2007, file: !268, line: 170, type: !14)
!2014 = !DILocation(line: 0, scope: !2007)
!2015 = !DILocation(line: 171, column: 8, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2007, file: !268, line: 171, column: 7)
!2017 = !DILocation(line: 171, column: 7, scope: !2007)
!2018 = !DILocation(line: 173, column: 10, scope: !2007)
!2019 = !{!1968, !1472, i64 4}
!2020 = !DILocation(line: 174, column: 12, scope: !2007)
!2021 = !DILocation(line: 175, column: 3, scope: !2007)
!2022 = distinct !DISubprogram(name: "set_custom_quoting", scope: !268, file: !268, line: 179, type: !2023, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !1948, !12, !12}
!2025 = !{!2026, !2027, !2028}
!2026 = !DILocalVariable(name: "o", arg: 1, scope: !2022, file: !268, line: 179, type: !1948)
!2027 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2022, file: !268, line: 180, type: !12)
!2028 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2022, file: !268, line: 180, type: !12)
!2029 = !DILocation(line: 0, scope: !2022)
!2030 = !DILocation(line: 182, column: 8, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !268, line: 182, column: 7)
!2032 = !DILocation(line: 182, column: 7, scope: !2022)
!2033 = !DILocation(line: 184, column: 6, scope: !2022)
!2034 = !DILocation(line: 184, column: 12, scope: !2022)
!2035 = !DILocation(line: 185, column: 8, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2022, file: !268, line: 185, column: 7)
!2037 = !DILocation(line: 185, column: 23, scope: !2036)
!2038 = !DILocation(line: 185, column: 19, scope: !2036)
!2039 = !DILocation(line: 186, column: 5, scope: !2036)
!2040 = !DILocation(line: 187, column: 6, scope: !2022)
!2041 = !DILocation(line: 187, column: 17, scope: !2022)
!2042 = !{!1968, !1362, i64 40}
!2043 = !DILocation(line: 188, column: 6, scope: !2022)
!2044 = !DILocation(line: 188, column: 18, scope: !2022)
!2045 = !{!1968, !1362, i64 48}
!2046 = !DILocation(line: 189, column: 1, scope: !2022)
!2047 = distinct !DISubprogram(name: "quotearg_buffer", scope: !268, file: !268, line: 784, type: !2048, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!68, !10, !68, !12, !68, !314}
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2051 = !DILocalVariable(name: "buffer", arg: 1, scope: !2047, file: !268, line: 784, type: !10)
!2052 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2047, file: !268, line: 784, type: !68)
!2053 = !DILocalVariable(name: "arg", arg: 3, scope: !2047, file: !268, line: 785, type: !12)
!2054 = !DILocalVariable(name: "argsize", arg: 4, scope: !2047, file: !268, line: 785, type: !68)
!2055 = !DILocalVariable(name: "o", arg: 5, scope: !2047, file: !268, line: 786, type: !314)
!2056 = !DILocalVariable(name: "p", scope: !2047, file: !268, line: 788, type: !314)
!2057 = !DILocalVariable(name: "e", scope: !2047, file: !268, line: 789, type: !14)
!2058 = !DILocalVariable(name: "r", scope: !2047, file: !268, line: 790, type: !68)
!2059 = !DILocation(line: 0, scope: !2047)
!2060 = !DILocation(line: 788, column: 37, scope: !2047)
!2061 = !DILocation(line: 789, column: 11, scope: !2047)
!2062 = !DILocation(line: 791, column: 43, scope: !2047)
!2063 = !DILocation(line: 791, column: 53, scope: !2047)
!2064 = !DILocation(line: 791, column: 60, scope: !2047)
!2065 = !DILocation(line: 792, column: 43, scope: !2047)
!2066 = !DILocation(line: 792, column: 58, scope: !2047)
!2067 = !DILocation(line: 790, column: 14, scope: !2047)
!2068 = !DILocation(line: 793, column: 9, scope: !2047)
!2069 = !DILocation(line: 794, column: 3, scope: !2047)
!2070 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !268, file: !268, line: 256, type: !2071, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2075)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!68, !10, !68, !12, !68, !270, !14, !2073, !12, !12}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2100, !2101, !2102, !2103, !2104, !2107, !2108, !2114, !2117, !2118, !2125, !2128, !2129, !2130, !2131, !2132, !2133}
!2076 = !DILocalVariable(name: "buffer", arg: 1, scope: !2070, file: !268, line: 256, type: !10)
!2077 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2070, file: !268, line: 256, type: !68)
!2078 = !DILocalVariable(name: "arg", arg: 3, scope: !2070, file: !268, line: 257, type: !12)
!2079 = !DILocalVariable(name: "argsize", arg: 4, scope: !2070, file: !268, line: 257, type: !68)
!2080 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2070, file: !268, line: 258, type: !270)
!2081 = !DILocalVariable(name: "flags", arg: 6, scope: !2070, file: !268, line: 258, type: !14)
!2082 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2070, file: !268, line: 259, type: !2073)
!2083 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2070, file: !268, line: 260, type: !12)
!2084 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2070, file: !268, line: 261, type: !12)
!2085 = !DILocalVariable(name: "i", scope: !2070, file: !268, line: 263, type: !68)
!2086 = !DILocalVariable(name: "len", scope: !2070, file: !268, line: 264, type: !68)
!2087 = !DILocalVariable(name: "orig_buffersize", scope: !2070, file: !268, line: 265, type: !68)
!2088 = !DILocalVariable(name: "quote_string", scope: !2070, file: !268, line: 266, type: !12)
!2089 = !DILocalVariable(name: "quote_string_len", scope: !2070, file: !268, line: 267, type: !68)
!2090 = !DILocalVariable(name: "backslash_escapes", scope: !2070, file: !268, line: 268, type: !161)
!2091 = !DILocalVariable(name: "unibyte_locale", scope: !2070, file: !268, line: 269, type: !161)
!2092 = !DILocalVariable(name: "elide_outer_quotes", scope: !2070, file: !268, line: 270, type: !161)
!2093 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2070, file: !268, line: 271, type: !161)
!2094 = !DILocalVariable(name: "encountered_single_quote", scope: !2070, file: !268, line: 272, type: !161)
!2095 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2070, file: !268, line: 273, type: !161)
!2096 = !DILocalVariable(name: "c", scope: !2097, file: !268, line: 402, type: !1989)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !268, line: 401, column: 5)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !268, line: 400, column: 3)
!2099 = distinct !DILexicalBlock(scope: !2070, file: !268, line: 400, column: 3)
!2100 = !DILocalVariable(name: "esc", scope: !2097, file: !268, line: 403, type: !1989)
!2101 = !DILocalVariable(name: "is_right_quote", scope: !2097, file: !268, line: 404, type: !161)
!2102 = !DILocalVariable(name: "escaping", scope: !2097, file: !268, line: 405, type: !161)
!2103 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2097, file: !268, line: 406, type: !161)
!2104 = !DILocalVariable(name: "m", scope: !2105, file: !268, line: 610, type: !68)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 608, column: 11)
!2106 = distinct !DILexicalBlock(scope: !2097, file: !268, line: 426, column: 9)
!2107 = !DILocalVariable(name: "printable", scope: !2105, file: !268, line: 612, type: !161)
!2108 = !DILocalVariable(name: "mbstate", scope: !2109, file: !268, line: 621, type: !2111)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !268, line: 620, column: 15)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !268, line: 614, column: 17)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2112, line: 6, baseType: !2113)
!2112 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !333, line: 21, baseType: !332)
!2114 = !DILocalVariable(name: "w", scope: !2115, file: !268, line: 631, type: !2116)
!2115 = distinct !DILexicalBlock(scope: !2109, file: !268, line: 630, column: 19)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !14)
!2117 = !DILocalVariable(name: "bytes", scope: !2115, file: !268, line: 632, type: !68)
!2118 = !DILocalVariable(name: "j", scope: !2119, file: !268, line: 657, type: !68)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !268, line: 656, column: 27)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !268, line: 654, column: 29)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !268, line: 649, column: 23)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !268, line: 641, column: 30)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !268, line: 636, column: 30)
!2124 = distinct !DILexicalBlock(scope: !2115, file: !268, line: 634, column: 25)
!2125 = !DILocalVariable(name: "ilim", scope: !2126, file: !268, line: 684, type: !68)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !268, line: 681, column: 15)
!2127 = distinct !DILexicalBlock(scope: !2105, file: !268, line: 680, column: 17)
!2128 = !DILabel(scope: !2070, name: "process_input", file: !268, line: 314)
!2129 = !DILabel(scope: !2106, name: "c_and_shell_escape", file: !268, line: 512)
!2130 = !DILabel(scope: !2106, name: "c_escape", file: !268, line: 517)
!2131 = !DILabel(scope: !2097, name: "store_escape", file: !268, line: 719)
!2132 = !DILabel(scope: !2097, name: "store_c", file: !268, line: 722)
!2133 = !DILabel(scope: !2070, name: "force_outer_quoting_style", file: !268, line: 763)
!2134 = !DILocation(line: 0, scope: !2070)
!2135 = !DILocation(line: 269, column: 25, scope: !2070)
!2136 = !DILocation(line: 269, column: 36, scope: !2070)
!2137 = !DILocation(line: 270, column: 8, scope: !2070)
!2138 = !DILocation(line: 0, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 526, column: 15)
!2140 = !DILocation(line: 0, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !268, line: 462, column: 19)
!2142 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 455, column: 13)
!2143 = !DILocation(line: 0, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !268, line: 449, column: 20)
!2145 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 428, column: 15)
!2146 = !DILocation(line: 0, scope: !2109)
!2147 = !DILocation(line: 0, scope: !2115)
!2148 = !DILocation(line: 0, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2097, file: !268, line: 712, column: 11)
!2150 = !DILocation(line: 273, column: 3, scope: !2070)
!2151 = !DILocation(line: 265, column: 10, scope: !2070)
!2152 = !DILocation(line: 266, column: 15, scope: !2070)
!2153 = !DILocation(line: 267, column: 10, scope: !2070)
!2154 = !DILocation(line: 268, column: 8, scope: !2070)
!2155 = !DILocation(line: 271, column: 8, scope: !2070)
!2156 = !DILocation(line: 272, column: 8, scope: !2070)
!2157 = !DILocation(line: 273, column: 8, scope: !2070)
!2158 = !DILocation(line: 314, column: 2, scope: !2070)
!2159 = !DILocation(line: 316, column: 3, scope: !2070)
!2160 = !DILocation(line: 323, column: 11, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2070, file: !268, line: 317, column: 5)
!2162 = !DILocation(line: 323, column: 12, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2161, file: !268, line: 323, column: 11)
!2164 = !DILocation(line: 324, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !268, line: 324, column: 9)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !268, line: 324, column: 9)
!2167 = !DILocation(line: 324, column: 9, scope: !2166)
!2168 = !DILocation(line: 362, column: 26, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !268, line: 340, column: 11)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !268, line: 339, column: 13)
!2171 = distinct !DILexicalBlock(scope: !2161, file: !268, line: 338, column: 7)
!2172 = !DILocation(line: 363, column: 27, scope: !2169)
!2173 = !DILocation(line: 364, column: 11, scope: !2169)
!2174 = !DILocation(line: 365, column: 14, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2171, file: !268, line: 365, column: 13)
!2176 = !DILocation(line: 365, column: 13, scope: !2171)
!2177 = !DILocation(line: 366, column: 43, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !268, line: 366, column: 11)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !268, line: 366, column: 11)
!2180 = !DILocation(line: 366, column: 11, scope: !2179)
!2181 = !DILocation(line: 367, column: 13, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !268, line: 367, column: 13)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !268, line: 367, column: 13)
!2184 = !DILocation(line: 367, column: 13, scope: !2183)
!2185 = !DILocation(line: 366, column: 70, scope: !2178)
!2186 = distinct !{!2186, !2180, !2187}
!2187 = !DILocation(line: 367, column: 13, scope: !2179)
!2188 = !DILocation(line: 264, column: 10, scope: !2070)
!2189 = !DILocation(line: 370, column: 28, scope: !2171)
!2190 = !DILocation(line: 372, column: 7, scope: !2161)
!2191 = !DILocation(line: 376, column: 7, scope: !2161)
!2192 = !DILocation(line: 379, column: 7, scope: !2161)
!2193 = !DILocation(line: 381, column: 12, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2161, file: !268, line: 381, column: 11)
!2195 = !DILocation(line: 381, column: 11, scope: !2161)
!2196 = !DILocation(line: 386, column: 12, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2161, file: !268, line: 386, column: 11)
!2198 = !DILocation(line: 386, column: 11, scope: !2161)
!2199 = !DILocation(line: 387, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !268, line: 387, column: 9)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !268, line: 387, column: 9)
!2202 = !DILocation(line: 387, column: 9, scope: !2201)
!2203 = !DILocation(line: 394, column: 7, scope: !2161)
!2204 = !DILocation(line: 397, column: 7, scope: !2161)
!2205 = !DILocation(line: 0, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2097, file: !268, line: 408, column: 11)
!2207 = !DILocation(line: 0, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !268, line: 419, column: 15)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !268, line: 418, column: 9)
!2210 = !DILocation(line: 0, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 556, column: 15)
!2212 = !DILocation(line: 0, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 548, column: 15)
!2214 = !DILocation(line: 0, scope: !2120)
!2215 = !DILocation(line: 0, scope: !2127)
!2216 = !DILocation(line: 0, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 509, column: 15)
!2218 = !DILocation(line: 400, column: 8, scope: !2099)
!2219 = !DILocation(line: 0, scope: !2099)
!2220 = !DILocation(line: 400, column: 27, scope: !2098)
!2221 = !DILocation(line: 400, column: 19, scope: !2098)
!2222 = !DILocation(line: 400, column: 41, scope: !2098)
!2223 = !DILocation(line: 400, column: 48, scope: !2098)
!2224 = !DILocation(line: 400, column: 3, scope: !2099)
!2225 = !DILocation(line: 400, column: 60, scope: !2098)
!2226 = !DILocation(line: 0, scope: !2097)
!2227 = !DILocation(line: 409, column: 11, scope: !2206)
!2228 = !DILocation(line: 411, column: 17, scope: !2206)
!2229 = !DILocation(line: 412, column: 39, scope: !2206)
!2230 = !DILocation(line: 416, column: 32, scope: !2206)
!2231 = !DILocation(line: 412, column: 19, scope: !2206)
!2232 = !DILocation(line: 412, column: 15, scope: !2206)
!2233 = !DILocation(line: 417, column: 11, scope: !2206)
!2234 = !DILocation(line: 417, column: 26, scope: !2206)
!2235 = !DILocation(line: 417, column: 14, scope: !2206)
!2236 = !DILocation(line: 417, column: 63, scope: !2206)
!2237 = !DILocation(line: 408, column: 11, scope: !2097)
!2238 = !DILocation(line: 424, column: 11, scope: !2097)
!2239 = !DILocation(line: 425, column: 7, scope: !2097)
!2240 = !DILocation(line: 428, column: 15, scope: !2106)
!2241 = !DILocation(line: 430, column: 15, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !268, line: 430, column: 15)
!2243 = distinct !DILexicalBlock(scope: !2145, file: !268, line: 429, column: 13)
!2244 = !DILocation(line: 430, column: 15, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2242, file: !268, line: 430, column: 15)
!2246 = !DILocation(line: 430, column: 15, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !268, line: 430, column: 15)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !268, line: 430, column: 15)
!2249 = distinct !DILexicalBlock(scope: !2245, file: !268, line: 430, column: 15)
!2250 = !DILocation(line: 430, column: 15, scope: !2248)
!2251 = !DILocation(line: 430, column: 15, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !268, line: 430, column: 15)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !268, line: 430, column: 15)
!2254 = !DILocation(line: 430, column: 15, scope: !2253)
!2255 = !DILocation(line: 430, column: 15, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !268, line: 430, column: 15)
!2257 = distinct !DILexicalBlock(scope: !2249, file: !268, line: 430, column: 15)
!2258 = !DILocation(line: 430, column: 15, scope: !2257)
!2259 = !DILocation(line: 430, column: 15, scope: !2249)
!2260 = !DILocation(line: 430, column: 15, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !268, line: 430, column: 15)
!2262 = distinct !DILexicalBlock(scope: !2242, file: !268, line: 430, column: 15)
!2263 = !DILocation(line: 430, column: 15, scope: !2262)
!2264 = !DILocation(line: 438, column: 19, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2243, file: !268, line: 437, column: 19)
!2266 = !DILocation(line: 438, column: 24, scope: !2265)
!2267 = !DILocation(line: 438, column: 28, scope: !2265)
!2268 = !DILocation(line: 438, column: 38, scope: !2265)
!2269 = !DILocation(line: 438, column: 48, scope: !2265)
!2270 = !DILocation(line: 438, column: 59, scope: !2265)
!2271 = !DILocation(line: 440, column: 19, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !268, line: 440, column: 19)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !268, line: 440, column: 19)
!2274 = distinct !DILexicalBlock(scope: !2265, file: !268, line: 439, column: 17)
!2275 = !DILocation(line: 440, column: 19, scope: !2273)
!2276 = !DILocation(line: 441, column: 19, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !268, line: 441, column: 19)
!2278 = distinct !DILexicalBlock(scope: !2274, file: !268, line: 441, column: 19)
!2279 = !DILocation(line: 441, column: 19, scope: !2278)
!2280 = !DILocation(line: 442, column: 17, scope: !2274)
!2281 = !DILocation(line: 449, column: 20, scope: !2145)
!2282 = !DILocation(line: 454, column: 11, scope: !2106)
!2283 = !DILocation(line: 457, column: 19, scope: !2142)
!2284 = !DILocation(line: 463, column: 19, scope: !2141)
!2285 = !DILocation(line: 463, column: 24, scope: !2141)
!2286 = !DILocation(line: 463, column: 28, scope: !2141)
!2287 = !DILocation(line: 463, column: 38, scope: !2141)
!2288 = !DILocation(line: 463, column: 47, scope: !2141)
!2289 = !DILocation(line: 463, column: 41, scope: !2141)
!2290 = !DILocation(line: 463, column: 52, scope: !2141)
!2291 = !DILocation(line: 462, column: 19, scope: !2142)
!2292 = !DILocation(line: 464, column: 25, scope: !2141)
!2293 = !DILocation(line: 464, column: 17, scope: !2141)
!2294 = !DILocation(line: 471, column: 25, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2141, file: !268, line: 465, column: 19)
!2296 = !DILocation(line: 475, column: 21, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !268, line: 475, column: 21)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !268, line: 475, column: 21)
!2299 = !DILocation(line: 475, column: 21, scope: !2298)
!2300 = !DILocation(line: 476, column: 21, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !268, line: 476, column: 21)
!2302 = distinct !DILexicalBlock(scope: !2295, file: !268, line: 476, column: 21)
!2303 = !DILocation(line: 476, column: 21, scope: !2302)
!2304 = !DILocation(line: 477, column: 21, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !268, line: 477, column: 21)
!2306 = distinct !DILexicalBlock(scope: !2295, file: !268, line: 477, column: 21)
!2307 = !DILocation(line: 477, column: 21, scope: !2306)
!2308 = !DILocation(line: 478, column: 21, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !268, line: 478, column: 21)
!2310 = distinct !DILexicalBlock(scope: !2295, file: !268, line: 478, column: 21)
!2311 = !DILocation(line: 478, column: 21, scope: !2310)
!2312 = !DILocation(line: 479, column: 21, scope: !2295)
!2313 = !DILocation(line: 492, column: 31, scope: !2106)
!2314 = !DILocation(line: 493, column: 31, scope: !2106)
!2315 = !DILocation(line: 495, column: 31, scope: !2106)
!2316 = !DILocation(line: 496, column: 31, scope: !2106)
!2317 = !DILocation(line: 497, column: 31, scope: !2106)
!2318 = !DILocation(line: 500, column: 15, scope: !2106)
!2319 = !DILocation(line: 502, column: 19, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !268, line: 501, column: 13)
!2321 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 500, column: 15)
!2322 = !DILocation(line: 509, column: 33, scope: !2217)
!2323 = !DILocation(line: 0, scope: !2106)
!2324 = !DILocation(line: 512, column: 9, scope: !2106)
!2325 = !DILocation(line: 514, column: 15, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 513, column: 15)
!2327 = !DILocation(line: 517, column: 9, scope: !2106)
!2328 = !DILocation(line: 518, column: 15, scope: !2106)
!2329 = !DILocation(line: 526, column: 15, scope: !2106)
!2330 = !DILocation(line: 526, column: 40, scope: !2139)
!2331 = !DILocation(line: 526, column: 47, scope: !2139)
!2332 = !DILocation(line: 526, column: 18, scope: !2139)
!2333 = !DILocation(line: 530, column: 17, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2106, file: !268, line: 530, column: 15)
!2335 = !DILocation(line: 530, column: 15, scope: !2106)
!2336 = !DILocation(line: 535, column: 11, scope: !2106)
!2337 = !DILocation(line: 549, column: 15, scope: !2213)
!2338 = !DILocation(line: 556, column: 15, scope: !2106)
!2339 = !DILocation(line: 558, column: 19, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2211, file: !268, line: 557, column: 13)
!2341 = !DILocation(line: 561, column: 19, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2340, file: !268, line: 561, column: 19)
!2343 = !DILocation(line: 561, column: 35, scope: !2342)
!2344 = !DILocation(line: 561, column: 30, scope: !2342)
!2345 = !DILocation(line: 570, column: 15, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !268, line: 570, column: 15)
!2347 = distinct !DILexicalBlock(scope: !2340, file: !268, line: 570, column: 15)
!2348 = !DILocation(line: 570, column: 15, scope: !2347)
!2349 = !DILocation(line: 571, column: 15, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !268, line: 571, column: 15)
!2351 = distinct !DILexicalBlock(scope: !2340, file: !268, line: 571, column: 15)
!2352 = !DILocation(line: 571, column: 15, scope: !2351)
!2353 = !DILocation(line: 572, column: 15, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !268, line: 572, column: 15)
!2355 = distinct !DILexicalBlock(scope: !2340, file: !268, line: 572, column: 15)
!2356 = !DILocation(line: 572, column: 15, scope: !2355)
!2357 = !DILocation(line: 574, column: 13, scope: !2340)
!2358 = !DILocation(line: 614, column: 17, scope: !2105)
!2359 = !DILocation(line: 0, scope: !2105)
!2360 = !DILocation(line: 617, column: 29, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2110, file: !268, line: 615, column: 15)
!2362 = !{!1722, !1722, i64 0}
!2363 = !DILocation(line: 617, column: 27, scope: !2361)
!2364 = !DILocation(line: 618, column: 15, scope: !2361)
!2365 = !DILocation(line: 621, column: 17, scope: !2109)
!2366 = !DILocation(line: 621, column: 27, scope: !2109)
!2367 = !DILocalVariable(name: "__dest", arg: 1, scope: !2368, file: !1514, line: 59, type: !66)
!2368 = distinct !DISubprogram(name: "memset", scope: !1514, file: !1514, line: 59, type: !2369, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!66, !66, !14, !68}
!2371 = !{!2367, !2372, !2373}
!2372 = !DILocalVariable(name: "__ch", arg: 2, scope: !2368, file: !1514, line: 59, type: !14)
!2373 = !DILocalVariable(name: "__len", arg: 3, scope: !2368, file: !1514, line: 59, type: !68)
!2374 = !DILocation(line: 0, scope: !2368, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 622, column: 17, scope: !2109)
!2376 = !DILocation(line: 71, column: 10, scope: !2368, inlinedAt: !2375)
!2377 = !DILocation(line: 626, column: 29, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2109, file: !268, line: 626, column: 21)
!2379 = !DILocation(line: 626, column: 21, scope: !2109)
!2380 = !DILocation(line: 627, column: 29, scope: !2378)
!2381 = !DILocation(line: 627, column: 19, scope: !2378)
!2382 = !DILocation(line: 629, column: 17, scope: !2109)
!2383 = !DILocation(line: 624, column: 19, scope: !2109)
!2384 = !DILocation(line: 625, column: 27, scope: !2109)
!2385 = !DILocation(line: 631, column: 21, scope: !2115)
!2386 = !DILocation(line: 632, column: 56, scope: !2115)
!2387 = !DILocation(line: 632, column: 50, scope: !2115)
!2388 = !DILocation(line: 633, column: 53, scope: !2115)
!2389 = !DILocation(line: 632, column: 36, scope: !2115)
!2390 = !DILocation(line: 634, column: 25, scope: !2115)
!2391 = !DILocation(line: 644, column: 38, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2122, file: !268, line: 642, column: 23)
!2393 = !DILocation(line: 644, column: 48, scope: !2392)
!2394 = !DILocation(line: 644, column: 25, scope: !2392)
!2395 = !DILocation(line: 644, column: 51, scope: !2392)
!2396 = !DILocation(line: 645, column: 28, scope: !2392)
!2397 = !DILocation(line: 644, column: 34, scope: !2392)
!2398 = distinct !{!2398, !2394, !2396}
!2399 = !DILocation(line: 658, column: 43, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !268, line: 658, column: 29)
!2401 = distinct !DILexicalBlock(scope: !2119, file: !268, line: 658, column: 29)
!2402 = !DILocation(line: 655, column: 29, scope: !2120)
!2403 = !DILocation(line: 0, scope: !2119)
!2404 = !DILocation(line: 659, column: 49, scope: !2400)
!2405 = !DILocation(line: 659, column: 39, scope: !2400)
!2406 = !DILocation(line: 659, column: 31, scope: !2400)
!2407 = !DILocation(line: 658, column: 53, scope: !2400)
!2408 = !DILocation(line: 658, column: 29, scope: !2401)
!2409 = distinct !{!2409, !2408, !2410}
!2410 = !DILocation(line: 667, column: 33, scope: !2401)
!2411 = !DILocation(line: 674, column: 19, scope: !2109)
!2412 = !DILocation(line: 670, column: 41, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2121, file: !268, line: 670, column: 29)
!2414 = !DILocation(line: 670, column: 31, scope: !2413)
!2415 = !DILocation(line: 670, column: 29, scope: !2121)
!2416 = !DILocation(line: 672, column: 27, scope: !2121)
!2417 = !DILocation(line: 675, column: 26, scope: !2109)
!2418 = !DILocation(line: 675, column: 24, scope: !2109)
!2419 = !DILocation(line: 674, column: 19, scope: !2115)
!2420 = distinct !{!2420, !2382, !2421}
!2421 = !DILocation(line: 675, column: 44, scope: !2109)
!2422 = !DILocation(line: 676, column: 15, scope: !2110)
!2423 = !DILocation(line: 0, scope: !2110)
!2424 = !DILocation(line: 678, column: 40, scope: !2105)
!2425 = !DILocation(line: 680, column: 19, scope: !2127)
!2426 = !DILocation(line: 680, column: 45, scope: !2127)
!2427 = !DILocation(line: 680, column: 23, scope: !2127)
!2428 = !DILocation(line: 684, column: 33, scope: !2126)
!2429 = !DILocation(line: 0, scope: !2126)
!2430 = !DILocation(line: 686, column: 17, scope: !2126)
!2431 = !DILocation(line: 405, column: 12, scope: !2097)
!2432 = !DILocation(line: 688, column: 43, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !268, line: 688, column: 25)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !268, line: 687, column: 19)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !268, line: 686, column: 17)
!2436 = distinct !DILexicalBlock(scope: !2126, file: !268, line: 686, column: 17)
!2437 = !DILocation(line: 690, column: 25, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !268, line: 690, column: 25)
!2439 = distinct !DILexicalBlock(scope: !2433, file: !268, line: 689, column: 23)
!2440 = !DILocation(line: 690, column: 25, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !268, line: 690, column: 25)
!2442 = !DILocation(line: 690, column: 25, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !268, line: 690, column: 25)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !268, line: 690, column: 25)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !268, line: 690, column: 25)
!2446 = !DILocation(line: 690, column: 25, scope: !2444)
!2447 = !DILocation(line: 690, column: 25, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !268, line: 690, column: 25)
!2449 = distinct !DILexicalBlock(scope: !2445, file: !268, line: 690, column: 25)
!2450 = !DILocation(line: 690, column: 25, scope: !2449)
!2451 = !DILocation(line: 690, column: 25, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !268, line: 690, column: 25)
!2453 = distinct !DILexicalBlock(scope: !2445, file: !268, line: 690, column: 25)
!2454 = !DILocation(line: 690, column: 25, scope: !2453)
!2455 = !DILocation(line: 690, column: 25, scope: !2445)
!2456 = !DILocation(line: 690, column: 25, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !268, line: 690, column: 25)
!2458 = distinct !DILexicalBlock(scope: !2438, file: !268, line: 690, column: 25)
!2459 = !DILocation(line: 690, column: 25, scope: !2458)
!2460 = !DILocation(line: 691, column: 25, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !268, line: 691, column: 25)
!2462 = distinct !DILexicalBlock(scope: !2439, file: !268, line: 691, column: 25)
!2463 = !DILocation(line: 691, column: 25, scope: !2462)
!2464 = !DILocation(line: 692, column: 25, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !268, line: 692, column: 25)
!2466 = distinct !DILexicalBlock(scope: !2439, file: !268, line: 692, column: 25)
!2467 = !DILocation(line: 692, column: 25, scope: !2466)
!2468 = !DILocation(line: 693, column: 38, scope: !2439)
!2469 = !DILocation(line: 693, column: 33, scope: !2439)
!2470 = !DILocation(line: 694, column: 23, scope: !2439)
!2471 = !DILocation(line: 695, column: 30, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2433, file: !268, line: 695, column: 30)
!2473 = !DILocation(line: 695, column: 30, scope: !2433)
!2474 = !DILocation(line: 697, column: 25, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !268, line: 697, column: 25)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !268, line: 697, column: 25)
!2477 = distinct !DILexicalBlock(scope: !2472, file: !268, line: 696, column: 23)
!2478 = !DILocation(line: 697, column: 25, scope: !2476)
!2479 = !DILocation(line: 699, column: 23, scope: !2477)
!2480 = !DILocation(line: 700, column: 35, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2434, file: !268, line: 700, column: 25)
!2482 = !DILocation(line: 700, column: 30, scope: !2481)
!2483 = !DILocation(line: 700, column: 25, scope: !2434)
!2484 = !DILocation(line: 702, column: 21, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !268, line: 702, column: 21)
!2486 = distinct !DILexicalBlock(scope: !2434, file: !268, line: 702, column: 21)
!2487 = !DILocation(line: 702, column: 21, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !268, line: 702, column: 21)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !268, line: 702, column: 21)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !268, line: 702, column: 21)
!2491 = !DILocation(line: 702, column: 21, scope: !2489)
!2492 = !DILocation(line: 702, column: 21, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !268, line: 702, column: 21)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !268, line: 702, column: 21)
!2495 = !DILocation(line: 702, column: 21, scope: !2494)
!2496 = !DILocation(line: 702, column: 21, scope: !2490)
!2497 = !DILocation(line: 0, scope: !2434)
!2498 = !DILocation(line: 703, column: 21, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !268, line: 703, column: 21)
!2500 = distinct !DILexicalBlock(scope: !2434, file: !268, line: 703, column: 21)
!2501 = !DILocation(line: 703, column: 21, scope: !2500)
!2502 = !DILocation(line: 704, column: 25, scope: !2434)
!2503 = !DILocation(line: 686, column: 17, scope: !2435)
!2504 = distinct !{!2504, !2505, !2506}
!2505 = !DILocation(line: 686, column: 17, scope: !2436)
!2506 = !DILocation(line: 705, column: 19, scope: !2436)
!2507 = !DILocation(line: 416, column: 30, scope: !2206)
!2508 = !DILocation(line: 712, column: 34, scope: !2149)
!2509 = !DILocation(line: 715, column: 35, scope: !2149)
!2510 = !DILocation(line: 715, column: 17, scope: !2149)
!2511 = !DILocation(line: 715, column: 47, scope: !2149)
!2512 = !DILocation(line: 715, column: 65, scope: !2149)
!2513 = !DILocation(line: 716, column: 15, scope: !2149)
!2514 = !DILocation(line: 716, column: 11, scope: !2149)
!2515 = !DILocation(line: 712, column: 11, scope: !2097)
!2516 = !DILocation(line: 400, column: 10, scope: !2099)
!2517 = !DILocation(line: 719, column: 5, scope: !2097)
!2518 = !DILocation(line: 720, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2097, file: !268, line: 720, column: 7)
!2520 = !DILocation(line: 720, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2519, file: !268, line: 720, column: 7)
!2522 = !DILocation(line: 720, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !268, line: 720, column: 7)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !268, line: 720, column: 7)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !268, line: 720, column: 7)
!2526 = !DILocation(line: 720, column: 7, scope: !2524)
!2527 = !DILocation(line: 720, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !268, line: 720, column: 7)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !268, line: 720, column: 7)
!2530 = !DILocation(line: 720, column: 7, scope: !2529)
!2531 = !DILocation(line: 720, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !268, line: 720, column: 7)
!2533 = distinct !DILexicalBlock(scope: !2525, file: !268, line: 720, column: 7)
!2534 = !DILocation(line: 720, column: 7, scope: !2533)
!2535 = !DILocation(line: 720, column: 7, scope: !2525)
!2536 = !DILocation(line: 720, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !268, line: 720, column: 7)
!2538 = distinct !DILexicalBlock(scope: !2519, file: !268, line: 720, column: 7)
!2539 = !DILocation(line: 720, column: 7, scope: !2538)
!2540 = !DILocation(line: 722, column: 5, scope: !2097)
!2541 = !DILocation(line: 723, column: 7, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !268, line: 723, column: 7)
!2543 = distinct !DILexicalBlock(scope: !2097, file: !268, line: 723, column: 7)
!2544 = !DILocation(line: 424, column: 9, scope: !2097)
!2545 = !DILocation(line: 723, column: 7, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !268, line: 723, column: 7)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !268, line: 723, column: 7)
!2548 = distinct !DILexicalBlock(scope: !2542, file: !268, line: 723, column: 7)
!2549 = !DILocation(line: 723, column: 7, scope: !2547)
!2550 = !DILocation(line: 723, column: 7, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !268, line: 723, column: 7)
!2552 = distinct !DILexicalBlock(scope: !2548, file: !268, line: 723, column: 7)
!2553 = !DILocation(line: 723, column: 7, scope: !2552)
!2554 = !DILocation(line: 723, column: 7, scope: !2548)
!2555 = !DILocation(line: 724, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !268, line: 724, column: 7)
!2557 = distinct !DILexicalBlock(scope: !2097, file: !268, line: 724, column: 7)
!2558 = !DILocation(line: 724, column: 7, scope: !2557)
!2559 = !DILocation(line: 726, column: 13, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2097, file: !268, line: 726, column: 11)
!2561 = !DILocation(line: 726, column: 11, scope: !2097)
!2562 = !DILocation(line: 728, column: 5, scope: !2098)
!2563 = !DILocation(line: 400, column: 75, scope: !2098)
!2564 = !DILocation(line: 400, column: 3, scope: !2098)
!2565 = distinct !{!2565, !2224, !2566}
!2566 = !DILocation(line: 728, column: 5, scope: !2099)
!2567 = !DILocation(line: 730, column: 11, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2070, file: !268, line: 730, column: 7)
!2569 = !DILocation(line: 730, column: 16, scope: !2568)
!2570 = !DILocation(line: 738, column: 51, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2070, file: !268, line: 738, column: 7)
!2572 = !DILocation(line: 739, column: 10, scope: !2571)
!2573 = !DILocation(line: 741, column: 11, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !268, line: 741, column: 11)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !268, line: 740, column: 5)
!2576 = !DILocation(line: 741, column: 11, scope: !2575)
!2577 = !DILocation(line: 742, column: 16, scope: !2574)
!2578 = !DILocation(line: 742, column: 9, scope: !2574)
!2579 = !DILocation(line: 746, column: 18, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !268, line: 746, column: 16)
!2581 = !DILocation(line: 746, column: 32, scope: !2580)
!2582 = !DILocation(line: 746, column: 29, scope: !2580)
!2583 = !DILocation(line: 755, column: 7, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2070, file: !268, line: 755, column: 7)
!2585 = !DILocation(line: 755, column: 20, scope: !2584)
!2586 = !DILocation(line: 756, column: 12, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !268, line: 756, column: 5)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !268, line: 756, column: 5)
!2589 = !DILocation(line: 756, column: 5, scope: !2588)
!2590 = !DILocation(line: 757, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !268, line: 757, column: 7)
!2592 = distinct !DILexicalBlock(scope: !2587, file: !268, line: 757, column: 7)
!2593 = !DILocation(line: 757, column: 7, scope: !2592)
!2594 = !DILocation(line: 756, column: 39, scope: !2587)
!2595 = distinct !{!2595, !2589, !2596}
!2596 = !DILocation(line: 757, column: 7, scope: !2588)
!2597 = !DILocation(line: 759, column: 11, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2070, file: !268, line: 759, column: 7)
!2599 = !DILocation(line: 759, column: 7, scope: !2070)
!2600 = !DILocation(line: 760, column: 5, scope: !2598)
!2601 = !DILocation(line: 760, column: 17, scope: !2598)
!2602 = !DILocation(line: 763, column: 2, scope: !2070)
!2603 = !DILocation(line: 766, column: 51, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2070, file: !268, line: 766, column: 7)
!2605 = !DILocation(line: 766, column: 21, scope: !2604)
!2606 = !DILocation(line: 770, column: 42, scope: !2070)
!2607 = !DILocation(line: 768, column: 10, scope: !2070)
!2608 = !DILocation(line: 768, column: 3, scope: !2070)
!2609 = !DILocation(line: 772, column: 1, scope: !2070)
!2610 = distinct !DISubprogram(name: "gettext_quote", scope: !268, file: !268, line: 207, type: !2611, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!12, !12, !270}
!2613 = !{!2614, !2615, !2616, !2617}
!2614 = !DILocalVariable(name: "msgid", arg: 1, scope: !2610, file: !268, line: 207, type: !12)
!2615 = !DILocalVariable(name: "s", arg: 2, scope: !2610, file: !268, line: 207, type: !270)
!2616 = !DILocalVariable(name: "translation", scope: !2610, file: !268, line: 209, type: !12)
!2617 = !DILocalVariable(name: "locale_code", scope: !2610, file: !268, line: 210, type: !12)
!2618 = !DILocation(line: 0, scope: !2610)
!2619 = !DILocation(line: 209, column: 29, scope: !2610)
!2620 = !DILocation(line: 212, column: 19, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2610, file: !268, line: 212, column: 7)
!2622 = !DILocation(line: 212, column: 7, scope: !2610)
!2623 = !DILocation(line: 233, column: 17, scope: !2610)
!2624 = !DILocalVariable(name: "s1", arg: 1, scope: !2625, file: !2626, line: 160, type: !12)
!2625 = distinct !DISubprogram(name: "strcaseeq0", scope: !2626, file: !2626, line: 160, type: !2627, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2629)
!2626 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!2629 = !{!2624, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639}
!2630 = !DILocalVariable(name: "s2", arg: 2, scope: !2625, file: !2626, line: 160, type: !12)
!2631 = !DILocalVariable(name: "s20", arg: 3, scope: !2625, file: !2626, line: 160, type: !11)
!2632 = !DILocalVariable(name: "s21", arg: 4, scope: !2625, file: !2626, line: 160, type: !11)
!2633 = !DILocalVariable(name: "s22", arg: 5, scope: !2625, file: !2626, line: 160, type: !11)
!2634 = !DILocalVariable(name: "s23", arg: 6, scope: !2625, file: !2626, line: 160, type: !11)
!2635 = !DILocalVariable(name: "s24", arg: 7, scope: !2625, file: !2626, line: 160, type: !11)
!2636 = !DILocalVariable(name: "s25", arg: 8, scope: !2625, file: !2626, line: 160, type: !11)
!2637 = !DILocalVariable(name: "s26", arg: 9, scope: !2625, file: !2626, line: 160, type: !11)
!2638 = !DILocalVariable(name: "s27", arg: 10, scope: !2625, file: !2626, line: 160, type: !11)
!2639 = !DILocalVariable(name: "s28", arg: 11, scope: !2625, file: !2626, line: 160, type: !11)
!2640 = !DILocation(line: 0, scope: !2625, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 234, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2610, file: !268, line: 234, column: 7)
!2643 = !DILocation(line: 162, column: 7, scope: !2644, inlinedAt: !2641)
!2644 = distinct !DILexicalBlock(scope: !2625, file: !2626, line: 162, column: 7)
!2645 = !DILocalVariable(name: "s1", arg: 1, scope: !2646, file: !2626, line: 146, type: !12)
!2646 = distinct !DISubprogram(name: "strcaseeq1", scope: !2626, file: !2626, line: 146, type: !2647, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11}
!2649 = !{!2645, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658}
!2650 = !DILocalVariable(name: "s2", arg: 2, scope: !2646, file: !2626, line: 146, type: !12)
!2651 = !DILocalVariable(name: "s21", arg: 3, scope: !2646, file: !2626, line: 146, type: !11)
!2652 = !DILocalVariable(name: "s22", arg: 4, scope: !2646, file: !2626, line: 146, type: !11)
!2653 = !DILocalVariable(name: "s23", arg: 5, scope: !2646, file: !2626, line: 146, type: !11)
!2654 = !DILocalVariable(name: "s24", arg: 6, scope: !2646, file: !2626, line: 146, type: !11)
!2655 = !DILocalVariable(name: "s25", arg: 7, scope: !2646, file: !2626, line: 146, type: !11)
!2656 = !DILocalVariable(name: "s26", arg: 8, scope: !2646, file: !2626, line: 146, type: !11)
!2657 = !DILocalVariable(name: "s27", arg: 9, scope: !2646, file: !2626, line: 146, type: !11)
!2658 = !DILocalVariable(name: "s28", arg: 10, scope: !2646, file: !2626, line: 146, type: !11)
!2659 = !DILocation(line: 0, scope: !2646, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 167, column: 16, scope: !2661, inlinedAt: !2641)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !2626, line: 164, column: 11)
!2662 = distinct !DILexicalBlock(scope: !2644, file: !2626, line: 163, column: 5)
!2663 = !DILocation(line: 148, column: 7, scope: !2664, inlinedAt: !2660)
!2664 = distinct !DILexicalBlock(scope: !2646, file: !2626, line: 148, column: 7)
!2665 = !DILocalVariable(name: "s1", arg: 1, scope: !2666, file: !2626, line: 132, type: !12)
!2666 = distinct !DISubprogram(name: "strcaseeq2", scope: !2626, file: !2626, line: 132, type: !2667, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11}
!2669 = !{!2665, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677}
!2670 = !DILocalVariable(name: "s2", arg: 2, scope: !2666, file: !2626, line: 132, type: !12)
!2671 = !DILocalVariable(name: "s22", arg: 3, scope: !2666, file: !2626, line: 132, type: !11)
!2672 = !DILocalVariable(name: "s23", arg: 4, scope: !2666, file: !2626, line: 132, type: !11)
!2673 = !DILocalVariable(name: "s24", arg: 5, scope: !2666, file: !2626, line: 132, type: !11)
!2674 = !DILocalVariable(name: "s25", arg: 6, scope: !2666, file: !2626, line: 132, type: !11)
!2675 = !DILocalVariable(name: "s26", arg: 7, scope: !2666, file: !2626, line: 132, type: !11)
!2676 = !DILocalVariable(name: "s27", arg: 8, scope: !2666, file: !2626, line: 132, type: !11)
!2677 = !DILocalVariable(name: "s28", arg: 9, scope: !2666, file: !2626, line: 132, type: !11)
!2678 = !DILocation(line: 0, scope: !2666, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 153, column: 16, scope: !2680, inlinedAt: !2660)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !2626, line: 150, column: 11)
!2681 = distinct !DILexicalBlock(scope: !2664, file: !2626, line: 149, column: 5)
!2682 = !DILocation(line: 134, column: 7, scope: !2683, inlinedAt: !2679)
!2683 = distinct !DILexicalBlock(scope: !2666, file: !2626, line: 134, column: 7)
!2684 = !DILocalVariable(name: "s1", arg: 1, scope: !2685, file: !2626, line: 118, type: !12)
!2685 = distinct !DISubprogram(name: "strcaseeq3", scope: !2626, file: !2626, line: 118, type: !2686, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11}
!2688 = !{!2684, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2689 = !DILocalVariable(name: "s2", arg: 2, scope: !2685, file: !2626, line: 118, type: !12)
!2690 = !DILocalVariable(name: "s23", arg: 3, scope: !2685, file: !2626, line: 118, type: !11)
!2691 = !DILocalVariable(name: "s24", arg: 4, scope: !2685, file: !2626, line: 118, type: !11)
!2692 = !DILocalVariable(name: "s25", arg: 5, scope: !2685, file: !2626, line: 118, type: !11)
!2693 = !DILocalVariable(name: "s26", arg: 6, scope: !2685, file: !2626, line: 118, type: !11)
!2694 = !DILocalVariable(name: "s27", arg: 7, scope: !2685, file: !2626, line: 118, type: !11)
!2695 = !DILocalVariable(name: "s28", arg: 8, scope: !2685, file: !2626, line: 118, type: !11)
!2696 = !DILocation(line: 0, scope: !2685, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 139, column: 16, scope: !2698, inlinedAt: !2679)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !2626, line: 136, column: 11)
!2699 = distinct !DILexicalBlock(scope: !2683, file: !2626, line: 135, column: 5)
!2700 = !DILocation(line: 120, column: 7, scope: !2701, inlinedAt: !2697)
!2701 = distinct !DILexicalBlock(scope: !2685, file: !2626, line: 120, column: 7)
!2702 = !DILocation(line: 120, column: 7, scope: !2685, inlinedAt: !2697)
!2703 = !DILocalVariable(name: "s1", arg: 1, scope: !2704, file: !2626, line: 104, type: !12)
!2704 = distinct !DISubprogram(name: "strcaseeq4", scope: !2626, file: !2626, line: 104, type: !2705, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!14, !12, !12, !11, !11, !11, !11, !11}
!2707 = !{!2703, !2708, !2709, !2710, !2711, !2712, !2713}
!2708 = !DILocalVariable(name: "s2", arg: 2, scope: !2704, file: !2626, line: 104, type: !12)
!2709 = !DILocalVariable(name: "s24", arg: 3, scope: !2704, file: !2626, line: 104, type: !11)
!2710 = !DILocalVariable(name: "s25", arg: 4, scope: !2704, file: !2626, line: 104, type: !11)
!2711 = !DILocalVariable(name: "s26", arg: 5, scope: !2704, file: !2626, line: 104, type: !11)
!2712 = !DILocalVariable(name: "s27", arg: 6, scope: !2704, file: !2626, line: 104, type: !11)
!2713 = !DILocalVariable(name: "s28", arg: 7, scope: !2704, file: !2626, line: 104, type: !11)
!2714 = !DILocation(line: 0, scope: !2704, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 125, column: 16, scope: !2716, inlinedAt: !2697)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !2626, line: 122, column: 11)
!2717 = distinct !DILexicalBlock(scope: !2701, file: !2626, line: 121, column: 5)
!2718 = !DILocation(line: 106, column: 7, scope: !2719, inlinedAt: !2715)
!2719 = distinct !DILexicalBlock(scope: !2704, file: !2626, line: 106, column: 7)
!2720 = !DILocation(line: 106, column: 7, scope: !2704, inlinedAt: !2715)
!2721 = !DILocalVariable(name: "s1", arg: 1, scope: !2722, file: !2626, line: 90, type: !12)
!2722 = distinct !DISubprogram(name: "strcaseeq5", scope: !2626, file: !2626, line: 90, type: !2723, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!14, !12, !12, !11, !11, !11, !11}
!2725 = !{!2721, !2726, !2727, !2728, !2729, !2730}
!2726 = !DILocalVariable(name: "s2", arg: 2, scope: !2722, file: !2626, line: 90, type: !12)
!2727 = !DILocalVariable(name: "s25", arg: 3, scope: !2722, file: !2626, line: 90, type: !11)
!2728 = !DILocalVariable(name: "s26", arg: 4, scope: !2722, file: !2626, line: 90, type: !11)
!2729 = !DILocalVariable(name: "s27", arg: 5, scope: !2722, file: !2626, line: 90, type: !11)
!2730 = !DILocalVariable(name: "s28", arg: 6, scope: !2722, file: !2626, line: 90, type: !11)
!2731 = !DILocation(line: 0, scope: !2722, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 111, column: 16, scope: !2733, inlinedAt: !2715)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !2626, line: 108, column: 11)
!2734 = distinct !DILexicalBlock(scope: !2719, file: !2626, line: 107, column: 5)
!2735 = !DILocation(line: 92, column: 7, scope: !2736, inlinedAt: !2732)
!2736 = distinct !DILexicalBlock(scope: !2722, file: !2626, line: 92, column: 7)
!2737 = !DILocation(line: 92, column: 7, scope: !2722, inlinedAt: !2732)
!2738 = !DILocation(line: 235, column: 12, scope: !2642)
!2739 = !DILocation(line: 235, column: 21, scope: !2642)
!2740 = !DILocation(line: 235, column: 5, scope: !2642)
!2741 = !DILocation(line: 0, scope: !2646, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 167, column: 16, scope: !2661, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 236, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2610, file: !268, line: 236, column: 7)
!2745 = !DILocation(line: 148, column: 7, scope: !2664, inlinedAt: !2742)
!2746 = !DILocation(line: 0, scope: !2666, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 153, column: 16, scope: !2680, inlinedAt: !2742)
!2748 = !DILocation(line: 134, column: 7, scope: !2683, inlinedAt: !2747)
!2749 = !DILocation(line: 134, column: 7, scope: !2666, inlinedAt: !2747)
!2750 = !DILocation(line: 0, scope: !2685, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 139, column: 16, scope: !2698, inlinedAt: !2747)
!2752 = !DILocation(line: 120, column: 7, scope: !2701, inlinedAt: !2751)
!2753 = !DILocation(line: 120, column: 7, scope: !2685, inlinedAt: !2751)
!2754 = !DILocation(line: 0, scope: !2704, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 125, column: 16, scope: !2716, inlinedAt: !2751)
!2756 = !DILocation(line: 106, column: 7, scope: !2719, inlinedAt: !2755)
!2757 = !DILocation(line: 106, column: 7, scope: !2704, inlinedAt: !2755)
!2758 = !DILocation(line: 0, scope: !2722, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 111, column: 16, scope: !2733, inlinedAt: !2755)
!2760 = !DILocation(line: 92, column: 7, scope: !2736, inlinedAt: !2759)
!2761 = !DILocation(line: 92, column: 7, scope: !2722, inlinedAt: !2759)
!2762 = !DILocalVariable(name: "s1", arg: 1, scope: !2763, file: !2626, line: 76, type: !12)
!2763 = distinct !DISubprogram(name: "strcaseeq6", scope: !2626, file: !2626, line: 76, type: !2764, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!14, !12, !12, !11, !11, !11}
!2766 = !{!2762, !2767, !2768, !2769, !2770}
!2767 = !DILocalVariable(name: "s2", arg: 2, scope: !2763, file: !2626, line: 76, type: !12)
!2768 = !DILocalVariable(name: "s26", arg: 3, scope: !2763, file: !2626, line: 76, type: !11)
!2769 = !DILocalVariable(name: "s27", arg: 4, scope: !2763, file: !2626, line: 76, type: !11)
!2770 = !DILocalVariable(name: "s28", arg: 5, scope: !2763, file: !2626, line: 76, type: !11)
!2771 = !DILocation(line: 0, scope: !2763, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 97, column: 16, scope: !2773, inlinedAt: !2759)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !2626, line: 94, column: 11)
!2774 = distinct !DILexicalBlock(scope: !2736, file: !2626, line: 93, column: 5)
!2775 = !DILocation(line: 78, column: 7, scope: !2776, inlinedAt: !2772)
!2776 = distinct !DILexicalBlock(scope: !2763, file: !2626, line: 78, column: 7)
!2777 = !DILocation(line: 78, column: 7, scope: !2763, inlinedAt: !2772)
!2778 = !DILocalVariable(name: "s1", arg: 1, scope: !2779, file: !2626, line: 62, type: !12)
!2779 = distinct !DISubprogram(name: "strcaseeq7", scope: !2626, file: !2626, line: 62, type: !2780, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!14, !12, !12, !11, !11}
!2782 = !{!2778, !2783, !2784, !2785}
!2783 = !DILocalVariable(name: "s2", arg: 2, scope: !2779, file: !2626, line: 62, type: !12)
!2784 = !DILocalVariable(name: "s27", arg: 3, scope: !2779, file: !2626, line: 62, type: !11)
!2785 = !DILocalVariable(name: "s28", arg: 4, scope: !2779, file: !2626, line: 62, type: !11)
!2786 = !DILocation(line: 0, scope: !2779, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 83, column: 16, scope: !2788, inlinedAt: !2772)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !2626, line: 80, column: 11)
!2789 = distinct !DILexicalBlock(scope: !2776, file: !2626, line: 79, column: 5)
!2790 = !DILocation(line: 64, column: 7, scope: !2791, inlinedAt: !2787)
!2791 = distinct !DILexicalBlock(scope: !2779, file: !2626, line: 64, column: 7)
!2792 = !DILocation(line: 236, column: 7, scope: !2610)
!2793 = !DILocation(line: 237, column: 12, scope: !2744)
!2794 = !DILocation(line: 237, column: 21, scope: !2744)
!2795 = !DILocation(line: 237, column: 5, scope: !2744)
!2796 = !DILocation(line: 239, column: 13, scope: !2610)
!2797 = !DILocation(line: 239, column: 11, scope: !2610)
!2798 = !DILocation(line: 239, column: 3, scope: !2610)
!2799 = !DILocation(line: 240, column: 1, scope: !2610)
!2800 = distinct !DISubprogram(name: "quotearg_alloc", scope: !268, file: !268, line: 799, type: !2801, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!10, !12, !68, !314}
!2803 = !{!2804, !2805, !2806}
!2804 = !DILocalVariable(name: "arg", arg: 1, scope: !2800, file: !268, line: 799, type: !12)
!2805 = !DILocalVariable(name: "argsize", arg: 2, scope: !2800, file: !268, line: 799, type: !68)
!2806 = !DILocalVariable(name: "o", arg: 3, scope: !2800, file: !268, line: 800, type: !314)
!2807 = !DILocation(line: 0, scope: !2800)
!2808 = !DILocalVariable(name: "arg", arg: 1, scope: !2809, file: !268, line: 812, type: !12)
!2809 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !268, file: !268, line: 812, type: !2810, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!10, !12, !68, !557, !314}
!2812 = !{!2808, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2813 = !DILocalVariable(name: "argsize", arg: 2, scope: !2809, file: !268, line: 812, type: !68)
!2814 = !DILocalVariable(name: "size", arg: 3, scope: !2809, file: !268, line: 812, type: !557)
!2815 = !DILocalVariable(name: "o", arg: 4, scope: !2809, file: !268, line: 813, type: !314)
!2816 = !DILocalVariable(name: "p", scope: !2809, file: !268, line: 815, type: !314)
!2817 = !DILocalVariable(name: "e", scope: !2809, file: !268, line: 816, type: !14)
!2818 = !DILocalVariable(name: "flags", scope: !2809, file: !268, line: 818, type: !14)
!2819 = !DILocalVariable(name: "bufsize", scope: !2809, file: !268, line: 819, type: !68)
!2820 = !DILocalVariable(name: "buf", scope: !2809, file: !268, line: 823, type: !10)
!2821 = !DILocation(line: 0, scope: !2809, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 802, column: 10, scope: !2800)
!2823 = !DILocation(line: 815, column: 37, scope: !2809, inlinedAt: !2822)
!2824 = !DILocation(line: 816, column: 11, scope: !2809, inlinedAt: !2822)
!2825 = !DILocation(line: 818, column: 18, scope: !2809, inlinedAt: !2822)
!2826 = !DILocation(line: 818, column: 24, scope: !2809, inlinedAt: !2822)
!2827 = !DILocation(line: 819, column: 69, scope: !2809, inlinedAt: !2822)
!2828 = !DILocation(line: 820, column: 53, scope: !2809, inlinedAt: !2822)
!2829 = !DILocation(line: 821, column: 49, scope: !2809, inlinedAt: !2822)
!2830 = !DILocation(line: 822, column: 49, scope: !2809, inlinedAt: !2822)
!2831 = !DILocation(line: 819, column: 20, scope: !2809, inlinedAt: !2822)
!2832 = !DILocation(line: 822, column: 62, scope: !2809, inlinedAt: !2822)
!2833 = !DILocalVariable(name: "n", arg: 1, scope: !2834, file: !125, line: 216, type: !68)
!2834 = distinct !DISubprogram(name: "xcharalloc", scope: !125, file: !125, line: 216, type: !1506, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2835)
!2835 = !{!2833}
!2836 = !DILocation(line: 0, scope: !2834, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 823, column: 15, scope: !2809, inlinedAt: !2822)
!2838 = !DILocation(line: 218, column: 10, scope: !2834, inlinedAt: !2837)
!2839 = !DILocation(line: 824, column: 60, scope: !2809, inlinedAt: !2822)
!2840 = !DILocation(line: 826, column: 32, scope: !2809, inlinedAt: !2822)
!2841 = !DILocation(line: 826, column: 47, scope: !2809, inlinedAt: !2822)
!2842 = !DILocation(line: 824, column: 3, scope: !2809, inlinedAt: !2822)
!2843 = !DILocation(line: 827, column: 9, scope: !2809, inlinedAt: !2822)
!2844 = !DILocation(line: 802, column: 3, scope: !2800)
!2845 = !DILocation(line: 0, scope: !2809)
!2846 = !DILocation(line: 815, column: 37, scope: !2809)
!2847 = !DILocation(line: 816, column: 11, scope: !2809)
!2848 = !DILocation(line: 818, column: 18, scope: !2809)
!2849 = !DILocation(line: 818, column: 27, scope: !2809)
!2850 = !DILocation(line: 818, column: 24, scope: !2809)
!2851 = !DILocation(line: 819, column: 69, scope: !2809)
!2852 = !DILocation(line: 820, column: 53, scope: !2809)
!2853 = !DILocation(line: 821, column: 49, scope: !2809)
!2854 = !DILocation(line: 822, column: 49, scope: !2809)
!2855 = !DILocation(line: 819, column: 20, scope: !2809)
!2856 = !DILocation(line: 822, column: 62, scope: !2809)
!2857 = !DILocation(line: 0, scope: !2834, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 823, column: 15, scope: !2809)
!2859 = !DILocation(line: 218, column: 10, scope: !2834, inlinedAt: !2858)
!2860 = !DILocation(line: 824, column: 60, scope: !2809)
!2861 = !DILocation(line: 826, column: 32, scope: !2809)
!2862 = !DILocation(line: 826, column: 47, scope: !2809)
!2863 = !DILocation(line: 824, column: 3, scope: !2809)
!2864 = !DILocation(line: 827, column: 9, scope: !2809)
!2865 = !DILocation(line: 828, column: 7, scope: !2809)
!2866 = !DILocation(line: 829, column: 11, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2809, file: !268, line: 828, column: 7)
!2868 = !{!1721, !1721, i64 0}
!2869 = !DILocation(line: 829, column: 5, scope: !2867)
!2870 = !DILocation(line: 830, column: 3, scope: !2809)
!2871 = distinct !DISubprogram(name: "quotearg_free", scope: !268, file: !268, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2872)
!2872 = !{!2873, !2874}
!2873 = !DILocalVariable(name: "sv", scope: !2871, file: !268, line: 850, type: !384)
!2874 = !DILocalVariable(name: "i", scope: !2871, file: !268, line: 851, type: !14)
!2875 = !DILocation(line: 850, column: 24, scope: !2871)
!2876 = !DILocation(line: 0, scope: !2871)
!2877 = !DILocation(line: 852, column: 19, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !268, line: 852, column: 3)
!2879 = distinct !DILexicalBlock(scope: !2871, file: !268, line: 852, column: 3)
!2880 = !DILocation(line: 852, column: 17, scope: !2878)
!2881 = !DILocation(line: 852, column: 3, scope: !2879)
!2882 = !DILocation(line: 853, column: 17, scope: !2878)
!2883 = !{!2884, !1362, i64 8}
!2884 = !{!"slotvec", !1721, i64 0, !1362, i64 8}
!2885 = !DILocation(line: 853, column: 5, scope: !2878)
!2886 = !DILocation(line: 852, column: 28, scope: !2878)
!2887 = distinct !{!2887, !2881, !2888}
!2888 = !DILocation(line: 853, column: 20, scope: !2879)
!2889 = !DILocation(line: 854, column: 13, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2871, file: !268, line: 854, column: 7)
!2891 = !DILocation(line: 854, column: 17, scope: !2890)
!2892 = !DILocation(line: 854, column: 7, scope: !2871)
!2893 = !DILocation(line: 856, column: 7, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !268, line: 855, column: 5)
!2895 = !DILocation(line: 857, column: 21, scope: !2894)
!2896 = !{!2884, !1721, i64 0}
!2897 = !DILocation(line: 858, column: 20, scope: !2894)
!2898 = !DILocation(line: 859, column: 5, scope: !2894)
!2899 = !DILocation(line: 860, column: 10, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2871, file: !268, line: 860, column: 7)
!2901 = !DILocation(line: 860, column: 7, scope: !2871)
!2902 = !DILocation(line: 862, column: 13, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2900, file: !268, line: 861, column: 5)
!2904 = !DILocation(line: 862, column: 7, scope: !2903)
!2905 = !DILocation(line: 863, column: 15, scope: !2903)
!2906 = !DILocation(line: 864, column: 5, scope: !2903)
!2907 = !DILocation(line: 865, column: 10, scope: !2871)
!2908 = !DILocation(line: 866, column: 1, scope: !2871)
!2909 = distinct !DISubprogram(name: "quotearg_n", scope: !268, file: !268, line: 931, type: !82, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2910)
!2910 = !{!2911, !2912}
!2911 = !DILocalVariable(name: "n", arg: 1, scope: !2909, file: !268, line: 931, type: !14)
!2912 = !DILocalVariable(name: "arg", arg: 2, scope: !2909, file: !268, line: 931, type: !12)
!2913 = !DILocation(line: 0, scope: !2909)
!2914 = !DILocation(line: 933, column: 10, scope: !2909)
!2915 = !DILocation(line: 933, column: 3, scope: !2909)
!2916 = distinct !DISubprogram(name: "quotearg_n_options", scope: !268, file: !268, line: 877, type: !2917, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!10, !14, !12, !68, !314}
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2929, !2930, !2932, !2933, !2934}
!2920 = !DILocalVariable(name: "n", arg: 1, scope: !2916, file: !268, line: 877, type: !14)
!2921 = !DILocalVariable(name: "arg", arg: 2, scope: !2916, file: !268, line: 877, type: !12)
!2922 = !DILocalVariable(name: "argsize", arg: 3, scope: !2916, file: !268, line: 877, type: !68)
!2923 = !DILocalVariable(name: "options", arg: 4, scope: !2916, file: !268, line: 878, type: !314)
!2924 = !DILocalVariable(name: "e", scope: !2916, file: !268, line: 880, type: !14)
!2925 = !DILocalVariable(name: "sv", scope: !2916, file: !268, line: 882, type: !384)
!2926 = !DILocalVariable(name: "preallocated", scope: !2927, file: !268, line: 889, type: !161)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !268, line: 888, column: 5)
!2928 = distinct !DILexicalBlock(scope: !2916, file: !268, line: 887, column: 7)
!2929 = !DILocalVariable(name: "nmax", scope: !2927, file: !268, line: 890, type: !14)
!2930 = !DILocalVariable(name: "size", scope: !2931, file: !268, line: 903, type: !68)
!2931 = distinct !DILexicalBlock(scope: !2916, file: !268, line: 902, column: 3)
!2932 = !DILocalVariable(name: "val", scope: !2931, file: !268, line: 904, type: !10)
!2933 = !DILocalVariable(name: "flags", scope: !2931, file: !268, line: 906, type: !14)
!2934 = !DILocalVariable(name: "qsize", scope: !2931, file: !268, line: 907, type: !68)
!2935 = !DILocation(line: 0, scope: !2916)
!2936 = !DILocation(line: 880, column: 11, scope: !2916)
!2937 = !DILocation(line: 882, column: 24, scope: !2916)
!2938 = !DILocation(line: 884, column: 9, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2916, file: !268, line: 884, column: 7)
!2940 = !DILocation(line: 884, column: 7, scope: !2916)
!2941 = !DILocation(line: 885, column: 5, scope: !2939)
!2942 = !DILocation(line: 887, column: 7, scope: !2928)
!2943 = !DILocation(line: 887, column: 14, scope: !2928)
!2944 = !DILocation(line: 887, column: 7, scope: !2916)
!2945 = !DILocation(line: 889, column: 31, scope: !2927)
!2946 = !DILocation(line: 0, scope: !2927)
!2947 = !DILocation(line: 892, column: 16, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2927, file: !268, line: 892, column: 11)
!2949 = !DILocation(line: 892, column: 11, scope: !2927)
!2950 = !DILocation(line: 893, column: 9, scope: !2948)
!2951 = !DILocation(line: 895, column: 32, scope: !2927)
!2952 = !DILocation(line: 895, column: 61, scope: !2927)
!2953 = !DILocation(line: 895, column: 58, scope: !2927)
!2954 = !DILocation(line: 895, column: 66, scope: !2927)
!2955 = !DILocation(line: 895, column: 22, scope: !2927)
!2956 = !DILocation(line: 895, column: 15, scope: !2927)
!2957 = !DILocation(line: 896, column: 11, scope: !2927)
!2958 = !DILocation(line: 897, column: 15, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2927, file: !268, line: 896, column: 11)
!2960 = !{i64 0, i64 8, !2868, i64 8, i64 8, !1361}
!2961 = !DILocation(line: 897, column: 9, scope: !2959)
!2962 = !DILocation(line: 898, column: 20, scope: !2927)
!2963 = !DILocation(line: 898, column: 18, scope: !2927)
!2964 = !DILocation(line: 898, column: 15, scope: !2927)
!2965 = !DILocation(line: 898, column: 38, scope: !2927)
!2966 = !DILocation(line: 898, column: 31, scope: !2927)
!2967 = !DILocation(line: 898, column: 48, scope: !2927)
!2968 = !DILocation(line: 0, scope: !2368, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 898, column: 7, scope: !2927)
!2970 = !DILocation(line: 71, column: 10, scope: !2368, inlinedAt: !2969)
!2971 = !DILocation(line: 899, column: 14, scope: !2927)
!2972 = !DILocation(line: 900, column: 5, scope: !2927)
!2973 = !DILocation(line: 903, column: 19, scope: !2931)
!2974 = !DILocation(line: 903, column: 25, scope: !2931)
!2975 = !DILocation(line: 0, scope: !2931)
!2976 = !DILocation(line: 904, column: 23, scope: !2931)
!2977 = !DILocation(line: 906, column: 26, scope: !2931)
!2978 = !DILocation(line: 906, column: 32, scope: !2931)
!2979 = !DILocation(line: 908, column: 55, scope: !2931)
!2980 = !DILocation(line: 909, column: 46, scope: !2931)
!2981 = !DILocation(line: 910, column: 55, scope: !2931)
!2982 = !DILocation(line: 911, column: 55, scope: !2931)
!2983 = !DILocation(line: 907, column: 20, scope: !2931)
!2984 = !DILocation(line: 913, column: 14, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2931, file: !268, line: 913, column: 9)
!2986 = !DILocation(line: 913, column: 9, scope: !2931)
!2987 = !DILocation(line: 915, column: 35, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2985, file: !268, line: 914, column: 7)
!2989 = !DILocation(line: 915, column: 20, scope: !2988)
!2990 = !DILocation(line: 916, column: 17, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2988, file: !268, line: 916, column: 13)
!2992 = !DILocation(line: 916, column: 13, scope: !2988)
!2993 = !DILocation(line: 917, column: 11, scope: !2991)
!2994 = !DILocation(line: 0, scope: !2834, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 918, column: 27, scope: !2988)
!2996 = !DILocation(line: 218, column: 10, scope: !2834, inlinedAt: !2995)
!2997 = !DILocation(line: 918, column: 19, scope: !2988)
!2998 = !DILocation(line: 919, column: 69, scope: !2988)
!2999 = !DILocation(line: 921, column: 44, scope: !2988)
!3000 = !DILocation(line: 922, column: 44, scope: !2988)
!3001 = !DILocation(line: 919, column: 9, scope: !2988)
!3002 = !DILocation(line: 923, column: 7, scope: !2988)
!3003 = !DILocation(line: 925, column: 11, scope: !2931)
!3004 = !DILocation(line: 926, column: 5, scope: !2931)
!3005 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !268, file: !268, line: 937, type: !3006, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!10, !14, !12, !68}
!3008 = !{!3009, !3010, !3011}
!3009 = !DILocalVariable(name: "n", arg: 1, scope: !3005, file: !268, line: 937, type: !14)
!3010 = !DILocalVariable(name: "arg", arg: 2, scope: !3005, file: !268, line: 937, type: !12)
!3011 = !DILocalVariable(name: "argsize", arg: 3, scope: !3005, file: !268, line: 937, type: !68)
!3012 = !DILocation(line: 0, scope: !3005)
!3013 = !DILocation(line: 939, column: 10, scope: !3005)
!3014 = !DILocation(line: 939, column: 3, scope: !3005)
!3015 = distinct !DISubprogram(name: "quotearg", scope: !268, file: !268, line: 943, type: !88, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3016)
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "arg", arg: 1, scope: !3015, file: !268, line: 943, type: !12)
!3018 = !DILocation(line: 0, scope: !3015)
!3019 = !DILocation(line: 0, scope: !2909, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 945, column: 10, scope: !3015)
!3021 = !DILocation(line: 933, column: 10, scope: !2909, inlinedAt: !3020)
!3022 = !DILocation(line: 945, column: 3, scope: !3015)
!3023 = distinct !DISubprogram(name: "quotearg_mem", scope: !268, file: !268, line: 949, type: !3024, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!10, !12, !68}
!3026 = !{!3027, !3028}
!3027 = !DILocalVariable(name: "arg", arg: 1, scope: !3023, file: !268, line: 949, type: !12)
!3028 = !DILocalVariable(name: "argsize", arg: 2, scope: !3023, file: !268, line: 949, type: !68)
!3029 = !DILocation(line: 0, scope: !3023)
!3030 = !DILocation(line: 0, scope: !3005, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 951, column: 10, scope: !3023)
!3032 = !DILocation(line: 939, column: 10, scope: !3005, inlinedAt: !3031)
!3033 = !DILocation(line: 951, column: 3, scope: !3023)
!3034 = distinct !DISubprogram(name: "quotearg_n_style", scope: !268, file: !268, line: 955, type: !3035, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!10, !14, !270, !12}
!3037 = !{!3038, !3039, !3040, !3041}
!3038 = !DILocalVariable(name: "n", arg: 1, scope: !3034, file: !268, line: 955, type: !14)
!3039 = !DILocalVariable(name: "s", arg: 2, scope: !3034, file: !268, line: 955, type: !270)
!3040 = !DILocalVariable(name: "arg", arg: 3, scope: !3034, file: !268, line: 955, type: !12)
!3041 = !DILocalVariable(name: "o", scope: !3034, file: !268, line: 957, type: !315)
!3042 = !DILocation(line: 0, scope: !3034)
!3043 = !DILocation(line: 957, column: 3, scope: !3034)
!3044 = !DILocation(line: 957, column: 32, scope: !3034)
!3045 = !DILocalVariable(name: "style", arg: 1, scope: !3046, file: !268, line: 193, type: !270)
!3046 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !268, file: !268, line: 193, type: !3047, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!316, !270}
!3049 = !{!3045, !3050}
!3050 = !DILocalVariable(name: "o", scope: !3046, file: !268, line: 195, type: !316)
!3051 = !DILocation(line: 0, scope: !3046, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 957, column: 36, scope: !3034)
!3053 = !DILocation(line: 195, column: 26, scope: !3046, inlinedAt: !3052)
!3054 = !{!3055}
!3055 = distinct !{!3055, !3056, !"quoting_options_from_style: argument 0"}
!3056 = distinct !{!3056, !"quoting_options_from_style"}
!3057 = !DILocation(line: 196, column: 13, scope: !3058, inlinedAt: !3052)
!3058 = distinct !DILexicalBlock(scope: !3046, file: !268, line: 196, column: 7)
!3059 = !DILocation(line: 196, column: 7, scope: !3046, inlinedAt: !3052)
!3060 = !DILocation(line: 197, column: 5, scope: !3058, inlinedAt: !3052)
!3061 = !DILocation(line: 198, column: 5, scope: !3046, inlinedAt: !3052)
!3062 = !DILocation(line: 198, column: 11, scope: !3046, inlinedAt: !3052)
!3063 = !DILocation(line: 958, column: 10, scope: !3034)
!3064 = !DILocation(line: 959, column: 1, scope: !3034)
!3065 = !DILocation(line: 958, column: 3, scope: !3034)
!3066 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !268, file: !268, line: 962, type: !3067, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!10, !14, !270, !12, !68}
!3069 = !{!3070, !3071, !3072, !3073, !3074}
!3070 = !DILocalVariable(name: "n", arg: 1, scope: !3066, file: !268, line: 962, type: !14)
!3071 = !DILocalVariable(name: "s", arg: 2, scope: !3066, file: !268, line: 962, type: !270)
!3072 = !DILocalVariable(name: "arg", arg: 3, scope: !3066, file: !268, line: 963, type: !12)
!3073 = !DILocalVariable(name: "argsize", arg: 4, scope: !3066, file: !268, line: 963, type: !68)
!3074 = !DILocalVariable(name: "o", scope: !3066, file: !268, line: 965, type: !315)
!3075 = !DILocation(line: 0, scope: !3066)
!3076 = !DILocation(line: 965, column: 3, scope: !3066)
!3077 = !DILocation(line: 965, column: 32, scope: !3066)
!3078 = !DILocation(line: 0, scope: !3046, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 965, column: 36, scope: !3066)
!3080 = !DILocation(line: 195, column: 26, scope: !3046, inlinedAt: !3079)
!3081 = !{!3082}
!3082 = distinct !{!3082, !3083, !"quoting_options_from_style: argument 0"}
!3083 = distinct !{!3083, !"quoting_options_from_style"}
!3084 = !DILocation(line: 196, column: 13, scope: !3058, inlinedAt: !3079)
!3085 = !DILocation(line: 196, column: 7, scope: !3046, inlinedAt: !3079)
!3086 = !DILocation(line: 197, column: 5, scope: !3058, inlinedAt: !3079)
!3087 = !DILocation(line: 198, column: 5, scope: !3046, inlinedAt: !3079)
!3088 = !DILocation(line: 198, column: 11, scope: !3046, inlinedAt: !3079)
!3089 = !DILocation(line: 966, column: 10, scope: !3066)
!3090 = !DILocation(line: 967, column: 1, scope: !3066)
!3091 = !DILocation(line: 966, column: 3, scope: !3066)
!3092 = distinct !DISubprogram(name: "quotearg_style", scope: !268, file: !268, line: 970, type: !3093, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!10, !270, !12}
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "s", arg: 1, scope: !3092, file: !268, line: 970, type: !270)
!3097 = !DILocalVariable(name: "arg", arg: 2, scope: !3092, file: !268, line: 970, type: !12)
!3098 = !DILocation(line: 195, column: 26, scope: !3046, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 957, column: 36, scope: !3034, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 972, column: 10, scope: !3092)
!3101 = !DILocation(line: 957, column: 32, scope: !3034, inlinedAt: !3100)
!3102 = !DILocation(line: 0, scope: !3092)
!3103 = !DILocation(line: 0, scope: !3034, inlinedAt: !3100)
!3104 = !DILocation(line: 957, column: 3, scope: !3034, inlinedAt: !3100)
!3105 = !DILocation(line: 0, scope: !3046, inlinedAt: !3099)
!3106 = !{!3107}
!3107 = distinct !{!3107, !3108, !"quoting_options_from_style: argument 0"}
!3108 = distinct !{!3108, !"quoting_options_from_style"}
!3109 = !DILocation(line: 196, column: 13, scope: !3058, inlinedAt: !3099)
!3110 = !DILocation(line: 196, column: 7, scope: !3046, inlinedAt: !3099)
!3111 = !DILocation(line: 197, column: 5, scope: !3058, inlinedAt: !3099)
!3112 = !DILocation(line: 198, column: 5, scope: !3046, inlinedAt: !3099)
!3113 = !DILocation(line: 198, column: 11, scope: !3046, inlinedAt: !3099)
!3114 = !DILocation(line: 958, column: 10, scope: !3034, inlinedAt: !3100)
!3115 = !DILocation(line: 959, column: 1, scope: !3034, inlinedAt: !3100)
!3116 = !DILocation(line: 972, column: 3, scope: !3092)
!3117 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !268, file: !268, line: 976, type: !3118, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!10, !270, !12, !68}
!3120 = !{!3121, !3122, !3123}
!3121 = !DILocalVariable(name: "s", arg: 1, scope: !3117, file: !268, line: 976, type: !270)
!3122 = !DILocalVariable(name: "arg", arg: 2, scope: !3117, file: !268, line: 976, type: !12)
!3123 = !DILocalVariable(name: "argsize", arg: 3, scope: !3117, file: !268, line: 976, type: !68)
!3124 = !DILocation(line: 195, column: 26, scope: !3046, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 965, column: 36, scope: !3066, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 978, column: 10, scope: !3117)
!3127 = !DILocation(line: 965, column: 32, scope: !3066, inlinedAt: !3126)
!3128 = !DILocation(line: 0, scope: !3117)
!3129 = !DILocation(line: 0, scope: !3066, inlinedAt: !3126)
!3130 = !DILocation(line: 965, column: 3, scope: !3066, inlinedAt: !3126)
!3131 = !DILocation(line: 0, scope: !3046, inlinedAt: !3125)
!3132 = !{!3133}
!3133 = distinct !{!3133, !3134, !"quoting_options_from_style: argument 0"}
!3134 = distinct !{!3134, !"quoting_options_from_style"}
!3135 = !DILocation(line: 196, column: 13, scope: !3058, inlinedAt: !3125)
!3136 = !DILocation(line: 196, column: 7, scope: !3046, inlinedAt: !3125)
!3137 = !DILocation(line: 197, column: 5, scope: !3058, inlinedAt: !3125)
!3138 = !DILocation(line: 198, column: 5, scope: !3046, inlinedAt: !3125)
!3139 = !DILocation(line: 198, column: 11, scope: !3046, inlinedAt: !3125)
!3140 = !DILocation(line: 966, column: 10, scope: !3066, inlinedAt: !3126)
!3141 = !DILocation(line: 967, column: 1, scope: !3066, inlinedAt: !3126)
!3142 = !DILocation(line: 978, column: 3, scope: !3117)
!3143 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !268, file: !268, line: 982, type: !3144, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!10, !12, !68, !11}
!3146 = !{!3147, !3148, !3149, !3150}
!3147 = !DILocalVariable(name: "arg", arg: 1, scope: !3143, file: !268, line: 982, type: !12)
!3148 = !DILocalVariable(name: "argsize", arg: 2, scope: !3143, file: !268, line: 982, type: !68)
!3149 = !DILocalVariable(name: "ch", arg: 3, scope: !3143, file: !268, line: 982, type: !11)
!3150 = !DILocalVariable(name: "options", scope: !3143, file: !268, line: 984, type: !316)
!3151 = !DILocation(line: 0, scope: !3143)
!3152 = !DILocation(line: 984, column: 3, scope: !3143)
!3153 = !DILocation(line: 984, column: 26, scope: !3143)
!3154 = !DILocation(line: 985, column: 13, scope: !3143)
!3155 = !{i64 0, i64 4, !1496, i64 4, i64 4, !1471, i64 8, i64 32, !1496, i64 40, i64 8, !1361, i64 48, i64 8, !1361}
!3156 = !DILocation(line: 0, scope: !1981, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 986, column: 3, scope: !3143)
!3158 = !DILocation(line: 156, column: 62, scope: !1981, inlinedAt: !3157)
!3159 = !DILocation(line: 156, column: 57, scope: !1981, inlinedAt: !3157)
!3160 = !DILocation(line: 157, column: 15, scope: !1981, inlinedAt: !3157)
!3161 = !DILocation(line: 158, column: 12, scope: !1981, inlinedAt: !3157)
!3162 = !DILocation(line: 158, column: 15, scope: !1981, inlinedAt: !3157)
!3163 = !DILocation(line: 158, column: 25, scope: !1981, inlinedAt: !3157)
!3164 = !DILocation(line: 159, column: 18, scope: !1981, inlinedAt: !3157)
!3165 = !DILocation(line: 159, column: 23, scope: !1981, inlinedAt: !3157)
!3166 = !DILocation(line: 159, column: 6, scope: !1981, inlinedAt: !3157)
!3167 = !DILocation(line: 987, column: 10, scope: !3143)
!3168 = !DILocation(line: 988, column: 1, scope: !3143)
!3169 = !DILocation(line: 987, column: 3, scope: !3143)
!3170 = distinct !DISubprogram(name: "quotearg_char", scope: !268, file: !268, line: 991, type: !3171, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!10, !12, !11}
!3173 = !{!3174, !3175}
!3174 = !DILocalVariable(name: "arg", arg: 1, scope: !3170, file: !268, line: 991, type: !12)
!3175 = !DILocalVariable(name: "ch", arg: 2, scope: !3170, file: !268, line: 991, type: !11)
!3176 = !DILocation(line: 984, column: 26, scope: !3143, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 993, column: 10, scope: !3170)
!3178 = !DILocation(line: 0, scope: !3170)
!3179 = !DILocation(line: 0, scope: !3143, inlinedAt: !3177)
!3180 = !DILocation(line: 984, column: 3, scope: !3143, inlinedAt: !3177)
!3181 = !DILocation(line: 985, column: 13, scope: !3143, inlinedAt: !3177)
!3182 = !DILocation(line: 0, scope: !1981, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 986, column: 3, scope: !3143, inlinedAt: !3177)
!3184 = !DILocation(line: 156, column: 62, scope: !1981, inlinedAt: !3183)
!3185 = !DILocation(line: 156, column: 57, scope: !1981, inlinedAt: !3183)
!3186 = !DILocation(line: 157, column: 15, scope: !1981, inlinedAt: !3183)
!3187 = !DILocation(line: 158, column: 12, scope: !1981, inlinedAt: !3183)
!3188 = !DILocation(line: 158, column: 15, scope: !1981, inlinedAt: !3183)
!3189 = !DILocation(line: 158, column: 25, scope: !1981, inlinedAt: !3183)
!3190 = !DILocation(line: 159, column: 18, scope: !1981, inlinedAt: !3183)
!3191 = !DILocation(line: 159, column: 23, scope: !1981, inlinedAt: !3183)
!3192 = !DILocation(line: 159, column: 6, scope: !1981, inlinedAt: !3183)
!3193 = !DILocation(line: 987, column: 10, scope: !3143, inlinedAt: !3177)
!3194 = !DILocation(line: 988, column: 1, scope: !3143, inlinedAt: !3177)
!3195 = !DILocation(line: 993, column: 3, scope: !3170)
!3196 = distinct !DISubprogram(name: "quotearg_colon", scope: !268, file: !268, line: 997, type: !88, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3197)
!3197 = !{!3198}
!3198 = !DILocalVariable(name: "arg", arg: 1, scope: !3196, file: !268, line: 997, type: !12)
!3199 = !DILocation(line: 984, column: 26, scope: !3143, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 993, column: 10, scope: !3170, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 999, column: 10, scope: !3196)
!3202 = !DILocation(line: 0, scope: !3196)
!3203 = !DILocation(line: 0, scope: !3170, inlinedAt: !3201)
!3204 = !DILocation(line: 0, scope: !3143, inlinedAt: !3200)
!3205 = !DILocation(line: 984, column: 3, scope: !3143, inlinedAt: !3200)
!3206 = !DILocation(line: 985, column: 13, scope: !3143, inlinedAt: !3200)
!3207 = !DILocation(line: 0, scope: !1981, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 986, column: 3, scope: !3143, inlinedAt: !3200)
!3209 = !DILocation(line: 156, column: 57, scope: !1981, inlinedAt: !3208)
!3210 = !DILocation(line: 158, column: 12, scope: !1981, inlinedAt: !3208)
!3211 = !DILocation(line: 159, column: 6, scope: !1981, inlinedAt: !3208)
!3212 = !DILocation(line: 987, column: 10, scope: !3143, inlinedAt: !3200)
!3213 = !DILocation(line: 988, column: 1, scope: !3143, inlinedAt: !3200)
!3214 = !DILocation(line: 999, column: 3, scope: !3196)
!3215 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !268, file: !268, line: 1003, type: !3024, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3216)
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "arg", arg: 1, scope: !3215, file: !268, line: 1003, type: !12)
!3218 = !DILocalVariable(name: "argsize", arg: 2, scope: !3215, file: !268, line: 1003, type: !68)
!3219 = !DILocation(line: 984, column: 26, scope: !3143, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 1005, column: 10, scope: !3215)
!3221 = !DILocation(line: 0, scope: !3215)
!3222 = !DILocation(line: 0, scope: !3143, inlinedAt: !3220)
!3223 = !DILocation(line: 984, column: 3, scope: !3143, inlinedAt: !3220)
!3224 = !DILocation(line: 985, column: 13, scope: !3143, inlinedAt: !3220)
!3225 = !DILocation(line: 0, scope: !1981, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 986, column: 3, scope: !3143, inlinedAt: !3220)
!3227 = !DILocation(line: 156, column: 57, scope: !1981, inlinedAt: !3226)
!3228 = !DILocation(line: 158, column: 12, scope: !1981, inlinedAt: !3226)
!3229 = !DILocation(line: 159, column: 6, scope: !1981, inlinedAt: !3226)
!3230 = !DILocation(line: 987, column: 10, scope: !3143, inlinedAt: !3220)
!3231 = !DILocation(line: 988, column: 1, scope: !3143, inlinedAt: !3220)
!3232 = !DILocation(line: 1005, column: 3, scope: !3215)
!3233 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !268, file: !268, line: 1009, type: !3035, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3234)
!3234 = !{!3235, !3236, !3237, !3238}
!3235 = !DILocalVariable(name: "n", arg: 1, scope: !3233, file: !268, line: 1009, type: !14)
!3236 = !DILocalVariable(name: "s", arg: 2, scope: !3233, file: !268, line: 1009, type: !270)
!3237 = !DILocalVariable(name: "arg", arg: 3, scope: !3233, file: !268, line: 1009, type: !12)
!3238 = !DILocalVariable(name: "options", scope: !3233, file: !268, line: 1011, type: !316)
!3239 = !DILocation(line: 195, column: 26, scope: !3046, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 1012, column: 13, scope: !3233)
!3241 = !DILocation(line: 0, scope: !3233)
!3242 = !DILocation(line: 1011, column: 3, scope: !3233)
!3243 = !DILocation(line: 1011, column: 26, scope: !3233)
!3244 = !DILocation(line: 1012, column: 13, scope: !3233)
!3245 = !DILocation(line: 0, scope: !3046, inlinedAt: !3240)
!3246 = !{!3247}
!3247 = distinct !{!3247, !3248, !"quoting_options_from_style: argument 0"}
!3248 = distinct !{!3248, !"quoting_options_from_style"}
!3249 = !DILocation(line: 196, column: 13, scope: !3058, inlinedAt: !3240)
!3250 = !DILocation(line: 196, column: 7, scope: !3046, inlinedAt: !3240)
!3251 = !DILocation(line: 197, column: 5, scope: !3058, inlinedAt: !3240)
!3252 = !DILocation(line: 0, scope: !1981, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 1013, column: 3, scope: !3233)
!3254 = !DILocation(line: 156, column: 57, scope: !1981, inlinedAt: !3253)
!3255 = !DILocation(line: 158, column: 12, scope: !1981, inlinedAt: !3253)
!3256 = !DILocation(line: 159, column: 6, scope: !1981, inlinedAt: !3253)
!3257 = !DILocation(line: 1014, column: 10, scope: !3233)
!3258 = !DILocation(line: 1015, column: 1, scope: !3233)
!3259 = !DILocation(line: 1014, column: 3, scope: !3233)
!3260 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !268, file: !268, line: 1018, type: !3261, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3263)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!10, !14, !12, !12, !12}
!3263 = !{!3264, !3265, !3266, !3267}
!3264 = !DILocalVariable(name: "n", arg: 1, scope: !3260, file: !268, line: 1018, type: !14)
!3265 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3260, file: !268, line: 1018, type: !12)
!3266 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3260, file: !268, line: 1019, type: !12)
!3267 = !DILocalVariable(name: "arg", arg: 4, scope: !3260, file: !268, line: 1019, type: !12)
!3268 = !DILocalVariable(name: "o", scope: !3269, file: !268, line: 1030, type: !316)
!3269 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !268, file: !268, line: 1026, type: !3270, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!10, !14, !12, !12, !12, !68}
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3268}
!3273 = !DILocalVariable(name: "n", arg: 1, scope: !3269, file: !268, line: 1026, type: !14)
!3274 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3269, file: !268, line: 1026, type: !12)
!3275 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3269, file: !268, line: 1027, type: !12)
!3276 = !DILocalVariable(name: "arg", arg: 4, scope: !3269, file: !268, line: 1028, type: !12)
!3277 = !DILocalVariable(name: "argsize", arg: 5, scope: !3269, file: !268, line: 1028, type: !68)
!3278 = !DILocation(line: 1030, column: 26, scope: !3269, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 1021, column: 10, scope: !3260)
!3280 = !DILocation(line: 0, scope: !3260)
!3281 = !DILocation(line: 0, scope: !3269, inlinedAt: !3279)
!3282 = !DILocation(line: 1030, column: 3, scope: !3269, inlinedAt: !3279)
!3283 = !DILocation(line: 1030, column: 30, scope: !3269, inlinedAt: !3279)
!3284 = !DILocation(line: 0, scope: !2022, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 1031, column: 3, scope: !3269, inlinedAt: !3279)
!3286 = !DILocation(line: 184, column: 6, scope: !2022, inlinedAt: !3285)
!3287 = !DILocation(line: 184, column: 12, scope: !2022, inlinedAt: !3285)
!3288 = !DILocation(line: 185, column: 8, scope: !2036, inlinedAt: !3285)
!3289 = !DILocation(line: 185, column: 23, scope: !2036, inlinedAt: !3285)
!3290 = !DILocation(line: 185, column: 19, scope: !2036, inlinedAt: !3285)
!3291 = !DILocation(line: 186, column: 5, scope: !2036, inlinedAt: !3285)
!3292 = !DILocation(line: 187, column: 6, scope: !2022, inlinedAt: !3285)
!3293 = !DILocation(line: 187, column: 17, scope: !2022, inlinedAt: !3285)
!3294 = !DILocation(line: 188, column: 6, scope: !2022, inlinedAt: !3285)
!3295 = !DILocation(line: 188, column: 18, scope: !2022, inlinedAt: !3285)
!3296 = !DILocation(line: 1032, column: 10, scope: !3269, inlinedAt: !3279)
!3297 = !DILocation(line: 1033, column: 1, scope: !3269, inlinedAt: !3279)
!3298 = !DILocation(line: 1021, column: 3, scope: !3260)
!3299 = !DILocation(line: 0, scope: !3269)
!3300 = !DILocation(line: 1030, column: 3, scope: !3269)
!3301 = !DILocation(line: 1030, column: 26, scope: !3269)
!3302 = !DILocation(line: 1030, column: 30, scope: !3269)
!3303 = !DILocation(line: 0, scope: !2022, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 1031, column: 3, scope: !3269)
!3305 = !DILocation(line: 184, column: 6, scope: !2022, inlinedAt: !3304)
!3306 = !DILocation(line: 184, column: 12, scope: !2022, inlinedAt: !3304)
!3307 = !DILocation(line: 185, column: 8, scope: !2036, inlinedAt: !3304)
!3308 = !DILocation(line: 185, column: 23, scope: !2036, inlinedAt: !3304)
!3309 = !DILocation(line: 185, column: 19, scope: !2036, inlinedAt: !3304)
!3310 = !DILocation(line: 186, column: 5, scope: !2036, inlinedAt: !3304)
!3311 = !DILocation(line: 187, column: 6, scope: !2022, inlinedAt: !3304)
!3312 = !DILocation(line: 187, column: 17, scope: !2022, inlinedAt: !3304)
!3313 = !DILocation(line: 188, column: 6, scope: !2022, inlinedAt: !3304)
!3314 = !DILocation(line: 188, column: 18, scope: !2022, inlinedAt: !3304)
!3315 = !DILocation(line: 1032, column: 10, scope: !3269)
!3316 = !DILocation(line: 1033, column: 1, scope: !3269)
!3317 = !DILocation(line: 1032, column: 3, scope: !3269)
!3318 = distinct !DISubprogram(name: "quotearg_custom", scope: !268, file: !268, line: 1036, type: !3319, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!10, !12, !12, !12}
!3321 = !{!3322, !3323, !3324}
!3322 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3318, file: !268, line: 1036, type: !12)
!3323 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3318, file: !268, line: 1036, type: !12)
!3324 = !DILocalVariable(name: "arg", arg: 3, scope: !3318, file: !268, line: 1037, type: !12)
!3325 = !DILocation(line: 1030, column: 26, scope: !3269, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 1021, column: 10, scope: !3260, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 1039, column: 10, scope: !3318)
!3328 = !DILocation(line: 0, scope: !3318)
!3329 = !DILocation(line: 0, scope: !3260, inlinedAt: !3327)
!3330 = !DILocation(line: 0, scope: !3269, inlinedAt: !3326)
!3331 = !DILocation(line: 1030, column: 3, scope: !3269, inlinedAt: !3326)
!3332 = !DILocation(line: 1030, column: 30, scope: !3269, inlinedAt: !3326)
!3333 = !DILocation(line: 0, scope: !2022, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 1031, column: 3, scope: !3269, inlinedAt: !3326)
!3335 = !DILocation(line: 184, column: 6, scope: !2022, inlinedAt: !3334)
!3336 = !DILocation(line: 184, column: 12, scope: !2022, inlinedAt: !3334)
!3337 = !DILocation(line: 185, column: 8, scope: !2036, inlinedAt: !3334)
!3338 = !DILocation(line: 185, column: 23, scope: !2036, inlinedAt: !3334)
!3339 = !DILocation(line: 185, column: 19, scope: !2036, inlinedAt: !3334)
!3340 = !DILocation(line: 186, column: 5, scope: !2036, inlinedAt: !3334)
!3341 = !DILocation(line: 187, column: 6, scope: !2022, inlinedAt: !3334)
!3342 = !DILocation(line: 187, column: 17, scope: !2022, inlinedAt: !3334)
!3343 = !DILocation(line: 188, column: 6, scope: !2022, inlinedAt: !3334)
!3344 = !DILocation(line: 188, column: 18, scope: !2022, inlinedAt: !3334)
!3345 = !DILocation(line: 1032, column: 10, scope: !3269, inlinedAt: !3326)
!3346 = !DILocation(line: 1033, column: 1, scope: !3269, inlinedAt: !3326)
!3347 = !DILocation(line: 1039, column: 3, scope: !3318)
!3348 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !268, file: !268, line: 1043, type: !3349, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!10, !12, !12, !12, !68}
!3351 = !{!3352, !3353, !3354, !3355}
!3352 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3348, file: !268, line: 1043, type: !12)
!3353 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3348, file: !268, line: 1043, type: !12)
!3354 = !DILocalVariable(name: "arg", arg: 3, scope: !3348, file: !268, line: 1044, type: !12)
!3355 = !DILocalVariable(name: "argsize", arg: 4, scope: !3348, file: !268, line: 1044, type: !68)
!3356 = !DILocation(line: 1030, column: 26, scope: !3269, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 1046, column: 10, scope: !3348)
!3358 = !DILocation(line: 0, scope: !3348)
!3359 = !DILocation(line: 0, scope: !3269, inlinedAt: !3357)
!3360 = !DILocation(line: 1030, column: 3, scope: !3269, inlinedAt: !3357)
!3361 = !DILocation(line: 1030, column: 30, scope: !3269, inlinedAt: !3357)
!3362 = !DILocation(line: 0, scope: !2022, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 1031, column: 3, scope: !3269, inlinedAt: !3357)
!3364 = !DILocation(line: 184, column: 6, scope: !2022, inlinedAt: !3363)
!3365 = !DILocation(line: 184, column: 12, scope: !2022, inlinedAt: !3363)
!3366 = !DILocation(line: 185, column: 8, scope: !2036, inlinedAt: !3363)
!3367 = !DILocation(line: 185, column: 23, scope: !2036, inlinedAt: !3363)
!3368 = !DILocation(line: 185, column: 19, scope: !2036, inlinedAt: !3363)
!3369 = !DILocation(line: 186, column: 5, scope: !2036, inlinedAt: !3363)
!3370 = !DILocation(line: 187, column: 6, scope: !2022, inlinedAt: !3363)
!3371 = !DILocation(line: 187, column: 17, scope: !2022, inlinedAt: !3363)
!3372 = !DILocation(line: 188, column: 6, scope: !2022, inlinedAt: !3363)
!3373 = !DILocation(line: 188, column: 18, scope: !2022, inlinedAt: !3363)
!3374 = !DILocation(line: 1032, column: 10, scope: !3269, inlinedAt: !3357)
!3375 = !DILocation(line: 1033, column: 1, scope: !3269, inlinedAt: !3357)
!3376 = !DILocation(line: 1046, column: 3, scope: !3348)
!3377 = distinct !DISubprogram(name: "quote_n_mem", scope: !268, file: !268, line: 1061, type: !3378, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!12, !14, !12, !68}
!3380 = !{!3381, !3382, !3383}
!3381 = !DILocalVariable(name: "n", arg: 1, scope: !3377, file: !268, line: 1061, type: !14)
!3382 = !DILocalVariable(name: "arg", arg: 2, scope: !3377, file: !268, line: 1061, type: !12)
!3383 = !DILocalVariable(name: "argsize", arg: 3, scope: !3377, file: !268, line: 1061, type: !68)
!3384 = !DILocation(line: 0, scope: !3377)
!3385 = !DILocation(line: 1063, column: 10, scope: !3377)
!3386 = !DILocation(line: 1063, column: 3, scope: !3377)
!3387 = distinct !DISubprogram(name: "quote_mem", scope: !268, file: !268, line: 1067, type: !3388, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!12, !12, !68}
!3390 = !{!3391, !3392}
!3391 = !DILocalVariable(name: "arg", arg: 1, scope: !3387, file: !268, line: 1067, type: !12)
!3392 = !DILocalVariable(name: "argsize", arg: 2, scope: !3387, file: !268, line: 1067, type: !68)
!3393 = !DILocation(line: 0, scope: !3387)
!3394 = !DILocation(line: 0, scope: !3377, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 1069, column: 10, scope: !3387)
!3396 = !DILocation(line: 1063, column: 10, scope: !3377, inlinedAt: !3395)
!3397 = !DILocation(line: 1069, column: 3, scope: !3387)
!3398 = distinct !DISubprogram(name: "quote_n", scope: !268, file: !268, line: 1073, type: !3399, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!12, !14, !12}
!3401 = !{!3402, !3403}
!3402 = !DILocalVariable(name: "n", arg: 1, scope: !3398, file: !268, line: 1073, type: !14)
!3403 = !DILocalVariable(name: "arg", arg: 2, scope: !3398, file: !268, line: 1073, type: !12)
!3404 = !DILocation(line: 0, scope: !3398)
!3405 = !DILocation(line: 0, scope: !3377, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 1075, column: 10, scope: !3398)
!3407 = !DILocation(line: 1063, column: 10, scope: !3377, inlinedAt: !3406)
!3408 = !DILocation(line: 1075, column: 3, scope: !3398)
!3409 = distinct !DISubprogram(name: "quote", scope: !268, file: !268, line: 1079, type: !122, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !3410)
!3410 = !{!3411}
!3411 = !DILocalVariable(name: "arg", arg: 1, scope: !3409, file: !268, line: 1079, type: !12)
!3412 = !DILocation(line: 0, scope: !3409)
!3413 = !DILocation(line: 0, scope: !3398, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 1081, column: 10, scope: !3409)
!3415 = !DILocation(line: 0, scope: !3377, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 1075, column: 10, scope: !3398, inlinedAt: !3414)
!3417 = !DILocation(line: 1063, column: 10, scope: !3377, inlinedAt: !3416)
!3418 = !DILocation(line: 1081, column: 3, scope: !3409)
!3419 = distinct !DISubprogram(name: "try_tempname_len", scope: !400, file: !400, line: 188, type: !3420, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3425)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!14, !10, !14, !66, !3422, !68}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!14, !10, !66}
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3442, !3444}
!3426 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3419, file: !400, line: 188, type: !10)
!3427 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3419, file: !400, line: 188, type: !14)
!3428 = !DILocalVariable(name: "args", arg: 3, scope: !3419, file: !400, line: 188, type: !66)
!3429 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3419, file: !400, line: 189, type: !3422)
!3430 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3419, file: !400, line: 189, type: !68)
!3431 = !DILocalVariable(name: "len", scope: !3419, file: !400, line: 191, type: !68)
!3432 = !DILocalVariable(name: "XXXXXX", scope: !3419, file: !400, line: 192, type: !10)
!3433 = !DILocalVariable(name: "count", scope: !3419, file: !400, line: 193, type: !271)
!3434 = !DILocalVariable(name: "fd", scope: !3419, file: !400, line: 194, type: !14)
!3435 = !DILocalVariable(name: "save_errno", scope: !3419, file: !400, line: 195, type: !14)
!3436 = !DILocalVariable(name: "rand_src", scope: !3419, file: !400, line: 196, type: !406)
!3437 = !DILocalVariable(name: "attempts", scope: !3419, file: !400, line: 212, type: !271)
!3438 = !DILocalVariable(name: "i", scope: !3439, file: !400, line: 234, type: !68)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !400, line: 233, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !400, line: 232, column: 3)
!3441 = distinct !DILexicalBlock(scope: !3419, file: !400, line: 232, column: 3)
!3442 = !DILocalVariable(name: "saved_errno", scope: !3443, file: !400, line: 260, type: !14)
!3443 = distinct !DILexicalBlock(scope: !3419, file: !400, line: 259, column: 3)
!3444 = !DILabel(scope: !3419, name: "done", file: !400, line: 258)
!3445 = !DILocation(line: 0, scope: !3419)
!3446 = !DILocation(line: 195, column: 20, scope: !3419)
!3447 = !DILocation(line: 215, column: 9, scope: !3419)
!3448 = !DILocation(line: 216, column: 28, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3419, file: !400, line: 216, column: 7)
!3450 = !DILocation(line: 216, column: 26, scope: !3449)
!3451 = !DILocation(line: 216, column: 11, scope: !3449)
!3452 = !DILocation(line: 217, column: 7, scope: !3449)
!3453 = !DILocation(line: 217, column: 53, scope: !3449)
!3454 = !DILocation(line: 217, column: 29, scope: !3449)
!3455 = !DILocalVariable(name: "s", arg: 1, scope: !3456, file: !400, line: 178, type: !12)
!3456 = distinct !DISubprogram(name: "check_x_suffix", scope: !400, file: !400, line: 178, type: !3457, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!161, !12, !68}
!3459 = !{!3455, !3460}
!3460 = !DILocalVariable(name: "len", arg: 2, scope: !3456, file: !400, line: 178, type: !68)
!3461 = !DILocation(line: 0, scope: !3456, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 217, column: 12, scope: !3449)
!3463 = !DILocation(line: 180, column: 17, scope: !3456, inlinedAt: !3462)
!3464 = !DILocation(line: 180, column: 14, scope: !3456, inlinedAt: !3462)
!3465 = !DILocation(line: 216, column: 7, scope: !3419)
!3466 = !DILocation(line: 228, column: 14, scope: !3419)
!3467 = !DILocation(line: 229, column: 9, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3419, file: !400, line: 229, column: 7)
!3469 = !DILocation(line: 229, column: 7, scope: !3419)
!3470 = !DILocation(line: 0, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !400, line: 236, column: 7)
!3472 = distinct !DILexicalBlock(scope: !3439, file: !400, line: 236, column: 7)
!3473 = !DILocation(line: 232, column: 3, scope: !3441)
!3474 = !DILocation(line: 232, column: 25, scope: !3440)
!3475 = distinct !{!3475, !3473, !3476}
!3476 = !DILocation(line: 250, column: 5, scope: !3441)
!3477 = !DILocation(line: 0, scope: !3439)
!3478 = !DILocation(line: 236, column: 7, scope: !3472)
!3479 = !DILocation(line: 237, column: 29, scope: !3471)
!3480 = !DILocation(line: 237, column: 21, scope: !3471)
!3481 = !DILocation(line: 237, column: 9, scope: !3471)
!3482 = !DILocation(line: 237, column: 19, scope: !3471)
!3483 = !DILocation(line: 236, column: 38, scope: !3471)
!3484 = !DILocation(line: 236, column: 21, scope: !3471)
!3485 = distinct !{!3485, !3478, !3486}
!3486 = !DILocation(line: 237, column: 74, scope: !3472)
!3487 = !DILocation(line: 239, column: 12, scope: !3439)
!3488 = !DILocation(line: 240, column: 14, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3439, file: !400, line: 240, column: 11)
!3490 = !DILocation(line: 240, column: 11, scope: !3439)
!3491 = !DILocation(line: 242, column: 11, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3489, file: !400, line: 241, column: 9)
!3493 = !DILocation(line: 243, column: 11, scope: !3492)
!3494 = !DILocation(line: 245, column: 16, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3489, file: !400, line: 245, column: 16)
!3496 = !DILocation(line: 245, column: 22, scope: !3495)
!3497 = !DILocation(line: 232, column: 37, scope: !3440)
!3498 = !DILocation(line: 252, column: 3, scope: !3419)
!3499 = !DILocation(line: 256, column: 3, scope: !3419)
!3500 = !DILocation(line: 260, column: 23, scope: !3443)
!3501 = !DILocation(line: 258, column: 2, scope: !3419)
!3502 = !DILocation(line: 0, scope: !3443)
!3503 = !DILocation(line: 261, column: 5, scope: !3443)
!3504 = !DILocation(line: 264, column: 3, scope: !3419)
!3505 = !DILocation(line: 265, column: 1, scope: !3419)
!3506 = distinct !DISubprogram(name: "gen_tempname_len", scope: !400, file: !400, line: 307, type: !3507, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!14, !10, !14, !14, !14, !68}
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515}
!3510 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3506, file: !400, line: 307, type: !10)
!3511 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3506, file: !400, line: 307, type: !14)
!3512 = !DILocalVariable(name: "flags", arg: 3, scope: !3506, file: !400, line: 307, type: !14)
!3513 = !DILocalVariable(name: "kind", arg: 4, scope: !3506, file: !400, line: 307, type: !14)
!3514 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3506, file: !400, line: 308, type: !68)
!3515 = !DILocalVariable(name: "tryfunc", scope: !3506, file: !400, line: 310, type: !3422)
!3516 = !DILocation(line: 0, scope: !3506)
!3517 = !DILocation(line: 312, column: 3, scope: !3506)
!3518 = !DILocation(line: 327, column: 7, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !400, line: 327, column: 7)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !400, line: 327, column: 7)
!3521 = distinct !DILexicalBlock(scope: !3506, file: !400, line: 313, column: 5)
!3522 = !DILocation(line: 330, column: 45, scope: !3506)
!3523 = !DILocation(line: 330, column: 10, scope: !3506)
!3524 = !DILocation(line: 330, column: 3, scope: !3506)
!3525 = distinct !DISubprogram(name: "try_file", scope: !400, file: !400, line: 268, type: !3423, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3526)
!3526 = !{!3527, !3528, !3529}
!3527 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3525, file: !400, line: 268, type: !10)
!3528 = !DILocalVariable(name: "flags", arg: 2, scope: !3525, file: !400, line: 268, type: !66)
!3529 = !DILocalVariable(name: "openflags", scope: !3525, file: !400, line: 270, type: !110)
!3530 = !DILocation(line: 0, scope: !3525)
!3531 = !DILocation(line: 270, column: 20, scope: !3525)
!3532 = !DILocation(line: 272, column: 19, scope: !3525)
!3533 = !DILocation(line: 272, column: 30, scope: !3525)
!3534 = !DILocation(line: 273, column: 37, scope: !3525)
!3535 = !DILocation(line: 271, column: 10, scope: !3525)
!3536 = !DILocation(line: 271, column: 3, scope: !3525)
!3537 = distinct !DISubprogram(name: "try_dir", scope: !400, file: !400, line: 277, type: !3423, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3538)
!3538 = !{!3539, !3540}
!3539 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3537, file: !400, line: 277, type: !10)
!3540 = !DILocalVariable(name: "flags", arg: 2, scope: !3537, file: !400, line: 277, type: !66)
!3541 = !DILocation(line: 0, scope: !3537)
!3542 = !DILocation(line: 279, column: 10, scope: !3537)
!3543 = !DILocation(line: 279, column: 3, scope: !3537)
!3544 = distinct !DISubprogram(name: "try_nocreate", scope: !400, file: !400, line: 283, type: !3423, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3545)
!3545 = !{!3546, !3547, !3548}
!3546 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3544, file: !400, line: 283, type: !10)
!3547 = !DILocalVariable(name: "flags", arg: 2, scope: !3544, file: !400, line: 283, type: !66)
!3548 = !DILocalVariable(name: "st", scope: !3544, file: !400, line: 285, type: !3549)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3550, line: 46, size: 1152, elements: !3551)
!3550 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!3551 = !{!3552, !3554, !3556, !3558, !3560, !3562, !3564, !3565, !3566, !3567, !3569, !3571, !3578, !3579, !3580}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3549, file: !3550, line: 48, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !43, line: 145, baseType: !70)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3549, file: !3550, line: 53, baseType: !3555, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !43, line: 148, baseType: !70)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3549, file: !3550, line: 61, baseType: !3557, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !43, line: 151, baseType: !70)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3549, file: !3550, line: 62, baseType: !3559, size: 32, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !43, line: 150, baseType: !271)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3549, file: !3550, line: 64, baseType: !3561, size: 32, offset: 224)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !43, line: 146, baseType: !271)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3549, file: !3550, line: 65, baseType: !3563, size: 32, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !43, line: 147, baseType: !271)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3549, file: !3550, line: 67, baseType: !14, size: 32, offset: 288)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3549, file: !3550, line: 69, baseType: !3553, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3549, file: !3550, line: 74, baseType: !42, size: 64, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3549, file: !3550, line: 78, baseType: !3568, size: 64, offset: 448)
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !43, line: 174, baseType: !44)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3549, file: !3550, line: 80, baseType: !3570, size: 64, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !43, line: 179, baseType: !44)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3549, file: !3550, line: 91, baseType: !3572, size: 128, offset: 576)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3573, line: 10, size: 128, elements: !3574)
!3573 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!3574 = !{!3575, !3576}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3572, file: !3573, line: 12, baseType: !1207, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3572, file: !3573, line: 16, baseType: !3577, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !43, line: 196, baseType: !44)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3549, file: !3550, line: 92, baseType: !3572, size: 128, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3549, file: !3550, line: 93, baseType: !3572, size: 128, offset: 832)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3549, file: !3550, line: 106, baseType: !3581, size: 192, offset: 960)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3577, size: 192, elements: !3582)
!3582 = !{!3583}
!3583 = !DISubrange(count: 3)
!3584 = !DILocation(line: 0, scope: !3544)
!3585 = !DILocation(line: 285, column: 3, scope: !3544)
!3586 = !DILocation(line: 285, column: 17, scope: !3544)
!3587 = !DILocalVariable(name: "__path", arg: 1, scope: !3588, file: !419, line: 460, type: !12)
!3588 = distinct !DISubprogram(name: "lstat", scope: !419, file: !419, line: 460, type: !3589, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3592)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!14, !12, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3592 = !{!3587, !3593}
!3593 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3588, file: !419, line: 460, type: !3591)
!3594 = !DILocation(line: 0, scope: !3588, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 287, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3544, file: !400, line: 287, column: 7)
!3597 = !DILocation(line: 462, column: 10, scope: !3588, inlinedAt: !3595)
!3598 = !DILocation(line: 287, column: 41, scope: !3596)
!3599 = !DILocation(line: 0, scope: !3596)
!3600 = !DILocation(line: 287, column: 46, scope: !3596)
!3601 = !DILocation(line: 287, column: 49, scope: !3596)
!3602 = !DILocation(line: 287, column: 55, scope: !3596)
!3603 = !DILocation(line: 287, column: 7, scope: !3544)
!3604 = !DILocation(line: 288, column: 5, scope: !3596)
!3605 = !DILocation(line: 289, column: 10, scope: !3544)
!3606 = !DILocation(line: 289, column: 16, scope: !3544)
!3607 = !DILocation(line: 290, column: 1, scope: !3544)
!3608 = !DILocation(line: 289, column: 3, scope: !3544)
!3609 = distinct !DISubprogram(name: "gen_tempname", scope: !400, file: !400, line: 334, type: !3610, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!14, !10, !14, !14, !14}
!3612 = !{!3613, !3614, !3615, !3616}
!3613 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3609, file: !400, line: 334, type: !10)
!3614 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3609, file: !400, line: 334, type: !14)
!3615 = !DILocalVariable(name: "flags", arg: 3, scope: !3609, file: !400, line: 334, type: !14)
!3616 = !DILocalVariable(name: "kind", arg: 4, scope: !3609, file: !400, line: 334, type: !14)
!3617 = !DILocation(line: 0, scope: !3609)
!3618 = !DILocation(line: 0, scope: !3506, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 336, column: 10, scope: !3609)
!3620 = !DILocation(line: 312, column: 3, scope: !3506, inlinedAt: !3619)
!3621 = !DILocation(line: 327, column: 7, scope: !3519, inlinedAt: !3619)
!3622 = !DILocation(line: 330, column: 10, scope: !3506, inlinedAt: !3619)
!3623 = !DILocation(line: 330, column: 3, scope: !3506, inlinedAt: !3619)
!3624 = !DILocation(line: 336, column: 3, scope: !3609)
!3625 = distinct !DISubprogram(name: "try_tempname", scope: !400, file: !400, line: 340, type: !3626, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!14, !10, !14, !66, !3422}
!3628 = !{!3629, !3630, !3631, !3632}
!3629 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3625, file: !400, line: 340, type: !10)
!3630 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3625, file: !400, line: 340, type: !14)
!3631 = !DILocalVariable(name: "args", arg: 3, scope: !3625, file: !400, line: 340, type: !66)
!3632 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3625, file: !400, line: 341, type: !3422)
!3633 = !DILocation(line: 0, scope: !3625)
!3634 = !DILocation(line: 343, column: 10, scope: !3625)
!3635 = !DILocation(line: 343, column: 3, scope: !3625)
!3636 = distinct !DISubprogram(name: "version_etc_arn", scope: !509, file: !509, line: 61, type: !3637, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !3642)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{null, !3639, !12, !12, !12, !3641, !68}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1703, line: 7, baseType: !519)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648}
!3643 = !DILocalVariable(name: "stream", arg: 1, scope: !3636, file: !509, line: 61, type: !3639)
!3644 = !DILocalVariable(name: "command_name", arg: 2, scope: !3636, file: !509, line: 62, type: !12)
!3645 = !DILocalVariable(name: "package", arg: 3, scope: !3636, file: !509, line: 62, type: !12)
!3646 = !DILocalVariable(name: "version", arg: 4, scope: !3636, file: !509, line: 63, type: !12)
!3647 = !DILocalVariable(name: "authors", arg: 5, scope: !3636, file: !509, line: 64, type: !3641)
!3648 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3636, file: !509, line: 64, type: !68)
!3649 = !DILocation(line: 0, scope: !3636)
!3650 = !DILocation(line: 66, column: 7, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3636, file: !509, line: 66, column: 7)
!3652 = !DILocation(line: 66, column: 7, scope: !3636)
!3653 = !DILocation(line: 67, column: 5, scope: !3651)
!3654 = !DILocation(line: 69, column: 5, scope: !3651)
!3655 = !DILocation(line: 83, column: 3, scope: !3636)
!3656 = !DILocation(line: 85, column: 3, scope: !3636)
!3657 = !DILocation(line: 88, column: 3, scope: !3636)
!3658 = !DILocation(line: 95, column: 3, scope: !3636)
!3659 = !DILocation(line: 97, column: 3, scope: !3636)
!3660 = !DILocation(line: 105, column: 7, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3636, file: !509, line: 98, column: 5)
!3662 = !DILocation(line: 106, column: 7, scope: !3661)
!3663 = !DILocation(line: 109, column: 7, scope: !3661)
!3664 = !DILocation(line: 110, column: 7, scope: !3661)
!3665 = !DILocation(line: 113, column: 7, scope: !3661)
!3666 = !DILocation(line: 115, column: 7, scope: !3661)
!3667 = !DILocation(line: 120, column: 7, scope: !3661)
!3668 = !DILocation(line: 122, column: 7, scope: !3661)
!3669 = !DILocation(line: 127, column: 7, scope: !3661)
!3670 = !DILocation(line: 129, column: 7, scope: !3661)
!3671 = !DILocation(line: 134, column: 7, scope: !3661)
!3672 = !DILocation(line: 137, column: 7, scope: !3661)
!3673 = !DILocation(line: 142, column: 7, scope: !3661)
!3674 = !DILocation(line: 145, column: 7, scope: !3661)
!3675 = !DILocation(line: 150, column: 7, scope: !3661)
!3676 = !DILocation(line: 154, column: 7, scope: !3661)
!3677 = !DILocation(line: 159, column: 7, scope: !3661)
!3678 = !DILocation(line: 163, column: 7, scope: !3661)
!3679 = !DILocation(line: 170, column: 7, scope: !3661)
!3680 = !DILocation(line: 174, column: 7, scope: !3661)
!3681 = !DILocation(line: 176, column: 1, scope: !3636)
!3682 = distinct !DISubprogram(name: "version_etc_ar", scope: !509, file: !509, line: 183, type: !3683, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !3639, !12, !12, !12, !3641}
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691}
!3686 = !DILocalVariable(name: "stream", arg: 1, scope: !3682, file: !509, line: 183, type: !3639)
!3687 = !DILocalVariable(name: "command_name", arg: 2, scope: !3682, file: !509, line: 184, type: !12)
!3688 = !DILocalVariable(name: "package", arg: 3, scope: !3682, file: !509, line: 184, type: !12)
!3689 = !DILocalVariable(name: "version", arg: 4, scope: !3682, file: !509, line: 185, type: !12)
!3690 = !DILocalVariable(name: "authors", arg: 5, scope: !3682, file: !509, line: 185, type: !3641)
!3691 = !DILocalVariable(name: "n_authors", scope: !3682, file: !509, line: 187, type: !68)
!3692 = !DILocation(line: 0, scope: !3682)
!3693 = !DILocation(line: 189, column: 8, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3682, file: !509, line: 189, column: 3)
!3695 = !DILocation(line: 0, scope: !3694)
!3696 = !DILocation(line: 189, column: 23, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3694, file: !509, line: 189, column: 3)
!3698 = !DILocation(line: 189, column: 3, scope: !3694)
!3699 = !DILocation(line: 189, column: 52, scope: !3697)
!3700 = distinct !{!3700, !3698, !3701}
!3701 = !DILocation(line: 190, column: 5, scope: !3694)
!3702 = !DILocation(line: 191, column: 3, scope: !3682)
!3703 = !DILocation(line: 192, column: 1, scope: !3682)
!3704 = distinct !DISubprogram(name: "version_etc_va", scope: !509, file: !509, line: 199, type: !3705, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !3714)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{null, !3639, !12, !12, !12, !3707}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !509, line: 192, size: 192, elements: !3709)
!3709 = !{!3710, !3711, !3712, !3713}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3708, file: !509, line: 192, baseType: !271, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3708, file: !509, line: 192, baseType: !271, size: 32, offset: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3708, file: !509, line: 192, baseType: !66, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3708, file: !509, line: 192, baseType: !66, size: 64, offset: 128)
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3720, !3721}
!3715 = !DILocalVariable(name: "stream", arg: 1, scope: !3704, file: !509, line: 199, type: !3639)
!3716 = !DILocalVariable(name: "command_name", arg: 2, scope: !3704, file: !509, line: 200, type: !12)
!3717 = !DILocalVariable(name: "package", arg: 3, scope: !3704, file: !509, line: 200, type: !12)
!3718 = !DILocalVariable(name: "version", arg: 4, scope: !3704, file: !509, line: 201, type: !12)
!3719 = !DILocalVariable(name: "authors", arg: 5, scope: !3704, file: !509, line: 201, type: !3707)
!3720 = !DILocalVariable(name: "n_authors", scope: !3704, file: !509, line: 203, type: !68)
!3721 = !DILocalVariable(name: "authtab", scope: !3704, file: !509, line: 204, type: !3722)
!3722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640, elements: !371)
!3723 = !DILocation(line: 0, scope: !3704)
!3724 = !DILocation(line: 204, column: 3, scope: !3704)
!3725 = !DILocation(line: 204, column: 15, scope: !3704)
!3726 = !DILocation(line: 0, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !509, line: 206, column: 3)
!3728 = distinct !DILexicalBlock(scope: !3704, file: !509, line: 206, column: 3)
!3729 = !DILocation(line: 208, column: 35, scope: !3727)
!3730 = !DILocation(line: 208, column: 14, scope: !3727)
!3731 = !DILocation(line: 208, column: 33, scope: !3727)
!3732 = !DILocation(line: 208, column: 67, scope: !3727)
!3733 = !DILocation(line: 206, column: 3, scope: !3728)
!3734 = !DILocation(line: 0, scope: !3728)
!3735 = !DILocation(line: 211, column: 3, scope: !3704)
!3736 = !DILocation(line: 213, column: 1, scope: !3704)
!3737 = distinct !DISubprogram(name: "version_etc", scope: !509, file: !509, line: 230, type: !3738, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !3639, !12, !12, !12, null}
!3740 = !{!3741, !3742, !3743, !3744, !3745}
!3741 = !DILocalVariable(name: "stream", arg: 1, scope: !3737, file: !509, line: 230, type: !3639)
!3742 = !DILocalVariable(name: "command_name", arg: 2, scope: !3737, file: !509, line: 231, type: !12)
!3743 = !DILocalVariable(name: "package", arg: 3, scope: !3737, file: !509, line: 231, type: !12)
!3744 = !DILocalVariable(name: "version", arg: 4, scope: !3737, file: !509, line: 232, type: !12)
!3745 = !DILocalVariable(name: "authors", scope: !3737, file: !509, line: 234, type: !3746)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !16, line: 52, baseType: !3747)
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3748, line: 32, baseType: !3749)
!3748 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !509, line: 234, baseType: !3750)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3708, size: 192, elements: !51)
!3751 = !DILocation(line: 0, scope: !3737)
!3752 = !DILocation(line: 234, column: 3, scope: !3737)
!3753 = !DILocation(line: 234, column: 11, scope: !3737)
!3754 = !DILocation(line: 236, column: 3, scope: !3737)
!3755 = !DILocation(line: 237, column: 3, scope: !3737)
!3756 = !DILocation(line: 238, column: 3, scope: !3737)
!3757 = !DILocation(line: 239, column: 1, scope: !3737)
!3758 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !509, file: !509, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4)
!3759 = !DILocation(line: 244, column: 3, scope: !3758)
!3760 = !DILocation(line: 249, column: 3, scope: !3758)
!3761 = !DILocation(line: 255, column: 3, scope: !3758)
!3762 = !DILocation(line: 260, column: 3, scope: !3758)
!3763 = !DILocation(line: 262, column: 1, scope: !3758)
!3764 = distinct !DISubprogram(name: "xnmalloc", scope: !125, file: !125, line: 99, type: !3765, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!66, !68, !68}
!3767 = !{!3768, !3769}
!3768 = !DILocalVariable(name: "n", arg: 1, scope: !3764, file: !125, line: 99, type: !68)
!3769 = !DILocalVariable(name: "s", arg: 2, scope: !3764, file: !125, line: 99, type: !68)
!3770 = !DILocation(line: 0, scope: !3764)
!3771 = !DILocation(line: 101, column: 7, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3764, file: !125, line: 101, column: 7)
!3773 = !DILocation(line: 101, column: 7, scope: !3764)
!3774 = !DILocation(line: 102, column: 5, scope: !3772)
!3775 = !DILocation(line: 103, column: 21, scope: !3764)
!3776 = !DILocalVariable(name: "n", arg: 1, scope: !3777, file: !551, line: 39, type: !68)
!3777 = distinct !DISubprogram(name: "xmalloc", scope: !551, file: !551, line: 39, type: !3778, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!66, !68}
!3780 = !{!3776, !3781}
!3781 = !DILocalVariable(name: "p", scope: !3777, file: !551, line: 41, type: !66)
!3782 = !DILocation(line: 0, scope: !3777, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 103, column: 10, scope: !3764)
!3784 = !DILocation(line: 41, column: 13, scope: !3777, inlinedAt: !3783)
!3785 = !DILocation(line: 42, column: 8, scope: !3786, inlinedAt: !3783)
!3786 = distinct !DILexicalBlock(scope: !3777, file: !551, line: 42, column: 7)
!3787 = !DILocation(line: 42, column: 15, scope: !3786, inlinedAt: !3783)
!3788 = !DILocation(line: 42, column: 10, scope: !3786, inlinedAt: !3783)
!3789 = !DILocation(line: 43, column: 5, scope: !3786, inlinedAt: !3783)
!3790 = !DILocation(line: 103, column: 3, scope: !3764)
!3791 = !DILocation(line: 0, scope: !3777)
!3792 = !DILocation(line: 41, column: 13, scope: !3777)
!3793 = !DILocation(line: 42, column: 8, scope: !3786)
!3794 = !DILocation(line: 42, column: 15, scope: !3786)
!3795 = !DILocation(line: 42, column: 10, scope: !3786)
!3796 = !DILocation(line: 43, column: 5, scope: !3786)
!3797 = !DILocation(line: 44, column: 3, scope: !3777)
!3798 = distinct !DISubprogram(name: "xnrealloc", scope: !125, file: !125, line: 112, type: !3799, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!66, !66, !68, !68}
!3801 = !{!3802, !3803, !3804}
!3802 = !DILocalVariable(name: "p", arg: 1, scope: !3798, file: !125, line: 112, type: !66)
!3803 = !DILocalVariable(name: "n", arg: 2, scope: !3798, file: !125, line: 112, type: !68)
!3804 = !DILocalVariable(name: "s", arg: 3, scope: !3798, file: !125, line: 112, type: !68)
!3805 = !DILocation(line: 0, scope: !3798)
!3806 = !DILocation(line: 114, column: 7, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3798, file: !125, line: 114, column: 7)
!3808 = !DILocation(line: 114, column: 7, scope: !3798)
!3809 = !DILocation(line: 115, column: 5, scope: !3807)
!3810 = !DILocation(line: 116, column: 25, scope: !3798)
!3811 = !DILocalVariable(name: "p", arg: 1, scope: !3812, file: !551, line: 51, type: !66)
!3812 = distinct !DISubprogram(name: "xrealloc", scope: !551, file: !551, line: 51, type: !3813, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!66, !66, !68}
!3815 = !{!3811, !3816}
!3816 = !DILocalVariable(name: "n", arg: 2, scope: !3812, file: !551, line: 51, type: !68)
!3817 = !DILocation(line: 0, scope: !3812, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 116, column: 10, scope: !3798)
!3819 = !DILocation(line: 53, column: 8, scope: !3820, inlinedAt: !3818)
!3820 = distinct !DILexicalBlock(scope: !3812, file: !551, line: 53, column: 7)
!3821 = !DILocation(line: 53, column: 13, scope: !3820, inlinedAt: !3818)
!3822 = !DILocation(line: 53, column: 10, scope: !3820, inlinedAt: !3818)
!3823 = !DILocation(line: 57, column: 7, scope: !3824, inlinedAt: !3818)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !551, line: 54, column: 5)
!3825 = !DILocation(line: 58, column: 7, scope: !3824, inlinedAt: !3818)
!3826 = !DILocation(line: 61, column: 7, scope: !3812, inlinedAt: !3818)
!3827 = !DILocation(line: 62, column: 8, scope: !3828, inlinedAt: !3818)
!3828 = distinct !DILexicalBlock(scope: !3812, file: !551, line: 62, column: 7)
!3829 = !DILocation(line: 62, column: 13, scope: !3828, inlinedAt: !3818)
!3830 = !DILocation(line: 62, column: 10, scope: !3828, inlinedAt: !3818)
!3831 = !DILocation(line: 63, column: 5, scope: !3828, inlinedAt: !3818)
!3832 = !DILocation(line: 116, column: 3, scope: !3798)
!3833 = !DILocation(line: 0, scope: !3812)
!3834 = !DILocation(line: 53, column: 8, scope: !3820)
!3835 = !DILocation(line: 53, column: 13, scope: !3820)
!3836 = !DILocation(line: 53, column: 10, scope: !3820)
!3837 = !DILocation(line: 57, column: 7, scope: !3824)
!3838 = !DILocation(line: 58, column: 7, scope: !3824)
!3839 = !DILocation(line: 61, column: 7, scope: !3812)
!3840 = !DILocation(line: 62, column: 8, scope: !3828)
!3841 = !DILocation(line: 62, column: 13, scope: !3828)
!3842 = !DILocation(line: 62, column: 10, scope: !3828)
!3843 = !DILocation(line: 63, column: 5, scope: !3828)
!3844 = !DILocation(line: 65, column: 1, scope: !3812)
!3845 = !DILocation(line: 0, scope: !554)
!3846 = !DILocation(line: 176, column: 14, scope: !554)
!3847 = !DILocation(line: 178, column: 9, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !554, file: !125, line: 178, column: 7)
!3849 = !DILocation(line: 178, column: 7, scope: !554)
!3850 = !DILocation(line: 180, column: 13, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !125, line: 180, column: 11)
!3852 = distinct !DILexicalBlock(scope: !3848, file: !125, line: 179, column: 5)
!3853 = !DILocation(line: 180, column: 11, scope: !3852)
!3854 = !DILocation(line: 188, column: 30, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3851, file: !125, line: 181, column: 9)
!3856 = !DILocation(line: 189, column: 16, scope: !3855)
!3857 = !DILocation(line: 189, column: 13, scope: !3855)
!3858 = !DILocation(line: 190, column: 9, scope: !3855)
!3859 = !DILocation(line: 191, column: 11, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3852, file: !125, line: 191, column: 11)
!3861 = !DILocation(line: 191, column: 11, scope: !3852)
!3862 = !DILocation(line: 206, column: 7, scope: !554)
!3863 = !DILocation(line: 207, column: 25, scope: !554)
!3864 = !DILocation(line: 0, scope: !3812, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 207, column: 10, scope: !554)
!3866 = !DILocation(line: 53, column: 10, scope: !3820, inlinedAt: !3865)
!3867 = !DILocation(line: 192, column: 9, scope: !3860)
!3868 = !DILocation(line: 200, column: 69, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !125, line: 200, column: 11)
!3870 = distinct !DILexicalBlock(scope: !3848, file: !125, line: 195, column: 5)
!3871 = !DILocation(line: 201, column: 11, scope: !3869)
!3872 = !DILocation(line: 200, column: 11, scope: !3870)
!3873 = !DILocation(line: 202, column: 9, scope: !3869)
!3874 = !DILocation(line: 203, column: 14, scope: !3870)
!3875 = !DILocation(line: 203, column: 18, scope: !3870)
!3876 = !DILocation(line: 203, column: 9, scope: !3870)
!3877 = !DILocation(line: 53, column: 8, scope: !3820, inlinedAt: !3865)
!3878 = !DILocation(line: 57, column: 7, scope: !3824, inlinedAt: !3865)
!3879 = !DILocation(line: 58, column: 7, scope: !3824, inlinedAt: !3865)
!3880 = !DILocation(line: 61, column: 7, scope: !3812, inlinedAt: !3865)
!3881 = !DILocation(line: 62, column: 8, scope: !3828, inlinedAt: !3865)
!3882 = !DILocation(line: 62, column: 13, scope: !3828, inlinedAt: !3865)
!3883 = !DILocation(line: 62, column: 10, scope: !3828, inlinedAt: !3865)
!3884 = !DILocation(line: 63, column: 5, scope: !3828, inlinedAt: !3865)
!3885 = !DILocation(line: 207, column: 3, scope: !554)
!3886 = distinct !DISubprogram(name: "xcharalloc", scope: !125, file: !125, line: 216, type: !1506, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3887)
!3887 = !{!3888}
!3888 = !DILocalVariable(name: "n", arg: 1, scope: !3886, file: !125, line: 216, type: !68)
!3889 = !DILocation(line: 0, scope: !3886)
!3890 = !DILocation(line: 0, scope: !3777, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 218, column: 10, scope: !3886)
!3892 = !DILocation(line: 41, column: 13, scope: !3777, inlinedAt: !3891)
!3893 = !DILocation(line: 42, column: 8, scope: !3786, inlinedAt: !3891)
!3894 = !DILocation(line: 42, column: 15, scope: !3786, inlinedAt: !3891)
!3895 = !DILocation(line: 42, column: 10, scope: !3786, inlinedAt: !3891)
!3896 = !DILocation(line: 43, column: 5, scope: !3786, inlinedAt: !3891)
!3897 = !DILocation(line: 218, column: 3, scope: !3886)
!3898 = distinct !DISubprogram(name: "x2realloc", scope: !551, file: !551, line: 74, type: !3899, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!66, !66, !557}
!3901 = !{!3902, !3903}
!3902 = !DILocalVariable(name: "p", arg: 1, scope: !3898, file: !551, line: 74, type: !66)
!3903 = !DILocalVariable(name: "pn", arg: 2, scope: !3898, file: !551, line: 74, type: !557)
!3904 = !DILocation(line: 0, scope: !3898)
!3905 = !DILocation(line: 0, scope: !554, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 76, column: 10, scope: !3898)
!3907 = !DILocation(line: 176, column: 14, scope: !554, inlinedAt: !3906)
!3908 = !DILocation(line: 178, column: 9, scope: !3848, inlinedAt: !3906)
!3909 = !DILocation(line: 178, column: 7, scope: !554, inlinedAt: !3906)
!3910 = !DILocation(line: 180, column: 13, scope: !3851, inlinedAt: !3906)
!3911 = !DILocation(line: 180, column: 11, scope: !3852, inlinedAt: !3906)
!3912 = !DILocation(line: 191, column: 11, scope: !3860, inlinedAt: !3906)
!3913 = !DILocation(line: 191, column: 11, scope: !3852, inlinedAt: !3906)
!3914 = !DILocation(line: 206, column: 7, scope: !554, inlinedAt: !3906)
!3915 = !DILocation(line: 0, scope: !3812, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 207, column: 10, scope: !554, inlinedAt: !3906)
!3917 = !DILocation(line: 53, column: 10, scope: !3820, inlinedAt: !3916)
!3918 = !DILocation(line: 192, column: 9, scope: !3860, inlinedAt: !3906)
!3919 = !DILocation(line: 201, column: 11, scope: !3869, inlinedAt: !3906)
!3920 = !DILocation(line: 200, column: 11, scope: !3870, inlinedAt: !3906)
!3921 = !DILocation(line: 202, column: 9, scope: !3869, inlinedAt: !3906)
!3922 = !DILocation(line: 203, column: 14, scope: !3870, inlinedAt: !3906)
!3923 = !DILocation(line: 203, column: 18, scope: !3870, inlinedAt: !3906)
!3924 = !DILocation(line: 203, column: 9, scope: !3870, inlinedAt: !3906)
!3925 = !DILocation(line: 53, column: 8, scope: !3820, inlinedAt: !3916)
!3926 = !DILocation(line: 57, column: 7, scope: !3824, inlinedAt: !3916)
!3927 = !DILocation(line: 58, column: 7, scope: !3824, inlinedAt: !3916)
!3928 = !DILocation(line: 61, column: 7, scope: !3812, inlinedAt: !3916)
!3929 = !DILocation(line: 62, column: 8, scope: !3828, inlinedAt: !3916)
!3930 = !DILocation(line: 62, column: 13, scope: !3828, inlinedAt: !3916)
!3931 = !DILocation(line: 62, column: 10, scope: !3828, inlinedAt: !3916)
!3932 = !DILocation(line: 63, column: 5, scope: !3828, inlinedAt: !3916)
!3933 = !DILocation(line: 76, column: 3, scope: !3898)
!3934 = distinct !DISubprogram(name: "xzalloc", scope: !551, file: !551, line: 84, type: !3778, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3935)
!3935 = !{!3936}
!3936 = !DILocalVariable(name: "n", arg: 1, scope: !3934, file: !551, line: 84, type: !68)
!3937 = !DILocation(line: 0, scope: !3934)
!3938 = !DILocalVariable(name: "n", arg: 1, scope: !3939, file: !551, line: 93, type: !68)
!3939 = distinct !DISubprogram(name: "xcalloc", scope: !551, file: !551, line: 93, type: !3765, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3940)
!3940 = !{!3938, !3941, !3942}
!3941 = !DILocalVariable(name: "s", arg: 2, scope: !3939, file: !551, line: 93, type: !68)
!3942 = !DILocalVariable(name: "p", scope: !3939, file: !551, line: 95, type: !66)
!3943 = !DILocation(line: 0, scope: !3939, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 86, column: 10, scope: !3934)
!3945 = !DILocation(line: 100, column: 7, scope: !3946, inlinedAt: !3944)
!3946 = distinct !DILexicalBlock(scope: !3939, file: !551, line: 100, column: 7)
!3947 = !DILocation(line: 101, column: 7, scope: !3946, inlinedAt: !3944)
!3948 = !DILocation(line: 101, column: 18, scope: !3946, inlinedAt: !3944)
!3949 = !DILocation(line: 101, column: 16, scope: !3946, inlinedAt: !3944)
!3950 = !DILocation(line: 100, column: 7, scope: !3939, inlinedAt: !3944)
!3951 = !DILocation(line: 102, column: 5, scope: !3946, inlinedAt: !3944)
!3952 = !DILocation(line: 86, column: 3, scope: !3934)
!3953 = !DILocation(line: 0, scope: !3939)
!3954 = !DILocation(line: 100, column: 7, scope: !3946)
!3955 = !DILocation(line: 101, column: 7, scope: !3946)
!3956 = !DILocation(line: 101, column: 18, scope: !3946)
!3957 = !DILocation(line: 101, column: 16, scope: !3946)
!3958 = !DILocation(line: 100, column: 7, scope: !3939)
!3959 = !DILocation(line: 102, column: 5, scope: !3946)
!3960 = !DILocation(line: 103, column: 3, scope: !3939)
!3961 = distinct !DISubprogram(name: "xmemdup", scope: !551, file: !551, line: 111, type: !3962, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!66, !308, !68}
!3964 = !{!3965, !3966}
!3965 = !DILocalVariable(name: "p", arg: 1, scope: !3961, file: !551, line: 111, type: !308)
!3966 = !DILocalVariable(name: "s", arg: 2, scope: !3961, file: !551, line: 111, type: !68)
!3967 = !DILocation(line: 0, scope: !3961)
!3968 = !DILocation(line: 0, scope: !3777, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 113, column: 18, scope: !3961)
!3970 = !DILocation(line: 41, column: 13, scope: !3777, inlinedAt: !3969)
!3971 = !DILocation(line: 42, column: 8, scope: !3786, inlinedAt: !3969)
!3972 = !DILocation(line: 42, column: 15, scope: !3786, inlinedAt: !3969)
!3973 = !DILocation(line: 42, column: 10, scope: !3786, inlinedAt: !3969)
!3974 = !DILocation(line: 43, column: 5, scope: !3786, inlinedAt: !3969)
!3975 = !DILocalVariable(name: "__dest", arg: 1, scope: !3976, file: !1514, line: 31, type: !1517)
!3976 = distinct !DISubprogram(name: "memcpy", scope: !1514, file: !1514, line: 31, type: !1515, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3977)
!3977 = !{!3975, !3978, !3979}
!3978 = !DILocalVariable(name: "__src", arg: 2, scope: !3976, file: !1514, line: 31, type: !1518)
!3979 = !DILocalVariable(name: "__len", arg: 3, scope: !3976, file: !1514, line: 31, type: !68)
!3980 = !DILocation(line: 0, scope: !3976, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 113, column: 10, scope: !3961)
!3982 = !DILocation(line: 34, column: 10, scope: !3976, inlinedAt: !3981)
!3983 = !DILocation(line: 113, column: 3, scope: !3961)
!3984 = distinct !DISubprogram(name: "xstrdup", scope: !551, file: !551, line: 119, type: !88, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3985)
!3985 = !{!3986}
!3986 = !DILocalVariable(name: "string", arg: 1, scope: !3984, file: !551, line: 119, type: !12)
!3987 = !DILocation(line: 0, scope: !3984)
!3988 = !DILocation(line: 121, column: 27, scope: !3984)
!3989 = !DILocation(line: 121, column: 43, scope: !3984)
!3990 = !DILocation(line: 0, scope: !3961, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 121, column: 10, scope: !3984)
!3992 = !DILocation(line: 0, scope: !3777, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 113, column: 18, scope: !3961, inlinedAt: !3991)
!3994 = !DILocation(line: 41, column: 13, scope: !3777, inlinedAt: !3993)
!3995 = !DILocation(line: 42, column: 8, scope: !3786, inlinedAt: !3993)
!3996 = !DILocation(line: 42, column: 15, scope: !3786, inlinedAt: !3993)
!3997 = !DILocation(line: 42, column: 10, scope: !3786, inlinedAt: !3993)
!3998 = !DILocation(line: 43, column: 5, scope: !3786, inlinedAt: !3993)
!3999 = !DILocation(line: 0, scope: !3976, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 113, column: 10, scope: !3961, inlinedAt: !3991)
!4001 = !DILocation(line: 34, column: 10, scope: !3976, inlinedAt: !4000)
!4002 = !DILocation(line: 121, column: 3, scope: !3984)
!4003 = distinct !DISubprogram(name: "xalloc_die", scope: !572, file: !572, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4)
!4004 = !DILocation(line: 34, column: 10, scope: !4003)
!4005 = !DILocation(line: 34, column: 33, scope: !4003)
!4006 = !DILocation(line: 34, column: 3, scope: !4003)
!4007 = !DILocation(line: 40, column: 3, scope: !4003)
!4008 = distinct !DISubprogram(name: "rpl_calloc", scope: !575, file: !575, line: 42, type: !3765, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !574, retainedNodes: !4009)
!4009 = !{!4010, !4011, !4012, !4013}
!4010 = !DILocalVariable(name: "n", arg: 1, scope: !4008, file: !575, line: 42, type: !68)
!4011 = !DILocalVariable(name: "s", arg: 2, scope: !4008, file: !575, line: 42, type: !68)
!4012 = !DILocalVariable(name: "result", scope: !4008, file: !575, line: 44, type: !66)
!4013 = !DILocalVariable(name: "bytes", scope: !4014, file: !575, line: 56, type: !68)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !575, line: 53, column: 5)
!4015 = distinct !DILexicalBlock(scope: !4008, file: !575, line: 47, column: 7)
!4016 = !DILocation(line: 0, scope: !4008)
!4017 = !DILocation(line: 47, column: 9, scope: !4015)
!4018 = !DILocation(line: 47, column: 19, scope: !4015)
!4019 = !DILocation(line: 47, column: 14, scope: !4015)
!4020 = !DILocation(line: 0, scope: !4014)
!4021 = !DILocation(line: 57, column: 21, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4014, file: !575, line: 57, column: 11)
!4023 = !DILocation(line: 57, column: 11, scope: !4014)
!4024 = !DILocation(line: 59, column: 11, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4022, file: !575, line: 58, column: 9)
!4026 = !DILocation(line: 59, column: 17, scope: !4025)
!4027 = !DILocation(line: 65, column: 12, scope: !4008)
!4028 = !DILocation(line: 72, column: 3, scope: !4008)
!4029 = !DILocation(line: 73, column: 1, scope: !4008)
!4030 = distinct !DISubprogram(name: "rpl_fclose", scope: !578, file: !578, line: 58, type: !4031, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !4035)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!14, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1703, line: 7, baseType: !584)
!4035 = !{!4036, !4037, !4038, !4039}
!4036 = !DILocalVariable(name: "fp", arg: 1, scope: !4030, file: !578, line: 58, type: !4033)
!4037 = !DILocalVariable(name: "saved_errno", scope: !4030, file: !578, line: 60, type: !14)
!4038 = !DILocalVariable(name: "fd", scope: !4030, file: !578, line: 61, type: !14)
!4039 = !DILocalVariable(name: "result", scope: !4030, file: !578, line: 62, type: !14)
!4040 = !DILocation(line: 0, scope: !4030)
!4041 = !DILocation(line: 65, column: 8, scope: !4030)
!4042 = !DILocation(line: 66, column: 10, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4030, file: !578, line: 66, column: 7)
!4044 = !DILocation(line: 66, column: 7, scope: !4030)
!4045 = !DILocation(line: 67, column: 12, scope: !4043)
!4046 = !DILocation(line: 67, column: 5, scope: !4043)
!4047 = !DILocation(line: 72, column: 9, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4030, file: !578, line: 72, column: 7)
!4049 = !DILocation(line: 72, column: 23, scope: !4048)
!4050 = !DILocation(line: 72, column: 33, scope: !4048)
!4051 = !DILocation(line: 72, column: 26, scope: !4048)
!4052 = !DILocation(line: 72, column: 59, scope: !4048)
!4053 = !DILocation(line: 73, column: 7, scope: !4048)
!4054 = !DILocation(line: 73, column: 10, scope: !4048)
!4055 = !DILocation(line: 72, column: 7, scope: !4030)
!4056 = !DILocation(line: 100, column: 12, scope: !4030)
!4057 = !DILocation(line: 105, column: 7, scope: !4030)
!4058 = !DILocation(line: 74, column: 19, scope: !4048)
!4059 = !DILocation(line: 105, column: 19, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4030, file: !578, line: 105, column: 7)
!4061 = !DILocation(line: 107, column: 13, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4060, file: !578, line: 106, column: 5)
!4063 = !DILocation(line: 109, column: 5, scope: !4062)
!4064 = !DILocation(line: 112, column: 1, scope: !4030)
!4065 = distinct !DISubprogram(name: "rpl_fflush", scope: !621, file: !621, line: 129, type: !4066, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !620, retainedNodes: !4070)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!14, !4068}
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1703, line: 7, baseType: !627)
!4070 = !{!4071}
!4071 = !DILocalVariable(name: "stream", arg: 1, scope: !4065, file: !621, line: 129, type: !4068)
!4072 = !DILocation(line: 0, scope: !4065)
!4073 = !DILocation(line: 150, column: 14, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4065, file: !621, line: 150, column: 7)
!4075 = !DILocation(line: 150, column: 22, scope: !4074)
!4076 = !DILocation(line: 150, column: 27, scope: !4074)
!4077 = !DILocation(line: 150, column: 7, scope: !4065)
!4078 = !DILocation(line: 151, column: 12, scope: !4074)
!4079 = !DILocation(line: 151, column: 5, scope: !4074)
!4080 = !DILocalVariable(name: "fp", arg: 1, scope: !4081, file: !621, line: 41, type: !4068)
!4081 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !621, file: !621, line: 41, type: !4082, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !620, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{null, !4068}
!4084 = !{!4080}
!4085 = !DILocation(line: 0, scope: !4081, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 156, column: 3, scope: !4065)
!4087 = !DILocation(line: 43, column: 11, scope: !4088, inlinedAt: !4086)
!4088 = distinct !DILexicalBlock(scope: !4081, file: !621, line: 43, column: 7)
!4089 = !DILocation(line: 43, column: 18, scope: !4088, inlinedAt: !4086)
!4090 = !DILocation(line: 43, column: 7, scope: !4081, inlinedAt: !4086)
!4091 = !DILocation(line: 45, column: 5, scope: !4088, inlinedAt: !4086)
!4092 = !DILocation(line: 158, column: 10, scope: !4065)
!4093 = !DILocation(line: 158, column: 3, scope: !4065)
!4094 = !DILocation(line: 235, column: 1, scope: !4065)
!4095 = distinct !DISubprogram(name: "rpl_fseeko", scope: !662, file: !662, line: 28, type: !4096, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !4101)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!14, !4098, !4100, !14}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1703, line: 7, baseType: !668)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !16, line: 63, baseType: !42)
!4101 = !{!4102, !4103, !4104, !4105}
!4102 = !DILocalVariable(name: "fp", arg: 1, scope: !4095, file: !662, line: 28, type: !4098)
!4103 = !DILocalVariable(name: "offset", arg: 2, scope: !4095, file: !662, line: 28, type: !4100)
!4104 = !DILocalVariable(name: "whence", arg: 3, scope: !4095, file: !662, line: 28, type: !14)
!4105 = !DILocalVariable(name: "pos", scope: !4106, file: !662, line: 117, type: !4100)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !662, line: 113, column: 5)
!4107 = distinct !DILexicalBlock(scope: !4095, file: !662, line: 52, column: 7)
!4108 = !DILocation(line: 0, scope: !4095)
!4109 = !DILocation(line: 52, column: 11, scope: !4107)
!4110 = !{!1720, !1362, i64 16}
!4111 = !DILocation(line: 52, column: 31, scope: !4107)
!4112 = !{!1720, !1362, i64 8}
!4113 = !DILocation(line: 52, column: 24, scope: !4107)
!4114 = !DILocation(line: 53, column: 7, scope: !4107)
!4115 = !DILocation(line: 53, column: 14, scope: !4107)
!4116 = !{!1720, !1362, i64 40}
!4117 = !DILocation(line: 53, column: 35, scope: !4107)
!4118 = !{!1720, !1362, i64 32}
!4119 = !DILocation(line: 53, column: 28, scope: !4107)
!4120 = !DILocation(line: 54, column: 7, scope: !4107)
!4121 = !DILocation(line: 54, column: 14, scope: !4107)
!4122 = !{!1720, !1362, i64 72}
!4123 = !DILocation(line: 54, column: 28, scope: !4107)
!4124 = !DILocation(line: 52, column: 7, scope: !4095)
!4125 = !DILocation(line: 117, column: 26, scope: !4106)
!4126 = !DILocation(line: 117, column: 19, scope: !4106)
!4127 = !DILocation(line: 0, scope: !4106)
!4128 = !DILocation(line: 118, column: 15, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4106, file: !662, line: 118, column: 11)
!4130 = !DILocation(line: 118, column: 11, scope: !4106)
!4131 = !DILocation(line: 129, column: 11, scope: !4106)
!4132 = !DILocation(line: 129, column: 18, scope: !4106)
!4133 = !DILocation(line: 130, column: 11, scope: !4106)
!4134 = !DILocation(line: 130, column: 19, scope: !4106)
!4135 = !{!1720, !1721, i64 144}
!4136 = !DILocation(line: 161, column: 7, scope: !4106)
!4137 = !DILocation(line: 163, column: 10, scope: !4095)
!4138 = !DILocation(line: 163, column: 3, scope: !4095)
!4139 = !DILocation(line: 164, column: 1, scope: !4095)
!4140 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !703, file: !703, line: 86, type: !4141, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !4147)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!68, !4143, !12, !68, !4144}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2112, line: 6, baseType: !4146)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !333, line: 21, baseType: !709)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153, !4154}
!4148 = !DILocalVariable(name: "pwc", arg: 1, scope: !4140, file: !703, line: 86, type: !4143)
!4149 = !DILocalVariable(name: "s", arg: 2, scope: !4140, file: !703, line: 86, type: !12)
!4150 = !DILocalVariable(name: "n", arg: 3, scope: !4140, file: !703, line: 86, type: !68)
!4151 = !DILocalVariable(name: "ps", arg: 4, scope: !4140, file: !703, line: 86, type: !4144)
!4152 = !DILocalVariable(name: "ret", scope: !4140, file: !703, line: 88, type: !68)
!4153 = !DILocalVariable(name: "wc", scope: !4140, file: !703, line: 89, type: !2116)
!4154 = !DILocalVariable(name: "uc", scope: !4155, file: !703, line: 156, type: !1989)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !703, line: 155, column: 5)
!4156 = distinct !DILexicalBlock(scope: !4140, file: !703, line: 154, column: 7)
!4157 = !DILocation(line: 0, scope: !4140)
!4158 = !DILocation(line: 89, column: 3, scope: !4140)
!4159 = !DILocation(line: 105, column: 9, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4140, file: !703, line: 105, column: 7)
!4161 = !DILocation(line: 105, column: 7, scope: !4140)
!4162 = !DILocation(line: 145, column: 9, scope: !4140)
!4163 = !DILocation(line: 154, column: 19, scope: !4156)
!4164 = !DILocation(line: 154, column: 31, scope: !4156)
!4165 = !DILocation(line: 154, column: 26, scope: !4156)
!4166 = !DILocation(line: 154, column: 41, scope: !4156)
!4167 = !DILocation(line: 154, column: 7, scope: !4140)
!4168 = !DILocation(line: 156, column: 26, scope: !4155)
!4169 = !DILocation(line: 0, scope: !4155)
!4170 = !DILocation(line: 157, column: 14, scope: !4155)
!4171 = !DILocation(line: 157, column: 12, scope: !4155)
!4172 = !DILocation(line: 163, column: 1, scope: !4140)
!4173 = distinct !DISubprogram(name: "hard_locale", scope: !722, file: !722, line: 27, type: !719, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !4174)
!4174 = !{!4175, !4176}
!4175 = !DILocalVariable(name: "category", arg: 1, scope: !4173, file: !722, line: 27, type: !14)
!4176 = !DILocalVariable(name: "locale", scope: !4173, file: !722, line: 29, type: !4177)
!4177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !4178)
!4178 = !{!4179}
!4179 = !DISubrange(count: 257)
!4180 = !DILocation(line: 0, scope: !4173)
!4181 = !DILocation(line: 29, column: 3, scope: !4173)
!4182 = !DILocation(line: 29, column: 8, scope: !4173)
!4183 = !DILocation(line: 31, column: 7, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4173, file: !722, line: 31, column: 7)
!4185 = !DILocation(line: 31, column: 7, scope: !4173)
!4186 = !DILocation(line: 34, column: 12, scope: !4173)
!4187 = !DILocation(line: 34, column: 38, scope: !4173)
!4188 = !DILocation(line: 34, column: 41, scope: !4173)
!4189 = !DILocation(line: 34, column: 66, scope: !4173)
!4190 = !DILocation(line: 35, column: 1, scope: !4173)
!4191 = distinct !DISubprogram(name: "locale_charset", scope: !729, file: !729, line: 831, type: !356, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4192)
!4192 = !{!4193}
!4193 = !DILocalVariable(name: "codeset", scope: !4191, file: !729, line: 833, type: !12)
!4194 = !DILocation(line: 847, column: 13, scope: !4191)
!4195 = !DILocation(line: 0, scope: !4191)
!4196 = !DILocation(line: 911, column: 15, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4191, file: !729, line: 911, column: 7)
!4198 = !DILocation(line: 911, column: 7, scope: !4191)
!4199 = !DILocation(line: 1070, column: 13, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4201, file: !729, line: 1070, column: 13)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !729, line: 1060, column: 7)
!4202 = distinct !DILexicalBlock(scope: !4191, file: !729, line: 1019, column: 3)
!4203 = !DILocation(line: 1070, column: 24, scope: !4200)
!4204 = !DILocation(line: 1070, column: 13, scope: !4201)
!4205 = !DILocation(line: 1158, column: 3, scope: !4191)
!4206 = distinct !DISubprogram(name: "randint_new", scope: !1122, file: !1122, line: 71, type: !4207, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1121, retainedNodes: !4218)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!4209, !1128}
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !1122, line: 54, size: 192, elements: !4211)
!4211 = !{!4212, !4213, !4217}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4210, file: !1122, line: 57, baseType: !1128, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "randnum", scope: !4210, file: !1122, line: 64, baseType: !4214, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "randint", file: !403, line: 30, baseType: !4215)
!4215 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1189, line: 102, baseType: !4216)
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !43, line: 73, baseType: !70)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "randmax", scope: !4210, file: !1122, line: 65, baseType: !4214, size: 64, offset: 128)
!4218 = !{!4219, !4220}
!4219 = !DILocalVariable(name: "source", arg: 1, scope: !4206, file: !1122, line: 71, type: !1128)
!4220 = !DILocalVariable(name: "s", scope: !4206, file: !1122, line: 73, type: !4209)
!4221 = !DILocation(line: 0, scope: !4206)
!4222 = !DILocation(line: 73, column: 30, scope: !4206)
!4223 = !DILocation(line: 74, column: 6, scope: !4206)
!4224 = !DILocation(line: 74, column: 13, scope: !4206)
!4225 = !{!4226, !1362, i64 0}
!4226 = !{!"randint_source", !1362, i64 0, !1721, i64 8, !1721, i64 16}
!4227 = !DILocation(line: 75, column: 6, scope: !4206)
!4228 = !DILocation(line: 75, column: 14, scope: !4206)
!4229 = !DILocation(line: 76, column: 3, scope: !4206)
!4230 = distinct !DISubprogram(name: "randint_all_new", scope: !1122, file: !1122, line: 84, type: !4231, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1121, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!4209, !12, !68}
!4233 = !{!4234, !4235, !4236}
!4234 = !DILocalVariable(name: "name", arg: 1, scope: !4230, file: !1122, line: 84, type: !12)
!4235 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !4230, file: !1122, line: 84, type: !68)
!4236 = !DILocalVariable(name: "source", scope: !4230, file: !1122, line: 86, type: !1128)
!4237 = !DILocation(line: 0, scope: !4230)
!4238 = !DILocation(line: 86, column: 36, scope: !4230)
!4239 = !DILocation(line: 87, column: 11, scope: !4230)
!4240 = !DILocation(line: 0, scope: !4206, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 87, column: 20, scope: !4230)
!4242 = !DILocation(line: 73, column: 30, scope: !4206, inlinedAt: !4241)
!4243 = !DILocation(line: 74, column: 6, scope: !4206, inlinedAt: !4241)
!4244 = !DILocation(line: 74, column: 13, scope: !4206, inlinedAt: !4241)
!4245 = !DILocation(line: 75, column: 6, scope: !4206, inlinedAt: !4241)
!4246 = !DILocation(line: 75, column: 14, scope: !4206, inlinedAt: !4241)
!4247 = !DILocation(line: 87, column: 3, scope: !4230)
!4248 = distinct !DISubprogram(name: "randint_get_source", scope: !1122, file: !1122, line: 93, type: !4249, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1121, retainedNodes: !4253)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!1128, !4251}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4210)
!4253 = !{!4254}
!4254 = !DILocalVariable(name: "s", arg: 1, scope: !4248, file: !1122, line: 93, type: !4251)
!4255 = !DILocation(line: 0, scope: !4248)
!4256 = !DILocation(line: 95, column: 13, scope: !4248)
!4257 = !DILocation(line: 95, column: 3, scope: !4248)
!4258 = distinct !DISubprogram(name: "randint_genmax", scope: !1122, file: !1122, line: 114, type: !4259, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1121, retainedNodes: !4261)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!4214, !4209, !4214}
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4272, !4273, !4275, !4278, !4279, !4280}
!4262 = !DILocalVariable(name: "s", arg: 1, scope: !4258, file: !1122, line: 114, type: !4209)
!4263 = !DILocalVariable(name: "genmax", arg: 2, scope: !4258, file: !1122, line: 114, type: !4214)
!4264 = !DILocalVariable(name: "source", scope: !4258, file: !1122, line: 116, type: !1128)
!4265 = !DILocalVariable(name: "randnum", scope: !4258, file: !1122, line: 117, type: !4214)
!4266 = !DILocalVariable(name: "randmax", scope: !4258, file: !1122, line: 118, type: !4214)
!4267 = !DILocalVariable(name: "choices", scope: !4258, file: !1122, line: 119, type: !4214)
!4268 = !DILocalVariable(name: "i", scope: !4269, file: !1122, line: 128, type: !68)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !1122, line: 124, column: 9)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !1122, line: 123, column: 11)
!4271 = distinct !DILexicalBlock(scope: !4258, file: !1122, line: 122, column: 5)
!4272 = !DILocalVariable(name: "rmax", scope: !4269, file: !1122, line: 129, type: !4214)
!4273 = !DILocalVariable(name: "buf", scope: !4269, file: !1122, line: 130, type: !4274)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1989, size: 64, elements: !165)
!4275 = !DILocalVariable(name: "excess_choices", scope: !4276, file: !1122, line: 176, type: !4214)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !1122, line: 165, column: 9)
!4277 = distinct !DILexicalBlock(scope: !4271, file: !1122, line: 159, column: 11)
!4278 = !DILocalVariable(name: "unusable_choices", scope: !4276, file: !1122, line: 177, type: !4214)
!4279 = !DILocalVariable(name: "last_usable_choice", scope: !4276, file: !1122, line: 178, type: !4214)
!4280 = !DILocalVariable(name: "reduced_randnum", scope: !4276, file: !1122, line: 179, type: !4214)
!4281 = !DILocation(line: 0, scope: !4258)
!4282 = !DILocation(line: 116, column: 39, scope: !4258)
!4283 = !DILocation(line: 117, column: 24, scope: !4258)
!4284 = !{!4226, !1721, i64 8}
!4285 = !DILocation(line: 118, column: 24, scope: !4258)
!4286 = !{!4226, !1721, i64 16}
!4287 = !DILocation(line: 119, column: 28, scope: !4258)
!4288 = !DILocation(line: 0, scope: !4269)
!4289 = !DILocation(line: 121, column: 3, scope: !4258)
!4290 = !DILocation(line: 123, column: 19, scope: !4270)
!4291 = !DILocation(line: 123, column: 11, scope: !4271)
!4292 = !DILocation(line: 130, column: 11, scope: !4269)
!4293 = !DILocation(line: 130, column: 25, scope: !4269)
!4294 = !DILocation(line: 132, column: 11, scope: !4269)
!4295 = !DILocalVariable(name: "x", arg: 1, scope: !4296, file: !1122, line: 104, type: !4214)
!4296 = distinct !DISubprogram(name: "shift_left", scope: !1122, file: !1122, line: 104, type: !4297, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1121, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!4214, !4214}
!4299 = !{!4295}
!4300 = !DILocation(line: 0, scope: !4296, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 134, column: 22, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4269, file: !1122, line: 133, column: 13)
!4303 = !DILocation(line: 106, column: 29, scope: !4296, inlinedAt: !4301)
!4304 = !DILocation(line: 134, column: 40, scope: !4302)
!4305 = !DILocation(line: 135, column: 16, scope: !4302)
!4306 = !DILocation(line: 137, column: 23, scope: !4269)
!4307 = !DILocation(line: 136, column: 13, scope: !4302)
!4308 = distinct !{!4308, !4294, !4309}
!4309 = !DILocation(line: 137, column: 31, scope: !4269)
!4310 = !DILocation(line: 139, column: 11, scope: !4269)
!4311 = !DILocation(line: 150, column: 11, scope: !4269)
!4312 = !DILocation(line: 0, scope: !4296, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 152, column: 25, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4269, file: !1122, line: 151, column: 13)
!4315 = !DILocation(line: 106, column: 29, scope: !4296, inlinedAt: !4313)
!4316 = !DILocation(line: 152, column: 48, scope: !4314)
!4317 = !DILocation(line: 152, column: 46, scope: !4314)
!4318 = !DILocation(line: 0, scope: !4296, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 153, column: 25, scope: !4314)
!4320 = !DILocation(line: 106, column: 29, scope: !4296, inlinedAt: !4319)
!4321 = !DILocation(line: 153, column: 46, scope: !4314)
!4322 = !DILocation(line: 154, column: 16, scope: !4314)
!4323 = !DILocation(line: 156, column: 26, scope: !4269)
!4324 = !DILocation(line: 155, column: 13, scope: !4314)
!4325 = distinct !{!4325, !4311, !4326}
!4326 = !DILocation(line: 156, column: 34, scope: !4269)
!4327 = !DILocation(line: 157, column: 9, scope: !4270)
!4328 = !DILocation(line: 157, column: 9, scope: !4269)
!4329 = !DILocation(line: 159, column: 19, scope: !4277)
!4330 = !DILocation(line: 159, column: 11, scope: !4271)
!4331 = !DILocation(line: 162, column: 11, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4277, file: !1122, line: 160, column: 9)
!4333 = !DILocation(line: 161, column: 22, scope: !4332)
!4334 = !DILocation(line: 176, column: 44, scope: !4276)
!4335 = !DILocation(line: 0, scope: !4276)
!4336 = !DILocation(line: 177, column: 53, scope: !4276)
!4337 = !DILocation(line: 184, column: 43, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4339, file: !1122, line: 182, column: 13)
!4339 = distinct !DILexicalBlock(scope: !4276, file: !1122, line: 181, column: 15)
!4340 = !DILocation(line: 178, column: 48, scope: !4276)
!4341 = !DILocation(line: 179, column: 45, scope: !4276)
!4342 = !DILocation(line: 183, column: 36, scope: !4338)
!4343 = !DILocation(line: 181, column: 23, scope: !4339)
!4344 = !DILocation(line: 191, column: 38, scope: !4276)
!4345 = !DILocation(line: 181, column: 15, scope: !4276)
!4346 = !DILocation(line: 183, column: 26, scope: !4338)
!4347 = !DILocation(line: 184, column: 26, scope: !4338)
!4348 = !DILocation(line: 0, scope: !4277)
!4349 = !DILocation(line: 194, column: 1, scope: !4258)
!4350 = distinct !DISubprogram(name: "randint_free", scope: !1122, file: !1122, line: 199, type: !4351, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1121, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{null, !4209}
!4353 = !{!4354}
!4354 = !DILocalVariable(name: "s", arg: 1, scope: !4350, file: !1122, line: 199, type: !4209)
!4355 = !DILocation(line: 0, scope: !4350)
!4356 = !DILocation(line: 201, column: 19, scope: !4350)
!4357 = !DILocalVariable(name: "__dest", arg: 1, scope: !4358, file: !1514, line: 81, type: !66)
!4358 = distinct !DISubprogram(name: "explicit_bzero", scope: !1514, file: !1514, line: 81, type: !4359, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1121, retainedNodes: !4361)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{null, !66, !68}
!4361 = !{!4357, !4362}
!4362 = !DILocalVariable(name: "__len", arg: 2, scope: !4358, file: !1514, line: 81, type: !68)
!4363 = !DILocation(line: 0, scope: !4358, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 201, column: 3, scope: !4350)
!4365 = !DILocation(line: 83, column: 3, scope: !4358, inlinedAt: !4364)
!4366 = !DILocation(line: 202, column: 3, scope: !4350)
!4367 = !DILocation(line: 203, column: 1, scope: !4350)
!4368 = distinct !DISubprogram(name: "randint_all_free", scope: !1122, file: !1122, line: 209, type: !4369, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1121, retainedNodes: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!14, !4209}
!4371 = !{!4372, !4373, !4374}
!4372 = !DILocalVariable(name: "s", arg: 1, scope: !4368, file: !1122, line: 209, type: !4209)
!4373 = !DILocalVariable(name: "r", scope: !4368, file: !1122, line: 211, type: !14)
!4374 = !DILocalVariable(name: "e", scope: !4368, file: !1122, line: 212, type: !14)
!4375 = !DILocation(line: 0, scope: !4368)
!4376 = !DILocation(line: 211, column: 29, scope: !4368)
!4377 = !DILocation(line: 211, column: 11, scope: !4368)
!4378 = !DILocation(line: 212, column: 11, scope: !4368)
!4379 = !DILocation(line: 0, scope: !4350, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 213, column: 3, scope: !4368)
!4381 = !DILocation(line: 201, column: 19, scope: !4350, inlinedAt: !4380)
!4382 = !DILocation(line: 0, scope: !4358, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 201, column: 3, scope: !4350, inlinedAt: !4380)
!4384 = !DILocation(line: 83, column: 3, scope: !4358, inlinedAt: !4383)
!4385 = !DILocation(line: 202, column: 3, scope: !4350, inlinedAt: !4380)
!4386 = !DILocation(line: 214, column: 9, scope: !4368)
!4387 = !DILocation(line: 215, column: 3, scope: !4368)
!4388 = distinct !DISubprogram(name: "randread_new", scope: !1137, file: !1137, line: 204, type: !4389, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4422)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!4391, !12, !68}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !1137, line: 79, size: 33216, elements: !4393)
!4393 = !{!4394, !4397, !4401, !4402}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4392, file: !1137, line: 83, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1703, line: 7, baseType: !1144)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4392, file: !1137, line: 90, baseType: !4398, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{null, !308}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "handler_arg", scope: !4392, file: !1137, line: 91, baseType: !308, size: 64, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4392, file: !1137, line: 117, baseType: !4403, size: 33024, offset: 192)
!4403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4392, file: !1137, line: 96, size: 33024, elements: !4404)
!4404 = !{!4405, !4409}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4403, file: !1137, line: 99, baseType: !4406, size: 32768)
!4406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32768, elements: !4407)
!4407 = !{!4408}
!4408 = !DISubrange(count: 4096)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "isaac", scope: !4403, file: !1137, line: 116, baseType: !4410, size: 33024)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac", file: !1137, line: 102, size: 33024, elements: !4411)
!4411 = !{!4412, !4413, !4414}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !4410, file: !1137, line: 105, baseType: !68, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4410, file: !1137, line: 108, baseType: !1183, size: 16576, offset: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4410, file: !1137, line: 115, baseType: !4415, size: 16384, offset: 16640)
!4415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4410, file: !1137, line: 111, size: 16384, elements: !4416)
!4416 = !{!4417, !4418}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !4415, file: !1137, line: 113, baseType: !1186, size: 16384)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4415, file: !1137, line: 114, baseType: !4419, size: 16384)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1989, size: 16384, elements: !4420)
!4420 = !{!4421}
!4421 = !DISubrange(count: 2048)
!4422 = !{!4423, !4424, !4425, !4428}
!4423 = !DILocalVariable(name: "name", arg: 1, scope: !4388, file: !1137, line: 204, type: !12)
!4424 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !4388, file: !1137, line: 204, type: !68)
!4425 = !DILocalVariable(name: "source", scope: !4426, file: !1137, line: 210, type: !4395)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !1137, line: 209, column: 5)
!4427 = distinct !DILexicalBlock(scope: !4388, file: !1137, line: 206, column: 7)
!4428 = !DILocalVariable(name: "s", scope: !4426, file: !1137, line: 211, type: !4391)
!4429 = !DILocalVariable(name: "v", scope: !4430, file: !1137, line: 177, type: !1203)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !1137, line: 177, column: 3)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !1137, line: 177, column: 3)
!4432 = distinct !DISubprogram(name: "get_nonce", scope: !1137, file: !1137, line: 151, type: !4433, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !66, !68, !68}
!4435 = !{!4436, !4437, !4438, !4439, !4440, !4444, !4429, !4445, !4446, !4451, !4452, !4455, !4456, !4460, !4461, !4464}
!4436 = !DILocalVariable(name: "buffer", arg: 1, scope: !4432, file: !1137, line: 151, type: !66)
!4437 = !DILocalVariable(name: "bufsize", arg: 2, scope: !4432, file: !1137, line: 151, type: !68)
!4438 = !DILocalVariable(name: "bytes_bound", arg: 3, scope: !4432, file: !1137, line: 151, type: !68)
!4439 = !DILocalVariable(name: "buf", scope: !4432, file: !1137, line: 153, type: !10)
!4440 = !DILocalVariable(name: "seeded", scope: !4432, file: !1137, line: 154, type: !4441)
!4441 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !4442, line: 108, baseType: !4443)
!4442 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 193, baseType: !44)
!4444 = !DILocalVariable(name: "fd", scope: !4432, file: !1137, line: 157, type: !14)
!4445 = !DILocalVariable(name: "nbytes", scope: !4430, file: !1137, line: 177, type: !68)
!4446 = !DILocalVariable(name: "v", scope: !4447, file: !1137, line: 178, type: !4449)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !1137, line: 178, column: 3)
!4448 = distinct !DILexicalBlock(scope: !4432, file: !1137, line: 178, column: 3)
!4449 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !4442, line: 97, baseType: !4450)
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !43, line: 154, baseType: !14)
!4451 = !DILocalVariable(name: "nbytes", scope: !4447, file: !1137, line: 178, type: !68)
!4452 = !DILocalVariable(name: "v", scope: !4453, file: !1137, line: 179, type: !4449)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !1137, line: 179, column: 3)
!4454 = distinct !DILexicalBlock(scope: !4432, file: !1137, line: 179, column: 3)
!4455 = !DILocalVariable(name: "nbytes", scope: !4453, file: !1137, line: 179, type: !68)
!4456 = !DILocalVariable(name: "v", scope: !4457, file: !1137, line: 180, type: !4459)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !1137, line: 180, column: 3)
!4458 = distinct !DILexicalBlock(scope: !4432, file: !1137, line: 180, column: 3)
!4459 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !4442, line: 79, baseType: !3561)
!4460 = !DILocalVariable(name: "nbytes", scope: !4457, file: !1137, line: 180, type: !68)
!4461 = !DILocalVariable(name: "v", scope: !4462, file: !1137, line: 181, type: !4459)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !1137, line: 181, column: 3)
!4463 = distinct !DILexicalBlock(scope: !4432, file: !1137, line: 181, column: 3)
!4464 = !DILocalVariable(name: "nbytes", scope: !4462, file: !1137, line: 181, type: !68)
!4465 = !DILocation(line: 177, column: 3, scope: !4430, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 224, column: 11, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !1137, line: 222, column: 9)
!4468 = distinct !DILexicalBlock(scope: !4426, file: !1137, line: 219, column: 11)
!4469 = !DILocation(line: 0, scope: !4388)
!4470 = !DILocation(line: 206, column: 19, scope: !4427)
!4471 = !DILocation(line: 206, column: 7, scope: !4388)
!4472 = !DILocalVariable(name: "source", arg: 1, scope: !4473, file: !1137, line: 137, type: !4395)
!4473 = distinct !DISubprogram(name: "simple_new", scope: !1137, file: !1137, line: 137, type: !4474, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!4391, !4395, !308}
!4476 = !{!4472, !4477, !4478}
!4477 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !4473, file: !1137, line: 137, type: !308)
!4478 = !DILocalVariable(name: "s", scope: !4473, file: !1137, line: 139, type: !4391)
!4479 = !DILocation(line: 0, scope: !4473, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 207, column: 12, scope: !4427)
!4481 = !DILocation(line: 139, column: 31, scope: !4473, inlinedAt: !4480)
!4482 = !DILocation(line: 140, column: 6, scope: !4473, inlinedAt: !4480)
!4483 = !DILocation(line: 140, column: 13, scope: !4473, inlinedAt: !4480)
!4484 = !{!4485, !1362, i64 0}
!4485 = !{!"randread_source", !1362, i64 0, !1362, i64 8, !1362, i64 16, !1363, i64 24}
!4486 = !DILocation(line: 141, column: 6, scope: !4473, inlinedAt: !4480)
!4487 = !DILocation(line: 141, column: 14, scope: !4473, inlinedAt: !4480)
!4488 = !{!4485, !1362, i64 8}
!4489 = !DILocation(line: 142, column: 6, scope: !4473, inlinedAt: !4480)
!4490 = !DILocation(line: 142, column: 18, scope: !4473, inlinedAt: !4480)
!4491 = !{!4485, !1362, i64 16}
!4492 = !DILocation(line: 207, column: 5, scope: !4427)
!4493 = !DILocation(line: 0, scope: !4426)
!4494 = !DILocation(line: 213, column: 11, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4426, file: !1137, line: 213, column: 11)
!4496 = !DILocation(line: 213, column: 11, scope: !4426)
!4497 = !DILocation(line: 214, column: 25, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4495, file: !1137, line: 214, column: 13)
!4499 = !DILocation(line: 214, column: 23, scope: !4498)
!4500 = !DILocation(line: 214, column: 13, scope: !4495)
!4501 = !DILocation(line: 0, scope: !4473, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 217, column: 11, scope: !4426)
!4503 = !DILocation(line: 139, column: 31, scope: !4473, inlinedAt: !4502)
!4504 = !DILocation(line: 140, column: 6, scope: !4473, inlinedAt: !4502)
!4505 = !DILocation(line: 140, column: 13, scope: !4473, inlinedAt: !4502)
!4506 = !DILocation(line: 141, column: 6, scope: !4473, inlinedAt: !4502)
!4507 = !DILocation(line: 141, column: 14, scope: !4473, inlinedAt: !4502)
!4508 = !DILocation(line: 142, column: 6, scope: !4473, inlinedAt: !4502)
!4509 = !DILocation(line: 142, column: 18, scope: !4473, inlinedAt: !4502)
!4510 = !DILocation(line: 219, column: 11, scope: !4468)
!4511 = !DILocation(line: 0, scope: !4468)
!4512 = !DILocation(line: 219, column: 11, scope: !4426)
!4513 = !DILocation(line: 220, column: 44, scope: !4468)
!4514 = !DILocation(line: 220, column: 9, scope: !4468)
!4515 = !DILocation(line: 223, column: 24, scope: !4467)
!4516 = !DILocation(line: 223, column: 33, scope: !4467)
!4517 = !DILocation(line: 224, column: 35, scope: !4467)
!4518 = !DILocation(line: 0, scope: !4432, inlinedAt: !4466)
!4519 = !DILocation(line: 157, column: 12, scope: !4432, inlinedAt: !4466)
!4520 = !DILocation(line: 158, column: 9, scope: !4521, inlinedAt: !4466)
!4521 = distinct !DILexicalBlock(scope: !4432, file: !1137, line: 158, column: 7)
!4522 = !DILocation(line: 158, column: 7, scope: !4432, inlinedAt: !4466)
!4523 = !DILocation(line: 160, column: 31, scope: !4524, inlinedAt: !4466)
!4524 = distinct !DILexicalBlock(scope: !4521, file: !1137, line: 159, column: 5)
!4525 = !DILocation(line: 160, column: 16, scope: !4524, inlinedAt: !4466)
!4526 = !DILocation(line: 161, column: 11, scope: !4524, inlinedAt: !4466)
!4527 = !DILocation(line: 163, column: 7, scope: !4524, inlinedAt: !4466)
!4528 = !DILocation(line: 177, column: 3, scope: !4431, inlinedAt: !4466)
!4529 = !DILocation(line: 177, column: 3, scope: !4432, inlinedAt: !4466)
!4530 = !DILocation(line: 0, scope: !4430, inlinedAt: !4466)
!4531 = !DILocalVariable(name: "__dest", arg: 1, scope: !4532, file: !1514, line: 31, type: !1517)
!4532 = distinct !DISubprogram(name: "memcpy", scope: !1514, file: !1514, line: 31, type: !1515, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4533)
!4533 = !{!4531, !4534, !4535}
!4534 = !DILocalVariable(name: "__src", arg: 2, scope: !4532, file: !1514, line: 31, type: !1518)
!4535 = !DILocalVariable(name: "__len", arg: 3, scope: !4532, file: !1514, line: 31, type: !68)
!4536 = !DILocation(line: 0, scope: !4532, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 177, column: 3, scope: !4430, inlinedAt: !4466)
!4538 = !DILocation(line: 34, column: 10, scope: !4532, inlinedAt: !4537)
!4539 = !DILocation(line: 178, column: 3, scope: !4448, inlinedAt: !4466)
!4540 = !DILocation(line: 178, column: 3, scope: !4432, inlinedAt: !4466)
!4541 = !DILocation(line: 178, column: 3, scope: !4447, inlinedAt: !4466)
!4542 = !DILocation(line: 0, scope: !4447, inlinedAt: !4466)
!4543 = !DILocation(line: 0, scope: !4532, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 178, column: 3, scope: !4447, inlinedAt: !4466)
!4545 = !DILocation(line: 34, column: 10, scope: !4532, inlinedAt: !4544)
!4546 = !DILocation(line: 179, column: 3, scope: !4454, inlinedAt: !4466)
!4547 = !DILocation(line: 179, column: 3, scope: !4432, inlinedAt: !4466)
!4548 = !DILocation(line: 179, column: 3, scope: !4453, inlinedAt: !4466)
!4549 = !DILocation(line: 0, scope: !4453, inlinedAt: !4466)
!4550 = !DILocation(line: 0, scope: !4532, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 179, column: 3, scope: !4453, inlinedAt: !4466)
!4552 = !DILocation(line: 34, column: 10, scope: !4532, inlinedAt: !4551)
!4553 = !DILocation(line: 180, column: 3, scope: !4458, inlinedAt: !4466)
!4554 = !DILocation(line: 180, column: 3, scope: !4432, inlinedAt: !4466)
!4555 = !DILocation(line: 180, column: 3, scope: !4457, inlinedAt: !4466)
!4556 = !DILocation(line: 0, scope: !4457, inlinedAt: !4466)
!4557 = !DILocation(line: 0, scope: !4532, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 180, column: 3, scope: !4457, inlinedAt: !4466)
!4559 = !DILocation(line: 34, column: 10, scope: !4532, inlinedAt: !4558)
!4560 = !DILocation(line: 181, column: 3, scope: !4463, inlinedAt: !4466)
!4561 = !DILocation(line: 181, column: 3, scope: !4432, inlinedAt: !4466)
!4562 = !DILocation(line: 181, column: 3, scope: !4462, inlinedAt: !4466)
!4563 = !DILocation(line: 0, scope: !4462, inlinedAt: !4466)
!4564 = !DILocation(line: 0, scope: !4532, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 181, column: 3, scope: !4462, inlinedAt: !4466)
!4566 = !DILocation(line: 34, column: 10, scope: !4532, inlinedAt: !4565)
!4567 = !DILocation(line: 226, column: 11, scope: !4467)
!4568 = !DILocation(line: 0, scope: !4427)
!4569 = !DILocation(line: 231, column: 1, scope: !4388)
!4570 = distinct !DISubprogram(name: "randread_error", scope: !1137, file: !1137, line: 124, type: !4399, scopeLine: 125, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4571)
!4571 = !{!4572}
!4572 = !DILocalVariable(name: "file_name", arg: 1, scope: !4570, file: !1137, line: 124, type: !308)
!4573 = !DILocation(line: 0, scope: !4570)
!4574 = !DILocation(line: 126, column: 7, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4570, file: !1137, line: 126, column: 7)
!4576 = !DILocation(line: 126, column: 7, scope: !4570)
!4577 = !DILocation(line: 127, column: 12, scope: !4575)
!4578 = !DILocation(line: 127, column: 26, scope: !4575)
!4579 = !DILocation(line: 128, column: 18, scope: !4575)
!4580 = !DILocation(line: 128, column: 12, scope: !4575)
!4581 = !DILocation(line: 0, scope: !4575)
!4582 = !DILocation(line: 129, column: 12, scope: !4575)
!4583 = !DILocation(line: 127, column: 5, scope: !4575)
!4584 = !DILocation(line: 130, column: 3, scope: !4570)
!4585 = distinct !DISubprogram(name: "randread_set_handler", scope: !1137, file: !1137, line: 242, type: !4586, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4588)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{null, !4391, !4398}
!4588 = !{!4589, !4590}
!4589 = !DILocalVariable(name: "s", arg: 1, scope: !4585, file: !1137, line: 242, type: !4391)
!4590 = !DILocalVariable(name: "handler", arg: 2, scope: !4585, file: !1137, line: 242, type: !4398)
!4591 = !DILocation(line: 0, scope: !4585)
!4592 = !DILocation(line: 244, column: 6, scope: !4585)
!4593 = !DILocation(line: 244, column: 14, scope: !4585)
!4594 = !DILocation(line: 245, column: 1, scope: !4585)
!4595 = distinct !DISubprogram(name: "randread_set_handler_arg", scope: !1137, file: !1137, line: 248, type: !4596, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4598)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{null, !4391, !308}
!4598 = !{!4599, !4600}
!4599 = !DILocalVariable(name: "s", arg: 1, scope: !4595, file: !1137, line: 248, type: !4391)
!4600 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !4595, file: !1137, line: 248, type: !308)
!4601 = !DILocation(line: 0, scope: !4595)
!4602 = !DILocation(line: 250, column: 6, scope: !4595)
!4603 = !DILocation(line: 250, column: 18, scope: !4595)
!4604 = !DILocation(line: 251, column: 1, scope: !4595)
!4605 = distinct !DISubprogram(name: "randread", scope: !1137, file: !1137, line: 326, type: !4606, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4608)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{null, !4391, !66, !68}
!4608 = !{!4609, !4610, !4611}
!4609 = !DILocalVariable(name: "s", arg: 1, scope: !4605, file: !1137, line: 326, type: !4391)
!4610 = !DILocalVariable(name: "buf", arg: 2, scope: !4605, file: !1137, line: 326, type: !66)
!4611 = !DILocalVariable(name: "size", arg: 3, scope: !4605, file: !1137, line: 326, type: !68)
!4612 = !DILocation(line: 0, scope: !4605)
!4613 = !DILocation(line: 328, column: 10, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4605, file: !1137, line: 328, column: 7)
!4615 = !DILocation(line: 328, column: 7, scope: !4614)
!4616 = !DILocation(line: 328, column: 7, scope: !4605)
!4617 = !DILocalVariable(name: "s", arg: 1, scope: !4618, file: !1137, line: 258, type: !4391)
!4618 = distinct !DISubprogram(name: "readsource", scope: !1137, file: !1137, line: 258, type: !4619, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4622)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{null, !4391, !4621, !68}
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!4622 = !{!4617, !4623, !4624, !4625, !4627}
!4623 = !DILocalVariable(name: "p", arg: 2, scope: !4618, file: !1137, line: 258, type: !4621)
!4624 = !DILocalVariable(name: "size", arg: 3, scope: !4618, file: !1137, line: 258, type: !68)
!4625 = !DILocalVariable(name: "inbytes", scope: !4626, file: !1137, line: 262, type: !68)
!4626 = distinct !DILexicalBlock(scope: !4618, file: !1137, line: 261, column: 5)
!4627 = !DILocalVariable(name: "fread_errno", scope: !4626, file: !1137, line: 263, type: !14)
!4628 = !DILocation(line: 0, scope: !4618, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 329, column: 5, scope: !4614)
!4630 = !DILocation(line: 262, column: 24, scope: !4626, inlinedAt: !4629)
!4631 = !DILocation(line: 0, scope: !4626, inlinedAt: !4629)
!4632 = !DILocation(line: 263, column: 25, scope: !4626, inlinedAt: !4629)
!4633 = !DILocation(line: 265, column: 12, scope: !4626, inlinedAt: !4629)
!4634 = !DILocation(line: 266, column: 16, scope: !4635, inlinedAt: !4629)
!4635 = distinct !DILexicalBlock(scope: !4626, file: !1137, line: 266, column: 11)
!4636 = !DILocation(line: 266, column: 11, scope: !4626, inlinedAt: !4629)
!4637 = !DILocation(line: 264, column: 9, scope: !4626, inlinedAt: !4629)
!4638 = !DILocation(line: 268, column: 16, scope: !4626, inlinedAt: !4629)
!4639 = !DILocalVariable(name: "__stream", arg: 1, scope: !4640, file: !1714, line: 135, type: !4395)
!4640 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1714, file: !1714, line: 135, type: !4641, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4643)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!14, !4395}
!4643 = !{!4639}
!4644 = !DILocation(line: 0, scope: !4640, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 268, column: 16, scope: !4626, inlinedAt: !4629)
!4646 = !DILocation(line: 137, column: 10, scope: !4640, inlinedAt: !4645)
!4647 = !DILocation(line: 268, column: 13, scope: !4626, inlinedAt: !4629)
!4648 = !DILocation(line: 269, column: 10, scope: !4626, inlinedAt: !4629)
!4649 = !DILocation(line: 269, column: 22, scope: !4626, inlinedAt: !4629)
!4650 = !DILocation(line: 269, column: 7, scope: !4626, inlinedAt: !4629)
!4651 = !DILocalVariable(name: "isaac", arg: 1, scope: !4652, file: !1137, line: 278, type: !4655)
!4652 = distinct !DISubprogram(name: "readisaac", scope: !1137, file: !1137, line: 278, type: !4653, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4656)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !4655, !66, !68}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4656 = !{!4651, !4657, !4658, !4659, !4660, !4662}
!4657 = !DILocalVariable(name: "p", arg: 2, scope: !4652, file: !1137, line: 278, type: !66)
!4658 = !DILocalVariable(name: "size", arg: 3, scope: !4652, file: !1137, line: 278, type: !68)
!4659 = !DILocalVariable(name: "inbytes", scope: !4652, file: !1137, line: 280, type: !68)
!4660 = !DILocalVariable(name: "char_p", scope: !4661, file: !1137, line: 284, type: !10)
!4661 = distinct !DILexicalBlock(scope: !4652, file: !1137, line: 283, column: 5)
!4662 = !DILocalVariable(name: "wp", scope: !4663, file: !1137, line: 301, type: !1235)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !1137, line: 300, column: 9)
!4664 = distinct !DILexicalBlock(scope: !4661, file: !1137, line: 299, column: 11)
!4665 = !DILocation(line: 0, scope: !4652, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 331, column: 5, scope: !4614)
!4667 = !DILocation(line: 280, column: 27, scope: !4652, inlinedAt: !4666)
!4668 = !{!4669, !1721, i64 0}
!4669 = !{!"isaac", !1721, i64 0, !4670, i64 8, !1363, i64 2080}
!4670 = !{!"isaac_state", !1363, i64 0, !1721, i64 2048, !1721, i64 2056, !1721, i64 2064}
!4671 = !DILocation(line: 0, scope: !4661, inlinedAt: !4666)
!4672 = !DILocation(line: 286, column: 16, scope: !4673, inlinedAt: !4666)
!4673 = distinct !DILexicalBlock(scope: !4661, file: !1137, line: 286, column: 11)
!4674 = !DILocation(line: 0, scope: !4532, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 293, column: 7, scope: !4661, inlinedAt: !4666)
!4676 = !DILocation(line: 0, scope: !4532, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 288, column: 11, scope: !4678, inlinedAt: !4666)
!4678 = distinct !DILexicalBlock(scope: !4673, file: !1137, line: 287, column: 9)
!4679 = !DILocation(line: 286, column: 11, scope: !4661, inlinedAt: !4666)
!4680 = !DILocation(line: 0, scope: !4681, inlinedAt: !4666)
!4681 = distinct !DILexicalBlock(scope: !4663, file: !1137, line: 303, column: 13)
!4682 = !DILocation(line: 280, column: 10, scope: !4652, inlinedAt: !4666)
!4683 = !DILocation(line: 34, column: 10, scope: !4532, inlinedAt: !4677)
!4684 = !DILocation(line: 289, column: 37, scope: !4678, inlinedAt: !4666)
!4685 = !DILocation(line: 290, column: 11, scope: !4678, inlinedAt: !4666)
!4686 = !DILocation(line: 34, column: 10, scope: !4532, inlinedAt: !4675)
!4687 = !DILocation(line: 294, column: 18, scope: !4661, inlinedAt: !4666)
!4688 = !DILocation(line: 295, column: 12, scope: !4661, inlinedAt: !4666)
!4689 = !DILocation(line: 299, column: 11, scope: !4664, inlinedAt: !4666)
!4690 = !DILocation(line: 299, column: 11, scope: !4661, inlinedAt: !4666)
!4691 = !DILocation(line: 301, column: 28, scope: !4663, inlinedAt: !4666)
!4692 = !DILocation(line: 0, scope: !4663, inlinedAt: !4666)
!4693 = !DILocation(line: 302, column: 11, scope: !4663, inlinedAt: !4666)
!4694 = !DILocation(line: 302, column: 30, scope: !4663, inlinedAt: !4666)
!4695 = !DILocation(line: 304, column: 15, scope: !4681, inlinedAt: !4666)
!4696 = !DILocation(line: 305, column: 18, scope: !4681, inlinedAt: !4666)
!4697 = !DILocation(line: 306, column: 20, scope: !4681, inlinedAt: !4666)
!4698 = !DILocation(line: 307, column: 24, scope: !4699, inlinedAt: !4666)
!4699 = distinct !DILexicalBlock(scope: !4681, file: !1137, line: 307, column: 19)
!4700 = !DILocation(line: 307, column: 19, scope: !4681, inlinedAt: !4666)
!4701 = distinct !{!4701, !4693, !4702}
!4702 = !DILocation(line: 312, column: 13, scope: !4663, inlinedAt: !4666)
!4703 = !DILocation(line: 313, column: 15, scope: !4663, inlinedAt: !4666)
!4704 = !DILocation(line: 294, column: 9, scope: !4661, inlinedAt: !4666)
!4705 = !DILocation(line: 316, column: 7, scope: !4661, inlinedAt: !4666)
!4706 = !DILocation(line: 332, column: 1, scope: !4605)
!4707 = distinct !DISubprogram(name: "randread_free", scope: !1137, file: !1137, line: 341, type: !4708, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4710)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!14, !4391}
!4710 = !{!4711, !4712}
!4711 = !DILocalVariable(name: "s", arg: 1, scope: !4707, file: !1137, line: 341, type: !4391)
!4712 = !DILocalVariable(name: "source", scope: !4707, file: !1137, line: 343, type: !4395)
!4713 = !DILocation(line: 0, scope: !4707)
!4714 = !DILocation(line: 343, column: 21, scope: !4707)
!4715 = !DILocation(line: 344, column: 19, scope: !4707)
!4716 = !DILocalVariable(name: "__dest", arg: 1, scope: !4717, file: !1514, line: 81, type: !66)
!4717 = distinct !DISubprogram(name: "explicit_bzero", scope: !1514, file: !1514, line: 81, type: !4359, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1136, retainedNodes: !4718)
!4718 = !{!4716, !4719}
!4719 = !DILocalVariable(name: "__len", arg: 2, scope: !4717, file: !1514, line: 81, type: !68)
!4720 = !DILocation(line: 0, scope: !4717, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 344, column: 3, scope: !4707)
!4722 = !DILocation(line: 83, column: 3, scope: !4717, inlinedAt: !4721)
!4723 = !DILocation(line: 345, column: 3, scope: !4707)
!4724 = !DILocation(line: 346, column: 11, scope: !4707)
!4725 = !DILocation(line: 346, column: 20, scope: !4707)
!4726 = !DILocation(line: 346, column: 3, scope: !4707)
!4727 = !DILocation(line: 0, scope: !1225)
!4728 = !DILocation(line: 93, column: 21, scope: !1225)
!4729 = !{!4670, !1721, i64 2048}
!4730 = !DILocation(line: 94, column: 21, scope: !1225)
!4731 = !{!4670, !1721, i64 2056}
!4732 = !DILocation(line: 94, column: 31, scope: !1225)
!4733 = !DILocation(line: 94, column: 26, scope: !1225)
!4734 = !{!4670, !1721, i64 2064}
!4735 = !DILocation(line: 94, column: 23, scope: !1225)
!4736 = !DILocation(line: 97, column: 19, scope: !1225)
!4737 = !DILocation(line: 0, scope: !4738, inlinedAt: !4752)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !1222, line: 71, column: 5)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !1222, line: 70, column: 7)
!4740 = distinct !DISubprogram(name: "ind", scope: !1222, file: !1222, line: 68, type: !4741, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1221, retainedNodes: !4745)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!1187, !4743, !1187}
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!4745 = !{!4746, !4747, !4748, !4749, !4750, !4751}
!4746 = !DILocalVariable(name: "m", arg: 1, scope: !4740, file: !1222, line: 68, type: !4743)
!4747 = !DILocalVariable(name: "x", arg: 2, scope: !4740, file: !1222, line: 68, type: !1187)
!4748 = !DILocalVariable(name: "void_m", scope: !4738, file: !1222, line: 75, type: !308)
!4749 = !DILocalVariable(name: "base_p", scope: !4738, file: !1222, line: 76, type: !12)
!4750 = !DILocalVariable(name: "word_p", scope: !4738, file: !1222, line: 77, type: !308)
!4751 = !DILocalVariable(name: "p", scope: !4738, file: !1222, line: 78, type: !4743)
!4752 = distinct !DILocation(line: 118, column: 7, scope: !1244)
!4753 = !DILocation(line: 116, column: 3, scope: !1225)
!4754 = !DILocation(line: 118, column: 7, scope: !1244)
!4755 = !DILocation(line: 0, scope: !1244)
!4756 = !DILocation(line: 0, scope: !4740, inlinedAt: !4752)
!4757 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4752)
!4758 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4752)
!4759 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4752)
!4760 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4752)
!4761 = !DILocation(line: 0, scope: !4740, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 118, column: 7, scope: !1244)
!4763 = !DILocation(line: 0, scope: !4738, inlinedAt: !4762)
!4764 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4762)
!4765 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4762)
!4766 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4762)
!4767 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4762)
!4768 = !DILocation(line: 119, column: 7, scope: !1248)
!4769 = !DILocation(line: 0, scope: !1248)
!4770 = !DILocation(line: 0, scope: !4740, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 119, column: 7, scope: !1248)
!4772 = !DILocation(line: 0, scope: !4738, inlinedAt: !4771)
!4773 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4771)
!4774 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4771)
!4775 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4771)
!4776 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4771)
!4777 = !DILocation(line: 0, scope: !4740, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 119, column: 7, scope: !1248)
!4779 = !DILocation(line: 0, scope: !4738, inlinedAt: !4778)
!4780 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4778)
!4781 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4778)
!4782 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4778)
!4783 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4778)
!4784 = !DILocation(line: 120, column: 7, scope: !1251)
!4785 = !DILocation(line: 0, scope: !1251)
!4786 = !DILocation(line: 0, scope: !4740, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 120, column: 7, scope: !1251)
!4788 = !DILocation(line: 0, scope: !4738, inlinedAt: !4787)
!4789 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4787)
!4790 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4787)
!4791 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4787)
!4792 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4787)
!4793 = !DILocation(line: 0, scope: !4740, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 120, column: 7, scope: !1251)
!4795 = !DILocation(line: 0, scope: !4738, inlinedAt: !4794)
!4796 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4794)
!4797 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4794)
!4798 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4794)
!4799 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4794)
!4800 = !DILocation(line: 121, column: 7, scope: !1254)
!4801 = !DILocation(line: 0, scope: !1254)
!4802 = !DILocation(line: 0, scope: !4740, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 121, column: 7, scope: !1254)
!4804 = !DILocation(line: 0, scope: !4738, inlinedAt: !4803)
!4805 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4803)
!4806 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4803)
!4807 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4803)
!4808 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4803)
!4809 = !DILocation(line: 0, scope: !4740, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 121, column: 7, scope: !1254)
!4811 = !DILocation(line: 0, scope: !4738, inlinedAt: !4810)
!4812 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4810)
!4813 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4810)
!4814 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4810)
!4815 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4810)
!4816 = !DILocation(line: 122, column: 9, scope: !1245)
!4817 = !DILocation(line: 124, column: 13, scope: !1225)
!4818 = !DILocation(line: 124, column: 19, scope: !1225)
!4819 = !DILocation(line: 123, column: 5, scope: !1245)
!4820 = distinct !{!4820, !4753, !4821}
!4821 = !DILocation(line: 124, column: 32, scope: !1225)
!4822 = !DILocation(line: 126, column: 3, scope: !1225)
!4823 = !DILocation(line: 128, column: 7, scope: !1257)
!4824 = !DILocation(line: 0, scope: !1257)
!4825 = !DILocation(line: 0, scope: !4740, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 128, column: 7, scope: !1257)
!4827 = !DILocation(line: 0, scope: !4738, inlinedAt: !4826)
!4828 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4826)
!4829 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4826)
!4830 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4826)
!4831 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4826)
!4832 = !DILocation(line: 0, scope: !4740, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 128, column: 7, scope: !1257)
!4834 = !DILocation(line: 0, scope: !4738, inlinedAt: !4833)
!4835 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4833)
!4836 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4833)
!4837 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4833)
!4838 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4833)
!4839 = !DILocation(line: 129, column: 7, scope: !1261)
!4840 = !DILocation(line: 0, scope: !1261)
!4841 = !DILocation(line: 0, scope: !4740, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 129, column: 7, scope: !1261)
!4843 = !DILocation(line: 0, scope: !4738, inlinedAt: !4842)
!4844 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4842)
!4845 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4842)
!4846 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4842)
!4847 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4842)
!4848 = !DILocation(line: 0, scope: !4740, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 129, column: 7, scope: !1261)
!4850 = !DILocation(line: 0, scope: !4738, inlinedAt: !4849)
!4851 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4849)
!4852 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4849)
!4853 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4849)
!4854 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4849)
!4855 = !DILocation(line: 130, column: 7, scope: !1264)
!4856 = !DILocation(line: 0, scope: !1264)
!4857 = !DILocation(line: 0, scope: !4740, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 130, column: 7, scope: !1264)
!4859 = !DILocation(line: 0, scope: !4738, inlinedAt: !4858)
!4860 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4858)
!4861 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4858)
!4862 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4858)
!4863 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4858)
!4864 = !DILocation(line: 0, scope: !4740, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 130, column: 7, scope: !1264)
!4866 = !DILocation(line: 0, scope: !4738, inlinedAt: !4865)
!4867 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4865)
!4868 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4865)
!4869 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4865)
!4870 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4865)
!4871 = !DILocation(line: 131, column: 7, scope: !1267)
!4872 = !DILocation(line: 0, scope: !1267)
!4873 = !DILocation(line: 0, scope: !4740, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 131, column: 7, scope: !1267)
!4875 = !DILocation(line: 0, scope: !4738, inlinedAt: !4874)
!4876 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4874)
!4877 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4874)
!4878 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4874)
!4879 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4874)
!4880 = !DILocation(line: 0, scope: !4740, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 131, column: 7, scope: !1267)
!4882 = !DILocation(line: 0, scope: !4738, inlinedAt: !4881)
!4883 = !DILocation(line: 77, column: 40, scope: !4738, inlinedAt: !4881)
!4884 = !DILocation(line: 77, column: 35, scope: !4738, inlinedAt: !4881)
!4885 = !DILocation(line: 78, column: 29, scope: !4738, inlinedAt: !4881)
!4886 = !DILocation(line: 79, column: 14, scope: !4738, inlinedAt: !4881)
!4887 = !DILocation(line: 132, column: 9, scope: !1258)
!4888 = !DILocation(line: 134, column: 13, scope: !1225)
!4889 = !DILocation(line: 134, column: 19, scope: !1225)
!4890 = !DILocation(line: 133, column: 5, scope: !1258)
!4891 = distinct !{!4891, !4822, !4892}
!4892 = !DILocation(line: 134, column: 39, scope: !1225)
!4893 = !DILocation(line: 136, column: 8, scope: !1225)
!4894 = !DILocation(line: 137, column: 8, scope: !1225)
!4895 = !DILocation(line: 138, column: 1, scope: !1225)
!4896 = distinct !DISubprogram(name: "isaac_seed", scope: !1222, file: !1222, line: 248, type: !4897, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1221, retainedNodes: !4899)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{null, !1228}
!4899 = !{!4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4911}
!4900 = !DILocalVariable(name: "s", arg: 1, scope: !4896, file: !1222, line: 248, type: !1228)
!4901 = !DILocalVariable(name: "a", scope: !4896, file: !1222, line: 250, type: !1187)
!4902 = !DILocalVariable(name: "b", scope: !4896, file: !1222, line: 251, type: !1187)
!4903 = !DILocalVariable(name: "c", scope: !4896, file: !1222, line: 252, type: !1187)
!4904 = !DILocalVariable(name: "d", scope: !4896, file: !1222, line: 253, type: !1187)
!4905 = !DILocalVariable(name: "e", scope: !4896, file: !1222, line: 254, type: !1187)
!4906 = !DILocalVariable(name: "f", scope: !4896, file: !1222, line: 255, type: !1187)
!4907 = !DILocalVariable(name: "g", scope: !4896, file: !1222, line: 256, type: !1187)
!4908 = !DILocalVariable(name: "h", scope: !4896, file: !1222, line: 257, type: !1187)
!4909 = !DILocalVariable(name: "i", scope: !4910, file: !1222, line: 269, type: !14)
!4910 = distinct !DILexicalBlock(scope: !4896, file: !1222, line: 269, column: 3)
!4911 = !DILocalVariable(name: "i", scope: !4912, file: !1222, line: 270, type: !14)
!4912 = distinct !DILexicalBlock(scope: !4896, file: !1222, line: 270, column: 3)
!4913 = !DILocation(line: 0, scope: !4896)
!4914 = !DILocation(line: 0, scope: !4910)
!4915 = !DILocation(line: 269, column: 3, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4910, file: !1222, line: 269, column: 3)
!4917 = !DILocation(line: 269, column: 3, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !1222, line: 269, column: 3)
!4919 = distinct !DILexicalBlock(scope: !4916, file: !1222, line: 269, column: 3)
!4920 = !DILocation(line: 269, column: 3, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4918, file: !1222, line: 269, column: 3)
!4922 = !DILocation(line: 269, column: 3, scope: !4919)
!4923 = distinct !{!4923, !4915, !4915}
!4924 = !DILocation(line: 0, scope: !4912)
!4925 = !DILocation(line: 270, column: 3, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !1222, line: 270, column: 3)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !1222, line: 270, column: 3)
!4928 = distinct !DILexicalBlock(scope: !4912, file: !1222, line: 270, column: 3)
!4929 = !DILocation(line: 270, column: 3, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4926, file: !1222, line: 270, column: 3)
!4931 = !DILocation(line: 270, column: 3, scope: !4927)
!4932 = !DILocation(line: 270, column: 3, scope: !4928)
!4933 = distinct !{!4933, !4932, !4932}
!4934 = !DILocation(line: 272, column: 6, scope: !4896)
!4935 = !DILocation(line: 273, column: 1, scope: !4896)
!4936 = !DILocation(line: 272, column: 15, scope: !4896)
!4937 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1273, file: !1273, line: 269, type: !4938, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1272, retainedNodes: !4940)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!14, !14, !10, !68}
!4940 = !{!4941, !4942, !4943}
!4941 = !DILocalVariable(name: "category", arg: 1, scope: !4937, file: !1273, line: 269, type: !14)
!4942 = !DILocalVariable(name: "buf", arg: 2, scope: !4937, file: !1273, line: 269, type: !10)
!4943 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4937, file: !1273, line: 269, type: !68)
!4944 = !DILocation(line: 0, scope: !4937)
!4945 = !DILocalVariable(name: "category", arg: 1, scope: !4946, file: !1273, line: 91, type: !14)
!4946 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1273, file: !1273, line: 91, type: !4938, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1272, retainedNodes: !4947)
!4947 = !{!4945, !4948, !4949, !4950, !4951}
!4948 = !DILocalVariable(name: "buf", arg: 2, scope: !4946, file: !1273, line: 91, type: !10)
!4949 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4946, file: !1273, line: 91, type: !68)
!4950 = !DILocalVariable(name: "result", scope: !4946, file: !1273, line: 140, type: !12)
!4951 = !DILocalVariable(name: "length", scope: !4952, file: !1273, line: 154, type: !68)
!4952 = distinct !DILexicalBlock(scope: !4953, file: !1273, line: 153, column: 5)
!4953 = distinct !DILexicalBlock(scope: !4946, file: !1273, line: 142, column: 7)
!4954 = !DILocation(line: 0, scope: !4946, inlinedAt: !4955)
!4955 = distinct !DILocation(line: 274, column: 10, scope: !4937)
!4956 = !DILocalVariable(name: "category", arg: 1, scope: !4957, file: !1273, line: 60, type: !14)
!4957 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1273, file: !1273, line: 60, type: !4958, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1272, retainedNodes: !4960)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!12, !14}
!4960 = !{!4956, !4961}
!4961 = !DILocalVariable(name: "result", scope: !4957, file: !1273, line: 62, type: !12)
!4962 = !DILocation(line: 0, scope: !4957, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 140, column: 24, scope: !4946, inlinedAt: !4955)
!4964 = !DILocation(line: 62, column: 24, scope: !4957, inlinedAt: !4963)
!4965 = !DILocation(line: 142, column: 14, scope: !4953, inlinedAt: !4955)
!4966 = !DILocation(line: 142, column: 7, scope: !4946, inlinedAt: !4955)
!4967 = !DILocation(line: 145, column: 19, scope: !4968, inlinedAt: !4955)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !1273, line: 145, column: 11)
!4969 = distinct !DILexicalBlock(scope: !4953, file: !1273, line: 143, column: 5)
!4970 = !DILocation(line: 145, column: 11, scope: !4969, inlinedAt: !4955)
!4971 = !DILocation(line: 149, column: 16, scope: !4968, inlinedAt: !4955)
!4972 = !DILocation(line: 149, column: 9, scope: !4968, inlinedAt: !4955)
!4973 = !DILocation(line: 154, column: 23, scope: !4952, inlinedAt: !4955)
!4974 = !DILocation(line: 0, scope: !4952, inlinedAt: !4955)
!4975 = !DILocation(line: 155, column: 18, scope: !4976, inlinedAt: !4955)
!4976 = distinct !DILexicalBlock(scope: !4952, file: !1273, line: 155, column: 11)
!4977 = !DILocation(line: 155, column: 11, scope: !4952, inlinedAt: !4955)
!4978 = !DILocation(line: 157, column: 39, scope: !4979, inlinedAt: !4955)
!4979 = distinct !DILexicalBlock(scope: !4976, file: !1273, line: 156, column: 9)
!4980 = !DILocalVariable(name: "__dest", arg: 1, scope: !4981, file: !1514, line: 31, type: !1517)
!4981 = distinct !DISubprogram(name: "memcpy", scope: !1514, file: !1514, line: 31, type: !1515, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1272, retainedNodes: !4982)
!4982 = !{!4980, !4983, !4984}
!4983 = !DILocalVariable(name: "__src", arg: 2, scope: !4981, file: !1514, line: 31, type: !1518)
!4984 = !DILocalVariable(name: "__len", arg: 3, scope: !4981, file: !1514, line: 31, type: !68)
!4985 = !DILocation(line: 0, scope: !4981, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 157, column: 11, scope: !4979, inlinedAt: !4955)
!4987 = !DILocation(line: 34, column: 10, scope: !4981, inlinedAt: !4986)
!4988 = !DILocation(line: 158, column: 11, scope: !4979, inlinedAt: !4955)
!4989 = !DILocation(line: 162, column: 23, scope: !4990, inlinedAt: !4955)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !1273, line: 162, column: 15)
!4991 = distinct !DILexicalBlock(scope: !4976, file: !1273, line: 161, column: 9)
!4992 = !DILocation(line: 162, column: 15, scope: !4991, inlinedAt: !4955)
!4993 = !DILocation(line: 167, column: 44, scope: !4994, inlinedAt: !4955)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !1273, line: 163, column: 13)
!4995 = !DILocation(line: 0, scope: !4981, inlinedAt: !4996)
!4996 = distinct !DILocation(line: 167, column: 15, scope: !4994, inlinedAt: !4955)
!4997 = !DILocation(line: 34, column: 10, scope: !4981, inlinedAt: !4996)
!4998 = !DILocation(line: 168, column: 15, scope: !4994, inlinedAt: !4955)
!4999 = !DILocation(line: 168, column: 32, scope: !4994, inlinedAt: !4955)
!5000 = !DILocation(line: 169, column: 13, scope: !4994, inlinedAt: !4955)
!5001 = !DILocation(line: 0, scope: !4953, inlinedAt: !4955)
!5002 = !DILocation(line: 274, column: 3, scope: !4937)
!5003 = distinct !DISubprogram(name: "setlocale_null", scope: !1273, file: !1273, line: 301, type: !4958, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1272, retainedNodes: !5004)
!5004 = !{!5005}
!5005 = !DILocalVariable(name: "category", arg: 1, scope: !5003, file: !1273, line: 301, type: !14)
!5006 = !DILocation(line: 0, scope: !5003)
!5007 = !DILocation(line: 0, scope: !4957, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 304, column: 10, scope: !5003)
!5009 = !DILocation(line: 62, column: 24, scope: !4957, inlinedAt: !5008)
!5010 = !DILocation(line: 304, column: 3, scope: !5003)
!5011 = distinct !DISubprogram(name: "fopen_safer", scope: !1276, file: !1276, line: 31, type: !5012, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1275, retainedNodes: !5016)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!5014, !12, !12}
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1703, line: 7, baseType: !1282)
!5016 = !{!5017, !5018, !5019, !5020, !5023, !5026, !5029}
!5017 = !DILocalVariable(name: "file", arg: 1, scope: !5011, file: !1276, line: 31, type: !12)
!5018 = !DILocalVariable(name: "mode", arg: 2, scope: !5011, file: !1276, line: 31, type: !12)
!5019 = !DILocalVariable(name: "fp", scope: !5011, file: !1276, line: 33, type: !5014)
!5020 = !DILocalVariable(name: "fd", scope: !5021, file: !1276, line: 37, type: !14)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !1276, line: 36, column: 5)
!5022 = distinct !DILexicalBlock(scope: !5011, file: !1276, line: 35, column: 7)
!5023 = !DILocalVariable(name: "f", scope: !5024, file: !1276, line: 41, type: !14)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !1276, line: 40, column: 9)
!5025 = distinct !DILexicalBlock(scope: !5021, file: !1276, line: 39, column: 11)
!5026 = !DILocalVariable(name: "e", scope: !5027, file: !1276, line: 45, type: !14)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !1276, line: 44, column: 13)
!5028 = distinct !DILexicalBlock(scope: !5024, file: !1276, line: 43, column: 15)
!5029 = !DILocalVariable(name: "e", scope: !5030, file: !1276, line: 54, type: !14)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !1276, line: 53, column: 13)
!5031 = distinct !DILexicalBlock(scope: !5024, file: !1276, line: 51, column: 15)
!5032 = !DILocation(line: 0, scope: !5011)
!5033 = !DILocation(line: 33, column: 14, scope: !5011)
!5034 = !DILocation(line: 35, column: 7, scope: !5022)
!5035 = !DILocation(line: 35, column: 7, scope: !5011)
!5036 = !DILocation(line: 37, column: 16, scope: !5021)
!5037 = !DILocation(line: 0, scope: !5021)
!5038 = !DILocation(line: 39, column: 19, scope: !5025)
!5039 = !DILocation(line: 41, column: 19, scope: !5024)
!5040 = !DILocation(line: 0, scope: !5024)
!5041 = !DILocation(line: 43, column: 17, scope: !5028)
!5042 = !DILocation(line: 43, column: 15, scope: !5024)
!5043 = !DILocation(line: 45, column: 23, scope: !5027)
!5044 = !DILocation(line: 0, scope: !5027)
!5045 = !DILocation(line: 46, column: 15, scope: !5027)
!5046 = !DILocation(line: 47, column: 21, scope: !5027)
!5047 = !DILocation(line: 51, column: 15, scope: !5031)
!5048 = !DILocation(line: 51, column: 27, scope: !5031)
!5049 = !DILocation(line: 52, column: 15, scope: !5031)
!5050 = !DILocation(line: 52, column: 26, scope: !5031)
!5051 = !DILocation(line: 52, column: 24, scope: !5031)
!5052 = !DILocation(line: 51, column: 15, scope: !5024)
!5053 = !DILocation(line: 54, column: 23, scope: !5030)
!5054 = !DILocation(line: 0, scope: !5030)
!5055 = !DILocation(line: 55, column: 15, scope: !5030)
!5056 = !DILocation(line: 56, column: 21, scope: !5030)
!5057 = !DILocation(line: 63, column: 1, scope: !5011)
!5058 = distinct !DISubprogram(name: "dup_safer", scope: !1320, file: !1320, line: 31, type: !139, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1319, retainedNodes: !5059)
!5059 = !{!5060}
!5060 = !DILocalVariable(name: "fd", arg: 1, scope: !5058, file: !1320, line: 31, type: !14)
!5061 = !DILocation(line: 0, scope: !5058)
!5062 = !DILocation(line: 33, column: 10, scope: !5058)
!5063 = !DILocation(line: 33, column: 3, scope: !5058)
!5064 = distinct !DISubprogram(name: "rpl_fcntl", scope: !437, file: !437, line: 202, type: !443, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !5065)
!5065 = !{!5066, !5067, !5068, !5078, !5079, !5082, !5084, !5088}
!5066 = !DILocalVariable(name: "fd", arg: 1, scope: !5064, file: !437, line: 202, type: !14)
!5067 = !DILocalVariable(name: "action", arg: 2, scope: !5064, file: !437, line: 202, type: !14)
!5068 = !DILocalVariable(name: "arg", scope: !5064, file: !437, line: 208, type: !5069)
!5069 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3748, line: 14, baseType: !5070)
!5070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !437, line: 208, baseType: !5071)
!5071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5072, size: 192, elements: !51)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !437, line: 208, size: 192, elements: !5073)
!5073 = !{!5074, !5075, !5076, !5077}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5072, file: !437, line: 208, baseType: !271, size: 32)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5072, file: !437, line: 208, baseType: !271, size: 32, offset: 32)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5072, file: !437, line: 208, baseType: !66, size: 64, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5072, file: !437, line: 208, baseType: !66, size: 64, offset: 128)
!5078 = !DILocalVariable(name: "result", scope: !5064, file: !437, line: 209, type: !14)
!5079 = !DILocalVariable(name: "target", scope: !5080, file: !437, line: 215, type: !14)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !437, line: 214, column: 7)
!5081 = distinct !DILexicalBlock(scope: !5064, file: !437, line: 212, column: 5)
!5082 = !DILocalVariable(name: "target", scope: !5083, file: !437, line: 222, type: !14)
!5083 = distinct !DILexicalBlock(scope: !5081, file: !437, line: 221, column: 7)
!5084 = !DILocalVariable(name: "x", scope: !5085, file: !437, line: 423, type: !14)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !437, line: 422, column: 13)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !437, line: 260, column: 11)
!5087 = distinct !DILexicalBlock(scope: !5081, file: !437, line: 257, column: 7)
!5088 = !DILocalVariable(name: "p", scope: !5089, file: !437, line: 431, type: !66)
!5089 = distinct !DILexicalBlock(scope: !5086, file: !437, line: 430, column: 13)
!5090 = !DILocation(line: 0, scope: !5064)
!5091 = !DILocation(line: 208, column: 3, scope: !5064)
!5092 = !DILocation(line: 208, column: 11, scope: !5064)
!5093 = !DILocation(line: 210, column: 3, scope: !5064)
!5094 = !DILocation(line: 211, column: 3, scope: !5064)
!5095 = !DILocation(line: 215, column: 22, scope: !5080)
!5096 = !DILocation(line: 0, scope: !5080)
!5097 = !DILocalVariable(name: "fd", arg: 1, scope: !5098, file: !437, line: 447, type: !14)
!5098 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !437, file: !437, line: 447, type: !438, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !5099)
!5099 = !{!5097, !5100, !5101}
!5100 = !DILocalVariable(name: "target", arg: 2, scope: !5098, file: !437, line: 447, type: !14)
!5101 = !DILocalVariable(name: "result", scope: !5098, file: !437, line: 449, type: !14)
!5102 = !DILocation(line: 0, scope: !5098, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 216, column: 18, scope: !5080)
!5104 = !DILocation(line: 482, column: 12, scope: !5098, inlinedAt: !5103)
!5105 = !DILocation(line: 222, column: 22, scope: !5083)
!5106 = !DILocation(line: 0, scope: !5083)
!5107 = !DILocation(line: 0, scope: !436, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 223, column: 18, scope: !5083)
!5109 = !DILocation(line: 508, column: 12, scope: !5110, inlinedAt: !5108)
!5110 = distinct !DILexicalBlock(scope: !436, file: !437, line: 508, column: 7)
!5111 = !DILocation(line: 508, column: 9, scope: !5110, inlinedAt: !5108)
!5112 = !DILocation(line: 508, column: 7, scope: !436, inlinedAt: !5108)
!5113 = !DILocation(line: 510, column: 16, scope: !5114, inlinedAt: !5108)
!5114 = distinct !DILexicalBlock(scope: !5110, file: !437, line: 509, column: 5)
!5115 = !DILocation(line: 511, column: 13, scope: !5116, inlinedAt: !5108)
!5116 = distinct !DILexicalBlock(scope: !5114, file: !437, line: 511, column: 11)
!5117 = !DILocation(line: 511, column: 23, scope: !5116, inlinedAt: !5108)
!5118 = !DILocation(line: 511, column: 26, scope: !5116, inlinedAt: !5108)
!5119 = !DILocation(line: 511, column: 32, scope: !5116, inlinedAt: !5108)
!5120 = !DILocation(line: 511, column: 11, scope: !5114, inlinedAt: !5108)
!5121 = !DILocation(line: 513, column: 30, scope: !5122, inlinedAt: !5108)
!5122 = distinct !DILexicalBlock(scope: !5116, file: !437, line: 512, column: 9)
!5123 = !DILocation(line: 529, column: 19, scope: !452, inlinedAt: !5108)
!5124 = !DILocation(line: 0, scope: !5098, inlinedAt: !5125)
!5125 = distinct !DILocation(line: 521, column: 20, scope: !5126, inlinedAt: !5108)
!5126 = distinct !DILexicalBlock(scope: !5116, file: !437, line: 520, column: 9)
!5127 = !DILocation(line: 482, column: 12, scope: !5098, inlinedAt: !5125)
!5128 = !DILocation(line: 522, column: 22, scope: !5129, inlinedAt: !5108)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !437, line: 522, column: 15)
!5130 = !DILocation(line: 522, column: 15, scope: !5126, inlinedAt: !5108)
!5131 = !DILocation(line: 523, column: 32, scope: !5129, inlinedAt: !5108)
!5132 = !DILocation(line: 523, column: 13, scope: !5129, inlinedAt: !5108)
!5133 = !DILocation(line: 0, scope: !5098, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 528, column: 14, scope: !5110, inlinedAt: !5108)
!5135 = !DILocation(line: 482, column: 12, scope: !5098, inlinedAt: !5134)
!5136 = !DILocation(line: 529, column: 22, scope: !452, inlinedAt: !5108)
!5137 = !DILocation(line: 0, scope: !5110, inlinedAt: !5108)
!5138 = !DILocation(line: 529, column: 9, scope: !452, inlinedAt: !5108)
!5139 = !DILocation(line: 531, column: 19, scope: !451, inlinedAt: !5108)
!5140 = !DILocation(line: 0, scope: !451, inlinedAt: !5108)
!5141 = !DILocation(line: 532, column: 17, scope: !455, inlinedAt: !5108)
!5142 = !DILocation(line: 532, column: 21, scope: !455, inlinedAt: !5108)
!5143 = !DILocation(line: 532, column: 54, scope: !455, inlinedAt: !5108)
!5144 = !DILocation(line: 532, column: 24, scope: !455, inlinedAt: !5108)
!5145 = !DILocation(line: 532, column: 68, scope: !455, inlinedAt: !5108)
!5146 = !DILocation(line: 532, column: 11, scope: !451, inlinedAt: !5108)
!5147 = !DILocation(line: 534, column: 29, scope: !454, inlinedAt: !5108)
!5148 = !DILocation(line: 0, scope: !454, inlinedAt: !5108)
!5149 = !DILocation(line: 535, column: 11, scope: !454, inlinedAt: !5108)
!5150 = !DILocation(line: 536, column: 17, scope: !454, inlinedAt: !5108)
!5151 = !DILocation(line: 538, column: 9, scope: !454, inlinedAt: !5108)
!5152 = !DILocation(line: 328, column: 22, scope: !5086)
!5153 = !DILocation(line: 329, column: 13, scope: !5086)
!5154 = !DILocation(line: 423, column: 23, scope: !5085)
!5155 = !DILocation(line: 0, scope: !5085)
!5156 = !DILocation(line: 424, column: 24, scope: !5085)
!5157 = !DILocation(line: 426, column: 13, scope: !5086)
!5158 = !DILocation(line: 431, column: 25, scope: !5089)
!5159 = !DILocation(line: 0, scope: !5089)
!5160 = !DILocation(line: 432, column: 24, scope: !5089)
!5161 = !DILocation(line: 434, column: 13, scope: !5086)
!5162 = !DILocation(line: 0, scope: !5081)
!5163 = !DILocation(line: 442, column: 3, scope: !5064)
!5164 = !DILocation(line: 444, column: 1, scope: !5064)
!5165 = !DILocation(line: 443, column: 3, scope: !5064)
