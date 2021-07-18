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
@stdout_closed = internal unnamed_addr global i1 false, align 1, !dbg !30
@.str.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"dry-run\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), align 8, !dbg !31
@.str.53 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !36
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !41
@.str.58 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.59 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !43
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !49
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16, !dbg !55
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !101
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !107
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !117
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.92 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !124
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !131
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !119
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !133
@.str.2.97 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16, !dbg !139
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !147
@.str.1.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.153 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.157 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.167 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1.168 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@.str.2.169 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !155

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !686 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !690, metadata !DIExpression()), !dbg !691
  %3 = icmp eq i32 %0, 0, !dbg !692
  br i1 %3, label %9, label %4, !dbg !694

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !695, !tbaa !697
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #29, !dbg !695
  %7 = load i8*, i8** @program_name, align 8, !dbg !695, !tbaa !697
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #29, !dbg !695
  br label %75, !dbg !695

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 5) #29, !dbg !701
  %11 = load i8*, i8** @program_name, align 8, !dbg !701, !tbaa !697
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #29, !dbg !701
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.2, i64 0, i64 0), i32 5) #29, !dbg !703
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !697
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !703
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 5) #29, !dbg !704
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !697
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !704
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !697
  %20 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %19), !dbg !705
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.5, i64 0, i64 0), i32 5) #29, !dbg !706
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706, !tbaa !697
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !706
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.6, i64 0, i64 0), i32 5) #29, !dbg !707
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !697
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !707
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.7, i64 0, i64 0), i32 5) #29, !dbg !708
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !697
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !708
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.8, i64 0, i64 0), i32 5) #29, !dbg !709
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !697
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !709
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #29, !dbg !710
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !697
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !710
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #29, !dbg !711
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !697
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !711
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), metadata !712, metadata !DIExpression()) #29, !dbg !731
  %39 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !733
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %39) #29, !dbg !733
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !718, metadata !DIExpression()) #29, !dbg !734
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %39, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #29, !dbg !734
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), metadata !727, metadata !DIExpression()) #29, !dbg !731
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !728, metadata !DIExpression()) #29, !dbg !731
  %40 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !735
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !728, metadata !DIExpression()) #29, !dbg !731
  br label %41, !dbg !736

41:                                               ; preds = %46, %9
  %42 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), %9 ]
  %43 = phi %struct.infomap* [ %47, %46 ], [ %40, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !728, metadata !DIExpression()) #29, !dbg !731
  %44 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* nonnull %42) #30, !dbg !737
  %45 = icmp eq i32 %44, 0, !dbg !737
  br i1 %45, label %51, label %46, !dbg !736

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 1, !dbg !738
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !728, metadata !DIExpression()) #29, !dbg !731
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 0, !dbg !739
  %49 = load i8*, i8** %48, align 8, !dbg !739, !tbaa !740
  %50 = icmp eq i8* %49, null, !dbg !742
  br i1 %50, label %51, label %41, !dbg !743, !llvm.loop !744

51:                                               ; preds = %46, %41
  %52 = phi %struct.infomap* [ %43, %41 ], [ %47, %46 ]
  %53 = getelementptr inbounds %struct.infomap, %struct.infomap* %52, i64 0, i32 1, !dbg !746
  %54 = load i8*, i8** %53, align 8, !dbg !746, !tbaa !748
  %55 = icmp eq i8* %54, null, !dbg !749
  %56 = select i1 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %54, !dbg !750
  call void @llvm.dbg.value(metadata i8* %56, metadata !727, metadata !DIExpression()) #29, !dbg !731
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #29, !dbg !751
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0)) #29, !dbg !751
  %59 = tail call i8* @setlocale(i32 5, i8* null) #29, !dbg !752
  call void @llvm.dbg.value(metadata i8* %59, metadata !730, metadata !DIExpression()) #29, !dbg !731
  %60 = icmp eq i8* %59, null, !dbg !753
  br i1 %60, label %68, label %61, !dbg !755

61:                                               ; preds = %51
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #30, !dbg !756
  %63 = icmp eq i32 %62, 0, !dbg !756
  br i1 %63, label %68, label %64, !dbg !757

64:                                               ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i32 5) #29, !dbg !758
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !758, !tbaa !697
  %67 = tail call i32 @fputs_unlocked(i8* %65, %struct._IO_FILE* %66) #29, !dbg !758
  br label %68, !dbg !760

68:                                               ; preds = %51, %61, %64
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i32 5) #29, !dbg !761
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #29, !dbg !761
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #29, !dbg !762
  %72 = icmp eq i8* %56, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), !dbg !762
  %73 = select i1 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), !dbg !762
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* %56, i8* %73) #29, !dbg !762
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %39) #29, !dbg !763
  br label %75

75:                                               ; preds = %68, %4
  tail call void @exit(i32 %0) #31, !dbg !764
  unreachable, !dbg !764
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !765 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !769 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !824 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !828 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !833, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8** %1, metadata !834, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* null, metadata !836, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 0, metadata !837, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* null, metadata !841, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 0, metadata !842, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 0, metadata !843, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 0, metadata !844, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 0, metadata !845, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i32 0, metadata !846, metadata !DIExpression()), !dbg !872
  %3 = load i8*, i8** %1, align 8, !dbg !873, !tbaa !697
  tail call void @set_program_name(i8* %3) #29, !dbg !874
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #29, !dbg !875
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #29, !dbg !876
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #29, !dbg !877
  %7 = tail call i32 @atexit(void ()* nonnull @maybe_close_stdout) #29, !dbg !878
  br label %8, !dbg !879

8:                                                ; preds = %37, %2
  %9 = phi i8 [ 0, %2 ], [ %17, %37 ]
  %10 = phi i8 [ 0, %2 ], [ %24, %37 ]
  %11 = phi i1 [ true, %2 ], [ false, %37 ]
  %12 = phi i8 [ 0, %2 ], [ 1, %37 ]
  %13 = phi i8* [ null, %2 ], [ %35, %37 ]
  %14 = phi i8 [ 0, %2 ], [ %38, %37 ]
  %15 = phi i8* [ null, %2 ], [ %33, %37 ]
  br label %16, !dbg !879

16:                                               ; preds = %37, %8
  %17 = phi i8 [ %9, %8 ], [ 1, %37 ]
  %18 = phi i8 [ %10, %8 ], [ %24, %37 ]
  %19 = phi i8 [ %12, %8 ], [ %30, %37 ]
  %20 = phi i8* [ %13, %8 ], [ %35, %37 ]
  %21 = phi i8 [ %14, %8 ], [ %38, %37 ]
  %22 = phi i8* [ %15, %8 ], [ %33, %37 ]
  br label %23, !dbg !879

23:                                               ; preds = %37, %16
  %24 = phi i8 [ %18, %16 ], [ 1, %37 ]
  %25 = phi i8 [ %19, %16 ], [ %30, %37 ]
  %26 = phi i8* [ %20, %16 ], [ %35, %37 ]
  %27 = phi i8 [ %21, %16 ], [ %38, %37 ]
  %28 = phi i8* [ %22, %16 ], [ %33, %37 ]
  br label %29, !dbg !879

29:                                               ; preds = %23, %40
  %30 = phi i8 [ %25, %23 ], [ 1, %40 ]
  %31 = phi i8* [ %26, %23 ], [ %35, %40 ]
  %32 = phi i8 [ %27, %23 ], [ %38, %40 ]
  %33 = phi i8* [ %28, %23 ], [ %41, %40 ]
  br label %34, !dbg !879

34:                                               ; preds = %29, %42
  %35 = phi i8* [ %31, %29 ], [ %43, %42 ]
  %36 = phi i8 [ %32, %29 ], [ %38, %42 ]
  br label %37, !dbg !879

37:                                               ; preds = %37, %34
  %38 = phi i8 [ %36, %34 ], [ 1, %37 ], !dbg !880
  call void @llvm.dbg.value(metadata i8* %33, metadata !836, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 %38, metadata !837, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* %35, metadata !841, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 %30, metadata !842, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 %24, metadata !845, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 %17, metadata !844, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 %12, metadata !843, metadata !DIExpression()), !dbg !872
  %39 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #29, !dbg !881
  call void @llvm.dbg.value(metadata i32 %39, metadata !838, metadata !DIExpression()), !dbg !872
  switch i32 %39, label %48 [
    i32 -1, label %49
    i32 100, label %16
    i32 112, label %40
    i32 113, label %37
    i32 116, label %8
    i32 117, label %23
    i32 128, label %42
    i32 -130, label %44
    i32 86, label %45
    i32 -131, label %45
  ], !dbg !879, !llvm.loop !882

40:                                               ; preds = %37
  %41 = load i8*, i8** @optarg, align 8, !dbg !884, !tbaa !697
  call void @llvm.dbg.value(metadata i8* %41, metadata !836, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 1, metadata !842, metadata !DIExpression()), !dbg !872
  br label %29, !dbg !887, !llvm.loop !882

42:                                               ; preds = %37
  %43 = load i8*, i8** @optarg, align 8, !dbg !888, !tbaa !697
  call void @llvm.dbg.value(metadata i8* %43, metadata !841, metadata !DIExpression()), !dbg !872
  br label %34, !dbg !889, !llvm.loop !882

44:                                               ; preds = %37
  tail call void @usage(i32 0) #32, !dbg !890
  unreachable, !dbg !890

45:                                               ; preds = %37, %37
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !891, !tbaa !697
  %47 = load i8*, i8** @Version, align 8, !dbg !891, !tbaa !697
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* null) #29, !dbg !891
  tail call void @exit(i32 0) #31, !dbg !891
  unreachable, !dbg !891

48:                                               ; preds = %37
  tail call void @usage(i32 1) #32, !dbg !892
  unreachable, !dbg !892

49:                                               ; preds = %37
  %50 = load i32, i32* @optind, align 4, !dbg !893, !tbaa !894
  %51 = sub nsw i32 %0, %50, !dbg !896
  call void @llvm.dbg.value(metadata i32 %51, metadata !839, metadata !DIExpression()), !dbg !872
  %52 = icmp ugt i32 %51, 1, !dbg !897
  br i1 %52, label %53, label %55, !dbg !899

53:                                               ; preds = %49
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 5) #29, !dbg !900
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %54) #29, !dbg !902
  tail call void @usage(i32 1) #32, !dbg !903
  unreachable, !dbg !903

55:                                               ; preds = %49
  %56 = icmp eq i32 %51, 0, !dbg !904
  br i1 %56, label %61, label %57, !dbg !906

57:                                               ; preds = %55
  %58 = sext i32 %50 to i64, !dbg !907
  %59 = getelementptr inbounds i8*, i8** %1, i64 %58, !dbg !907
  %60 = load i8*, i8** %59, align 8, !dbg !907, !tbaa !697
  call void @llvm.dbg.value(metadata i8* %60, metadata !840, metadata !DIExpression()), !dbg !872
  br label %61

61:                                               ; preds = %55, %57
  %62 = phi i8 [ %30, %57 ], [ 1, %55 ], !dbg !872
  %63 = phi i8* [ %60, %57 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), %55 ], !dbg !909
  call void @llvm.dbg.value(metadata i8* %63, metadata !840, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8 %62, metadata !842, metadata !DIExpression()), !dbg !872
  %64 = icmp eq i8* %35, null, !dbg !910
  br i1 %64, label %82, label %65, !dbg !911

65:                                               ; preds = %61
  %66 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %63) #30, !dbg !912
  call void @llvm.dbg.value(metadata i64 %66, metadata !850, metadata !DIExpression()), !dbg !913
  %67 = icmp eq i64 %66, 0, !dbg !914
  br i1 %67, label %73, label %68, !dbg !916

68:                                               ; preds = %65
  %69 = add i64 %66, -1, !dbg !917
  %70 = getelementptr inbounds i8, i8* %63, i64 %69, !dbg !918
  %71 = load i8, i8* %70, align 1, !dbg !918, !tbaa !919
  %72 = icmp eq i8 %71, 88, !dbg !920
  br i1 %72, label %76, label %73, !dbg !921

73:                                               ; preds = %68, %65
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 5) #29, !dbg !922
  %75 = tail call i8* @quote(i8* %63) #29, !dbg !922
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %74, i8* %75) #29, !dbg !922
  unreachable, !dbg !922

76:                                               ; preds = %68
  %77 = tail call i64 @strlen(i8* nonnull %35) #30, !dbg !924
  call void @llvm.dbg.value(metadata i64 %77, metadata !848, metadata !DIExpression()), !dbg !872
  %78 = add i64 %77, 1, !dbg !925
  %79 = add i64 %78, %66, !dbg !926
  call void @llvm.dbg.value(metadata i64 %79, metadata !927, metadata !DIExpression()) #29, !dbg !932
  %80 = tail call noalias i8* @xmalloc(i64 %79) #29, !dbg !934
  call void @llvm.dbg.value(metadata i8* %80, metadata !849, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* %80, metadata !935, metadata !DIExpression()) #29, !dbg !947
  call void @llvm.dbg.value(metadata i8* %63, metadata !945, metadata !DIExpression()) #29, !dbg !947
  call void @llvm.dbg.value(metadata i64 %66, metadata !946, metadata !DIExpression()) #29, !dbg !947
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %80, i8* nonnull align 1 %63, i64 %66, i1 false) #29, !dbg !949
  %81 = getelementptr inbounds i8, i8* %80, i64 %66, !dbg !950
  call void @llvm.dbg.value(metadata i8* %81, metadata !935, metadata !DIExpression()) #29, !dbg !951
  call void @llvm.dbg.value(metadata i8* %35, metadata !945, metadata !DIExpression()) #29, !dbg !951
  call void @llvm.dbg.value(metadata i64 %78, metadata !946, metadata !DIExpression()) #29, !dbg !951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %81, i8* nonnull align 1 %35, i64 %78, i1 false) #29, !dbg !953
  call void @llvm.dbg.value(metadata i8* %80, metadata !840, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* %81, metadata !841, metadata !DIExpression()), !dbg !872
  br label %94, !dbg !954

82:                                               ; preds = %61
  %83 = tail call noalias i8* @xstrdup(i8* %63) #29, !dbg !955
  call void @llvm.dbg.value(metadata i8* %83, metadata !840, metadata !DIExpression()), !dbg !872
  %84 = tail call i8* @strrchr(i8* nonnull dereferenceable(1) %83, i32 88) #30, !dbg !957
  call void @llvm.dbg.value(metadata i8* %84, metadata !841, metadata !DIExpression()), !dbg !872
  %85 = icmp eq i8* %84, null, !dbg !958
  br i1 %85, label %86, label %89, !dbg !960

86:                                               ; preds = %82
  %87 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %83), !dbg !961
  %88 = getelementptr i8, i8* %83, i64 %87, !dbg !961
  call void @llvm.dbg.value(metadata i8* %88, metadata !841, metadata !DIExpression()), !dbg !872
  br label %91, !dbg !962

89:                                               ; preds = %82
  %90 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !963
  call void @llvm.dbg.value(metadata i8* %90, metadata !841, metadata !DIExpression()), !dbg !872
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi i8* [ %90, %89 ], [ %88, %86 ], !dbg !964
  call void @llvm.dbg.value(metadata i8* %92, metadata !841, metadata !DIExpression()), !dbg !872
  %93 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %92) #30, !dbg !965
  call void @llvm.dbg.value(metadata i64 %93, metadata !848, metadata !DIExpression()), !dbg !872
  br label %94

94:                                               ; preds = %91, %76
  %95 = phi i64 [ %77, %76 ], [ %93, %91 ], !dbg !966
  %96 = phi i8* [ %81, %76 ], [ %92, %91 ], !dbg !966
  %97 = phi i8* [ %80, %76 ], [ %83, %91 ], !dbg !966
  call void @llvm.dbg.value(metadata i8* %97, metadata !840, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i8* %96, metadata !841, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i64 %95, metadata !848, metadata !DIExpression()), !dbg !872
  %98 = icmp eq i64 %95, 0, !dbg !967
  br i1 %98, label %105, label %99, !dbg !969

99:                                               ; preds = %94
  %100 = tail call i8* @last_component(i8* %96) #30, !dbg !970
  %101 = icmp eq i8* %100, %96, !dbg !971
  br i1 %101, label %105, label %102, !dbg !972

102:                                              ; preds = %99
  %103 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0), i32 5) #29, !dbg !973
  %104 = tail call i8* @quote(i8* %96) #29, !dbg !973
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %103, i8* %104) #29, !dbg !973
  unreachable, !dbg !973

105:                                              ; preds = %99, %94
  %106 = ptrtoint i8* %96 to i64, !dbg !975
  %107 = ptrtoint i8* %97 to i64, !dbg !975
  %108 = sub i64 %106, %107, !dbg !975
  call void @llvm.dbg.value(metadata i8* %97, metadata !976, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %108, metadata !981, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 0, metadata !982, metadata !DIExpression()), !dbg !983
  %109 = icmp eq i64 %108, 0, !dbg !985
  br i1 %109, label %123, label %110, !dbg !988

110:                                              ; preds = %105, %117
  %111 = phi i64 [ %118, %117 ], [ 0, %105 ]
  %112 = phi i64 [ %113, %117 ], [ %108, %105 ]
  call void @llvm.dbg.value(metadata i64 %111, metadata !982, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %112, metadata !981, metadata !DIExpression()), !dbg !983
  %113 = add i64 %112, -1, !dbg !989
  %114 = getelementptr inbounds i8, i8* %97, i64 %113, !dbg !990
  %115 = load i8, i8* %114, align 1, !dbg !990, !tbaa !919
  %116 = icmp eq i8 %115, 88, !dbg !991
  br i1 %116, label %117, label %120, !dbg !992

117:                                              ; preds = %110
  %118 = add nuw i64 %111, 1, !dbg !993
  call void @llvm.dbg.value(metadata i64 %118, metadata !982, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %113, metadata !981, metadata !DIExpression()), !dbg !983
  %119 = icmp eq i64 %113, 0, !dbg !985
  br i1 %119, label %120, label %110, !dbg !988, !llvm.loop !994

120:                                              ; preds = %110, %117
  %121 = phi i64 [ %108, %117 ], [ %111, %110 ], !dbg !983
  call void @llvm.dbg.value(metadata i64 %121, metadata !847, metadata !DIExpression()), !dbg !872
  %122 = icmp ult i64 %121, 3, !dbg !996
  br i1 %122, label %123, label %126, !dbg !998

123:                                              ; preds = %105, %120
  %124 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 5) #29, !dbg !999
  %125 = tail call i8* @quote(i8* %97) #29, !dbg !999
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %124, i8* %125) #29, !dbg !999
  unreachable, !dbg !999

126:                                              ; preds = %120
  %127 = and i8 %62, 1, !dbg !1000
  %128 = icmp eq i8 %127, 0, !dbg !1000
  br i1 %128, label %171, label %129, !dbg !1001

129:                                              ; preds = %126
  br i1 %11, label %149, label %130, !dbg !1002

130:                                              ; preds = %129
  %131 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #29, !dbg !1003
  call void @llvm.dbg.value(metadata i8* %131, metadata !853, metadata !DIExpression()), !dbg !1004
  %132 = icmp eq i8* %131, null, !dbg !1005
  br i1 %132, label %136, label %133, !dbg !1007

133:                                              ; preds = %130
  %134 = load i8, i8* %131, align 1, !dbg !1008, !tbaa !919
  %135 = icmp eq i8 %134, 0, !dbg !1008
  br i1 %135, label %136, label %142, !dbg !1009

136:                                              ; preds = %133, %130
  %137 = icmp eq i8* %33, null, !dbg !1010
  br i1 %137, label %141, label %138, !dbg !1012

138:                                              ; preds = %136
  %139 = load i8, i8* %33, align 1, !dbg !1013, !tbaa !919
  %140 = icmp eq i8 %139, 0, !dbg !1013
  br i1 %140, label %141, label %142, !dbg !1014

141:                                              ; preds = %138, %136
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), metadata !835, metadata !DIExpression()), !dbg !872
  br label %142

142:                                              ; preds = %138, %133, %141
  %143 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %141 ], [ %131, %133 ], [ %33, %138 ], !dbg !1015
  call void @llvm.dbg.value(metadata i8* %143, metadata !835, metadata !DIExpression()), !dbg !872
  %144 = tail call i8* @last_component(i8* nonnull %97) #30, !dbg !1016
  %145 = icmp eq i8* %144, %97, !dbg !1018
  br i1 %145, label %168, label %146, !dbg !1019

146:                                              ; preds = %142
  %147 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #29, !dbg !1020
  %148 = tail call i8* @quote(i8* nonnull %97) #29, !dbg !1020
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %147, i8* %148) #29, !dbg !1020
  unreachable, !dbg !1020

149:                                              ; preds = %129
  %150 = icmp eq i8* %33, null, !dbg !1021
  br i1 %150, label %154, label %151, !dbg !1022

151:                                              ; preds = %149
  %152 = load i8, i8* %33, align 1, !dbg !1023, !tbaa !919
  %153 = icmp eq i8 %152, 0, !dbg !1023
  br i1 %153, label %154, label %161, !dbg !1024

154:                                              ; preds = %151, %149
  %155 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #29, !dbg !1025
  call void @llvm.dbg.value(metadata i8* %155, metadata !858, metadata !DIExpression()), !dbg !1026
  %156 = icmp eq i8* %155, null, !dbg !1027
  br i1 %156, label %161, label %157, !dbg !1028

157:                                              ; preds = %154
  %158 = load i8, i8* %155, align 1, !dbg !1029, !tbaa !919
  %159 = icmp eq i8 %158, 0, !dbg !1029
  %160 = select i1 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %155, !dbg !1027
  br label %161, !dbg !1027

161:                                              ; preds = %157, %154, %151
  %162 = phi i8* [ %33, %151 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %154 ], [ %160, %157 ], !dbg !1030
  call void @llvm.dbg.value(metadata i8* %162, metadata !835, metadata !DIExpression()), !dbg !872
  %163 = load i8, i8* %97, align 1, !dbg !1031, !tbaa !919
  %164 = icmp eq i8 %163, 47, !dbg !1031
  br i1 %164, label %165, label %168, !dbg !1033

165:                                              ; preds = %161
  %166 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0), i32 5) #29, !dbg !1034
  %167 = tail call i8* @quote(i8* nonnull %97) #29, !dbg !1034
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %166, i8* %167) #29, !dbg !1034
  unreachable, !dbg !1034

168:                                              ; preds = %142, %161
  %169 = phi i8* [ %162, %161 ], [ %143, %142 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8* %169, metadata !835, metadata !DIExpression()), !dbg !872
  %170 = tail call i8* @file_name_concat(i8* %169, i8* nonnull %97, i8** null) #29, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %170, metadata !849, metadata !DIExpression()), !dbg !872
  tail call void @free(i8* nonnull %97) #29, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %170, metadata !840, metadata !DIExpression()), !dbg !872
  br label %171, !dbg !1038

171:                                              ; preds = %168, %126
  %172 = phi i8* [ %170, %168 ], [ %97, %126 ], !dbg !872
  call void @llvm.dbg.value(metadata i8* %172, metadata !840, metadata !DIExpression()), !dbg !872
  %173 = tail call noalias i8* @xstrdup(i8* %172) #29, !dbg !1039
  call void @llvm.dbg.value(metadata i8* %173, metadata !849, metadata !DIExpression()), !dbg !872
  %174 = icmp eq i8 %17, 0, !dbg !1040
  br i1 %174, label %188, label %175, !dbg !1041

175:                                              ; preds = %171
  %176 = icmp eq i8 %24, 0, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %173, metadata !1043, metadata !DIExpression()) #29, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %95, metadata !1048, metadata !DIExpression()) #29, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %121, metadata !1049, metadata !DIExpression()) #29, !dbg !1051
  call void @llvm.dbg.value(metadata i1 %176, metadata !1050, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !1051
  %177 = trunc i64 %95 to i32, !dbg !1053
  %178 = select i1 %176, i32 1, i32 2, !dbg !1054
  %179 = tail call i32 @gen_tempname_len(i8* %173, i32 %177, i32 0, i32 %178, i64 %121) #29, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %179, metadata !862, metadata !DIExpression()), !dbg !1056
  %180 = icmp eq i32 %179, 0, !dbg !1057
  br i1 %180, label %210, label %181, !dbg !1059

181:                                              ; preds = %175
  %182 = icmp eq i8 %38, 0, !dbg !1060
  br i1 %182, label %183, label %224, !dbg !1063

183:                                              ; preds = %181
  %184 = tail call i32* @__errno_location() #33, !dbg !1064
  %185 = load i32, i32* %184, align 4, !dbg !1064, !tbaa !894
  %186 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 5) #29, !dbg !1065
  %187 = tail call i8* @quote(i8* %172) #29, !dbg !1066
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %185, i8* %186, i8* %187) #29, !dbg !1067
  br label %224, !dbg !1067

188:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i8* %173, metadata !1068, metadata !DIExpression()) #29, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %95, metadata !1071, metadata !DIExpression()) #29, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %121, metadata !1072, metadata !DIExpression()) #29, !dbg !1074
  call void @llvm.dbg.value(metadata i1 undef, metadata !1073, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !1074
  %189 = trunc i64 %95 to i32, !dbg !1076
  %190 = shl nuw nsw i8 %24, 1, !dbg !1077
  %191 = zext i8 %190 to i32, !dbg !1077
  %192 = tail call i32 @gen_tempname_len(i8* %173, i32 %189, i32 0, i32 %191, i64 %121) #29, !dbg !1078
  call void @llvm.dbg.value(metadata i32 %192, metadata !865, metadata !DIExpression()), !dbg !1079
  %193 = icmp slt i32 %192, 0, !dbg !1080
  br i1 %193, label %203, label %194, !dbg !1082

194:                                              ; preds = %188
  %195 = icmp eq i8 %24, 0, !dbg !1083
  call void @llvm.dbg.value(metadata i1 %195, metadata !1073, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !1074
  br i1 %195, label %198, label %196, !dbg !1084

196:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i32 0, metadata !846, metadata !DIExpression()), !dbg !872
  %197 = tail call i32 @puts(i8* nonnull dereferenceable(1) %173), !dbg !1085
  br label %224, !dbg !1086

198:                                              ; preds = %194
  %199 = tail call i32 @close(i32 %192) #29, !dbg !1087
  %200 = icmp eq i32 %199, 0, !dbg !1088
  br i1 %200, label %201, label %203, !dbg !1089

201:                                              ; preds = %198
  call void @llvm.dbg.value(metadata i32 0, metadata !846, metadata !DIExpression()), !dbg !872
  %202 = tail call i32 @puts(i8* nonnull dereferenceable(1) %173), !dbg !1085
  br label %213, !dbg !1086

203:                                              ; preds = %198, %188
  %204 = icmp eq i8 %38, 0, !dbg !1090
  br i1 %204, label %205, label %224, !dbg !1093

205:                                              ; preds = %203
  %206 = tail call i32* @__errno_location() #33, !dbg !1094
  %207 = load i32, i32* %206, align 4, !dbg !1094, !tbaa !894
  %208 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i32 5) #29, !dbg !1095
  %209 = tail call i8* @quote(i8* %172) #29, !dbg !1096
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %207, i8* %208, i8* %209) #29, !dbg !1097
  br label %224, !dbg !1097

210:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i32 0, metadata !846, metadata !DIExpression()), !dbg !872
  %211 = tail call i32 @puts(i8* nonnull dereferenceable(1) %173), !dbg !1085
  %212 = icmp eq i8 %24, 0, !dbg !1098
  br i1 %212, label %213, label %224, !dbg !1086

213:                                              ; preds = %201, %210
  store i1 true, i1* @stdout_closed, align 1, !dbg !1099
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1100, !tbaa !697
  %215 = tail call i32 @close_stream(%struct._IO_FILE* %214) #29, !dbg !1101
  %216 = icmp eq i32 %215, 0, !dbg !1102
  br i1 %216, label %224, label %217, !dbg !1103

217:                                              ; preds = %213
  %218 = tail call i32* @__errno_location() #33, !dbg !1104
  %219 = load i32, i32* %218, align 4, !dbg !1104, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %219, metadata !867, metadata !DIExpression()), !dbg !1105
  %220 = tail call i32 @remove(i8* %173) #29, !dbg !1106
  %221 = icmp eq i8 %38, 0, !dbg !1107
  br i1 %221, label %222, label %224, !dbg !1109

222:                                              ; preds = %217
  %223 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 5) #29, !dbg !1110
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %219, i8* %223) #29, !dbg !1111
  br label %224, !dbg !1111

224:                                              ; preds = %196, %203, %205, %181, %183, %217, %222, %210, %213
  %225 = phi i32 [ 0, %210 ], [ 0, %213 ], [ 1, %222 ], [ 1, %217 ], [ 1, %183 ], [ 1, %181 ], [ 1, %205 ], [ 1, %203 ], [ 0, %196 ], !dbg !872
  call void @llvm.dbg.value(metadata i32 %225, metadata !846, metadata !DIExpression()), !dbg !872
  ret i32 %225, !dbg !1112
}

; Function Attrs: nounwind
declare !dbg !1113 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1116 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @maybe_close_stdout() #8 !dbg !1119 {
  %1 = load i1, i1* @stdout_closed, align 1, !dbg !1122
  br i1 %1, label %3, label %2, !dbg !1124

2:                                                ; preds = %0
  tail call void @close_stdout() #29, !dbg !1125
  br label %8, !dbg !1125

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1126, !tbaa !697
  %5 = tail call i32 @close_stream(%struct._IO_FILE* %4) #29, !dbg !1128
  %6 = icmp eq i32 %5, 0, !dbg !1129
  br i1 %6, label %8, label %7, !dbg !1130

7:                                                ; preds = %3
  tail call void @_exit(i32 1) #31, !dbg !1131
  unreachable, !dbg !1131

8:                                                ; preds = %3, %2
  ret void, !dbg !1132
}

; Function Attrs: nounwind
declare !dbg !1133 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1138 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1144 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare !dbg !1148 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !1149 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !1152 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1156 noundef i32 @remove(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !1157 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1196, metadata !DIExpression()), !dbg !1201
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #29, !dbg !1202
  call void @llvm.dbg.value(metadata i1 undef, metadata !1197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1203, metadata !DIExpression()), !dbg !1207
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1209
  %4 = load i32, i32* %3, align 8, !dbg !1209, !tbaa !1210
  %5 = and i32 %4, 32, !dbg !1214
  %6 = icmp eq i32 %5, 0, !dbg !1214
  call void @llvm.dbg.value(metadata i1 %6, metadata !1199, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1201
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #29, !dbg !1215
  %8 = icmp eq i32 %7, 0, !dbg !1216
  call void @llvm.dbg.value(metadata i1 %8, metadata !1200, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1201
  br i1 %6, label %9, label %19, !dbg !1217

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !1219
  call void @llvm.dbg.value(metadata i1 %10, metadata !1197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1201
  %11 = or i1 %10, %8, !dbg !1220
  %12 = xor i1 %8, true, !dbg !1220
  %13 = sext i1 %12 to i32, !dbg !1220
  br i1 %11, label %22, label %14, !dbg !1220

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #33, !dbg !1221
  %16 = load i32, i32* %15, align 4, !dbg !1221, !tbaa !894
  %17 = icmp ne i32 %16, 9, !dbg !1222
  %18 = sext i1 %17 to i32, !dbg !1223
  br label %22, !dbg !1223

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !1224

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #33, !dbg !1226
  store i32 0, i32* %21, align 4, !dbg !1228, !tbaa !894
  br label %22, !dbg !1226

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !1201
  ret i32 %23, !dbg !1229
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !1230 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1232, metadata !DIExpression()), !dbg !1233
  store i8* %0, i8** @file_name, align 8, !dbg !1234, !tbaa !697
  ret void, !dbg !1235
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !1236 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1240, metadata !DIExpression()), !dbg !1241
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1242, !tbaa !1243
  ret void, !dbg !1245
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() local_unnamed_addr #8 !dbg !1246 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1251, !tbaa !697
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #29, !dbg !1252
  %3 = icmp eq i32 %2, 0, !dbg !1253
  br i1 %3, label %22, label %4, !dbg !1254

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1255, !tbaa !1243, !range !1256
  %6 = icmp eq i8 %5, 0, !dbg !1255
  br i1 %6, label %11, label %7, !dbg !1257

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #33, !dbg !1258
  %9 = load i32, i32* %8, align 4, !dbg !1258, !tbaa !894
  %10 = icmp eq i32 %9, 32, !dbg !1259
  br i1 %10, label %22, label %11, !dbg !1260

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i32 5) #29, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %12, metadata !1248, metadata !DIExpression()), !dbg !1262
  %13 = load i8*, i8** @file_name, align 8, !dbg !1263, !tbaa !697
  %14 = icmp eq i8* %13, null, !dbg !1263
  %15 = tail call i32* @__errno_location() #33, !dbg !1265
  %16 = load i32, i32* %15, align 4, !dbg !1265, !tbaa !894
  br i1 %14, label %19, label %17, !dbg !1266

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #29, !dbg !1267
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %18, i8* %12) #29, !dbg !1268
  br label %20, !dbg !1268

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.60, i64 0, i64 0), i8* %12) #29, !dbg !1269
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1270, !tbaa !894
  tail call void @_exit(i32 %21) #31, !dbg !1271
  unreachable, !dbg !1271

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1272, !tbaa !697
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #29, !dbg !1274
  %25 = icmp eq i32 %24, 0, !dbg !1275
  br i1 %25, label %28, label %26, !dbg !1276

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1277, !tbaa !894
  tail call void @_exit(i32 %27) #31, !dbg !1278
  unreachable, !dbg !1278

28:                                               ; preds = %22
  ret void, !dbg !1279
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #14 !dbg !1280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1282, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8* %0, metadata !1283, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 0, metadata !1285, metadata !DIExpression()), !dbg !1286
  br label %2, !dbg !1287

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1286
  call void @llvm.dbg.value(metadata i8* %3, metadata !1283, metadata !DIExpression()), !dbg !1286
  %4 = load i8, i8* %3, align 1, !dbg !1288, !tbaa !919
  %5 = icmp eq i8 %4, 47, !dbg !1288
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %6, metadata !1283, metadata !DIExpression()), !dbg !1286
  br i1 %5, label %2, label %7, !dbg !1287, !llvm.loop !1290

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1291
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1294
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1295
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1286
  call void @llvm.dbg.value(metadata i8 %11, metadata !1285, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8* %10, metadata !1284, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8* %9, metadata !1283, metadata !DIExpression()), !dbg !1286
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1296

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !1297
  %14 = icmp eq i8 %13, 0, !dbg !1297
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1301
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1301
  br label %17, !dbg !1301

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1286
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1286
  call void @llvm.dbg.value(metadata i8 %19, metadata !1285, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8* %18, metadata !1283, metadata !DIExpression()), !dbg !1286
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1302
  call void @llvm.dbg.value(metadata i8* %20, metadata !1284, metadata !DIExpression()), !dbg !1286
  %21 = load i8, i8* %20, align 1, !dbg !1291, !tbaa !919
  br label %7, !dbg !1303, !llvm.loop !1304

22:                                               ; preds = %7
  ret i8* %9, !dbg !1306
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #15 !dbg !1307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1311, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 0, metadata !1313, metadata !DIExpression()), !dbg !1314
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %2, metadata !1312, metadata !DIExpression()), !dbg !1314
  %3 = icmp ne i64 %2, 0, !dbg !1317
  %4 = zext i1 %3 to i64, !dbg !1317
  br label %5, !dbg !1317

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1318
  call void @llvm.dbg.value(metadata i64 %6, metadata !1312, metadata !DIExpression()), !dbg !1314
  %7 = icmp ugt i64 %6, 1, !dbg !1319
  br i1 %7, label %8, label %13, !dbg !1321

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1322
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1322
  %11 = load i8, i8* %10, align 1, !dbg !1322, !tbaa !919
  %12 = icmp eq i8 %11, 47, !dbg !1322
  br i1 %12, label %5, label %13, !dbg !1323, !llvm.loop !1324

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1318
  ret i64 %14, !dbg !1326
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @file_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !1327 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1331, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %1, metadata !1332, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8** %2, metadata !1333, metadata !DIExpression()), !dbg !1335
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #29, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %4, metadata !1334, metadata !DIExpression()), !dbg !1335
  %5 = icmp eq i8* %4, null, !dbg !1337
  br i1 %5, label %6, label %7, !dbg !1339

6:                                                ; preds = %3
  tail call void @xalloc_die() #31, !dbg !1340
  unreachable, !dbg !1340

7:                                                ; preds = %3
  ret i8* %4, !dbg !1341
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #16 !dbg !1342 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1344, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8* %1, metadata !1345, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8** %2, metadata !1346, metadata !DIExpression()), !dbg !1354
  %4 = tail call i8* @last_component(i8* %0) #30, !dbg !1355
  call void @llvm.dbg.value(metadata i8* %4, metadata !1347, metadata !DIExpression()), !dbg !1354
  %5 = tail call i64 @base_len(i8* %4) #30, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %5, metadata !1348, metadata !DIExpression()), !dbg !1354
  %6 = ptrtoint i8* %4 to i64, !dbg !1357
  %7 = ptrtoint i8* %0 to i64, !dbg !1357
  %8 = sub i64 %6, %7, !dbg !1357
  %9 = add i64 %8, %5, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %9, metadata !1349, metadata !DIExpression()), !dbg !1354
  %10 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #30, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %10, metadata !1350, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8 0, metadata !1351, metadata !DIExpression()), !dbg !1354
  %11 = icmp eq i64 %5, 0, !dbg !1360
  br i1 %11, label %22, label %12, !dbg !1362

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1363
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1363
  %15 = load i8, i8* %14, align 1, !dbg !1363, !tbaa !919
  %16 = icmp eq i8 %15, 47, !dbg !1363
  br i1 %16, label %26, label %17, !dbg !1366

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1367, !tbaa !919
  %19 = icmp eq i8 %18, 47, !dbg !1367
  %20 = xor i1 %19, true, !dbg !1368
  %21 = select i1 %19, i8 0, i8 47, !dbg !1368
  br label %26, !dbg !1368

22:                                               ; preds = %3
  %23 = load i8, i8* %1, align 1, !dbg !1369, !tbaa !919
  %24 = icmp eq i8 %23, 47, !dbg !1369
  %25 = select i1 %24, i8 46, i8 0, !dbg !1371
  br label %26, !dbg !1371

26:                                               ; preds = %22, %17, %12
  %27 = phi i1 [ false, %12 ], [ %20, %17 ], [ %24, %22 ]
  %28 = phi i8 [ 0, %12 ], [ %21, %17 ], [ %25, %22 ], !dbg !1354
  %29 = zext i1 %27 to i64
  call void @llvm.dbg.value(metadata i8 %28, metadata !1351, metadata !DIExpression()), !dbg !1354
  %30 = add i64 %10, 1, !dbg !1372
  %31 = add i64 %30, %9, !dbg !1373
  %32 = add i64 %31, %29, !dbg !1374
  %33 = tail call noalias i8* @malloc(i64 %32) #29, !dbg !1375
  call void @llvm.dbg.value(metadata i8* %33, metadata !1352, metadata !DIExpression()), !dbg !1354
  %34 = icmp eq i8* %33, null, !dbg !1376
  br i1 %34, label %42, label %35, !dbg !1378

35:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %33, metadata !1379, metadata !DIExpression()) #29, !dbg !1384
  call void @llvm.dbg.value(metadata i8* %0, metadata !1382, metadata !DIExpression()) #29, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %9, metadata !1383, metadata !DIExpression()) #29, !dbg !1384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %33, i8* nonnull align 1 %0, i64 %9, i1 false) #29, !dbg !1386
  %36 = getelementptr inbounds i8, i8* %33, i64 %9, !dbg !1386
  call void @llvm.dbg.value(metadata i8* %36, metadata !1353, metadata !DIExpression()), !dbg !1354
  store i8 %28, i8* %36, align 1, !dbg !1387, !tbaa !919
  %37 = getelementptr inbounds i8, i8* %36, i64 %29, !dbg !1388
  call void @llvm.dbg.value(metadata i8* %37, metadata !1353, metadata !DIExpression()), !dbg !1354
  %38 = icmp eq i8** %2, null, !dbg !1389
  br i1 %38, label %40, label %39, !dbg !1391

39:                                               ; preds = %35
  store i8* %37, i8** %2, align 8, !dbg !1392, !tbaa !697
  br label %40, !dbg !1393

40:                                               ; preds = %39, %35
  call void @llvm.dbg.value(metadata i8* %37, metadata !1379, metadata !DIExpression()) #29, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %1, metadata !1382, metadata !DIExpression()) #29, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %10, metadata !1383, metadata !DIExpression()) #29, !dbg !1394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %37, i8* nonnull align 1 %1, i64 %10, i1 false) #29, !dbg !1396
  %41 = getelementptr inbounds i8, i8* %37, i64 %10, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %41, metadata !1353, metadata !DIExpression()), !dbg !1354
  store i8 0, i8* %41, align 1, !dbg !1397, !tbaa !919
  br label %42, !dbg !1398

42:                                               ; preds = %26, %40
  ret i8* %33, !dbg !1399
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1400 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1402, metadata !DIExpression()), !dbg !1405
  %2 = icmp eq i8* %0, null, !dbg !1406
  br i1 %2, label %3, label %6, !dbg !1408

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1409, !tbaa !697
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #34, !dbg !1411
  tail call void @abort() #31, !dbg !1412
  unreachable, !dbg !1412

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #30, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %7, metadata !1403, metadata !DIExpression()), !dbg !1405
  %8 = icmp eq i8* %7, null, !dbg !1414
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1415
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1415
  call void @llvm.dbg.value(metadata i8* %10, metadata !1404, metadata !DIExpression()), !dbg !1405
  %11 = ptrtoint i8* %10 to i64, !dbg !1416
  %12 = ptrtoint i8* %0 to i64, !dbg !1416
  %13 = sub i64 %11, %12, !dbg !1416
  %14 = icmp sgt i64 %13, 6, !dbg !1418
  br i1 %14, label %15, label %24, !dbg !1419

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1420
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #30, !dbg !1421
  %18 = icmp eq i32 %17, 0, !dbg !1422
  br i1 %18, label %19, label %24, !dbg !1423

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1402, metadata !DIExpression()), !dbg !1405
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #30, !dbg !1424
  %21 = icmp eq i32 %20, 0, !dbg !1427
  br i1 %21, label %22, label %24, !dbg !1428

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %23, metadata !1402, metadata !DIExpression()), !dbg !1405
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1431, !tbaa !697
  br label %24, !dbg !1432

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1402, metadata !DIExpression()), !dbg !1405
  store i8* %25, i8** @program_name, align 8, !dbg !1433, !tbaa !697
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1434, !tbaa !697
  ret void, !dbg !1435
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #18

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1436 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1441, metadata !DIExpression()), !dbg !1444
  %2 = tail call i32* @__errno_location() #33, !dbg !1445
  %3 = load i32, i32* %2, align 4, !dbg !1445, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %3, metadata !1442, metadata !DIExpression()), !dbg !1444
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1446
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1446
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1446
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #29, !dbg !1447
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i32 %3, i32* %2, align 4, !dbg !1448, !tbaa !894
  ret %struct.quoting_options* %8, !dbg !1449
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1450 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1456, metadata !DIExpression()), !dbg !1457
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1458
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1458
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1459
  %5 = load i32, i32* %4, align 8, !dbg !1459, !tbaa !1460
  ret i32 %5, !dbg !1462
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !1463 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 %1, metadata !1468, metadata !DIExpression()), !dbg !1469
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1470
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1470
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1471
  store i32 %1, i32* %5, align 8, !dbg !1472, !tbaa !1460
  ret void, !dbg !1473
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #19 !dbg !1474 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1478, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %1, metadata !1479, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i32 %2, metadata !1480, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %1, metadata !1481, metadata !DIExpression()), !dbg !1487
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1488
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1488
  %6 = lshr i8 %1, 5, !dbg !1489
  %7 = zext i8 %6 to i64, !dbg !1489
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1490
  call void @llvm.dbg.value(metadata i32* %8, metadata !1483, metadata !DIExpression()), !dbg !1487
  %9 = and i8 %1, 31, !dbg !1491
  %10 = zext i8 %9 to i32, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %10, metadata !1485, metadata !DIExpression()), !dbg !1487
  %11 = load i32, i32* %8, align 4, !dbg !1492, !tbaa !894
  %12 = lshr i32 %11, %10, !dbg !1493
  %13 = and i32 %12, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %13, metadata !1486, metadata !DIExpression()), !dbg !1487
  %14 = and i32 %2, 1, !dbg !1495
  %15 = xor i32 %13, %14, !dbg !1496
  %16 = shl i32 %15, %10, !dbg !1497
  %17 = xor i32 %16, %11, !dbg !1498
  store i32 %17, i32* %8, align 4, !dbg !1498, !tbaa !894
  ret i32 %13, !dbg !1499
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #19 !dbg !1500 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1504, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %1, metadata !1505, metadata !DIExpression()), !dbg !1507
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1508
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1510
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1504, metadata !DIExpression()), !dbg !1507
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1511
  %6 = load i32, i32* %5, align 4, !dbg !1511, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %6, metadata !1506, metadata !DIExpression()), !dbg !1507
  store i32 %1, i32* %5, align 4, !dbg !1513, !tbaa !1512
  ret i32 %6, !dbg !1514
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1515 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1519, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8* %1, metadata !1520, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8* %2, metadata !1521, metadata !DIExpression()), !dbg !1522
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1523
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1519, metadata !DIExpression()), !dbg !1522
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1526
  store i32 10, i32* %6, align 8, !dbg !1527, !tbaa !1460
  %7 = icmp ne i8* %1, null, !dbg !1528
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1530
  br i1 %9, label %11, label %10, !dbg !1530

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !1531
  unreachable, !dbg !1531

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1532
  store i8* %1, i8** %12, align 8, !dbg !1533, !tbaa !1534
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1535
  store i8* %2, i8** %13, align 8, !dbg !1536, !tbaa !1537
  ret void, !dbg !1538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1539 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1543, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %1, metadata !1544, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %2, metadata !1545, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %3, metadata !1546, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1547, metadata !DIExpression()), !dbg !1551
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1552
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1548, metadata !DIExpression()), !dbg !1551
  %8 = tail call i32* @__errno_location() #33, !dbg !1553
  %9 = load i32, i32* %8, align 4, !dbg !1553, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %9, metadata !1549, metadata !DIExpression()), !dbg !1551
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1554
  %11 = load i32, i32* %10, align 8, !dbg !1554, !tbaa !1460
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1555
  %13 = load i32, i32* %12, align 4, !dbg !1555, !tbaa !1512
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1556
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1557
  %16 = load i8*, i8** %15, align 8, !dbg !1557, !tbaa !1534
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1558
  %18 = load i8*, i8** %17, align 8, !dbg !1558, !tbaa !1537
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1559
  call void @llvm.dbg.value(metadata i64 %19, metadata !1550, metadata !DIExpression()), !dbg !1551
  store i32 %9, i32* %8, align 4, !dbg !1560, !tbaa !894
  ret i64 %19, !dbg !1561
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1562 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1568, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %1, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %2, metadata !1570, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %3, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %4, metadata !1572, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %5, metadata !1573, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32* %6, metadata !1574, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %7, metadata !1575, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %8, metadata !1576, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* null, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1582, metadata !DIExpression()), !dbg !1638
  %13 = tail call i64 @__ctype_get_mb_cur_max() #29, !dbg !1639
  %14 = icmp eq i64 %13, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i1 %14, metadata !1583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1638
  %15 = lshr i32 %5, 1, !dbg !1641
  %16 = trunc i32 %15 to i8, !dbg !1641
  %17 = and i8 %16, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i8 %17, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1587, metadata !DIExpression()), !dbg !1638
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1642

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1643
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1644
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1645
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1646
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1638
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1647
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1648
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1649
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %38, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %37, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %36, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %35, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %34, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %33, metadata !1582, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %32, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %31, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %30, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %29, metadata !1576, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %28, metadata !1575, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %27, metadata !1572, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1632), !dbg !1650
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
  ], !dbg !1651

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 5, metadata !1572, metadata !DIExpression()), !dbg !1638
  br label %92, !dbg !1652

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 5, metadata !1572, metadata !DIExpression()), !dbg !1638
  %42 = and i8 %35, 1, !dbg !1654
  %43 = icmp eq i8 %42, 0, !dbg !1654
  br i1 %43, label %44, label %92, !dbg !1652

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1656
  br i1 %45, label %92, label %46, !dbg !1659

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1656, !tbaa !919
  br label %92, !dbg !1656

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %27), !dbg !1660
  call void @llvm.dbg.value(metadata i8* %48, metadata !1575, metadata !DIExpression()), !dbg !1638
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %27), !dbg !1664
  call void @llvm.dbg.value(metadata i8* %49, metadata !1576, metadata !DIExpression()), !dbg !1638
  br label %50, !dbg !1665

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1576, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %51, metadata !1575, metadata !DIExpression()), !dbg !1638
  %53 = and i8 %35, 1, !dbg !1666
  %54 = icmp eq i8 %53, 0, !dbg !1666
  br i1 %54, label %55, label %70, !dbg !1668

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1578, metadata !DIExpression()), !dbg !1638
  %56 = load i8, i8* %51, align 1, !dbg !1669, !tbaa !919
  %57 = icmp eq i8 %56, 0, !dbg !1672
  br i1 %57, label %70, label %58, !dbg !1672

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %61, metadata !1578, metadata !DIExpression()), !dbg !1638
  %62 = icmp ult i64 %61, %39, !dbg !1673
  br i1 %62, label %63, label %65, !dbg !1676

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1673
  store i8 %59, i8* %64, align 1, !dbg !1673, !tbaa !919
  br label %65, !dbg !1673

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %66, metadata !1578, metadata !DIExpression()), !dbg !1638
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1677
  call void @llvm.dbg.value(metadata i8* %67, metadata !1580, metadata !DIExpression()), !dbg !1638
  %68 = load i8, i8* %67, align 1, !dbg !1669, !tbaa !919
  %69 = icmp eq i8 %68, 0, !dbg !1672
  br i1 %69, label %70, label %58, !dbg !1672, !llvm.loop !1678

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1680
  call void @llvm.dbg.value(metadata i64 %71, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1582, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %52, metadata !1580, metadata !DIExpression()), !dbg !1638
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #30, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %72, metadata !1581, metadata !DIExpression()), !dbg !1638
  br label %92, !dbg !1682

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1582, metadata !DIExpression()), !dbg !1638
  br label %74, !dbg !1683

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %75, metadata !1582, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1584, metadata !DIExpression()), !dbg !1638
  br label %76, !dbg !1684

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1646
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %78, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %77, metadata !1582, metadata !DIExpression()), !dbg !1638
  %79 = and i8 %78, 1, !dbg !1685
  %80 = icmp eq i8 %79, 0, !dbg !1685
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1687
  br label %82, !dbg !1687

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1638
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1641
  call void @llvm.dbg.value(metadata i8 %84, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %83, metadata !1582, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1572, metadata !DIExpression()), !dbg !1638
  %85 = and i8 %84, 1, !dbg !1688
  %86 = icmp eq i8 %85, 0, !dbg !1688
  br i1 %86, label %87, label %92, !dbg !1690

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1691
  br i1 %88, label %92, label %89, !dbg !1694

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1691, !tbaa !919
  br label %92, !dbg !1691

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1584, metadata !DIExpression()), !dbg !1638
  br label %92, !dbg !1695

91:                                               ; preds = %26
  call void @abort() #31, !dbg !1696
  unreachable, !dbg !1696

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1680
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %40 ], !dbg !1638
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1638
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1638
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %100, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1582, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %98, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %96, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1576, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1575, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %93, metadata !1572, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1577, metadata !DIExpression()), !dbg !1638
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
  br label %121, !dbg !1697

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1698
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1680
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1643
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1647
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1648
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1649
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %126, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %123, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %122, metadata !1577, metadata !DIExpression()), !dbg !1638
  %130 = icmp eq i64 %125, -1, !dbg !1699
  br i1 %130, label %131, label %135, !dbg !1700

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1701
  %133 = load i8, i8* %132, align 1, !dbg !1701, !tbaa !919
  %134 = icmp eq i8 %133, 0, !dbg !1702
  br i1 %134, label %587, label %137, !dbg !1703

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1704
  br i1 %136, label %587, label %137, !dbg !1703

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1593, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 0, metadata !1595, metadata !DIExpression()), !dbg !1705
  br i1 %106, label %138, label %153, !dbg !1706

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1708
  %140 = and i1 %107, %130, !dbg !1709
  br i1 %140, label %141, label %143, !dbg !1709

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %142, metadata !1571, metadata !DIExpression()), !dbg !1638
  br label %143, !dbg !1711

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1711
  call void @llvm.dbg.value(metadata i64 %144, metadata !1571, metadata !DIExpression()), !dbg !1638
  %145 = icmp ugt i64 %139, %144, !dbg !1712
  br i1 %145, label %153, label %146, !dbg !1713

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1714
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1715
  %149 = icmp ne i32 %148, 0, !dbg !1716
  %150 = or i1 %149, %109, !dbg !1717
  %151 = xor i1 %149, true, !dbg !1717
  %152 = zext i1 %151 to i8, !dbg !1717
  br i1 %150, label %153, label %646, !dbg !1717

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1705
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1705
  call void @llvm.dbg.value(metadata i8 %156, metadata !1593, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %154, metadata !1571, metadata !DIExpression()), !dbg !1638
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1718
  %158 = load i8, i8* %157, align 1, !dbg !1718, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %158, metadata !1588, metadata !DIExpression()), !dbg !1705
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
  ], !dbg !1719

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1720

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1721

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1705
  %162 = and i8 %126, 1, !dbg !1725
  %163 = icmp eq i8 %162, 0, !dbg !1725
  %164 = and i1 %110, %163, !dbg !1725
  br i1 %164, label %165, label %181, !dbg !1725

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1727
  br i1 %166, label %167, label %169, !dbg !1731

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1727
  store i8 39, i8* %168, align 1, !dbg !1727, !tbaa !919
  br label %169, !dbg !1727

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %170, metadata !1578, metadata !DIExpression()), !dbg !1638
  %171 = icmp ult i64 %170, %129, !dbg !1732
  br i1 %171, label %172, label %174, !dbg !1735

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1732
  store i8 36, i8* %173, align 1, !dbg !1732, !tbaa !919
  br label %174, !dbg !1732

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %175, metadata !1578, metadata !DIExpression()), !dbg !1638
  %176 = icmp ult i64 %175, %129, !dbg !1736
  br i1 %176, label %177, label %179, !dbg !1739

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1736
  store i8 39, i8* %178, align 1, !dbg !1736, !tbaa !919
  br label %179, !dbg !1736

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %180, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1585, metadata !DIExpression()), !dbg !1638
  br label %181, !dbg !1740

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1638
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %183, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %182, metadata !1578, metadata !DIExpression()), !dbg !1638
  %184 = icmp ult i64 %182, %129, !dbg !1741
  br i1 %184, label %185, label %187, !dbg !1744

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1741
  store i8 92, i8* %186, align 1, !dbg !1741, !tbaa !919
  br label %187, !dbg !1741

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %188, metadata !1578, metadata !DIExpression()), !dbg !1638
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1745
  br i1 %191, label %192, label %473, !dbg !1745

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1747
  %194 = load i8, i8* %193, align 1, !dbg !1747, !tbaa !919
  %195 = add i8 %194, -48, !dbg !1748
  %196 = icmp ult i8 %195, 10, !dbg !1748
  br i1 %196, label %197, label %473, !dbg !1748

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1749
  br i1 %198, label %199, label %201, !dbg !1753

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1749
  store i8 48, i8* %200, align 1, !dbg !1749, !tbaa !919
  br label %201, !dbg !1749

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %202, metadata !1578, metadata !DIExpression()), !dbg !1638
  %203 = icmp ult i64 %202, %129, !dbg !1754
  br i1 %203, label %204, label %206, !dbg !1757

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1754
  store i8 48, i8* %205, align 1, !dbg !1754, !tbaa !919
  br label %206, !dbg !1754

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %207, metadata !1578, metadata !DIExpression()), !dbg !1638
  br label %473, !dbg !1758

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1759

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1760

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1761

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1763
  br i1 %214, label %215, label %473, !dbg !1763

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1765
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1766
  %218 = load i8, i8* %217, align 1, !dbg !1766, !tbaa !919
  %219 = icmp eq i8 %218, 63, !dbg !1767
  br i1 %219, label %220, label %473, !dbg !1768

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1769
  %222 = load i8, i8* %221, align 1, !dbg !1769, !tbaa !919
  %223 = sext i8 %222 to i32, !dbg !1769
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
  ], !dbg !1770

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1771

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1588, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 undef, metadata !1577, metadata !DIExpression()), !dbg !1638
  %226 = icmp ult i64 %123, %129, !dbg !1773
  br i1 %226, label %227, label %229, !dbg !1776

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1773
  store i8 63, i8* %228, align 1, !dbg !1773, !tbaa !919
  br label %229, !dbg !1773

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %230, metadata !1578, metadata !DIExpression()), !dbg !1638
  %231 = icmp ult i64 %230, %129, !dbg !1777
  br i1 %231, label %232, label %234, !dbg !1780

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1777
  store i8 34, i8* %233, align 1, !dbg !1777, !tbaa !919
  br label %234, !dbg !1777

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %235, metadata !1578, metadata !DIExpression()), !dbg !1638
  %236 = icmp ult i64 %235, %129, !dbg !1781
  br i1 %236, label %237, label %239, !dbg !1784

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1781
  store i8 34, i8* %238, align 1, !dbg !1781, !tbaa !919
  br label %239, !dbg !1781

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %240, metadata !1578, metadata !DIExpression()), !dbg !1638
  %241 = icmp ult i64 %240, %129, !dbg !1785
  br i1 %241, label %242, label %244, !dbg !1788

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1785
  store i8 63, i8* %243, align 1, !dbg !1785, !tbaa !919
  br label %244, !dbg !1785

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %245, metadata !1578, metadata !DIExpression()), !dbg !1638
  br label %473, !dbg !1789

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1592, metadata !DIExpression()), !dbg !1705
  br label %256, !dbg !1790

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1592, metadata !DIExpression()), !dbg !1705
  br label %256, !dbg !1791

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1592, metadata !DIExpression()), !dbg !1705
  br label %254, !dbg !1792

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1592, metadata !DIExpression()), !dbg !1705
  br label %254, !dbg !1793

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1592, metadata !DIExpression()), !dbg !1705
  br label %256, !dbg !1794

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1592, metadata !DIExpression()), !dbg !1705
  br i1 %110, label %252, label %253, !dbg !1795

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1796

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1799

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1801
  call void @llvm.dbg.value(metadata i8 %255, metadata !1592, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.label(metadata !1633), !dbg !1802
  br i1 %111, label %256, label %631, !dbg !1803

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1801
  call void @llvm.dbg.value(metadata i8 %257, metadata !1592, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.label(metadata !1634), !dbg !1805
  br i1 %102, label %495, label %473, !dbg !1806

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1807

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1808, !tbaa !919
  %261 = icmp eq i8 %260, 0, !dbg !1810
  br i1 %261, label %262, label %473, !dbg !1811

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1812
  br i1 %263, label %264, label %473, !dbg !1814

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1595, metadata !DIExpression()), !dbg !1705
  br label %265, !dbg !1815

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1705
  call void @llvm.dbg.value(metadata i8 %266, metadata !1595, metadata !DIExpression()), !dbg !1705
  br i1 %111, label %473, label %631, !dbg !1816

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1595, metadata !DIExpression()), !dbg !1705
  br i1 %110, label %268, label %473, !dbg !1818

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1819

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1822
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1824
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1824
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %274, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %273, metadata !1579, metadata !DIExpression()), !dbg !1638
  %275 = icmp ult i64 %123, %274, !dbg !1825
  br i1 %275, label %276, label %278, !dbg !1828

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1825
  store i8 39, i8* %277, align 1, !dbg !1825, !tbaa !919
  br label %278, !dbg !1825

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %279, metadata !1578, metadata !DIExpression()), !dbg !1638
  %280 = icmp ult i64 %279, %274, !dbg !1829
  br i1 %280, label %281, label %283, !dbg !1832

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1829
  store i8 92, i8* %282, align 1, !dbg !1829, !tbaa !919
  br label %283, !dbg !1829

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %284, metadata !1578, metadata !DIExpression()), !dbg !1638
  %285 = icmp ult i64 %284, %274, !dbg !1833
  br i1 %285, label %286, label %288, !dbg !1836

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1833
  store i8 39, i8* %287, align 1, !dbg !1833, !tbaa !919
  br label %288, !dbg !1833

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %289, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1585, metadata !DIExpression()), !dbg !1638
  br label %473, !dbg !1837

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1838

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1596, metadata !DIExpression()), !dbg !1839
  %292 = tail call i16** @__ctype_b_loc() #33, !dbg !1840
  %293 = load i16*, i16** %292, align 8, !dbg !1840, !tbaa !697
  %294 = zext i8 %158 to i64, !dbg !1840
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1840
  %296 = load i16, i16* %295, align 2, !dbg !1840, !tbaa !1842
  %297 = lshr i16 %296, 14, !dbg !1843
  %298 = trunc i16 %297 to i8, !dbg !1843
  %299 = and i8 %298, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i8 %354, metadata !1599, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %355, metadata !1596, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %306, metadata !1571, metadata !DIExpression()), !dbg !1638
  %300 = icmp eq i8 %299, 0, !dbg !1844
  call void @llvm.dbg.value(metadata i1 %357, metadata !1595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1705
  br label %359, !dbg !1845

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #29, !dbg !1846
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1600, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %23, metadata !1848, metadata !DIExpression()) #29, !dbg !1855
  call void @llvm.dbg.value(metadata i32 0, metadata !1853, metadata !DIExpression()) #29, !dbg !1855
  call void @llvm.dbg.value(metadata i64 8, metadata !1854, metadata !DIExpression()) #29, !dbg !1855
  store i64 0, i64* %10, align 8, !dbg !1857
  call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1839
  %302 = icmp eq i64 %154, -1, !dbg !1858
  br i1 %302, label %303, label %305, !dbg !1860

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %304, metadata !1571, metadata !DIExpression()), !dbg !1638
  br label %305, !dbg !1862

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1705
  call void @llvm.dbg.value(metadata i64 %306, metadata !1571, metadata !DIExpression()), !dbg !1638
  br label %307, !dbg !1863

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1864
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1865
  call void @llvm.dbg.value(metadata i8 %309, metadata !1599, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %308, metadata !1596, metadata !DIExpression()), !dbg !1839
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #29, !dbg !1866
  %310 = add i64 %308, %122, !dbg !1867
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1868
  %312 = sub i64 %306, %310, !dbg !1869
  call void @llvm.dbg.value(metadata i32* %12, metadata !1618, metadata !DIExpression(DW_OP_deref)), !dbg !1870
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #29, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %313, metadata !1621, metadata !DIExpression()), !dbg !1870
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1872

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1596, metadata !DIExpression()), !dbg !1839
  %315 = icmp ugt i64 %306, %310, !dbg !1873
  br i1 %315, label %316, label %341, !dbg !1875

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1876
  br label %318, !dbg !1876

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1596, metadata !DIExpression()), !dbg !1839
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1877
  %322 = load i8, i8* %321, align 1, !dbg !1877, !tbaa !919
  %323 = icmp eq i8 %322, 0, !dbg !1875
  br i1 %323, label %341, label %324, !dbg !1876

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %325, metadata !1596, metadata !DIExpression()), !dbg !1839
  %326 = add i64 %325, %122, !dbg !1879
  %327 = icmp ult i64 %326, %306, !dbg !1873
  br i1 %327, label %318, label %341, !dbg !1875, !llvm.loop !1880

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1881
  call void @llvm.dbg.value(metadata i64 1, metadata !1622, metadata !DIExpression()), !dbg !1882
  br i1 %330, label %331, label %344, !dbg !1881

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1622, metadata !DIExpression()), !dbg !1882
  %333 = add i64 %332, %310, !dbg !1883
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1886
  %335 = load i8, i8* %334, align 1, !dbg !1886, !tbaa !919
  %336 = sext i8 %335 to i32, !dbg !1886
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1887

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %338, metadata !1622, metadata !DIExpression()), !dbg !1882
  %339 = icmp eq i64 %338, %313, !dbg !1889
  br i1 %339, label %344, label %331, !dbg !1890, !llvm.loop !1891

340:                                              ; preds = %307
  br label %341, !dbg !1893

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1599, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 undef, metadata !1596, metadata !DIExpression()), !dbg !1839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !1893
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1894, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %345, metadata !1618, metadata !DIExpression()), !dbg !1870
  %346 = call i32 @iswprint(i32 %345) #29, !dbg !1896
  %347 = icmp eq i32 %346, 0, !dbg !1896
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1897
  call void @llvm.dbg.value(metadata i8 %348, metadata !1599, metadata !DIExpression()), !dbg !1839
  %349 = add i64 %313, %308, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %349, metadata !1596, metadata !DIExpression()), !dbg !1839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !1893
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #30, !dbg !1899
  %351 = icmp eq i32 %350, 0, !dbg !1900
  br i1 %351, label %307, label %353, !dbg !1901, !llvm.loop !1902

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1599, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 undef, metadata !1596, metadata !DIExpression()), !dbg !1839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !1893
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !1904
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !1904
  call void @llvm.dbg.value(metadata i8 %354, metadata !1599, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %355, metadata !1596, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %306, metadata !1571, metadata !DIExpression()), !dbg !1638
  %356 = and i8 %354, 1, !dbg !1844
  %357 = icmp eq i8 %356, 0, !dbg !1844
  call void @llvm.dbg.value(metadata i1 %357, metadata !1595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1705
  %358 = icmp ugt i64 %355, 1, !dbg !1905
  br i1 %358, label %367, label %359, !dbg !1845

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1906
  br i1 %364, label %367, label %365, !dbg !1906

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i8 %472, metadata !1595, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %441, metadata !1594, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %440, metadata !1593, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %439, metadata !1588, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %438, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %371, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %437, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %375, metadata !1577, metadata !DIExpression()), !dbg !1638
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %372, metadata !1629, metadata !DIExpression()), !dbg !1908
  %373 = and i1 %102, %368
  br label %374, !dbg !1909

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1698
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1638
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1647
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1705
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1705
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1910
  call void @llvm.dbg.value(metadata i8 %380, metadata !1594, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %379, metadata !1593, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %378, metadata !1588, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %377, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %376, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %375, metadata !1577, metadata !DIExpression()), !dbg !1638
  br i1 %373, label %381, label %427, !dbg !1911

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1916

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1705
  %383 = and i8 %377, 1, !dbg !1919
  %384 = icmp eq i8 %383, 0, !dbg !1919
  %385 = and i1 %110, %384, !dbg !1919
  br i1 %385, label %386, label %402, !dbg !1919

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1921
  br i1 %387, label %388, label %390, !dbg !1925

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1921
  store i8 39, i8* %389, align 1, !dbg !1921, !tbaa !919
  br label %390, !dbg !1921

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %391, metadata !1578, metadata !DIExpression()), !dbg !1638
  %392 = icmp ult i64 %391, %129, !dbg !1926
  br i1 %392, label %393, label %395, !dbg !1929

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1926
  store i8 36, i8* %394, align 1, !dbg !1926, !tbaa !919
  br label %395, !dbg !1926

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %396, metadata !1578, metadata !DIExpression()), !dbg !1638
  %397 = icmp ult i64 %396, %129, !dbg !1930
  br i1 %397, label %398, label %400, !dbg !1933

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1930
  store i8 39, i8* %399, align 1, !dbg !1930, !tbaa !919
  br label %400, !dbg !1930

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %401, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1585, metadata !DIExpression()), !dbg !1638
  br label %402, !dbg !1934

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1638
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %404, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %403, metadata !1578, metadata !DIExpression()), !dbg !1638
  %405 = icmp ult i64 %403, %129, !dbg !1935
  br i1 %405, label %406, label %408, !dbg !1938

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1935
  store i8 92, i8* %407, align 1, !dbg !1935, !tbaa !919
  br label %408, !dbg !1935

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %409, metadata !1578, metadata !DIExpression()), !dbg !1638
  %410 = icmp ult i64 %409, %129, !dbg !1939
  br i1 %410, label %411, label %415, !dbg !1942

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1939
  %413 = or i8 %412, 48, !dbg !1939
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1939
  store i8 %413, i8* %414, align 1, !dbg !1939, !tbaa !919
  br label %415, !dbg !1939

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %416, metadata !1578, metadata !DIExpression()), !dbg !1638
  %417 = icmp ult i64 %416, %129, !dbg !1943
  br i1 %417, label %418, label %423, !dbg !1946

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1943
  %420 = and i8 %419, 7, !dbg !1943
  %421 = or i8 %420, 48, !dbg !1943
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1943
  store i8 %421, i8* %422, align 1, !dbg !1943, !tbaa !919
  br label %423, !dbg !1943

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %424, metadata !1578, metadata !DIExpression()), !dbg !1638
  %425 = and i8 %378, 7, !dbg !1947
  %426 = or i8 %425, 48, !dbg !1948
  call void @llvm.dbg.value(metadata i8 %426, metadata !1588, metadata !DIExpression()), !dbg !1705
  br label %436, !dbg !1949

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1950
  %429 = icmp eq i8 %428, 0, !dbg !1950
  br i1 %429, label %436, label %430, !dbg !1952

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1953
  br i1 %431, label %432, label %434, !dbg !1957

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1953
  store i8 92, i8* %433, align 1, !dbg !1953, !tbaa !919
  br label %434, !dbg !1953

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %435, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1593, metadata !DIExpression()), !dbg !1705
  br label %436, !dbg !1958

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1638
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1647
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1705
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1705
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1705
  call void @llvm.dbg.value(metadata i8 %441, metadata !1594, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %440, metadata !1593, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %439, metadata !1588, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %438, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %437, metadata !1578, metadata !DIExpression()), !dbg !1638
  %442 = add i64 %375, 1, !dbg !1959
  %443 = icmp ugt i64 %372, %442, !dbg !1961
  br i1 %443, label %444, label %471, !dbg !1962

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1963
  %446 = icmp ne i8 %445, 0, !dbg !1963
  %447 = and i8 %441, 1, !dbg !1963
  %448 = icmp eq i8 %447, 0, !dbg !1963
  %449 = and i1 %446, %448, !dbg !1963
  br i1 %449, label %450, label %461, !dbg !1963

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1966
  br i1 %451, label %452, label %454, !dbg !1970

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1966
  store i8 39, i8* %453, align 1, !dbg !1966, !tbaa !919
  br label %454, !dbg !1966

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %455, metadata !1578, metadata !DIExpression()), !dbg !1638
  %456 = icmp ult i64 %455, %129, !dbg !1971
  br i1 %456, label %457, label %459, !dbg !1974

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1971
  store i8 39, i8* %458, align 1, !dbg !1971, !tbaa !919
  br label %459, !dbg !1971

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %460, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1585, metadata !DIExpression()), !dbg !1638
  br label %461, !dbg !1975

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1976
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %463, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %462, metadata !1578, metadata !DIExpression()), !dbg !1638
  %464 = icmp ult i64 %462, %129, !dbg !1977
  br i1 %464, label %465, label %467, !dbg !1980

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1977
  store i8 %439, i8* %466, align 1, !dbg !1977, !tbaa !919
  br label %467, !dbg !1977

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %468, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %442, metadata !1577, metadata !DIExpression()), !dbg !1638
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1981
  %470 = load i8, i8* %469, align 1, !dbg !1981, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %470, metadata !1588, metadata !DIExpression()), !dbg !1705
  br label %374, !dbg !1982, !llvm.loop !1983

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i8 %472, metadata !1595, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %441, metadata !1594, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %440, metadata !1593, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %439, metadata !1588, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %438, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %371, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %437, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %375, metadata !1577, metadata !DIExpression()), !dbg !1638
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1698
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1638
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1643
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1986
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1638
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1638
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1705
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1705
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1705
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %482, metadata !1595, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %481, metadata !1594, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %156, metadata !1593, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %480, metadata !1588, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %479, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %478, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %477, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %476, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %475, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %474, metadata !1577, metadata !DIExpression()), !dbg !1638
  br i1 %116, label %494, label %484, !dbg !1987

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1989
  %486 = zext i8 %485 to i64, !dbg !1989
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1990
  %488 = load i32, i32* %487, align 4, !dbg !1990, !tbaa !894
  %489 = and i8 %480, 31, !dbg !1991
  %490 = zext i8 %489 to i32, !dbg !1991
  %491 = shl nuw i32 1, %490, !dbg !1992
  %492 = and i32 %488, %491, !dbg !1992
  %493 = icmp eq i32 %492, 0, !dbg !1992
  br i1 %493, label %494, label %495, !dbg !1993

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1994

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1995
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1638
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1643
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1986
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1647
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1648
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1705
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1705
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %503, metadata !1595, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %502, metadata !1588, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %501, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %500, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %499, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %498, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %497, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %496, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1635), !dbg !1996
  br i1 %109, label %505, label %635, !dbg !1997

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1705
  %506 = and i8 %500, 1, !dbg !1999
  %507 = icmp eq i8 %506, 0, !dbg !1999
  %508 = and i1 %110, %507, !dbg !1999
  br i1 %508, label %509, label %525, !dbg !1999

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2001
  br i1 %510, label %511, label %513, !dbg !2005

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2001
  store i8 39, i8* %512, align 1, !dbg !2001, !tbaa !919
  br label %513, !dbg !2001

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %514, metadata !1578, metadata !DIExpression()), !dbg !1638
  %515 = icmp ult i64 %514, %504, !dbg !2006
  br i1 %515, label %516, label %518, !dbg !2009

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2006
  store i8 36, i8* %517, align 1, !dbg !2006, !tbaa !919
  br label %518, !dbg !2006

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %519, metadata !1578, metadata !DIExpression()), !dbg !1638
  %520 = icmp ult i64 %519, %504, !dbg !2010
  br i1 %520, label %521, label %523, !dbg !2013

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2010
  store i8 39, i8* %522, align 1, !dbg !2010, !tbaa !919
  br label %523, !dbg !2010

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %524, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1585, metadata !DIExpression()), !dbg !1638
  br label %525, !dbg !2014

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1705
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %527, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %526, metadata !1578, metadata !DIExpression()), !dbg !1638
  %528 = icmp ult i64 %526, %504, !dbg !2015
  br i1 %528, label %529, label %531, !dbg !2018

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2015
  store i8 92, i8* %530, align 1, !dbg !2015, !tbaa !919
  br label %531, !dbg !2015

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %543, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %542, metadata !1595, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %541, metadata !1594, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %540, metadata !1588, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %539, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %538, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %537, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %536, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %535, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %534, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1636), !dbg !2019
  br label %560, !dbg !2020

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1995
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1638
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1643
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1986
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1647
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1648
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2023
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1705
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1705
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %542, metadata !1595, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %541, metadata !1594, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %540, metadata !1588, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 %539, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %538, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %537, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %536, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %535, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %534, metadata !1577, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1636), !dbg !2019
  %544 = and i8 %538, 1, !dbg !2020
  %545 = icmp ne i8 %544, 0, !dbg !2020
  %546 = and i8 %541, 1, !dbg !2020
  %547 = icmp eq i8 %546, 0, !dbg !2020
  %548 = and i1 %545, %547, !dbg !2020
  br i1 %548, label %549, label %560, !dbg !2020

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2024
  br i1 %550, label %551, label %553, !dbg !2028

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2024
  store i8 39, i8* %552, align 1, !dbg !2024, !tbaa !919
  br label %553, !dbg !2024

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %554, metadata !1578, metadata !DIExpression()), !dbg !1638
  %555 = icmp ult i64 %554, %543, !dbg !2029
  br i1 %555, label %556, label %558, !dbg !2032

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2029
  store i8 39, i8* %557, align 1, !dbg !2029, !tbaa !919
  br label %558, !dbg !2029

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %559, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1585, metadata !DIExpression()), !dbg !1638
  br label %560, !dbg !2033

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1705
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %569, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %568, metadata !1578, metadata !DIExpression()), !dbg !1638
  %570 = icmp ult i64 %568, %561, !dbg !2034
  br i1 %570, label %571, label %573, !dbg !2037

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2034
  store i8 %563, i8* %572, align 1, !dbg !2034, !tbaa !919
  br label %573, !dbg !2034

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %574, metadata !1578, metadata !DIExpression()), !dbg !1638
  %575 = icmp eq i8 %562, 0, !dbg !2038
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2040
  call void @llvm.dbg.value(metadata i8 %576, metadata !1587, metadata !DIExpression()), !dbg !1638
  br label %577, !dbg !2041

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1995
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1638
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1643
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1986
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1647
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1638
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1649
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %584, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %583, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %582, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %581, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %580, metadata !1579, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %579, metadata !1578, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %578, metadata !1577, metadata !DIExpression()), !dbg !1638
  %586 = add i64 %578, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %586, metadata !1577, metadata !DIExpression()), !dbg !1638
  br label %121, !dbg !2043, !llvm.loop !2044

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2046
  %590 = and i1 %110, %589, !dbg !2048
  %591 = xor i1 %590, true, !dbg !2048
  %592 = or i1 %109, %591, !dbg !2048
  br i1 %592, label %593, label %635, !dbg !2048

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2049
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2049
  br i1 %597, label %598, label %607, !dbg !2049

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2051
  %600 = icmp eq i8 %599, 0, !dbg !2051
  br i1 %600, label %603, label %601, !dbg !2054

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2055
  br label %652, !dbg !2056

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2057
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2059
  br i1 %606, label %26, label %607, !dbg !2059

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2060
  %610 = and i1 %609, %608, !dbg !2062
  br i1 %610, label %611, label %626, !dbg !2062

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %123, metadata !1578, metadata !DIExpression()), !dbg !1638
  %612 = load i8, i8* %97, align 1, !dbg !2063, !tbaa !919
  %613 = icmp eq i8 %612, 0, !dbg !2066
  br i1 %613, label %626, label %614, !dbg !2066

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %617, metadata !1578, metadata !DIExpression()), !dbg !1638
  %618 = icmp ult i64 %617, %129, !dbg !2067
  br i1 %618, label %619, label %621, !dbg !2070

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2067
  store i8 %615, i8* %620, align 1, !dbg !2067, !tbaa !919
  br label %621, !dbg !2067

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %622, metadata !1578, metadata !DIExpression()), !dbg !1638
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2071
  call void @llvm.dbg.value(metadata i8* %623, metadata !1580, metadata !DIExpression()), !dbg !1638
  %624 = load i8, i8* %623, align 1, !dbg !2063, !tbaa !919
  %625 = icmp eq i8 %624, 0, !dbg !2066
  br i1 %625, label %626, label %614, !dbg !2066, !llvm.loop !2072

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1680
  call void @llvm.dbg.value(metadata i64 %627, metadata !1578, metadata !DIExpression()), !dbg !1638
  %628 = icmp ult i64 %627, %129, !dbg !2074
  br i1 %628, label %629, label %652, !dbg !2076

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2077
  store i8 0, i8* %630, align 1, !dbg !2078, !tbaa !919
  br label %652, !dbg !2077

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %637, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1637), !dbg !2079
  %633 = icmp eq i8 %101, 0, !dbg !2080
  %634 = select i1 %633, i32 2, i32 4, !dbg !2080
  br label %642, !dbg !2080

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1569, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %637, metadata !1571, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1637), !dbg !2079
  %639 = icmp eq i32 %93, 2, !dbg !2082
  %640 = icmp eq i8 %636, 0, !dbg !2080
  %641 = select i1 %640, i32 2, i32 4, !dbg !2080
  br i1 %639, label %642, label %646, !dbg !2080

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2080

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1572, metadata !DIExpression()), !dbg !1638
  %650 = and i32 %5, -3, !dbg !2083
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2084
  br label %652, !dbg !2085

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2086
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2087 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2091, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i32 %1, metadata !2092, metadata !DIExpression()), !dbg !2095
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #29, !dbg !2096
  call void @llvm.dbg.value(metadata i8* %3, metadata !2093, metadata !DIExpression()), !dbg !2095
  %4 = icmp eq i8* %3, %0, !dbg !2097
  br i1 %4, label %5, label %72, !dbg !2099

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #29, !dbg !2100
  call void @llvm.dbg.value(metadata i8* %6, metadata !2094, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %6, metadata !2101, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8* undef, metadata !2107, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 85, metadata !2108, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 84, metadata !2109, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 70, metadata !2110, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 45, metadata !2111, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 56, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2113, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2114, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2116, metadata !DIExpression()), !dbg !2117
  %7 = load i8, i8* %6, align 1, !dbg !2120, !tbaa !919
  %8 = and i8 %7, -33, !dbg !2120
  %9 = sext i8 %8 to i32, !dbg !2120
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2120

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2122, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8* undef, metadata !2127, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 84, metadata !2128, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 70, metadata !2129, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 45, metadata !2130, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 56, metadata !2131, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2136
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2140
  %12 = load i8, i8* %11, align 1, !dbg !2140, !tbaa !919
  %13 = and i8 %12, -33, !dbg !2140
  %14 = icmp eq i8 %13, 84, !dbg !2140
  br i1 %14, label %15, label %69, !dbg !2140

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2142, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8* undef, metadata !2147, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 70, metadata !2148, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 45, metadata !2149, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 56, metadata !2150, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2151, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2153, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2154, metadata !DIExpression()), !dbg !2155
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2159
  %17 = load i8, i8* %16, align 1, !dbg !2159, !tbaa !919
  %18 = and i8 %17, -33, !dbg !2159
  %19 = icmp eq i8 %18, 70, !dbg !2159
  br i1 %19, label %20, label %69, !dbg !2159

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2161, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8* undef, metadata !2166, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 45, metadata !2167, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 56, metadata !2168, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2173
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2177
  %22 = load i8, i8* %21, align 1, !dbg !2177, !tbaa !919
  %23 = icmp eq i8 %22, 45, !dbg !2177
  br i1 %23, label %24, label %69, !dbg !2179

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2180, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8* undef, metadata !2185, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 56, metadata !2186, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2191
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2195
  %26 = load i8, i8* %25, align 1, !dbg !2195, !tbaa !919
  %27 = icmp eq i8 %26, 56, !dbg !2195
  br i1 %27, label %28, label %69, !dbg !2197

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2198, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* undef, metadata !2203, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2204, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2205, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2208
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2212
  %30 = load i8, i8* %29, align 1, !dbg !2212, !tbaa !919
  %31 = icmp eq i8 %30, 0, !dbg !2212
  br i1 %31, label %32, label %69, !dbg !2214

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2215, !tbaa !919
  %34 = icmp eq i8 %33, 96, !dbg !2216
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0), !dbg !2215
  br label %72, !dbg !2217

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2122, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* undef, metadata !2127, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 66, metadata !2128, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 49, metadata !2129, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 56, metadata !2130, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 48, metadata !2131, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 51, metadata !2132, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 48, metadata !2133, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2134, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2218
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2222
  %38 = load i8, i8* %37, align 1, !dbg !2222, !tbaa !919
  %39 = and i8 %38, -33, !dbg !2222
  %40 = icmp eq i8 %39, 66, !dbg !2222
  br i1 %40, label %41, label %69, !dbg !2222

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2142, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* undef, metadata !2147, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 49, metadata !2148, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 56, metadata !2149, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 48, metadata !2150, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 51, metadata !2151, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 48, metadata !2152, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 0, metadata !2153, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8 0, metadata !2154, metadata !DIExpression()), !dbg !2223
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2225
  %43 = load i8, i8* %42, align 1, !dbg !2225, !tbaa !919
  %44 = icmp eq i8 %43, 49, !dbg !2225
  br i1 %44, label %45, label %69, !dbg !2226

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2161, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8* undef, metadata !2166, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 56, metadata !2167, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 48, metadata !2168, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 51, metadata !2169, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 48, metadata !2170, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2227
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2229
  %47 = load i8, i8* %46, align 1, !dbg !2229, !tbaa !919
  %48 = icmp eq i8 %47, 56, !dbg !2229
  br i1 %48, label %49, label %69, !dbg !2230

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2180, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8* undef, metadata !2185, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 48, metadata !2186, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 51, metadata !2187, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 48, metadata !2188, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2231
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2233
  %51 = load i8, i8* %50, align 1, !dbg !2233, !tbaa !919
  %52 = icmp eq i8 %51, 48, !dbg !2233
  br i1 %52, label %53, label %69, !dbg !2234

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2198, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8* undef, metadata !2203, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8 51, metadata !2204, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8 48, metadata !2205, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2235
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2237
  %55 = load i8, i8* %54, align 1, !dbg !2237, !tbaa !919
  %56 = icmp eq i8 %55, 51, !dbg !2237
  br i1 %56, label %57, label %69, !dbg !2238

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2239, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* undef, metadata !2244, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 48, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2246, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2247, metadata !DIExpression()), !dbg !2248
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2252
  %59 = load i8, i8* %58, align 1, !dbg !2252, !tbaa !919
  %60 = icmp eq i8 %59, 48, !dbg !2252
  br i1 %60, label %61, label %69, !dbg !2254

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2255, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8* undef, metadata !2260, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 0, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 0, metadata !2262, metadata !DIExpression()), !dbg !2263
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2267
  %63 = load i8, i8* %62, align 1, !dbg !2267, !tbaa !919
  %64 = icmp eq i8 %63, 0, !dbg !2267
  br i1 %64, label %65, label %69, !dbg !2269

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2270, !tbaa !919
  %67 = icmp eq i8 %66, 96, !dbg !2271
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.92, i64 0, i64 0), !dbg !2270
  br label %72, !dbg !2272

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2273
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !2274
  br label %72, !dbg !2275

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2095
  ret i8* %73, !dbg !2276
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !2277 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2281 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2287 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2291, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %1, metadata !2292, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2293, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* %0, metadata !2295, metadata !DIExpression()) #29, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %1, metadata !2300, metadata !DIExpression()) #29, !dbg !2308
  call void @llvm.dbg.value(metadata i64* null, metadata !2301, metadata !DIExpression()) #29, !dbg !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2302, metadata !DIExpression()) #29, !dbg !2308
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2310
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2303, metadata !DIExpression()) #29, !dbg !2308
  %6 = tail call i32* @__errno_location() #33, !dbg !2311
  %7 = load i32, i32* %6, align 4, !dbg !2311, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %7, metadata !2304, metadata !DIExpression()) #29, !dbg !2308
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2312
  %9 = load i32, i32* %8, align 4, !dbg !2312, !tbaa !1512
  %10 = or i32 %9, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %10, metadata !2305, metadata !DIExpression()) #29, !dbg !2308
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2314
  %12 = load i32, i32* %11, align 8, !dbg !2314, !tbaa !1460
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2315
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2316
  %15 = load i8*, i8** %14, align 8, !dbg !2316, !tbaa !1534
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2317
  %17 = load i8*, i8** %16, align 8, !dbg !2317, !tbaa !1537
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #29, !dbg !2318
  %19 = add i64 %18, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %19, metadata !2306, metadata !DIExpression()) #29, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %19, metadata !2320, metadata !DIExpression()) #29, !dbg !2323
  %20 = tail call noalias i8* @xmalloc(i64 %19) #29, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %20, metadata !2307, metadata !DIExpression()) #29, !dbg !2308
  %21 = load i32, i32* %11, align 8, !dbg !2326, !tbaa !1460
  %22 = load i8*, i8** %14, align 8, !dbg !2327, !tbaa !1534
  %23 = load i8*, i8** %16, align 8, !dbg !2328, !tbaa !1537
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #29, !dbg !2329
  store i32 %7, i32* %6, align 4, !dbg !2330, !tbaa !894
  ret i8* %20, !dbg !2331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2296 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2295, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %1, metadata !2300, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64* %2, metadata !2301, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2302, metadata !DIExpression()), !dbg !2332
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2333
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2303, metadata !DIExpression()), !dbg !2332
  %7 = tail call i32* @__errno_location() #33, !dbg !2334
  %8 = load i32, i32* %7, align 4, !dbg !2334, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %8, metadata !2304, metadata !DIExpression()), !dbg !2332
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2335
  %10 = load i32, i32* %9, align 4, !dbg !2335, !tbaa !1512
  %11 = icmp eq i64* %2, null, !dbg !2336
  %12 = zext i1 %11 to i32, !dbg !2336
  %13 = or i32 %10, %12, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %13, metadata !2305, metadata !DIExpression()), !dbg !2332
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2338
  %15 = load i32, i32* %14, align 8, !dbg !2338, !tbaa !1460
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2339
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2340
  %18 = load i8*, i8** %17, align 8, !dbg !2340, !tbaa !1534
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2341
  %20 = load i8*, i8** %19, align 8, !dbg !2341, !tbaa !1537
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2342
  %22 = add i64 %21, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %22, metadata !2306, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %22, metadata !2320, metadata !DIExpression()) #29, !dbg !2344
  %23 = tail call noalias i8* @xmalloc(i64 %22) #29, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %23, metadata !2307, metadata !DIExpression()), !dbg !2332
  %24 = load i32, i32* %14, align 8, !dbg !2347, !tbaa !1460
  %25 = load i8*, i8** %17, align 8, !dbg !2348, !tbaa !1534
  %26 = load i8*, i8** %19, align 8, !dbg !2349, !tbaa !1537
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2350
  store i32 %8, i32* %7, align 4, !dbg !2351, !tbaa !894
  br i1 %11, label %29, label %28, !dbg !2352

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2353, !tbaa !2355
  br label %29, !dbg !2356

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2357
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2358 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2362, !tbaa !697
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 1, metadata !2361, metadata !DIExpression()), !dbg !2363
  %2 = load i32, i32* @nslots, align 4, !dbg !2364, !tbaa !894
  %3 = icmp sgt i32 %2, 1, !dbg !2367
  br i1 %3, label %4, label %12, !dbg !2368

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2367
  br label %6, !dbg !2368

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2361, metadata !DIExpression()), !dbg !2363
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2369
  %9 = load i8*, i8** %8, align 8, !dbg !2369, !tbaa !2370
  tail call void @free(i8* %9) #29, !dbg !2372
  %10 = add nuw nsw i64 %7, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %10, metadata !2361, metadata !DIExpression()), !dbg !2363
  %11 = icmp eq i64 %10, %5, !dbg !2367
  br i1 %11, label %12, label %6, !dbg !2368, !llvm.loop !2374

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2376
  %14 = load i8*, i8** %13, align 8, !dbg !2376, !tbaa !2370
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2378
  br i1 %15, label %17, label %16, !dbg !2379

16:                                               ; preds = %12
  tail call void @free(i8* %14) #29, !dbg !2380
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2382, !tbaa !2383
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2384, !tbaa !2370
  br label %17, !dbg !2385

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2386
  br i1 %18, label %21, label %19, !dbg !2388

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2389
  tail call void @free(i8* %20) #29, !dbg !2391
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2392, !tbaa !697
  br label %21, !dbg !2393

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2394, !tbaa !894
  ret void, !dbg !2395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2396 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8* %1, metadata !2399, metadata !DIExpression()), !dbg !2400
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2401
  ret i8* %3, !dbg !2402
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2403 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %1, metadata !2408, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %2, metadata !2409, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2410, metadata !DIExpression()), !dbg !2422
  %5 = tail call i32* @__errno_location() #33, !dbg !2423
  %6 = load i32, i32* %5, align 4, !dbg !2423, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %6, metadata !2411, metadata !DIExpression()), !dbg !2422
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2424, !tbaa !697
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2412, metadata !DIExpression()), !dbg !2422
  %8 = icmp slt i32 %0, 0, !dbg !2425
  br i1 %8, label %9, label %10, !dbg !2427

9:                                                ; preds = %4
  tail call void @abort() #31, !dbg !2428
  unreachable, !dbg !2428

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2429, !tbaa !894
  %12 = icmp sgt i32 %11, %0, !dbg !2430
  br i1 %12, label %34, label %13, !dbg !2431

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2432
  call void @llvm.dbg.value(metadata i1 %14, metadata !2413, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2433
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2416, metadata !DIExpression()), !dbg !2433
  %15 = icmp eq i32 %0, 2147483647, !dbg !2434
  br i1 %15, label %16, label %17, !dbg !2436

16:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !2437
  unreachable, !dbg !2437

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2438
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2438
  %20 = add nuw nsw i32 %0, 1, !dbg !2439
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2440
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #29, !dbg !2441
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2441
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2412, metadata !DIExpression()), !dbg !2422
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2442, !tbaa !697
  br i1 %14, label %25, label %26, !dbg !2443

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2444, !tbaa.struct !2446
  br label %26, !dbg !2447

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2448, !tbaa !894
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2449
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2450
  %31 = sub nsw i32 %20, %27, !dbg !2451
  %32 = sext i32 %31 to i64, !dbg !2452
  %33 = shl nsw i64 %32, 4, !dbg !2453
  call void @llvm.dbg.value(metadata i8* %30, metadata !1848, metadata !DIExpression()) #29, !dbg !2454
  call void @llvm.dbg.value(metadata i32 0, metadata !1853, metadata !DIExpression()) #29, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %33, metadata !1854, metadata !DIExpression()) #29, !dbg !2454
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #29, !dbg !2456
  store i32 %20, i32* @nslots, align 4, !dbg !2457, !tbaa !894
  br label %34, !dbg !2458

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2422
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2412, metadata !DIExpression()), !dbg !2422
  %36 = zext i32 %0 to i64, !dbg !2459
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2460
  %38 = load i64, i64* %37, align 8, !dbg !2460, !tbaa !2383
  call void @llvm.dbg.value(metadata i64 %38, metadata !2417, metadata !DIExpression()), !dbg !2461
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2462
  %40 = load i8*, i8** %39, align 8, !dbg !2462, !tbaa !2370
  call void @llvm.dbg.value(metadata i8* %40, metadata !2419, metadata !DIExpression()), !dbg !2461
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2463
  %42 = load i32, i32* %41, align 4, !dbg !2463, !tbaa !1512
  %43 = or i32 %42, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %43, metadata !2420, metadata !DIExpression()), !dbg !2461
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2465
  %45 = load i32, i32* %44, align 8, !dbg !2465, !tbaa !1460
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2466
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2467
  %48 = load i8*, i8** %47, align 8, !dbg !2467, !tbaa !1534
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2468
  %50 = load i8*, i8** %49, align 8, !dbg !2468, !tbaa !1537
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %51, metadata !2421, metadata !DIExpression()), !dbg !2461
  %52 = icmp ugt i64 %38, %51, !dbg !2470
  br i1 %52, label %63, label %53, !dbg !2472

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %54, metadata !2417, metadata !DIExpression()), !dbg !2461
  store i64 %54, i64* %37, align 8, !dbg !2475, !tbaa !2383
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2476
  br i1 %55, label %57, label %56, !dbg !2478

56:                                               ; preds = %53
  tail call void @free(i8* %40) #29, !dbg !2479
  br label %57, !dbg !2479

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2320, metadata !DIExpression()) #29, !dbg !2480
  %58 = tail call noalias i8* @xmalloc(i64 %54) #29, !dbg !2482
  call void @llvm.dbg.value(metadata i8* %58, metadata !2419, metadata !DIExpression()), !dbg !2461
  store i8* %58, i8** %39, align 8, !dbg !2483, !tbaa !2370
  %59 = load i32, i32* %44, align 8, !dbg !2484, !tbaa !1460
  %60 = load i8*, i8** %47, align 8, !dbg !2485, !tbaa !1534
  %61 = load i8*, i8** %49, align 8, !dbg !2486, !tbaa !1537
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2487
  br label %63, !dbg !2488

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2461
  call void @llvm.dbg.value(metadata i8* %64, metadata !2419, metadata !DIExpression()), !dbg !2461
  store i32 %6, i32* %5, align 4, !dbg !2489, !tbaa !894
  ret i8* %64, !dbg !2490
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2491 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2495, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8* %1, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 %2, metadata !2497, metadata !DIExpression()), !dbg !2498
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2499
  ret i8* %4, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2501 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2503, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i32 0, metadata !2398, metadata !DIExpression()) #29, !dbg !2505
  call void @llvm.dbg.value(metadata i8* %0, metadata !2399, metadata !DIExpression()) #29, !dbg !2505
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !2507
  ret i8* %2, !dbg !2508
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2509 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2513, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %1, metadata !2514, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 0, metadata !2495, metadata !DIExpression()) #29, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %0, metadata !2496, metadata !DIExpression()) #29, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %1, metadata !2497, metadata !DIExpression()) #29, !dbg !2516
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !2518
  ret i8* %3, !dbg !2519
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2520 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2524, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %1, metadata !2525, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %2, metadata !2526, metadata !DIExpression()), !dbg !2528
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2529
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2529
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2527, metadata !DIExpression()), !dbg !2530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2531), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()) #29, !dbg !2541
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2540, metadata !DIExpression()) #29, !dbg !2543
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !2543, !alias.scope !2531
  %6 = icmp eq i32 %1, 10, !dbg !2544
  br i1 %6, label %7, label %8, !dbg !2546

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !2547, !noalias !2531
  unreachable, !dbg !2547

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2548
  store i32 %1, i32* %9, align 8, !dbg !2549, !tbaa !1460, !alias.scope !2531
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2550
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2551
  ret i8* %10, !dbg !2552
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2553 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2557, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %1, metadata !2558, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* %2, metadata !2559, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %3, metadata !2560, metadata !DIExpression()), !dbg !2562
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2563
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2563
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2561, metadata !DIExpression()), !dbg !2564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565), !dbg !2568
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()) #29, !dbg !2569
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2540, metadata !DIExpression()) #29, !dbg !2571
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #29, !dbg !2571, !alias.scope !2565
  %7 = icmp eq i32 %1, 10, !dbg !2572
  br i1 %7, label %8, label %9, !dbg !2573

8:                                                ; preds = %4
  tail call void @abort() #31, !dbg !2574, !noalias !2565
  unreachable, !dbg !2574

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2575
  store i32 %1, i32* %10, align 8, !dbg !2576, !tbaa !1460, !alias.scope !2565
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2577
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2578
  ret i8* %11, !dbg !2579
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2580 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2584, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %1, metadata !2585, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 0, metadata !2524, metadata !DIExpression()) #29, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %0, metadata !2525, metadata !DIExpression()) #29, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %1, metadata !2526, metadata !DIExpression()) #29, !dbg !2587
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2589
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2589
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2527, metadata !DIExpression()) #29, !dbg !2590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591) #29, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %0, metadata !2535, metadata !DIExpression()) #29, !dbg !2595
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2540, metadata !DIExpression()) #29, !dbg !2597
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #29, !dbg !2597, !alias.scope !2591
  %5 = icmp eq i32 %0, 10, !dbg !2598
  br i1 %5, label %6, label %7, !dbg !2599

6:                                                ; preds = %2
  tail call void @abort() #31, !dbg !2600, !noalias !2591
  unreachable, !dbg !2600

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2601
  store i32 %0, i32* %8, align 8, !dbg !2602, !tbaa !1460, !alias.scope !2591
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !2603
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2604
  ret i8* %9, !dbg !2605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2606 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2610, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %1, metadata !2611, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %2, metadata !2612, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i32 0, metadata !2557, metadata !DIExpression()) #29, !dbg !2614
  call void @llvm.dbg.value(metadata i32 %0, metadata !2558, metadata !DIExpression()) #29, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %1, metadata !2559, metadata !DIExpression()) #29, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %2, metadata !2560, metadata !DIExpression()) #29, !dbg !2614
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2616
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2616
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2561, metadata !DIExpression()) #29, !dbg !2617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2618) #29, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %0, metadata !2535, metadata !DIExpression()) #29, !dbg !2622
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2540, metadata !DIExpression()) #29, !dbg !2624
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !2624, !alias.scope !2618
  %6 = icmp eq i32 %0, 10, !dbg !2625
  br i1 %6, label %7, label %8, !dbg !2626

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !2627, !noalias !2618
  unreachable, !dbg !2627

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2628
  store i32 %0, i32* %9, align 8, !dbg !2629, !tbaa !1460, !alias.scope !2618
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #29, !dbg !2630
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2631
  ret i8* %10, !dbg !2632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2633 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2637, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i64 %1, metadata !2638, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 %2, metadata !2639, metadata !DIExpression()), !dbg !2641
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2642
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2640, metadata !DIExpression()), !dbg !2643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2644, !tbaa.struct !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1478, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 %2, metadata !1479, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 1, metadata !1480, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 %2, metadata !1481, metadata !DIExpression()), !dbg !2646
  %6 = lshr i8 %2, 5, !dbg !2648
  %7 = zext i8 %6 to i64, !dbg !2648
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2649
  call void @llvm.dbg.value(metadata i32* %8, metadata !1483, metadata !DIExpression()), !dbg !2646
  %9 = and i8 %2, 31, !dbg !2650
  %10 = zext i8 %9 to i32, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %10, metadata !1485, metadata !DIExpression()), !dbg !2646
  %11 = load i32, i32* %8, align 4, !dbg !2651, !tbaa !894
  %12 = lshr i32 %11, %10, !dbg !2652
  %13 = and i32 %12, 1, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %13, metadata !1486, metadata !DIExpression()), !dbg !2646
  %14 = xor i32 %13, 1, !dbg !2654
  %15 = shl i32 %14, %10, !dbg !2655
  %16 = xor i32 %15, %11, !dbg !2656
  store i32 %16, i32* %8, align 4, !dbg !2656, !tbaa !894
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2657
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2658
  ret i8* %17, !dbg !2659
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2660 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2664, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 %1, metadata !2665, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8* %0, metadata !2637, metadata !DIExpression()) #29, !dbg !2667
  call void @llvm.dbg.value(metadata i64 -1, metadata !2638, metadata !DIExpression()) #29, !dbg !2667
  call void @llvm.dbg.value(metadata i8 %1, metadata !2639, metadata !DIExpression()) #29, !dbg !2667
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2669
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2669
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2640, metadata !DIExpression()) #29, !dbg !2670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !2671, !tbaa.struct !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1478, metadata !DIExpression()) #29, !dbg !2672
  call void @llvm.dbg.value(metadata i8 %1, metadata !1479, metadata !DIExpression()) #29, !dbg !2672
  call void @llvm.dbg.value(metadata i32 1, metadata !1480, metadata !DIExpression()) #29, !dbg !2672
  call void @llvm.dbg.value(metadata i8 %1, metadata !1481, metadata !DIExpression()) #29, !dbg !2672
  %5 = lshr i8 %1, 5, !dbg !2674
  %6 = zext i8 %5 to i64, !dbg !2674
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2675
  call void @llvm.dbg.value(metadata i32* %7, metadata !1483, metadata !DIExpression()) #29, !dbg !2672
  %8 = and i8 %1, 31, !dbg !2676
  %9 = zext i8 %8 to i32, !dbg !2676
  call void @llvm.dbg.value(metadata i32 %9, metadata !1485, metadata !DIExpression()) #29, !dbg !2672
  %10 = load i32, i32* %7, align 4, !dbg !2677, !tbaa !894
  %11 = lshr i32 %10, %9, !dbg !2678
  %12 = and i32 %11, 1, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %12, metadata !1486, metadata !DIExpression()) #29, !dbg !2672
  %13 = xor i32 %12, 1, !dbg !2680
  %14 = shl i32 %13, %9, !dbg !2681
  %15 = xor i32 %14, %10, !dbg !2682
  store i32 %15, i32* %7, align 4, !dbg !2682, !tbaa !894
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !2683
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2684
  ret i8* %16, !dbg !2685
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2686 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2688, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %0, metadata !2664, metadata !DIExpression()) #29, !dbg !2690
  call void @llvm.dbg.value(metadata i8 58, metadata !2665, metadata !DIExpression()) #29, !dbg !2690
  call void @llvm.dbg.value(metadata i8* %0, metadata !2637, metadata !DIExpression()) #29, !dbg !2692
  call void @llvm.dbg.value(metadata i64 -1, metadata !2638, metadata !DIExpression()) #29, !dbg !2692
  call void @llvm.dbg.value(metadata i8 58, metadata !2639, metadata !DIExpression()) #29, !dbg !2692
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #29, !dbg !2694
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2640, metadata !DIExpression()) #29, !dbg !2695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !2696, !tbaa.struct !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1478, metadata !DIExpression()) #29, !dbg !2697
  call void @llvm.dbg.value(metadata i8 58, metadata !1479, metadata !DIExpression()) #29, !dbg !2697
  call void @llvm.dbg.value(metadata i32 1, metadata !1480, metadata !DIExpression()) #29, !dbg !2697
  call void @llvm.dbg.value(metadata i8 58, metadata !1481, metadata !DIExpression()) #29, !dbg !2697
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2699
  call void @llvm.dbg.value(metadata i32* %4, metadata !1483, metadata !DIExpression()) #29, !dbg !2697
  call void @llvm.dbg.value(metadata i32 26, metadata !1485, metadata !DIExpression()) #29, !dbg !2697
  %5 = load i32, i32* %4, align 4, !dbg !2700, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %5, metadata !1486, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !2697
  %6 = or i32 %5, 67108864, !dbg !2701
  store i32 %6, i32* %4, align 4, !dbg !2701, !tbaa !894
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #29, !dbg !2702
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #29, !dbg !2703
  ret i8* %7, !dbg !2704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2705 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %1, metadata !2708, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8* %0, metadata !2637, metadata !DIExpression()) #29, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %1, metadata !2638, metadata !DIExpression()) #29, !dbg !2710
  call void @llvm.dbg.value(metadata i8 58, metadata !2639, metadata !DIExpression()) #29, !dbg !2710
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2712
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2640, metadata !DIExpression()) #29, !dbg !2713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !2714, !tbaa.struct !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1478, metadata !DIExpression()) #29, !dbg !2715
  call void @llvm.dbg.value(metadata i8 58, metadata !1479, metadata !DIExpression()) #29, !dbg !2715
  call void @llvm.dbg.value(metadata i32 1, metadata !1480, metadata !DIExpression()) #29, !dbg !2715
  call void @llvm.dbg.value(metadata i8 58, metadata !1481, metadata !DIExpression()) #29, !dbg !2715
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2717
  call void @llvm.dbg.value(metadata i32* %5, metadata !1483, metadata !DIExpression()) #29, !dbg !2715
  call void @llvm.dbg.value(metadata i32 26, metadata !1485, metadata !DIExpression()) #29, !dbg !2715
  %6 = load i32, i32* %5, align 4, !dbg !2718, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %6, metadata !1486, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !2715
  %7 = or i32 %6, 67108864, !dbg !2719
  store i32 %7, i32* %5, align 4, !dbg !2719, !tbaa !894
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #29, !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !2721
  ret i8* %8, !dbg !2722
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2723 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2540, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2729
  call void @llvm.dbg.value(metadata i32 %0, metadata !2725, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 %1, metadata !2726, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* %2, metadata !2727, metadata !DIExpression()), !dbg !2731
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2732
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2728, metadata !DIExpression()), !dbg !2733
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2734
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2734
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735), !dbg !2734
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()) #29, !dbg !2738
  call void @llvm.dbg.value(metadata i32 0, metadata !2540, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2738
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2729, !alias.scope !2735
  %8 = icmp eq i32 %1, 10, !dbg !2739
  br i1 %8, label %9, label %10, !dbg !2740

9:                                                ; preds = %3
  tail call void @abort() #31, !dbg !2741, !noalias !2735
  unreachable, !dbg !2741

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2540, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2738
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2734
  store i32 %1, i32* %11, align 8, !dbg !2734, !tbaa.struct !2645
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2734
  %13 = bitcast i32* %12 to i8*, !dbg !2734
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2734, !tbaa.struct !2742
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1478, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 58, metadata !1479, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 1, metadata !1480, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 58, metadata !1481, metadata !DIExpression()), !dbg !2743
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2745
  call void @llvm.dbg.value(metadata i32* %14, metadata !1483, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 26, metadata !1485, metadata !DIExpression()), !dbg !2743
  %15 = load i32, i32* %14, align 4, !dbg !2746, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %15, metadata !1486, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2743
  %16 = or i32 %15, 67108864, !dbg !2747
  store i32 %16, i32* %14, align 4, !dbg !2747, !tbaa !894
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2748
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2749
  ret i8* %17, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2751 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %1, metadata !2756, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %2, metadata !2757, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %3, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()) #29, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %1, metadata !2765, metadata !DIExpression()) #29, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %2, metadata !2766, metadata !DIExpression()) #29, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %3, metadata !2767, metadata !DIExpression()) #29, !dbg !2770
  call void @llvm.dbg.value(metadata i64 -1, metadata !2768, metadata !DIExpression()) #29, !dbg !2770
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2772
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2772
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2769, metadata !DIExpression()) #29, !dbg !2773
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !2774, !tbaa.struct !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1519, metadata !DIExpression()) #29, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %1, metadata !1520, metadata !DIExpression()) #29, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %2, metadata !1521, metadata !DIExpression()) #29, !dbg !2775
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1519, metadata !DIExpression()) #29, !dbg !2775
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2777
  store i32 10, i32* %7, align 8, !dbg !2778, !tbaa !1460
  %8 = icmp ne i8* %1, null, !dbg !2779
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2780
  br i1 %10, label %12, label %11, !dbg !2780

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !2781
  unreachable, !dbg !2781

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2782
  store i8* %1, i8** %13, align 8, !dbg !2783, !tbaa !1534
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2784
  store i8* %2, i8** %14, align 8, !dbg !2785, !tbaa !1537
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #29, !dbg !2786
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2787
  ret i8* %15, !dbg !2788
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2761 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !2765, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %2, metadata !2766, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %3, metadata !2767, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 %4, metadata !2768, metadata !DIExpression()), !dbg !2789
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #29, !dbg !2790
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2769, metadata !DIExpression()), !dbg !2791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2792, !tbaa.struct !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1519, metadata !DIExpression()) #29, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %1, metadata !1520, metadata !DIExpression()) #29, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %2, metadata !1521, metadata !DIExpression()) #29, !dbg !2793
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1519, metadata !DIExpression()) #29, !dbg !2793
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2795
  store i32 10, i32* %8, align 8, !dbg !2796, !tbaa !1460
  %9 = icmp ne i8* %1, null, !dbg !2797
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2798
  br i1 %11, label %13, label %12, !dbg !2798

12:                                               ; preds = %5
  tail call void @abort() #31, !dbg !2799
  unreachable, !dbg !2799

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2800
  store i8* %1, i8** %14, align 8, !dbg !2801, !tbaa !1534
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2802
  store i8* %2, i8** %15, align 8, !dbg !2803, !tbaa !1537
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #29, !dbg !2805
  ret i8* %16, !dbg !2806
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2807 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2811, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8* %1, metadata !2812, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8* %2, metadata !2813, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 0, metadata !2755, metadata !DIExpression()) #29, !dbg !2815
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()) #29, !dbg !2815
  call void @llvm.dbg.value(metadata i8* %1, metadata !2757, metadata !DIExpression()) #29, !dbg !2815
  call void @llvm.dbg.value(metadata i8* %2, metadata !2758, metadata !DIExpression()) #29, !dbg !2815
  call void @llvm.dbg.value(metadata i32 0, metadata !2760, metadata !DIExpression()) #29, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()) #29, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %1, metadata !2766, metadata !DIExpression()) #29, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %2, metadata !2767, metadata !DIExpression()) #29, !dbg !2817
  call void @llvm.dbg.value(metadata i64 -1, metadata !2768, metadata !DIExpression()) #29, !dbg !2817
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2819
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2819
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2769, metadata !DIExpression()) #29, !dbg !2820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !2821, !tbaa.struct !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1519, metadata !DIExpression()) #29, !dbg !2822
  call void @llvm.dbg.value(metadata i8* %0, metadata !1520, metadata !DIExpression()) #29, !dbg !2822
  call void @llvm.dbg.value(metadata i8* %1, metadata !1521, metadata !DIExpression()) #29, !dbg !2822
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1519, metadata !DIExpression()) #29, !dbg !2822
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2824
  store i32 10, i32* %6, align 8, !dbg !2825, !tbaa !1460
  %7 = icmp ne i8* %0, null, !dbg !2826
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2827
  br i1 %9, label %11, label %10, !dbg !2827

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !2828
  unreachable, !dbg !2828

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2829
  store i8* %0, i8** %12, align 8, !dbg !2830, !tbaa !1534
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2831
  store i8* %1, i8** %13, align 8, !dbg !2832, !tbaa !1537
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #29, !dbg !2833
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !2834
  ret i8* %14, !dbg !2835
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2836 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %1, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %2, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %3, metadata !2843, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 0, metadata !2760, metadata !DIExpression()) #29, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()) #29, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %1, metadata !2766, metadata !DIExpression()) #29, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %2, metadata !2767, metadata !DIExpression()) #29, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %3, metadata !2768, metadata !DIExpression()) #29, !dbg !2845
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2847
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2847
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2769, metadata !DIExpression()) #29, !dbg !2848
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !2849, !tbaa.struct !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1519, metadata !DIExpression()) #29, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %0, metadata !1520, metadata !DIExpression()) #29, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %1, metadata !1521, metadata !DIExpression()) #29, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1519, metadata !DIExpression()) #29, !dbg !2850
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2852
  store i32 10, i32* %7, align 8, !dbg !2853, !tbaa !1460
  %8 = icmp ne i8* %0, null, !dbg !2854
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2855
  br i1 %10, label %12, label %11, !dbg !2855

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !2856
  unreachable, !dbg !2856

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2857
  store i8* %0, i8** %13, align 8, !dbg !2858, !tbaa !1534
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2859
  store i8* %1, i8** %14, align 8, !dbg !2860, !tbaa !1537
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #29, !dbg !2861
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !2862
  ret i8* %15, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2864 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2868, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* %1, metadata !2869, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %2, metadata !2870, metadata !DIExpression()), !dbg !2871
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2872
  ret i8* %4, !dbg !2873
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2874 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2878, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %1, metadata !2879, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 0, metadata !2868, metadata !DIExpression()) #29, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %0, metadata !2869, metadata !DIExpression()) #29, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %1, metadata !2870, metadata !DIExpression()) #29, !dbg !2881
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !2883
  ret i8* %3, !dbg !2884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8* %1, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 %0, metadata !2868, metadata !DIExpression()) #29, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %1, metadata !2869, metadata !DIExpression()) #29, !dbg !2892
  call void @llvm.dbg.value(metadata i64 -1, metadata !2870, metadata !DIExpression()) #29, !dbg !2892
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !2894
  ret i8* %3, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2896 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i32 0, metadata !2889, metadata !DIExpression()) #29, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %0, metadata !2890, metadata !DIExpression()) #29, !dbg !2902
  call void @llvm.dbg.value(metadata i32 0, metadata !2868, metadata !DIExpression()) #29, !dbg !2904
  call void @llvm.dbg.value(metadata i8* %0, metadata !2869, metadata !DIExpression()) #29, !dbg !2904
  call void @llvm.dbg.value(metadata i64 -1, metadata !2870, metadata !DIExpression()) #29, !dbg !2904
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !2906
  ret i8* %2, !dbg !2907
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @try_tempname_len(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* nocapture %3, i64 %4) local_unnamed_addr #8 !dbg !2908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 %1, metadata !2916, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %2, metadata !2917, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, metadata !2918, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %4, metadata !2919, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 -1, metadata !2923, metadata !DIExpression()), !dbg !2937
  %6 = tail call i32* @__errno_location() #33, !dbg !2938
  %7 = load i32, i32* %6, align 4, !dbg !2938, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %7, metadata !2924, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 238328, metadata !2929, metadata !DIExpression()), !dbg !2937
  %8 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %8, metadata !2920, metadata !DIExpression()), !dbg !2937
  %9 = sext i32 %1 to i64, !dbg !2940
  %10 = add i64 %9, %4, !dbg !2942
  %11 = icmp ult i64 %8, %10, !dbg !2943
  br i1 %11, label %48, label %12, !dbg !2944

12:                                               ; preds = %5
  %13 = sub i64 %8, %10, !dbg !2945
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %14, metadata !2947, metadata !DIExpression()) #29, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %4, metadata !2952, metadata !DIExpression()) #29, !dbg !2953
  %15 = tail call i64 @strspn(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.97, i64 0, i64 0)) #30, !dbg !2955
  %16 = icmp ult i64 %15, %4, !dbg !2956
  br i1 %16, label %48, label %17, !dbg !2957

17:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8* %14, metadata !2921, metadata !DIExpression()), !dbg !2937
  %18 = tail call %struct.randint_source* @randint_all_new(i8* null, i64 %4) #29, !dbg !2958
  call void @llvm.dbg.value(metadata %struct.randint_source* %18, metadata !2925, metadata !DIExpression()), !dbg !2937
  %19 = icmp eq %struct.randint_source* %18, null, !dbg !2959
  br i1 %19, label %51, label %20, !dbg !2961

20:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 0, metadata !2922, metadata !DIExpression()), !dbg !2937
  %21 = icmp eq i64 %4, 0
  br label %24, !dbg !2962

22:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %41, metadata !2922, metadata !DIExpression()), !dbg !2937
  %23 = icmp eq i32 %41, 238328, !dbg !2963
  br i1 %23, label %42, label %24, !dbg !2962, !llvm.loop !2964

24:                                               ; preds = %20, %22
  %25 = phi i32 [ 0, %20 ], [ %41, %22 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !2922, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 0, metadata !2930, metadata !DIExpression()), !dbg !2966
  br i1 %21, label %34, label %26, !dbg !2967

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %32, %26 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !2930, metadata !DIExpression()), !dbg !2966
  %28 = tail call i64 @randint_genmax(%struct.randint_source* nonnull %18, i64 61) #29, !dbg !2969
  %29 = getelementptr inbounds [63 x i8], [63 x i8]* @letters, i64 0, i64 %28, !dbg !2971
  %30 = load i8, i8* %29, align 1, !dbg !2971, !tbaa !919
  %31 = getelementptr inbounds i8, i8* %14, i64 %27, !dbg !2972
  store i8 %30, i8* %31, align 1, !dbg !2973, !tbaa !919
  %32 = add nuw i64 %27, 1, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %32, metadata !2930, metadata !DIExpression()), !dbg !2966
  %33 = icmp eq i64 %32, %4, !dbg !2975
  br i1 %33, label %34, label %26, !dbg !2967, !llvm.loop !2976

34:                                               ; preds = %26, %24
  %35 = tail call i32 %3(i8* %0, i8* %2) #29, !dbg !2978
  call void @llvm.dbg.value(metadata i32 %35, metadata !2923, metadata !DIExpression()), !dbg !2937
  %36 = icmp sgt i32 %35, -1, !dbg !2979
  br i1 %36, label %37, label %38, !dbg !2981

37:                                               ; preds = %34
  store i32 %7, i32* %6, align 4, !dbg !2982, !tbaa !894
  br label %44, !dbg !2984

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4, !dbg !2985, !tbaa !894
  %40 = icmp eq i32 %39, 17, !dbg !2987
  call void @llvm.dbg.value(metadata i32 undef, metadata !2923, metadata !DIExpression()), !dbg !2937
  %41 = add nuw nsw i32 %25, 1, !dbg !2988
  call void @llvm.dbg.value(metadata i32 %41, metadata !2922, metadata !DIExpression()), !dbg !2937
  br i1 %40, label %22, label %44

42:                                               ; preds = %22
  %43 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #29, !dbg !2989
  br label %48, !dbg !2990

44:                                               ; preds = %38, %37
  %45 = phi i32 [ %7, %37 ], [ %39, %38 ], !dbg !2991
  %46 = phi i32 [ %35, %37 ], [ -1, %38 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2923, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.label(metadata !2936), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %45, metadata !2934, metadata !DIExpression()), !dbg !2993
  %47 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #29, !dbg !2994
  br label %48, !dbg !2995

48:                                               ; preds = %5, %12, %42, %44
  %49 = phi i32 [ %45, %44 ], [ 17, %42 ], [ 22, %12 ], [ 22, %5 ]
  %50 = phi i32 [ %46, %44 ], [ -1, %42 ], [ -1, %12 ], [ -1, %5 ]
  store i32 %49, i32* %6, align 4, !dbg !2937, !tbaa !894
  br label %51, !dbg !2996

51:                                               ; preds = %48, %17
  %52 = phi i32 [ -1, %17 ], [ %50, %48 ]
  ret i32 %52, !dbg !2996
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @gen_tempname_len(i8* %0, i32 %1, i32 %2, i32 %3, i64 %4) local_unnamed_addr #8 !dbg !2997 {
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %1, metadata !3002, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %2, metadata !3003, metadata !DIExpression()), !dbg !3007
  store i32 %2, i32* %6, align 4, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %3, metadata !3004, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i64 %4, metadata !3005, metadata !DIExpression()), !dbg !3007
  %7 = icmp ult i32 %3, 3, !dbg !3008
  br i1 %7, label %9, label %8, !dbg !3008

8:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.101, i64 0, i64 0), i32 327, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #31, !dbg !3009
  unreachable, !dbg !3009

9:                                                ; preds = %5
  %10 = sext i32 %3 to i64, !dbg !3008
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.gen_tempname, i64 0, i64 %10, !dbg !3008
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3008
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, metadata !3006, metadata !DIExpression()), !dbg !3007
  %13 = bitcast i32* %6 to i8*, !dbg !3013
  call void @llvm.dbg.value(metadata i32* %6, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3007
  %14 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %13, i32 (i8*, i8*)* nonnull %12, i64 %4), !dbg !3014
  ret i32 %14, !dbg !3015
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind sspstrong uwtable
define internal i32 @try_file(i8* nocapture readonly %0, i8* nocapture readonly %1) #16 !dbg !3016 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* %1, metadata !3019, metadata !DIExpression()), !dbg !3021
  %3 = bitcast i8* %1 to i32*, !dbg !3022
  call void @llvm.dbg.value(metadata i32* %3, metadata !3020, metadata !DIExpression()), !dbg !3021
  %4 = load i32, i32* %3, align 4, !dbg !3023, !tbaa !894
  %5 = and i32 %4, -196, !dbg !3024
  %6 = or i32 %5, 194, !dbg !3025
  %7 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 %6, i32 384) #29, !dbg !3026
  ret i32 %7, !dbg !3027
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal i32 @try_dir(i8* nocapture readonly %0, i8* nocapture readnone %1) #16 !dbg !3028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8* %1, metadata !3031, metadata !DIExpression()), !dbg !3032
  %3 = tail call i32 @mkdir(i8* %0, i32 448) #29, !dbg !3033
  ret i32 %3, !dbg !3034
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal i32 @try_nocreate(i8* nocapture readonly %0, i8* nocapture readnone %1) #16 !dbg !3035 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3037, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8* %1, metadata !3038, metadata !DIExpression()), !dbg !3076
  %4 = bitcast %struct.stat* %3 to i8*, !dbg !3077
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %4) #29, !dbg !3077
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !3039, metadata !DIExpression()), !dbg !3078
  %5 = call i32 @lstat(i8* %0, %struct.stat* nonnull %3) #29, !dbg !3079
  %6 = icmp eq i32 %5, 0, !dbg !3081
  %7 = tail call i32* @__errno_location() #33, !dbg !3082
  br i1 %6, label %11, label %8, !dbg !3083

8:                                                ; preds = %2
  %9 = load i32, i32* %7, align 4, !dbg !3084, !tbaa !894
  %10 = icmp eq i32 %9, 75, !dbg !3085
  br i1 %10, label %11, label %12, !dbg !3086

11:                                               ; preds = %2, %8
  store i32 17, i32* %7, align 4, !dbg !3087, !tbaa !894
  br label %12, !dbg !3087

12:                                               ; preds = %11, %8
  %13 = load i32, i32* %7, align 4, !dbg !3088, !tbaa !894
  %14 = icmp ne i32 %13, 2, !dbg !3089
  %15 = sext i1 %14 to i32, !dbg !3088
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %4) #29, !dbg !3090
  ret i32 %15, !dbg !3091
}

; Function Attrs: nofree nounwind
declare !dbg !3092 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3097 noundef i32 @mkdir(i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3100 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @gen_tempname(i8* %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #8 !dbg !3104 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3108, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 %1, metadata !3109, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 %2, metadata !3110, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 %3, metadata !3111, metadata !DIExpression()), !dbg !3112
  %6 = bitcast i32* %5 to i8*, !dbg !3113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()) #29, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %1, metadata !3002, metadata !DIExpression()) #29, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %2, metadata !3003, metadata !DIExpression()) #29, !dbg !3113
  store i32 %2, i32* %5, align 4, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %3, metadata !3004, metadata !DIExpression()) #29, !dbg !3113
  call void @llvm.dbg.value(metadata i64 6, metadata !3005, metadata !DIExpression()) #29, !dbg !3113
  %7 = icmp ult i32 %3, 3, !dbg !3115
  br i1 %7, label %9, label %8, !dbg !3115

8:                                                ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.101, i64 0, i64 0), i32 327, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #31, !dbg !3116
  unreachable, !dbg !3116

9:                                                ; preds = %4
  %10 = sext i32 %3 to i64, !dbg !3115
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.gen_tempname, i64 0, i64 %10, !dbg !3115
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3115
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, metadata !3006, metadata !DIExpression()) #29, !dbg !3113
  call void @llvm.dbg.value(metadata i32* %5, metadata !3003, metadata !DIExpression(DW_OP_deref)) #29, !dbg !3113
  %13 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %6, i32 (i8*, i8*)* nonnull %12, i64 6) #29, !dbg !3117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6), !dbg !3118
  ret i32 %13, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @try_tempname(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* nocapture %3) local_unnamed_addr #8 !dbg !3120 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3124, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %1, metadata !3125, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %2, metadata !3126, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, metadata !3127, metadata !DIExpression()), !dbg !3128
  %5 = tail call i32 @try_tempname_len(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* %3, i64 6), !dbg !3129
  ret i32 %5, !dbg !3130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3131 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3170, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %1, metadata !3171, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %2, metadata !3172, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %3, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8** %4, metadata !3174, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %5, metadata !3175, metadata !DIExpression()), !dbg !3176
  %7 = icmp eq i8* %1, null, !dbg !3177
  br i1 %7, label %10, label %8, !dbg !3179

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #29, !dbg !3180
  br label %12, !dbg !3180

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.103, i64 0, i64 0), i8* %2, i8* %3) #29, !dbg !3181
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.104, i64 0, i64 0), i32 5) #29, !dbg !3182
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #29, !dbg !3182
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3183
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.106, i64 0, i64 0), i32 5) #29, !dbg !3184
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.107, i64 0, i64 0)) #29, !dbg !3184
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3185
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
  ], !dbg !3186

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.108, i64 0, i64 0), i32 5) #29, !dbg !3187
  %21 = load i8*, i8** %4, align 8, !dbg !3187, !tbaa !697
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #29, !dbg !3187
  br label %147, !dbg !3189

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.109, i64 0, i64 0), i32 5) #29, !dbg !3190
  %25 = load i8*, i8** %4, align 8, !dbg !3190, !tbaa !697
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3190
  %27 = load i8*, i8** %26, align 8, !dbg !3190, !tbaa !697
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #29, !dbg !3190
  br label %147, !dbg !3191

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.110, i64 0, i64 0), i32 5) #29, !dbg !3192
  %31 = load i8*, i8** %4, align 8, !dbg !3192, !tbaa !697
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3192
  %33 = load i8*, i8** %32, align 8, !dbg !3192, !tbaa !697
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3192
  %35 = load i8*, i8** %34, align 8, !dbg !3192, !tbaa !697
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #29, !dbg !3192
  br label %147, !dbg !3193

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.111, i64 0, i64 0), i32 5) #29, !dbg !3194
  %39 = load i8*, i8** %4, align 8, !dbg !3194, !tbaa !697
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3194
  %41 = load i8*, i8** %40, align 8, !dbg !3194, !tbaa !697
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3194
  %43 = load i8*, i8** %42, align 8, !dbg !3194, !tbaa !697
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3194
  %45 = load i8*, i8** %44, align 8, !dbg !3194, !tbaa !697
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #29, !dbg !3194
  br label %147, !dbg !3195

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.112, i64 0, i64 0), i32 5) #29, !dbg !3196
  %49 = load i8*, i8** %4, align 8, !dbg !3196, !tbaa !697
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3196
  %51 = load i8*, i8** %50, align 8, !dbg !3196, !tbaa !697
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3196
  %53 = load i8*, i8** %52, align 8, !dbg !3196, !tbaa !697
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3196
  %55 = load i8*, i8** %54, align 8, !dbg !3196, !tbaa !697
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3196
  %57 = load i8*, i8** %56, align 8, !dbg !3196, !tbaa !697
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #29, !dbg !3196
  br label %147, !dbg !3197

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.113, i64 0, i64 0), i32 5) #29, !dbg !3198
  %61 = load i8*, i8** %4, align 8, !dbg !3198, !tbaa !697
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3198
  %63 = load i8*, i8** %62, align 8, !dbg !3198, !tbaa !697
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3198
  %65 = load i8*, i8** %64, align 8, !dbg !3198, !tbaa !697
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3198
  %67 = load i8*, i8** %66, align 8, !dbg !3198, !tbaa !697
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3198
  %69 = load i8*, i8** %68, align 8, !dbg !3198, !tbaa !697
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3198
  %71 = load i8*, i8** %70, align 8, !dbg !3198, !tbaa !697
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #29, !dbg !3198
  br label %147, !dbg !3199

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.114, i64 0, i64 0), i32 5) #29, !dbg !3200
  %75 = load i8*, i8** %4, align 8, !dbg !3200, !tbaa !697
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3200
  %77 = load i8*, i8** %76, align 8, !dbg !3200, !tbaa !697
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3200
  %79 = load i8*, i8** %78, align 8, !dbg !3200, !tbaa !697
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3200
  %81 = load i8*, i8** %80, align 8, !dbg !3200, !tbaa !697
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3200
  %83 = load i8*, i8** %82, align 8, !dbg !3200, !tbaa !697
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3200
  %85 = load i8*, i8** %84, align 8, !dbg !3200, !tbaa !697
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3200
  %87 = load i8*, i8** %86, align 8, !dbg !3200, !tbaa !697
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #29, !dbg !3200
  br label %147, !dbg !3201

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.115, i64 0, i64 0), i32 5) #29, !dbg !3202
  %91 = load i8*, i8** %4, align 8, !dbg !3202, !tbaa !697
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3202
  %93 = load i8*, i8** %92, align 8, !dbg !3202, !tbaa !697
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3202
  %95 = load i8*, i8** %94, align 8, !dbg !3202, !tbaa !697
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3202
  %97 = load i8*, i8** %96, align 8, !dbg !3202, !tbaa !697
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3202
  %99 = load i8*, i8** %98, align 8, !dbg !3202, !tbaa !697
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3202
  %101 = load i8*, i8** %100, align 8, !dbg !3202, !tbaa !697
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3202
  %103 = load i8*, i8** %102, align 8, !dbg !3202, !tbaa !697
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3202
  %105 = load i8*, i8** %104, align 8, !dbg !3202, !tbaa !697
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #29, !dbg !3202
  br label %147, !dbg !3203

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.116, i64 0, i64 0), i32 5) #29, !dbg !3204
  %109 = load i8*, i8** %4, align 8, !dbg !3204, !tbaa !697
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3204
  %111 = load i8*, i8** %110, align 8, !dbg !3204, !tbaa !697
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3204
  %113 = load i8*, i8** %112, align 8, !dbg !3204, !tbaa !697
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3204
  %115 = load i8*, i8** %114, align 8, !dbg !3204, !tbaa !697
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3204
  %117 = load i8*, i8** %116, align 8, !dbg !3204, !tbaa !697
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3204
  %119 = load i8*, i8** %118, align 8, !dbg !3204, !tbaa !697
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3204
  %121 = load i8*, i8** %120, align 8, !dbg !3204, !tbaa !697
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3204
  %123 = load i8*, i8** %122, align 8, !dbg !3204, !tbaa !697
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3204
  %125 = load i8*, i8** %124, align 8, !dbg !3204, !tbaa !697
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #29, !dbg !3204
  br label %147, !dbg !3205

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.117, i64 0, i64 0), i32 5) #29, !dbg !3206
  %129 = load i8*, i8** %4, align 8, !dbg !3206, !tbaa !697
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3206
  %131 = load i8*, i8** %130, align 8, !dbg !3206, !tbaa !697
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3206
  %133 = load i8*, i8** %132, align 8, !dbg !3206, !tbaa !697
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3206
  %135 = load i8*, i8** %134, align 8, !dbg !3206, !tbaa !697
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3206
  %137 = load i8*, i8** %136, align 8, !dbg !3206, !tbaa !697
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3206
  %139 = load i8*, i8** %138, align 8, !dbg !3206, !tbaa !697
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3206
  %141 = load i8*, i8** %140, align 8, !dbg !3206, !tbaa !697
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3206
  %143 = load i8*, i8** %142, align 8, !dbg !3206, !tbaa !697
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3206
  %145 = load i8*, i8** %144, align 8, !dbg !3206, !tbaa !697
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #29, !dbg !3206
  br label %147, !dbg !3207

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3208
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3209 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3213, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %1, metadata !3214, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %2, metadata !3215, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %3, metadata !3216, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8** %4, metadata !3217, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 0, metadata !3218, metadata !DIExpression()), !dbg !3219
  br label %6, !dbg !3220

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3222
  call void @llvm.dbg.value(metadata i64 %7, metadata !3218, metadata !DIExpression()), !dbg !3219
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3223
  %9 = load i8*, i8** %8, align 8, !dbg !3223, !tbaa !697
  %10 = icmp eq i8* %9, null, !dbg !3225
  %11 = add i64 %7, 1, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %11, metadata !3218, metadata !DIExpression()), !dbg !3219
  br i1 %10, label %12, label %6, !dbg !3225, !llvm.loop !3227

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3229
  ret void, !dbg !3230
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3231 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3242, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %1, metadata !3243, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %2, metadata !3244, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %3, metadata !3245, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3246, metadata !DIExpression()), !dbg !3250
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3251
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3251
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3248, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 0, metadata !3247, metadata !DIExpression()), !dbg !3250
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3247, metadata !DIExpression()), !dbg !3250
  %11 = load i32, i32* %8, align 8, !dbg !3253
  %12 = icmp ult i32 %11, 41, !dbg !3253
  br i1 %12, label %13, label %18, !dbg !3253

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3253
  %15 = zext i32 %11 to i64, !dbg !3253
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3253
  %17 = add nuw nsw i32 %11, 8, !dbg !3253
  store i32 %17, i32* %8, align 8, !dbg !3253
  br label %21, !dbg !3253

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3253
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3253
  store i8* %20, i8** %9, align 8, !dbg !3253
  br label %21, !dbg !3253

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3253
  %25 = load i8*, i8** %24, align 8, !dbg !3253
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3256
  store i8* %25, i8** %26, align 16, !dbg !3257, !tbaa !697
  %27 = icmp eq i8* %25, null, !dbg !3258
  br i1 %27, label %30, label %28, !dbg !3259

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3247, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 1, metadata !3247, metadata !DIExpression()), !dbg !3250
  %29 = icmp ult i32 %22, 41, !dbg !3253
  br i1 %29, label %35, label %32, !dbg !3253

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3260
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3261
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3262
  ret void, !dbg !3262

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3253
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3253
  store i8* %34, i8** %9, align 8, !dbg !3253
  br label %40, !dbg !3253

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3253
  %37 = zext i32 %22 to i64, !dbg !3253
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3253
  %39 = add nuw nsw i32 %22, 8, !dbg !3253
  store i32 %39, i32* %8, align 8, !dbg !3253
  br label %40, !dbg !3253

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3253
  %44 = load i8*, i8** %43, align 8, !dbg !3253
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3256
  store i8* %44, i8** %45, align 8, !dbg !3257, !tbaa !697
  %46 = icmp eq i8* %44, null, !dbg !3258
  br i1 %46, label %30, label %47, !dbg !3259

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3247, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 2, metadata !3247, metadata !DIExpression()), !dbg !3250
  %48 = icmp ult i32 %41, 41, !dbg !3253
  br i1 %48, label %52, label %49, !dbg !3253

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3253
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3253
  store i8* %51, i8** %9, align 8, !dbg !3253
  br label %57, !dbg !3253

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3253
  %54 = zext i32 %41 to i64, !dbg !3253
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3253
  %56 = add nuw nsw i32 %41, 8, !dbg !3253
  store i32 %56, i32* %8, align 8, !dbg !3253
  br label %57, !dbg !3253

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3253
  %61 = load i8*, i8** %60, align 8, !dbg !3253
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3256
  store i8* %61, i8** %62, align 16, !dbg !3257, !tbaa !697
  %63 = icmp eq i8* %61, null, !dbg !3258
  br i1 %63, label %30, label %64, !dbg !3259

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3247, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 3, metadata !3247, metadata !DIExpression()), !dbg !3250
  %65 = icmp ult i32 %58, 41, !dbg !3253
  br i1 %65, label %69, label %66, !dbg !3253

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3253
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3253
  store i8* %68, i8** %9, align 8, !dbg !3253
  br label %74, !dbg !3253

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3253
  %71 = zext i32 %58 to i64, !dbg !3253
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3253
  %73 = add nuw nsw i32 %58, 8, !dbg !3253
  store i32 %73, i32* %8, align 8, !dbg !3253
  br label %74, !dbg !3253

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3253
  %78 = load i8*, i8** %77, align 8, !dbg !3253
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3256
  store i8* %78, i8** %79, align 8, !dbg !3257, !tbaa !697
  %80 = icmp eq i8* %78, null, !dbg !3258
  br i1 %80, label %30, label %81, !dbg !3259

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3247, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 4, metadata !3247, metadata !DIExpression()), !dbg !3250
  %82 = icmp ult i32 %75, 41, !dbg !3253
  br i1 %82, label %86, label %83, !dbg !3253

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3253
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3253
  store i8* %85, i8** %9, align 8, !dbg !3253
  br label %91, !dbg !3253

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3253
  %88 = zext i32 %75 to i64, !dbg !3253
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3253
  %90 = add nuw nsw i32 %75, 8, !dbg !3253
  store i32 %90, i32* %8, align 8, !dbg !3253
  br label %91, !dbg !3253

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3253
  %95 = load i8*, i8** %94, align 8, !dbg !3253
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3256
  store i8* %95, i8** %96, align 16, !dbg !3257, !tbaa !697
  %97 = icmp eq i8* %95, null, !dbg !3258
  br i1 %97, label %30, label %98, !dbg !3259

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3247, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 5, metadata !3247, metadata !DIExpression()), !dbg !3250
  %99 = icmp ult i32 %92, 41, !dbg !3253
  br i1 %99, label %103, label %100, !dbg !3253

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3253
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3253
  store i8* %102, i8** %9, align 8, !dbg !3253
  br label %108, !dbg !3253

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3253
  %105 = zext i32 %92 to i64, !dbg !3253
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3253
  %107 = add nuw nsw i32 %92, 8, !dbg !3253
  store i32 %107, i32* %8, align 8, !dbg !3253
  br label %108, !dbg !3253

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3253
  %111 = load i8*, i8** %110, align 8, !dbg !3253
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3256
  store i8* %111, i8** %112, align 8, !dbg !3257, !tbaa !697
  %113 = icmp eq i8* %111, null, !dbg !3258
  br i1 %113, label %30, label %114, !dbg !3259

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3247, metadata !DIExpression()), !dbg !3250
  %115 = load i8*, i8** %9, align 8, !dbg !3253
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3253
  store i8* %116, i8** %9, align 8, !dbg !3253
  %117 = bitcast i8* %115 to i8**, !dbg !3253
  %118 = load i8*, i8** %117, align 8, !dbg !3253
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3256
  store i8* %118, i8** %119, align 16, !dbg !3257, !tbaa !697
  %120 = icmp eq i8* %118, null, !dbg !3258
  br i1 %120, label %30, label %121, !dbg !3259

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3247, metadata !DIExpression()), !dbg !3250
  %122 = load i8*, i8** %9, align 8, !dbg !3253
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3253
  store i8* %123, i8** %9, align 8, !dbg !3253
  %124 = bitcast i8* %122 to i8**, !dbg !3253
  %125 = load i8*, i8** %124, align 8, !dbg !3253
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3256
  store i8* %125, i8** %126, align 8, !dbg !3257, !tbaa !697
  %127 = icmp eq i8* %125, null, !dbg !3258
  br i1 %127, label %30, label %128, !dbg !3259

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3247, metadata !DIExpression()), !dbg !3250
  %129 = load i8*, i8** %9, align 8, !dbg !3253
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3253
  store i8* %130, i8** %9, align 8, !dbg !3253
  %131 = bitcast i8* %129 to i8**, !dbg !3253
  %132 = load i8*, i8** %131, align 8, !dbg !3253
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3256
  store i8* %132, i8** %133, align 16, !dbg !3257, !tbaa !697
  %134 = icmp eq i8* %132, null, !dbg !3258
  br i1 %134, label %30, label %135, !dbg !3259

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3247, metadata !DIExpression()), !dbg !3250
  %136 = load i8*, i8** %9, align 8, !dbg !3253
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3253
  store i8* %137, i8** %9, align 8, !dbg !3253
  %138 = bitcast i8* %136 to i8**, !dbg !3253
  %139 = load i8*, i8** %138, align 8, !dbg !3253
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3256
  store i8* %139, i8** %140, align 8, !dbg !3257, !tbaa !697
  %141 = icmp eq i8* %139, null, !dbg !3258
  %142 = select i1 %141, i64 9, i64 10, !dbg !3259
  br label %30, !dbg !3259
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3263 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3267, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i8* %1, metadata !3268, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i8* %2, metadata !3269, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i8* %3, metadata !3270, metadata !DIExpression()), !dbg !3277
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3278
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3278
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3271, metadata !DIExpression()), !dbg !3279
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3280
  call void @llvm.va_start(i8* nonnull %6), !dbg !3280
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3281
  call void @llvm.va_end(i8* nonnull %6), !dbg !3282
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3283
  ret void, !dbg !3283
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #25

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3284 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3285, !tbaa !697
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3285
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.120, i64 0, i64 0), i32 5) #29, !dbg !3286
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.121, i64 0, i64 0)) #29, !dbg !3286
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.122, i64 0, i64 0), i32 5) #29, !dbg !3287
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.123, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.124, i64 0, i64 0)) #29, !dbg !3287
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.125, i64 0, i64 0), i32 5) #29, !dbg !3288
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.126, i64 0, i64 0)) #29, !dbg !3288
  ret void, !dbg !3289
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3290 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3294, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3296
  %3 = udiv i64 9223372036854775807, %1, !dbg !3297
  %4 = icmp ult i64 %3, %0, !dbg !3297
  br i1 %4, label %5, label %6, !dbg !3299

5:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !3300
  unreachable, !dbg !3300

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3301
  call void @llvm.dbg.value(metadata i64 %7, metadata !3302, metadata !DIExpression()) #29, !dbg !3307
  %8 = tail call noalias i8* @malloc(i64 %7) #29, !dbg !3309
  call void @llvm.dbg.value(metadata i8* %8, metadata !3306, metadata !DIExpression()) #29, !dbg !3307
  %9 = icmp eq i8* %8, null, !dbg !3310
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3312
  br i1 %11, label %12, label %13, !dbg !3312

12:                                               ; preds = %6
  tail call void @xalloc_die() #31, !dbg !3313
  unreachable, !dbg !3313

13:                                               ; preds = %6
  ret i8* %8, !dbg !3314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3303 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3302, metadata !DIExpression()), !dbg !3315
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %2, metadata !3306, metadata !DIExpression()), !dbg !3315
  %3 = icmp eq i8* %2, null, !dbg !3317
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3318
  br i1 %5, label %6, label %7, !dbg !3318

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3319
  unreachable, !dbg !3319

7:                                                ; preds = %1
  ret i8* %2, !dbg !3320
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #26 !dbg !3321 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3325, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %2, metadata !3327, metadata !DIExpression()), !dbg !3328
  %4 = udiv i64 9223372036854775807, %2, !dbg !3329
  %5 = icmp ult i64 %4, %1, !dbg !3329
  br i1 %5, label %6, label %7, !dbg !3331

6:                                                ; preds = %3
  tail call void @xalloc_die() #31, !dbg !3332
  unreachable, !dbg !3332

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #29, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %8, metadata !3339, metadata !DIExpression()) #29, !dbg !3340
  %9 = icmp eq i64 %8, 0, !dbg !3342
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3344
  br i1 %11, label %12, label %13, !dbg !3344

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #29, !dbg !3345
  br label %19, !dbg !3347

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #29, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %14, metadata !3334, metadata !DIExpression()) #29, !dbg !3340
  %15 = icmp eq i8* %14, null, !dbg !3349
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3351
  br i1 %17, label %18, label %19, !dbg !3351

18:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3352
  unreachable, !dbg !3352

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3340
  ret i8* %20, !dbg !3353
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3339, metadata !DIExpression()), !dbg !3354
  %3 = icmp eq i64 %1, 0, !dbg !3355
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3356
  br i1 %5, label %6, label %7, !dbg !3356

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #29, !dbg !3357
  br label %13, !dbg !3358

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #29, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %8, metadata !3334, metadata !DIExpression()), !dbg !3354
  %9 = icmp eq i8* %8, null, !dbg !3360
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3361
  br i1 %11, label %12, label %13, !dbg !3361

12:                                               ; preds = %7
  tail call void @xalloc_die() #31, !dbg !3362
  unreachable, !dbg !3362

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3354
  ret i8* %14, !dbg !3363
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #26 !dbg !194 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !199, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* %1, metadata !200, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %2, metadata !201, metadata !DIExpression()), !dbg !3364
  %4 = load i64, i64* %1, align 8, !dbg !3365, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %4, metadata !202, metadata !DIExpression()), !dbg !3364
  %5 = icmp eq i8* %0, null, !dbg !3366
  br i1 %5, label %6, label %20, !dbg !3368

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3369
  br i1 %7, label %8, label %13, !dbg !3372

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %9, metadata !202, metadata !DIExpression()), !dbg !3364
  %10 = icmp ugt i64 %2, 128, !dbg !3375
  %11 = zext i1 %10 to i64, !dbg !3375
  %12 = add nuw nsw i64 %9, %11, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %12, metadata !202, metadata !DIExpression()), !dbg !3364
  br label %13, !dbg !3377

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3364
  call void @llvm.dbg.value(metadata i64 %14, metadata !202, metadata !DIExpression()), !dbg !3364
  %15 = udiv i64 9223372036854775807, %2, !dbg !3378
  %16 = icmp ult i64 %15, %14, !dbg !3378
  br i1 %16, label %19, label %17, !dbg !3380

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !202, metadata !DIExpression()), !dbg !3364
  store i64 %14, i64* %1, align 8, !dbg !3381, !tbaa !2355
  %18 = mul i64 %14, %2, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #29, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %28, metadata !3339, metadata !DIExpression()) #29, !dbg !3383
  br label %31, !dbg !3385

19:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3386
  unreachable, !dbg !3386

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3387
  %22 = icmp ugt i64 %21, %4, !dbg !3390
  br i1 %22, label %24, label %23, !dbg !3391

23:                                               ; preds = %20
  tail call void @xalloc_die() #31, !dbg !3392
  unreachable, !dbg !3392

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3393
  %26 = add nuw i64 %4, 1, !dbg !3394
  %27 = add i64 %26, %25, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %27, metadata !202, metadata !DIExpression()), !dbg !3364
  store i64 %27, i64* %1, align 8, !dbg !3381, !tbaa !2355
  %28 = mul i64 %27, %2, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #29, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %28, metadata !3339, metadata !DIExpression()) #29, !dbg !3383
  %29 = icmp eq i64 %28, 0, !dbg !3396
  br i1 %29, label %30, label %31, !dbg !3385

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #29, !dbg !3397
  br label %38, !dbg !3398

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #29, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %33, metadata !3334, metadata !DIExpression()) #29, !dbg !3383
  %34 = icmp eq i8* %33, null, !dbg !3400
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3401
  br i1 %36, label %37, label %38, !dbg !3401

37:                                               ; preds = %31
  tail call void @xalloc_die() #31, !dbg !3402
  unreachable, !dbg !3402

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3383
  ret i8* %39, !dbg !3403
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #26 !dbg !3404 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %0, metadata !3302, metadata !DIExpression()) #29, !dbg !3408
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !3410
  call void @llvm.dbg.value(metadata i8* %2, metadata !3306, metadata !DIExpression()) #29, !dbg !3408
  %3 = icmp eq i8* %2, null, !dbg !3411
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3412
  br i1 %5, label %6, label %7, !dbg !3412

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3413
  unreachable, !dbg !3413

7:                                                ; preds = %1
  ret i8* %2, !dbg !3414
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3419, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i64* %1, metadata !3420, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i8* %0, metadata !199, metadata !DIExpression()) #29, !dbg !3422
  call void @llvm.dbg.value(metadata i64* %1, metadata !200, metadata !DIExpression()) #29, !dbg !3422
  call void @llvm.dbg.value(metadata i64 1, metadata !201, metadata !DIExpression()) #29, !dbg !3422
  %3 = load i64, i64* %1, align 8, !dbg !3424, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %3, metadata !202, metadata !DIExpression()) #29, !dbg !3422
  %4 = icmp eq i8* %0, null, !dbg !3425
  br i1 %4, label %5, label %10, !dbg !3426

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3427
  br i1 %6, label %17, label %7, !dbg !3428

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !202, metadata !DIExpression()) #29, !dbg !3422
  %8 = icmp slt i64 %3, 0, !dbg !3429
  br i1 %8, label %9, label %17, !dbg !3430

9:                                                ; preds = %7
  tail call void @xalloc_die() #31, !dbg !3431
  unreachable, !dbg !3431

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3432
  br i1 %11, label %13, label %12, !dbg !3433

12:                                               ; preds = %10
  tail call void @xalloc_die() #31, !dbg !3434
  unreachable, !dbg !3434

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3435
  %15 = add nuw nsw i64 %3, 1, !dbg !3436
  %16 = add nuw nsw i64 %15, %14, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %16, metadata !202, metadata !DIExpression()) #29, !dbg !3422
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #29, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %16, metadata !3339, metadata !DIExpression()) #29, !dbg !3438
  br label %17, !dbg !3440

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3441
  store i64 %18, i64* %1, align 8, !dbg !3441, !tbaa !2355
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #29, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %19, metadata !3334, metadata !DIExpression()) #29, !dbg !3438
  %20 = icmp eq i8* %19, null, !dbg !3443
  br i1 %20, label %21, label %22, !dbg !3444

21:                                               ; preds = %17
  tail call void @xalloc_die() #31, !dbg !3445
  unreachable, !dbg !3445

22:                                               ; preds = %17
  ret i8* %19, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3447 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3449, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %0, metadata !3451, metadata !DIExpression()) #29, !dbg !3456
  call void @llvm.dbg.value(metadata i64 1, metadata !3454, metadata !DIExpression()) #29, !dbg !3456
  %2 = icmp slt i64 %0, 0, !dbg !3458
  br i1 %2, label %6, label %3, !dbg !3460

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #29, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %4, metadata !3455, metadata !DIExpression()) #29, !dbg !3456
  %5 = icmp eq i8* %4, null, !dbg !3462
  br i1 %5, label %6, label %7, !dbg !3463

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #31, !dbg !3464
  unreachable, !dbg !3464

7:                                                ; preds = %3
  ret i8* %4, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3452 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3451, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()), !dbg !3466
  %3 = udiv i64 9223372036854775807, %1, !dbg !3467
  %4 = icmp ult i64 %3, %0, !dbg !3467
  br i1 %4, label %8, label %5, !dbg !3468

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #29, !dbg !3469
  call void @llvm.dbg.value(metadata i8* %6, metadata !3455, metadata !DIExpression()), !dbg !3466
  %7 = icmp eq i8* %6, null, !dbg !3470
  br i1 %7, label %8, label %9, !dbg !3471

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #31, !dbg !3472
  unreachable, !dbg !3472

9:                                                ; preds = %5
  ret i8* %6, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3474 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3478, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 %1, metadata !3302, metadata !DIExpression()) #29, !dbg !3481
  %3 = tail call noalias i8* @malloc(i64 %1) #29, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %3, metadata !3306, metadata !DIExpression()) #29, !dbg !3481
  %4 = icmp eq i8* %3, null, !dbg !3484
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3485
  br i1 %6, label %7, label %8, !dbg !3485

7:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !3486
  unreachable, !dbg !3486

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3487, metadata !DIExpression()) #29, !dbg !3492
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()) #29, !dbg !3492
  call void @llvm.dbg.value(metadata i64 %1, metadata !3491, metadata !DIExpression()) #29, !dbg !3492
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #29, !dbg !3494
  ret i8* %3, !dbg !3495
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3496 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3498, metadata !DIExpression()), !dbg !3499
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !3500
  %3 = add i64 %2, 1, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %0, metadata !3478, metadata !DIExpression()) #29, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %3, metadata !3479, metadata !DIExpression()) #29, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %3, metadata !3302, metadata !DIExpression()) #29, !dbg !3504
  %4 = tail call noalias i8* @malloc(i64 %3) #29, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %4, metadata !3306, metadata !DIExpression()) #29, !dbg !3504
  %5 = icmp eq i8* %4, null, !dbg !3507
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3508
  br i1 %7, label %8, label %9, !dbg !3508

8:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3509
  unreachable, !dbg !3509

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3487, metadata !DIExpression()) #29, !dbg !3510
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()) #29, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %3, metadata !3491, metadata !DIExpression()) #29, !dbg !3510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #29, !dbg !3512
  ret i8* %4, !dbg !3513
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3514 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3515, !tbaa !894
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.139, i64 0, i64 0), i32 5) #29, !dbg !3516
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* %2) #29, !dbg !3517
  tail call void @abort() #31, !dbg !3518
  unreachable, !dbg !3518
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !3519 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3521, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %1, metadata !3522, metadata !DIExpression()), !dbg !3527
  %3 = icmp eq i64 %0, 0, !dbg !3528
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3529
  br i1 %5, label %11, label %6, !dbg !3529

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3524, metadata !DIExpression()), !dbg !3530
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3531
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3531
  br i1 %8, label %9, label %11, !dbg !3533

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #33, !dbg !3534
  store i32 12, i32* %10, align 4, !dbg !3536, !tbaa !894
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3521, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %12, metadata !3522, metadata !DIExpression()), !dbg !3527
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #29, !dbg !3537
  call void @llvm.dbg.value(metadata i8* %14, metadata !3523, metadata !DIExpression()), !dbg !3527
  br label %15, !dbg !3538

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3527
  ret i8* %16, !dbg !3539
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3540 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3578, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 0, metadata !3579, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 0, metadata !3581, metadata !DIExpression()), !dbg !3582
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !3583
  call void @llvm.dbg.value(metadata i32 %2, metadata !3580, metadata !DIExpression()), !dbg !3582
  %3 = icmp slt i32 %2, 0, !dbg !3584
  br i1 %3, label %4, label %6, !dbg !3586

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3587
  br label %24, !dbg !3588

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !3589
  %8 = icmp eq i32 %7, 0, !dbg !3589
  br i1 %8, label %13, label %9, !dbg !3591

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !3592
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #29, !dbg !3593
  %12 = icmp eq i64 %11, -1, !dbg !3594
  br i1 %12, label %16, label %13, !dbg !3595

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #29, !dbg !3596
  %15 = icmp eq i32 %14, 0, !dbg !3596
  br i1 %15, label %16, label %18, !dbg !3597

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3579, metadata !DIExpression()), !dbg !3582
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3598
  call void @llvm.dbg.value(metadata i32 %21, metadata !3581, metadata !DIExpression()), !dbg !3582
  br label %24, !dbg !3599

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #33, !dbg !3600
  %20 = load i32, i32* %19, align 4, !dbg !3600, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %20, metadata !3579, metadata !DIExpression()), !dbg !3582
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3598
  call void @llvm.dbg.value(metadata i32 %21, metadata !3581, metadata !DIExpression()), !dbg !3582
  %22 = icmp eq i32 %20, 0, !dbg !3601
  br i1 %22, label %24, label %23, !dbg !3599

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3603, !tbaa !894
  call void @llvm.dbg.value(metadata i32 -1, metadata !3581, metadata !DIExpression()), !dbg !3582
  br label %24, !dbg !3605

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3582
  ret i32 %25, !dbg !3606
}

; Function Attrs: nofree nounwind
declare !dbg !3607 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3610 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3611 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3614 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3652, metadata !DIExpression()), !dbg !3653
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3654
  br i1 %2, label %6, label %3, !dbg !3656

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !3657
  %5 = icmp eq i32 %4, 0, !dbg !3657
  br i1 %5, label %6, label %8, !dbg !3658

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3659
  br label %17, !dbg !3660

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3661, metadata !DIExpression()) #29, !dbg !3666
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3668
  %10 = load i32, i32* %9, align 8, !dbg !3668, !tbaa !1210
  %11 = and i32 %10, 256, !dbg !3670
  %12 = icmp eq i32 %11, 0, !dbg !3670
  br i1 %12, label %15, label %13, !dbg !3671

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #29, !dbg !3672
  br label %15, !dbg !3672

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3673
  br label %17, !dbg !3674

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3653
  ret i32 %18, !dbg !3675
}

; Function Attrs: nofree nounwind
declare !dbg !3676 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3679 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3718, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %1, metadata !3719, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i32 %2, metadata !3720, metadata !DIExpression()), !dbg !3724
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3725
  %5 = load i8*, i8** %4, align 8, !dbg !3725, !tbaa !3726
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3727
  %7 = load i8*, i8** %6, align 8, !dbg !3727, !tbaa !3728
  %8 = icmp eq i8* %5, %7, !dbg !3729
  br i1 %8, label %9, label %28, !dbg !3730

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3731
  %11 = load i8*, i8** %10, align 8, !dbg !3731, !tbaa !3732
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3733
  %13 = load i8*, i8** %12, align 8, !dbg !3733, !tbaa !3734
  %14 = icmp eq i8* %11, %13, !dbg !3735
  br i1 %14, label %15, label %28, !dbg !3736

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3737
  %17 = load i8*, i8** %16, align 8, !dbg !3737, !tbaa !3738
  %18 = icmp eq i8* %17, null, !dbg !3739
  br i1 %18, label %19, label %28, !dbg !3740

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !3741
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #29, !dbg !3742
  call void @llvm.dbg.value(metadata i64 %21, metadata !3721, metadata !DIExpression()), !dbg !3743
  %22 = icmp eq i64 %21, -1, !dbg !3744
  br i1 %22, label %30, label %23, !dbg !3746

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3747
  %25 = load i32, i32* %24, align 8, !dbg !3748, !tbaa !1210
  %26 = and i32 %25, -17, !dbg !3748
  store i32 %26, i32* %24, align 8, !dbg !3748, !tbaa !1210
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3749
  store i64 %21, i64* %27, align 8, !dbg !3750, !tbaa !3751
  br label %30, !dbg !3752

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3753
  br label %30, !dbg !3754

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3724
  ret i32 %31, !dbg !3755
}

; Function Attrs: nofree nounwind
declare !dbg !3756 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3759 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3775, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %1, metadata !3776, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %2, metadata !3777, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3778, metadata !DIExpression()), !dbg !3784
  %6 = bitcast i32* %5 to i8*, !dbg !3785
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #29, !dbg !3785
  %7 = icmp eq i32* %0, null, !dbg !3786
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3788
  call void @llvm.dbg.value(metadata i32* %8, metadata !3775, metadata !DIExpression()), !dbg !3784
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #29, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %9, metadata !3779, metadata !DIExpression()), !dbg !3784
  %10 = icmp ugt i64 %9, -3, !dbg !3790
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3791
  br i1 %12, label %13, label %18, !dbg !3791

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #29, !dbg !3792
  br i1 %14, label %18, label %15, !dbg !3793

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3794, !tbaa !919
  call void @llvm.dbg.value(metadata i8 %16, metadata !3781, metadata !DIExpression()), !dbg !3795
  %17 = zext i8 %16 to i32, !dbg !3796
  store i32 %17, i32* %8, align 4, !dbg !3797, !tbaa !894
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3784
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #29, !dbg !3798
  ret i64 %19, !dbg !3798
}

; Function Attrs: nounwind
declare !dbg !3799 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3803 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3807, metadata !DIExpression()), !dbg !3812
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3813
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #29, !dbg !3813
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3808, metadata !DIExpression()), !dbg !3814
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #29, !dbg !3815
  %5 = icmp eq i32 %4, 0, !dbg !3815
  br i1 %5, label %6, label %13, !dbg !3817

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3818
  %8 = load i16, i16* %7, align 16, !dbg !3818
  %9 = icmp eq i16 %8, 67, !dbg !3818
  br i1 %9, label %13, label %10, !dbg !3819

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0), i64 6), !dbg !3820
  %12 = icmp ne i32 %11, 0, !dbg !3821
  br label %13, !dbg !3819

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3812
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #29, !dbg !3822
  ret i1 %14, !dbg !3822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3823 {
  %1 = tail call i8* @nl_langinfo(i32 14) #29, !dbg !3828
  call void @llvm.dbg.value(metadata i8* %1, metadata !3827, metadata !DIExpression()), !dbg !3829
  %2 = icmp eq i8* %1, null, !dbg !3830
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.156, i64 0, i64 0), i8* %1, !dbg !3832
  call void @llvm.dbg.value(metadata i8* %3, metadata !3827, metadata !DIExpression()), !dbg !3829
  %4 = load i8, i8* %3, align 1, !dbg !3833, !tbaa !919
  %5 = icmp eq i8 %4, 0, !dbg !3837
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0), i8* %3, !dbg !3838
  call void @llvm.dbg.value(metadata i8* %6, metadata !3827, metadata !DIExpression()), !dbg !3829
  ret i8* %6, !dbg !3839
}

; Function Attrs: nounwind
declare !dbg !3840 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.randint_source* @randint_new(%struct.randread_source* %0) local_unnamed_addr #8 !dbg !3843 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !3859, metadata !DIExpression()), !dbg !3861
  %2 = tail call noalias i8* @xmalloc(i64 24) #29, !dbg !3862
  %3 = bitcast i8* %2 to %struct.randint_source*, !dbg !3862
  call void @llvm.dbg.value(metadata %struct.randint_source* %3, metadata !3860, metadata !DIExpression()), !dbg !3861
  %4 = bitcast i8* %2 to %struct.randread_source**, !dbg !3863
  store %struct.randread_source* %0, %struct.randread_source** %4, align 8, !dbg !3864, !tbaa !3865
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !3867
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !3868
  ret %struct.randint_source* %3, !dbg !3869
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.randint_source* @randint_all_new(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3874, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i64 %1, metadata !3875, metadata !DIExpression()), !dbg !3877
  %3 = tail call %struct.randread_source* @randread_new(i8* %0, i64 %1) #29, !dbg !3878
  call void @llvm.dbg.value(metadata %struct.randread_source* %3, metadata !3876, metadata !DIExpression()), !dbg !3877
  %4 = icmp eq %struct.randread_source* %3, null, !dbg !3879
  br i1 %4, label %10, label %5, !dbg !3879

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.randread_source* %3, metadata !3859, metadata !DIExpression()) #29, !dbg !3880
  %6 = tail call noalias i8* @xmalloc(i64 24) #29, !dbg !3882
  %7 = bitcast i8* %6 to %struct.randint_source*, !dbg !3882
  call void @llvm.dbg.value(metadata %struct.randint_source* %7, metadata !3860, metadata !DIExpression()) #29, !dbg !3880
  %8 = bitcast i8* %6 to %struct.randread_source**, !dbg !3883
  store %struct.randread_source* %3, %struct.randread_source** %8, align 8, !dbg !3884, !tbaa !3865
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !3885
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false) #29, !dbg !3886
  br label %10, !dbg !3879

10:                                               ; preds = %2, %5
  %11 = phi %struct.randint_source* [ %7, %5 ], [ null, %2 ], !dbg !3879
  ret %struct.randint_source* %11, !dbg !3887
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local %struct.randread_source* @randint_get_source(%struct.randint_source* nocapture readonly %0) local_unnamed_addr #14 !dbg !3888 {
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !3894, metadata !DIExpression()), !dbg !3895
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !3896
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !3896, !tbaa !3865
  ret %struct.randread_source* %3, !dbg !3897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @randint_genmax(%struct.randint_source* nocapture %0, i64 %1) local_unnamed_addr #8 !dbg !3898 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !3902, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %1, metadata !3903, metadata !DIExpression()), !dbg !3921
  %4 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !3922
  %5 = load %struct.randread_source*, %struct.randread_source** %4, align 8, !dbg !3922, !tbaa !3865
  call void @llvm.dbg.value(metadata %struct.randread_source* %5, metadata !3904, metadata !DIExpression()), !dbg !3921
  %6 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 1, !dbg !3923
  %7 = load i64, i64* %6, align 8, !dbg !3923, !tbaa !3924
  call void @llvm.dbg.value(metadata i64 %7, metadata !3905, metadata !DIExpression()), !dbg !3921
  %8 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 2, !dbg !3925
  %9 = load i64, i64* %8, align 8, !dbg !3925, !tbaa !3926
  call void @llvm.dbg.value(metadata i64 %9, metadata !3906, metadata !DIExpression()), !dbg !3921
  %10 = add i64 %1, 1, !dbg !3927
  call void @llvm.dbg.value(metadata i64 %10, metadata !3907, metadata !DIExpression()), !dbg !3921
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  br label %12, !dbg !3928

12:                                               ; preds = %45, %2
  %13 = phi i64 [ %9, %2 ], [ %53, %45 ], !dbg !3921
  %14 = phi i64 [ %7, %2 ], [ %50, %45 ], !dbg !3921
  call void @llvm.dbg.value(metadata i64 %14, metadata !3905, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %13, metadata !3906, metadata !DIExpression()), !dbg !3921
  %15 = icmp ult i64 %13, %1, !dbg !3929
  br i1 %15, label %16, label %39, !dbg !3930

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i64 0, metadata !3908, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %13, metadata !3912, metadata !DIExpression()), !dbg !3931
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #29, !dbg !3932
  call void @llvm.dbg.declare(metadata [8 x i8]* %3, metadata !3913, metadata !DIExpression()), !dbg !3933
  br label %17, !dbg !3934

17:                                               ; preds = %17, %16
  %18 = phi i64 [ %13, %16 ], [ %21, %17 ], !dbg !3931
  %19 = phi i64 [ 0, %16 ], [ %22, %17 ], !dbg !3931
  call void @llvm.dbg.value(metadata i64 %19, metadata !3908, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %18, metadata !3912, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %18, metadata !3935, metadata !DIExpression()), !dbg !3940
  %20 = shl i64 %18, 8, !dbg !3943
  %21 = or i64 %20, 255, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %21, metadata !3912, metadata !DIExpression()), !dbg !3931
  %22 = add i64 %19, 1, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %22, metadata !3908, metadata !DIExpression()), !dbg !3931
  %23 = icmp ult i64 %21, %1, !dbg !3946
  br i1 %23, label %17, label %24, !dbg !3947, !llvm.loop !3948

24:                                               ; preds = %17
  call void @randread(%struct.randread_source* %5, i8* nonnull %11, i64 %22) #29, !dbg !3950
  call void @llvm.dbg.value(metadata i64 0, metadata !3908, metadata !DIExpression()), !dbg !3931
  br label %25, !dbg !3951

25:                                               ; preds = %25, %24
  %26 = phi i64 [ 0, %24 ], [ %36, %25 ], !dbg !3931
  %27 = phi i64 [ %13, %24 ], [ %35, %25 ], !dbg !3921
  %28 = phi i64 [ %14, %24 ], [ %33, %25 ], !dbg !3921
  call void @llvm.dbg.value(metadata i64 %28, metadata !3905, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %27, metadata !3906, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %26, metadata !3908, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %28, metadata !3935, metadata !DIExpression()), !dbg !3952
  %29 = shl i64 %28, 8, !dbg !3955
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %26, !dbg !3956
  %31 = load i8, i8* %30, align 1, !dbg !3956, !tbaa !919
  %32 = zext i8 %31 to i64, !dbg !3956
  %33 = or i64 %29, %32, !dbg !3957
  call void @llvm.dbg.value(metadata i64 %33, metadata !3905, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %27, metadata !3935, metadata !DIExpression()), !dbg !3958
  %34 = shl i64 %27, 8, !dbg !3960
  %35 = or i64 %34, 255, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %35, metadata !3906, metadata !DIExpression()), !dbg !3921
  %36 = add i64 %26, 1, !dbg !3962
  call void @llvm.dbg.value(metadata i64 %36, metadata !3908, metadata !DIExpression()), !dbg !3931
  %37 = icmp ult i64 %35, %1, !dbg !3963
  br i1 %37, label %25, label %38, !dbg !3964, !llvm.loop !3965

38:                                               ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #29, !dbg !3967
  br label %39, !dbg !3968

39:                                               ; preds = %38, %12
  %40 = phi i64 [ %35, %38 ], [ %13, %12 ], !dbg !3921
  %41 = phi i64 [ %33, %38 ], [ %14, %12 ], !dbg !3921
  call void @llvm.dbg.value(metadata i64 %41, metadata !3905, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %40, metadata !3906, metadata !DIExpression()), !dbg !3921
  %42 = icmp eq i64 %40, %1, !dbg !3969
  br i1 %42, label %43, label %45, !dbg !3970

43:                                               ; preds = %39
  %44 = bitcast i64* %6 to i8*, !dbg !3971
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false), !dbg !3973
  br label %55, !dbg !3971

45:                                               ; preds = %39
  %46 = sub i64 %40, %1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 %46, metadata !3915, metadata !DIExpression()), !dbg !3975
  %47 = urem i64 %46, %10, !dbg !3976
  %48 = udiv i64 %46, %10, !dbg !3977
  call void @llvm.dbg.value(metadata i64 %47, metadata !3918, metadata !DIExpression()), !dbg !3975
  %49 = sub i64 %40, %47, !dbg !3980
  call void @llvm.dbg.value(metadata i64 %49, metadata !3919, metadata !DIExpression()), !dbg !3975
  %50 = urem i64 %41, %10, !dbg !3981
  %51 = udiv i64 %41, %10, !dbg !3982
  call void @llvm.dbg.value(metadata i64 %50, metadata !3920, metadata !DIExpression()), !dbg !3975
  %52 = icmp ugt i64 %41, %49, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %50, metadata !3905, metadata !DIExpression()), !dbg !3921
  %53 = add i64 %47, -1, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %53, metadata !3906, metadata !DIExpression()), !dbg !3921
  br i1 %52, label %12, label %54, !dbg !3985

54:                                               ; preds = %45
  store i64 %51, i64* %6, align 8, !dbg !3986, !tbaa !3924
  store i64 %48, i64* %8, align 8, !dbg !3987, !tbaa !3926
  call void @llvm.dbg.value(metadata i64 %50, metadata !3905, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %53, metadata !3906, metadata !DIExpression()), !dbg !3921
  br label %55

55:                                               ; preds = %54, %43
  %56 = phi i64 [ %41, %43 ], [ %50, %54 ], !dbg !3988
  ret i64 %56, !dbg !3989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @randint_free(%struct.randint_source* %0) local_unnamed_addr #8 !dbg !3990 {
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !3994, metadata !DIExpression()), !dbg !3995
  %2 = bitcast %struct.randint_source* %0 to i8*, !dbg !3996
  call void @llvm.dbg.value(metadata i8* %2, metadata !3997, metadata !DIExpression()) #29, !dbg !4003
  call void @llvm.dbg.value(metadata i64 24, metadata !4002, metadata !DIExpression()) #29, !dbg !4003
  tail call void @__explicit_bzero_chk(i8* nonnull %2, i64 24, i64 -1) #29, !dbg !4005
  tail call void @free(i8* %2) #29, !dbg !4006
  ret void, !dbg !4007
}

; Function Attrs: nounwind
declare void @__explicit_bzero_chk(i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @randint_all_free(%struct.randint_source* %0) local_unnamed_addr #8 !dbg !4008 {
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !4012, metadata !DIExpression()), !dbg !4015
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4016
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !4016, !tbaa !3865
  %4 = tail call i32 @randread_free(%struct.randread_source* %3) #29, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %4, metadata !4013, metadata !DIExpression()), !dbg !4015
  %5 = tail call i32* @__errno_location() #33, !dbg !4018
  %6 = load i32, i32* %5, align 4, !dbg !4018, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %6, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata %struct.randint_source* %0, metadata !3994, metadata !DIExpression()) #29, !dbg !4019
  %7 = bitcast %struct.randint_source* %0 to i8*, !dbg !4021
  call void @llvm.dbg.value(metadata i8* %7, metadata !3997, metadata !DIExpression()) #29, !dbg !4022
  call void @llvm.dbg.value(metadata i64 24, metadata !4002, metadata !DIExpression()) #29, !dbg !4022
  tail call void @__explicit_bzero_chk(i8* nonnull %7, i64 24, i64 -1) #29, !dbg !4024
  tail call void @free(i8* %7) #29, !dbg !4025
  store i32 %6, i32* %5, align 4, !dbg !4026, !tbaa !894
  ret i32 %4, !dbg !4027
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.randread_source* @randread_new(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4028 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4101, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i64 %1, metadata !4102, metadata !DIExpression()), !dbg !4107
  %8 = icmp eq i64 %1, 0, !dbg !4108
  br i1 %8, label %9, label %17, !dbg !4109

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !4110, metadata !DIExpression()) #29, !dbg !4117
  call void @llvm.dbg.value(metadata i8* null, metadata !4115, metadata !DIExpression()) #29, !dbg !4117
  %10 = tail call noalias i8* @xmalloc(i64 4152) #29, !dbg !4119
  %11 = bitcast i8* %10 to %struct.randread_source*, !dbg !4119
  call void @llvm.dbg.value(metadata %struct.randread_source* %11, metadata !4116, metadata !DIExpression()) #29, !dbg !4117
  %12 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !4120
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8, !dbg !4121, !tbaa !4122
  %13 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !4124
  %14 = bitcast i8* %13 to void (i8*)**, !dbg !4124
  store void (i8*)* @randread_error, void (i8*)** %14, align 8, !dbg !4125, !tbaa !4126
  %15 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !4127
  %16 = bitcast i8* %15 to i8**, !dbg !4127
  store i8* null, i8** %16, align 8, !dbg !4128, !tbaa !4129
  br label %96, !dbg !4130

17:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !4103, metadata !DIExpression()), !dbg !4131
  %18 = icmp eq i8* %0, null, !dbg !4132
  br i1 %18, label %22, label %19, !dbg !4134

19:                                               ; preds = %17
  %20 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i64 0, i64 0)) #29, !dbg !4135
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, metadata !4103, metadata !DIExpression()), !dbg !4131
  %21 = icmp eq %struct._IO_FILE* %20, null, !dbg !4137
  br i1 %21, label %96, label %22, !dbg !4138

22:                                               ; preds = %19, %17
  %23 = phi %struct._IO_FILE* [ %20, %19 ], [ null, %17 ], !dbg !4131
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !4103, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !4110, metadata !DIExpression()) #29, !dbg !4139
  call void @llvm.dbg.value(metadata i8* %0, metadata !4115, metadata !DIExpression()) #29, !dbg !4139
  %24 = tail call noalias i8* @xmalloc(i64 4152) #29, !dbg !4141
  %25 = bitcast i8* %24 to %struct.randread_source*, !dbg !4141
  call void @llvm.dbg.value(metadata %struct.randread_source* %25, metadata !4116, metadata !DIExpression()) #29, !dbg !4139
  %26 = bitcast i8* %24 to %struct._IO_FILE**, !dbg !4142
  store %struct._IO_FILE* %23, %struct._IO_FILE** %26, align 8, !dbg !4143, !tbaa !4122
  %27 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !4144
  %28 = bitcast i8* %27 to void (i8*)**, !dbg !4144
  store void (i8*)* @randread_error, void (i8*)** %28, align 8, !dbg !4145, !tbaa !4126
  %29 = getelementptr inbounds i8, i8* %24, i64 16, !dbg !4146
  %30 = bitcast i8* %29 to i8**, !dbg !4146
  store i8* %0, i8** %30, align 8, !dbg !4147, !tbaa !4129
  call void @llvm.dbg.value(metadata %struct.randread_source* %25, metadata !4106, metadata !DIExpression()), !dbg !4131
  %31 = icmp eq %struct._IO_FILE* %23, null, !dbg !4148
  %32 = getelementptr inbounds i8, i8* %24, i64 24, !dbg !4150
  br i1 %31, label %37, label %33, !dbg !4151

33:                                               ; preds = %22
  %34 = icmp ult i64 %1, 4096, !dbg !4152
  %35 = select i1 %34, i64 %1, i64 4096, !dbg !4152
  %36 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %23, i8* nonnull %32, i32 0, i64 %35) #29, !dbg !4153
  br label %96, !dbg !4153

37:                                               ; preds = %22
  %38 = bitcast i8* %32 to i64*, !dbg !4154
  store i64 0, i64* %38, align 8, !dbg !4156, !tbaa !919
  %39 = getelementptr inbounds i8, i8* %24, i64 32, !dbg !4157
  %40 = bitcast i8* %39 to %struct.isaac_state*, !dbg !4157
  call void @llvm.dbg.value(metadata i8* %39, metadata !4158, metadata !DIExpression()) #29, !dbg !4200
  call void @llvm.dbg.value(metadata i64 2048, metadata !4163, metadata !DIExpression()) #29, !dbg !4200
  call void @llvm.dbg.value(metadata i64 %1, metadata !4164, metadata !DIExpression()) #29, !dbg !4200
  call void @llvm.dbg.value(metadata i8* %39, metadata !4165, metadata !DIExpression()) #29, !dbg !4200
  call void @llvm.dbg.value(metadata i64 0, metadata !4166, metadata !DIExpression()) #29, !dbg !4200
  %41 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.167, i64 0, i64 0), i32 0) #29, !dbg !4202
  call void @llvm.dbg.value(metadata i32 %41, metadata !4170, metadata !DIExpression()) #29, !dbg !4200
  %42 = icmp sgt i32 %41, -1, !dbg !4203
  br i1 %42, label %43, label %51, !dbg !4205

43:                                               ; preds = %37
  %44 = icmp ult i64 %1, 2048, !dbg !4206
  %45 = select i1 %44, i64 %1, i64 2048, !dbg !4206
  %46 = tail call i64 @read(i32 %41, i8* nonnull %39, i64 %45) #29, !dbg !4208
  call void @llvm.dbg.value(metadata i64 %46, metadata !4166, metadata !DIExpression()) #29, !dbg !4200
  %47 = icmp sgt i64 %46, 0, !dbg !4209
  call void @llvm.dbg.value(metadata i64 undef, metadata !4166, metadata !DIExpression()) #29, !dbg !4200
  %48 = tail call i32 @close(i32 %41) #29, !dbg !4210
  br i1 %47, label %49, label %51

49:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %46, metadata !4166, metadata !DIExpression()) #29, !dbg !4200
  %50 = icmp ult i64 %46, 2048, !dbg !4211
  br i1 %50, label %51, label %95, !dbg !4212

51:                                               ; preds = %49, %43, %37
  %52 = phi i64 [ %46, %49 ], [ 0, %43 ], [ 0, %37 ]
  %53 = bitcast %struct.timespec* %3 to i8*, !dbg !4213
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #29, !dbg !4213
  call void @llvm.dbg.declare(metadata %struct.timespec* %3, metadata !4171, metadata !DIExpression()) #29, !dbg !4213
  %54 = sub nuw nsw i64 2048, %52, !dbg !4213
  %55 = icmp ult i64 %54, 16, !dbg !4213
  %56 = select i1 %55, i64 %54, i64 16, !dbg !4213
  call void @llvm.dbg.value(metadata i64 %56, metadata !4180, metadata !DIExpression()) #29, !dbg !4214
  %57 = call i32 @gettimeofday(%struct.timespec* nonnull %3, i8* null) #29, !dbg !4213
  %58 = getelementptr inbounds i8, i8* %39, i64 %52, !dbg !4213
  call void @llvm.dbg.value(metadata i8* %58, metadata !4215, metadata !DIExpression()) #29, !dbg !4220
  call void @llvm.dbg.value(metadata i8* %53, metadata !4218, metadata !DIExpression()) #29, !dbg !4220
  call void @llvm.dbg.value(metadata i64 %56, metadata !4219, metadata !DIExpression()) #29, !dbg !4220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %58, i8* nonnull align 8 %53, i64 %56, i1 false) #29, !dbg !4222
  %59 = add nuw nsw i64 %56, %52, !dbg !4213
  call void @llvm.dbg.value(metadata i64 %59, metadata !4166, metadata !DIExpression()) #29, !dbg !4200
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #29, !dbg !4211
  %60 = icmp ult i64 %59, 2048, !dbg !4223
  br i1 %60, label %61, label %95, !dbg !4224

61:                                               ; preds = %51
  %62 = bitcast i32* %4 to i8*, !dbg !4225
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %62) #29, !dbg !4225
  %63 = sub nuw nsw i64 2048, %59, !dbg !4225
  %64 = icmp ult i64 %63, 4, !dbg !4225
  %65 = select i1 %64, i64 %63, i64 4, !dbg !4225
  call void @llvm.dbg.value(metadata i64 %65, metadata !4186, metadata !DIExpression()) #29, !dbg !4226
  %66 = call i32 @getpid() #29, !dbg !4225
  call void @llvm.dbg.value(metadata i32 %66, metadata !4181, metadata !DIExpression()) #29, !dbg !4226
  store i32 %66, i32* %4, align 4, !dbg !4225, !tbaa !894
  %67 = getelementptr inbounds i8, i8* %39, i64 %59, !dbg !4225
  call void @llvm.dbg.value(metadata i32* %4, metadata !4181, metadata !DIExpression(DW_OP_deref)) #29, !dbg !4226
  call void @llvm.dbg.value(metadata i8* %67, metadata !4215, metadata !DIExpression()) #29, !dbg !4227
  call void @llvm.dbg.value(metadata i8* %62, metadata !4218, metadata !DIExpression()) #29, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %65, metadata !4219, metadata !DIExpression()) #29, !dbg !4227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %67, i8* nonnull align 4 %62, i64 %65, i1 false) #29, !dbg !4229
  %68 = add nuw nsw i64 %65, %59, !dbg !4225
  call void @llvm.dbg.value(metadata i64 %68, metadata !4166, metadata !DIExpression()) #29, !dbg !4200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %62) #29, !dbg !4223
  %69 = icmp ult i64 %68, 2048, !dbg !4230
  br i1 %69, label %70, label %95, !dbg !4231

70:                                               ; preds = %61
  %71 = bitcast i32* %5 to i8*, !dbg !4232
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %71) #29, !dbg !4232
  %72 = sub nuw nsw i64 2048, %68, !dbg !4232
  %73 = icmp ult i64 %72, 4, !dbg !4232
  %74 = select i1 %73, i64 %72, i64 4, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %74, metadata !4190, metadata !DIExpression()) #29, !dbg !4233
  %75 = call i32 @getppid() #29, !dbg !4232
  call void @llvm.dbg.value(metadata i32 %75, metadata !4187, metadata !DIExpression()) #29, !dbg !4233
  store i32 %75, i32* %5, align 4, !dbg !4232, !tbaa !894
  %76 = getelementptr inbounds i8, i8* %39, i64 %68, !dbg !4232
  call void @llvm.dbg.value(metadata i32* %5, metadata !4187, metadata !DIExpression(DW_OP_deref)) #29, !dbg !4233
  call void @llvm.dbg.value(metadata i8* %76, metadata !4215, metadata !DIExpression()) #29, !dbg !4234
  call void @llvm.dbg.value(metadata i8* %71, metadata !4218, metadata !DIExpression()) #29, !dbg !4234
  call void @llvm.dbg.value(metadata i64 %74, metadata !4219, metadata !DIExpression()) #29, !dbg !4234
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %76, i8* nonnull align 4 %71, i64 %74, i1 false) #29, !dbg !4236
  %77 = add nuw nsw i64 %74, %68, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %77, metadata !4166, metadata !DIExpression()) #29, !dbg !4200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #29, !dbg !4230
  %78 = icmp ult i64 %77, 2048, !dbg !4237
  br i1 %78, label %79, label %95, !dbg !4238

79:                                               ; preds = %70
  %80 = bitcast i32* %6 to i8*, !dbg !4239
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %80) #29, !dbg !4239
  %81 = sub nuw nsw i64 2048, %77, !dbg !4239
  %82 = icmp ult i64 %81, 4, !dbg !4239
  %83 = select i1 %82, i64 %81, i64 4, !dbg !4239
  call void @llvm.dbg.value(metadata i64 %83, metadata !4195, metadata !DIExpression()) #29, !dbg !4240
  %84 = call i32 @getuid() #29, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %84, metadata !4191, metadata !DIExpression()) #29, !dbg !4240
  store i32 %84, i32* %6, align 4, !dbg !4239, !tbaa !894
  %85 = getelementptr inbounds i8, i8* %39, i64 %77, !dbg !4239
  call void @llvm.dbg.value(metadata i32* %6, metadata !4191, metadata !DIExpression(DW_OP_deref)) #29, !dbg !4240
  call void @llvm.dbg.value(metadata i8* %85, metadata !4215, metadata !DIExpression()) #29, !dbg !4241
  call void @llvm.dbg.value(metadata i8* %80, metadata !4218, metadata !DIExpression()) #29, !dbg !4241
  call void @llvm.dbg.value(metadata i64 %83, metadata !4219, metadata !DIExpression()) #29, !dbg !4241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %85, i8* nonnull align 4 %80, i64 %83, i1 false) #29, !dbg !4243
  %86 = add nuw nsw i64 %83, %77, !dbg !4239
  call void @llvm.dbg.value(metadata i64 %86, metadata !4166, metadata !DIExpression()) #29, !dbg !4200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80) #29, !dbg !4237
  %87 = icmp ult i64 %86, 2048, !dbg !4244
  br i1 %87, label %88, label %95, !dbg !4245

88:                                               ; preds = %79
  %89 = bitcast i32* %7 to i8*, !dbg !4246
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %89) #29, !dbg !4246
  %90 = sub nuw nsw i64 2048, %86, !dbg !4246
  %91 = icmp ult i64 %90, 4, !dbg !4246
  %92 = select i1 %91, i64 %90, i64 4, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %92, metadata !4199, metadata !DIExpression()) #29, !dbg !4247
  %93 = call i32 @getgid() #29, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %93, metadata !4196, metadata !DIExpression()) #29, !dbg !4247
  store i32 %93, i32* %7, align 4, !dbg !4246, !tbaa !894
  %94 = getelementptr inbounds i8, i8* %39, i64 %86, !dbg !4246
  call void @llvm.dbg.value(metadata i32* %7, metadata !4196, metadata !DIExpression(DW_OP_deref)) #29, !dbg !4247
  call void @llvm.dbg.value(metadata i8* %94, metadata !4215, metadata !DIExpression()) #29, !dbg !4248
  call void @llvm.dbg.value(metadata i8* %89, metadata !4218, metadata !DIExpression()) #29, !dbg !4248
  call void @llvm.dbg.value(metadata i64 %92, metadata !4219, metadata !DIExpression()) #29, !dbg !4248
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %94, i8* nonnull align 4 %89, i64 %92, i1 false) #29, !dbg !4250
  call void @llvm.dbg.value(metadata i64 undef, metadata !4166, metadata !DIExpression()) #29, !dbg !4200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89) #29, !dbg !4244
  br label %95, !dbg !4246

95:                                               ; preds = %49, %51, %61, %70, %79, %88
  call void @isaac_seed(%struct.isaac_state* nonnull %40) #29, !dbg !4251
  br label %96

96:                                               ; preds = %19, %95, %33, %9
  %97 = phi %struct.randread_source* [ %11, %9 ], [ null, %19 ], [ %25, %95 ], [ %25, %33 ], !dbg !4252
  ret %struct.randread_source* %97, !dbg !4253
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @randread_error(i8* %0) #0 !dbg !4254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4256, metadata !DIExpression()), !dbg !4257
  %2 = icmp eq i8* %0, null, !dbg !4258
  br i1 %2, label %11, label %3, !dbg !4260

3:                                                ; preds = %1
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !4261, !tbaa !894
  %5 = tail call i32* @__errno_location() #33, !dbg !4262
  %6 = load i32, i32* %5, align 4, !dbg !4262, !tbaa !894
  %7 = icmp eq i32 %6, 0, !dbg !4263
  %8 = select i1 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.168, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.169, i64 0, i64 0), !dbg !4264
  %9 = tail call i8* @dcgettext(i8* null, i8* %8, i32 5) #29, !dbg !4265
  %10 = tail call i8* @quote(i8* nonnull %0) #29, !dbg !4266
  tail call void (i32, i32, i8*, ...) @error(i32 %4, i32 %6, i8* %9, i8* %10) #29, !dbg !4267
  br label %11, !dbg !4267

11:                                               ; preds = %3, %1
  tail call void @abort() #31, !dbg !4268
  unreachable, !dbg !4268
}

; Function Attrs: nofree nounwind
declare !dbg !4269 noundef i32 @setvbuf(%struct._IO_FILE* nocapture noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare !dbg !4272 noundef i32 @gettimeofday(%struct.timespec* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4277 i32 @getpid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4280 i32 @getppid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4281 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4284 i32 @getgid() local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @randread_set_handler(%struct.randread_source* nocapture %0, void (i8*)* %1) local_unnamed_addr #13 !dbg !4285 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4289, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4290, metadata !DIExpression()), !dbg !4291
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1, !dbg !4292
  store void (i8*)* %1, void (i8*)** %3, align 8, !dbg !4293, !tbaa !4126
  ret void, !dbg !4294
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @randread_set_handler_arg(%struct.randread_source* nocapture %0, i8* %1) local_unnamed_addr #13 !dbg !4295 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4299, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i8* %1, metadata !4300, metadata !DIExpression()), !dbg !4301
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2, !dbg !4302
  store i8* %1, i8** %3, align 8, !dbg !4303, !tbaa !4129
  ret void, !dbg !4304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @randread(%struct.randread_source* %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4305 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4309, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i8* %1, metadata !4310, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %2, metadata !4311, metadata !DIExpression()), !dbg !4312
  %4 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !4313
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4313, !tbaa !4122
  %6 = icmp eq %struct._IO_FILE* %5, null, !dbg !4315
  br i1 %6, label %33, label %7, !dbg !4316

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4317, metadata !DIExpression()) #29, !dbg !4328
  call void @llvm.dbg.value(metadata i8* %1, metadata !4323, metadata !DIExpression()) #29, !dbg !4328
  call void @llvm.dbg.value(metadata i64 %2, metadata !4324, metadata !DIExpression()) #29, !dbg !4328
  %8 = tail call i64 @fread_unlocked(i8* %1, i64 1, i64 %2, %struct._IO_FILE* nonnull %5) #29, !dbg !4330
  call void @llvm.dbg.value(metadata i64 %8, metadata !4325, metadata !DIExpression()) #29, !dbg !4331
  %9 = tail call i32* @__errno_location() #33, !dbg !4332
  call void @llvm.dbg.value(metadata i32 undef, metadata !4327, metadata !DIExpression()) #29, !dbg !4331
  call void @llvm.dbg.value(metadata i8* undef, metadata !4323, metadata !DIExpression()) #29, !dbg !4328
  %10 = sub i64 %2, %8, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %10, metadata !4324, metadata !DIExpression()) #29, !dbg !4328
  %11 = icmp eq i64 %10, 0, !dbg !4334
  br i1 %11, label %80, label %12, !dbg !4336

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2
  br label %15, !dbg !4336

15:                                               ; preds = %15, %12
  %16 = phi i64 [ %10, %12 ], [ %31, %15 ]
  %17 = phi i64 [ %8, %12 ], [ %30, %15 ]
  %18 = phi i8* [ %1, %12 ], [ %19, %15 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !4323, metadata !DIExpression()) #29, !dbg !4328
  %19 = getelementptr inbounds i8, i8* %18, i64 %17, !dbg !4337
  call void @llvm.dbg.value(metadata i8* %19, metadata !4323, metadata !DIExpression()) #29, !dbg !4328
  %20 = load i32, i32* %9, align 4, !dbg !4332, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %20, metadata !4327, metadata !DIExpression()) #29, !dbg !4331
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4338, !tbaa !4122
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, metadata !4339, metadata !DIExpression()) #29, !dbg !4344
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 0, !dbg !4346
  %23 = load i32, i32* %22, align 8, !dbg !4346, !tbaa !1210
  %24 = and i32 %23, 32, !dbg !4338
  %25 = icmp eq i32 %24, 0, !dbg !4338
  %26 = select i1 %25, i32 0, i32 %20, !dbg !4338
  store i32 %26, i32* %9, align 4, !dbg !4347, !tbaa !894
  %27 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !4348, !tbaa !4126
  %28 = load i8*, i8** %14, align 8, !dbg !4349, !tbaa !4129
  tail call void %27(i8* %28) #29, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %16, metadata !4324, metadata !DIExpression()) #29, !dbg !4328
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !4330, !tbaa !4122
  %30 = tail call i64 @fread_unlocked(i8* %19, i64 1, i64 %16, %struct._IO_FILE* %29) #29, !dbg !4330
  call void @llvm.dbg.value(metadata i64 %30, metadata !4325, metadata !DIExpression()) #29, !dbg !4331
  call void @llvm.dbg.value(metadata i32 undef, metadata !4327, metadata !DIExpression()) #29, !dbg !4331
  call void @llvm.dbg.value(metadata i8* undef, metadata !4323, metadata !DIExpression()) #29, !dbg !4328
  %31 = sub i64 %16, %30, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %31, metadata !4324, metadata !DIExpression()) #29, !dbg !4328
  %32 = icmp eq i64 %31, 0, !dbg !4334
  br i1 %32, label %80, label %15, !dbg !4336

33:                                               ; preds = %3
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4351, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)) #29, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %1, metadata !4357, metadata !DIExpression()) #29, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %2, metadata !4358, metadata !DIExpression()) #29, !dbg !4365
  %34 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 0, !dbg !4367
  %35 = load i64, i64* %34, align 8, !dbg !4367, !tbaa !4368
  call void @llvm.dbg.value(metadata i64 %35, metadata !4359, metadata !DIExpression()) #29, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %1, metadata !4360, metadata !DIExpression()) #29, !dbg !4371
  %36 = icmp ult i64 %35, %2, !dbg !4372
  br i1 %36, label %37, label %43, !dbg !4374

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 2
  %39 = getelementptr inbounds %union.anon.0, %union.anon.0* %38, i64 1
  %40 = bitcast %union.anon.0* %39 to i8*
  %41 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 1
  %42 = getelementptr inbounds %union.anon.0, %union.anon.0* %38, i64 0, i32 0, i64 0
  br label %53, !dbg !4374

43:                                               ; preds = %76, %33, %74
  %44 = phi i64 [ %67, %74 ], [ %2, %33 ], [ %60, %76 ]
  %45 = phi i64 [ 2048, %74 ], [ %35, %33 ], [ 2048, %76 ], !dbg !4375
  %46 = phi i8* [ %75, %74 ], [ %1, %33 ], [ %59, %76 ]
  %47 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 2, !dbg !4376
  %48 = getelementptr inbounds %union.anon.0, %union.anon.0* %47, i64 1, !dbg !4378
  %49 = bitcast %union.anon.0* %48 to i8*, !dbg !4378
  %50 = sub i64 0, %45, !dbg !4379
  %51 = getelementptr inbounds i8, i8* %49, i64 %50, !dbg !4379
  call void @llvm.dbg.value(metadata i8* %46, metadata !4215, metadata !DIExpression()) #29, !dbg !4380
  call void @llvm.dbg.value(metadata i8* %51, metadata !4218, metadata !DIExpression()) #29, !dbg !4380
  call void @llvm.dbg.value(metadata i64 %44, metadata !4219, metadata !DIExpression()) #29, !dbg !4380
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %46, i8* nonnull align 1 %51, i64 %44, i1 false) #29, !dbg !4382
  %52 = sub i64 %45, %44, !dbg !4383
  br label %78, !dbg !4384

53:                                               ; preds = %76, %37
  %54 = phi i8* [ %1, %37 ], [ %59, %76 ]
  %55 = phi i64 [ %35, %37 ], [ 2048, %76 ]
  %56 = phi i64 [ %2, %37 ], [ %60, %76 ]
  call void @llvm.dbg.value(metadata i8* %54, metadata !4357, metadata !DIExpression()) #29, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %55, metadata !4359, metadata !DIExpression()) #29, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %56, metadata !4358, metadata !DIExpression()) #29, !dbg !4365
  %57 = sub i64 0, %55, !dbg !4385
  %58 = getelementptr inbounds i8, i8* %40, i64 %57, !dbg !4385
  call void @llvm.dbg.value(metadata i8* %54, metadata !4215, metadata !DIExpression()) #29, !dbg !4386
  call void @llvm.dbg.value(metadata i8* %58, metadata !4218, metadata !DIExpression()) #29, !dbg !4386
  call void @llvm.dbg.value(metadata i64 %55, metadata !4219, metadata !DIExpression()) #29, !dbg !4386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %54, i8* nonnull align 1 %58, i64 %55, i1 false) #29, !dbg !4388
  %59 = getelementptr inbounds i8, i8* %54, i64 %55, !dbg !4389
  call void @llvm.dbg.value(metadata i8* %59, metadata !4357, metadata !DIExpression()) #29, !dbg !4365
  %60 = sub i64 %56, %55, !dbg !4390
  call void @llvm.dbg.value(metadata i64 %60, metadata !4358, metadata !DIExpression()) #29, !dbg !4365
  %61 = ptrtoint i8* %59 to i64, !dbg !4391
  %62 = and i64 %61, 7, !dbg !4391
  %63 = icmp eq i64 %62, 0, !dbg !4391
  br i1 %63, label %64, label %76, !dbg !4392

64:                                               ; preds = %53
  %65 = bitcast i8* %59 to i64*, !dbg !4393
  call void @llvm.dbg.value(metadata i64* %65, metadata !4362, metadata !DIExpression()) #29, !dbg !4394
  br label %66, !dbg !4395

66:                                               ; preds = %70, %64
  %67 = phi i64 [ %60, %64 ], [ %72, %70 ], !dbg !4371
  %68 = phi i64* [ %65, %64 ], [ %71, %70 ], !dbg !4394
  call void @llvm.dbg.value(metadata i64* %68, metadata !4362, metadata !DIExpression()) #29, !dbg !4394
  call void @llvm.dbg.value(metadata i64 %67, metadata !4358, metadata !DIExpression()) #29, !dbg !4365
  %69 = icmp ugt i64 %67, 2047, !dbg !4396
  br i1 %69, label %70, label %74, !dbg !4395

70:                                               ; preds = %66
  tail call void @isaac_refill(%struct.isaac_state* nonnull %41, i64* %68) #29, !dbg !4397
  %71 = getelementptr inbounds i64, i64* %68, i64 256, !dbg !4399
  call void @llvm.dbg.value(metadata i64* %71, metadata !4362, metadata !DIExpression()) #29, !dbg !4394
  %72 = add i64 %67, -2048, !dbg !4400
  call void @llvm.dbg.value(metadata i64 %72, metadata !4358, metadata !DIExpression()) #29, !dbg !4365
  %73 = icmp eq i64 %72, 0, !dbg !4401
  br i1 %73, label %78, label %66, !dbg !4403, !llvm.loop !4404

74:                                               ; preds = %66
  %75 = bitcast i64* %68 to i8*, !dbg !4406
  call void @llvm.dbg.value(metadata i8* %59, metadata !4357, metadata !DIExpression()) #29, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %60, metadata !4358, metadata !DIExpression()) #29, !dbg !4365
  tail call void @isaac_refill(%struct.isaac_state* nonnull %41, i64* nonnull %42) #29, !dbg !4407
  call void @llvm.dbg.value(metadata i64 2048, metadata !4359, metadata !DIExpression()) #29, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %59, metadata !4360, metadata !DIExpression()) #29, !dbg !4371
  br label %43, !dbg !4374

76:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %59, metadata !4357, metadata !DIExpression()) #29, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %60, metadata !4358, metadata !DIExpression()) #29, !dbg !4365
  tail call void @isaac_refill(%struct.isaac_state* nonnull %41, i64* nonnull %42) #29, !dbg !4407
  call void @llvm.dbg.value(metadata i64 2048, metadata !4359, metadata !DIExpression()) #29, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %59, metadata !4360, metadata !DIExpression()) #29, !dbg !4371
  %77 = icmp ugt i64 %60, 2048, !dbg !4372
  br i1 %77, label %53, label %43, !dbg !4374

78:                                               ; preds = %70, %43
  %79 = phi i64 [ %52, %43 ], [ 0, %70 ], !dbg !4371
  store i64 %79, i64* %34, align 8, !dbg !4371, !tbaa !4368
  call void @llvm.dbg.value(metadata i64 2048, metadata !4359, metadata !DIExpression()) #29, !dbg !4365
  br label %80

80:                                               ; preds = %15, %7, %78
  ret void, !dbg !4408
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @randread_free(%struct.randread_source* %0) local_unnamed_addr #8 !dbg !4409 {
  call void @llvm.dbg.value(metadata %struct.randread_source* %0, metadata !4413, metadata !DIExpression()), !dbg !4415
  %2 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !4416
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4416, !tbaa !4122
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !4414, metadata !DIExpression()), !dbg !4415
  %4 = bitcast %struct.randread_source* %0 to i8*, !dbg !4417
  call void @llvm.dbg.value(metadata i8* %4, metadata !4418, metadata !DIExpression()) #29, !dbg !4422
  call void @llvm.dbg.value(metadata i64 4152, metadata !4421, metadata !DIExpression()) #29, !dbg !4422
  tail call void @__explicit_bzero_chk(i8* nonnull %4, i64 4152, i64 -1) #29, !dbg !4424
  tail call void @free(i8* %4) #29, !dbg !4425
  %5 = icmp eq %struct._IO_FILE* %3, null, !dbg !4426
  br i1 %5, label %8, label %6, !dbg !4426

6:                                                ; preds = %1
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #29, !dbg !4427
  br label %8, !dbg !4426

8:                                                ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ], !dbg !4426
  ret i32 %9, !dbg !4428
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local void @isaac_refill(%struct.isaac_state* %0, i64* nocapture %1) local_unnamed_addr #28 !dbg !619 {
  call void @llvm.dbg.value(metadata %struct.isaac_state* %0, metadata !639, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64* %1, metadata !640, metadata !DIExpression()), !dbg !4429
  %3 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !4430
  %4 = load i64, i64* %3, align 8, !dbg !4430, !tbaa !4431
  call void @llvm.dbg.value(metadata i64 %4, metadata !641, metadata !DIExpression()), !dbg !4429
  %5 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 2, !dbg !4432
  %6 = load i64, i64* %5, align 8, !dbg !4432, !tbaa !4433
  %7 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 3, !dbg !4434
  %8 = load i64, i64* %7, align 8, !dbg !4435, !tbaa !4436
  %9 = add i64 %8, 1, !dbg !4435
  store i64 %9, i64* %7, align 8, !dbg !4435, !tbaa !4436
  %10 = add i64 %9, %6, !dbg !4437
  call void @llvm.dbg.value(metadata i64 %10, metadata !642, metadata !DIExpression()), !dbg !4429
  %11 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 0, !dbg !4438
  call void @llvm.dbg.value(metadata i64* %11, metadata !643, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64* %1, metadata !644, metadata !DIExpression()), !dbg !4429
  %12 = bitcast %struct.isaac_state* %0 to i8*
  %13 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 128
  br label %14, !dbg !4439

14:                                               ; preds = %14, %2
  %15 = phi i64* [ %1, %2 ], [ %98, %14 ], !dbg !4429
  %16 = phi i64* [ %11, %2 ], [ %99, %14 ], !dbg !4429
  %17 = phi i64 [ %10, %2 ], [ %96, %14 ], !dbg !4429
  %18 = phi i64 [ %4, %2 ], [ %82, %14 ], !dbg !4429
  call void @llvm.dbg.value(metadata i64 %18, metadata !641, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %17, metadata !642, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64* %16, metadata !643, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64* %15, metadata !644, metadata !DIExpression()), !dbg !4429
  %19 = shl i64 %18, 21, !dbg !4440
  %20 = xor i64 %18, %19, !dbg !4440
  %21 = xor i64 %20, -1, !dbg !4440
  %22 = getelementptr inbounds i64, i64* %16, i64 128, !dbg !4440
  %23 = load i64, i64* %22, align 8, !dbg !4440, !tbaa !2355
  %24 = add i64 %23, %21, !dbg !4440
  call void @llvm.dbg.value(metadata i64 %24, metadata !641, metadata !DIExpression()), !dbg !4429
  %25 = load i64, i64* %16, align 8, !dbg !4440, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %25, metadata !645, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 %25, metadata !4449, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4458
  %26 = and i64 %25, 2040, !dbg !4459
  %27 = getelementptr inbounds i8, i8* %12, i64 %26, !dbg !4460
  call void @llvm.dbg.value(metadata i8* %27, metadata !4454, metadata !DIExpression()), !dbg !4458
  %28 = bitcast i8* %27 to i64*, !dbg !4461
  call void @llvm.dbg.value(metadata i64* %28, metadata !4455, metadata !DIExpression()), !dbg !4458
  %29 = load i64, i64* %28, align 8, !dbg !4462, !tbaa !2355
  %30 = add i64 %24, %17, !dbg !4440
  %31 = add i64 %30, %29, !dbg !4440
  call void @llvm.dbg.value(metadata i64 %31, metadata !648, metadata !DIExpression()), !dbg !4441
  store i64 %31, i64* %16, align 8, !dbg !4440, !tbaa !2355
  %32 = lshr i64 %31, 8, !dbg !4440
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i64 %32, metadata !4449, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4465
  %33 = and i64 %32, 2040, !dbg !4466
  %34 = getelementptr inbounds i8, i8* %12, i64 %33, !dbg !4467
  call void @llvm.dbg.value(metadata i8* %34, metadata !4454, metadata !DIExpression()), !dbg !4465
  %35 = bitcast i8* %34 to i64*, !dbg !4468
  call void @llvm.dbg.value(metadata i64* %35, metadata !4455, metadata !DIExpression()), !dbg !4465
  %36 = load i64, i64* %35, align 8, !dbg !4469, !tbaa !2355
  %37 = add i64 %36, %25, !dbg !4440
  call void @llvm.dbg.value(metadata i64 %37, metadata !642, metadata !DIExpression()), !dbg !4429
  store i64 %37, i64* %15, align 8, !dbg !4440, !tbaa !2355
  %38 = lshr i64 %24, 5, !dbg !4470
  %39 = xor i64 %38, %24, !dbg !4470
  %40 = getelementptr inbounds i64, i64* %16, i64 129, !dbg !4470
  %41 = load i64, i64* %40, align 8, !dbg !4470, !tbaa !2355
  %42 = add i64 %41, %39, !dbg !4470
  call void @llvm.dbg.value(metadata i64 %42, metadata !641, metadata !DIExpression()), !dbg !4429
  %43 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !4470
  %44 = load i64, i64* %43, align 8, !dbg !4470, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %44, metadata !649, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %44, metadata !4449, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4474
  %45 = and i64 %44, 2040, !dbg !4475
  %46 = getelementptr inbounds i8, i8* %12, i64 %45, !dbg !4476
  call void @llvm.dbg.value(metadata i8* %46, metadata !4454, metadata !DIExpression()), !dbg !4474
  %47 = bitcast i8* %46 to i64*, !dbg !4477
  call void @llvm.dbg.value(metadata i64* %47, metadata !4455, metadata !DIExpression()), !dbg !4474
  %48 = load i64, i64* %47, align 8, !dbg !4478, !tbaa !2355
  %49 = add i64 %42, %37, !dbg !4470
  %50 = add i64 %49, %48, !dbg !4470
  call void @llvm.dbg.value(metadata i64 %50, metadata !651, metadata !DIExpression()), !dbg !4471
  store i64 %50, i64* %43, align 8, !dbg !4470, !tbaa !2355
  %51 = lshr i64 %50, 8, !dbg !4470
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %51, metadata !4449, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4481
  %52 = and i64 %51, 2040, !dbg !4482
  %53 = getelementptr inbounds i8, i8* %12, i64 %52, !dbg !4483
  call void @llvm.dbg.value(metadata i8* %53, metadata !4454, metadata !DIExpression()), !dbg !4481
  %54 = bitcast i8* %53 to i64*, !dbg !4484
  call void @llvm.dbg.value(metadata i64* %54, metadata !4455, metadata !DIExpression()), !dbg !4481
  %55 = load i64, i64* %54, align 8, !dbg !4485, !tbaa !2355
  %56 = add i64 %55, %44, !dbg !4470
  call void @llvm.dbg.value(metadata i64 %56, metadata !642, metadata !DIExpression()), !dbg !4429
  %57 = getelementptr inbounds i64, i64* %15, i64 1, !dbg !4470
  store i64 %56, i64* %57, align 8, !dbg !4470, !tbaa !2355
  %58 = shl i64 %42, 12, !dbg !4486
  %59 = xor i64 %58, %42, !dbg !4486
  %60 = getelementptr inbounds i64, i64* %16, i64 130, !dbg !4486
  %61 = load i64, i64* %60, align 8, !dbg !4486, !tbaa !2355
  %62 = add i64 %61, %59, !dbg !4486
  call void @llvm.dbg.value(metadata i64 %62, metadata !641, metadata !DIExpression()), !dbg !4429
  %63 = getelementptr inbounds i64, i64* %16, i64 2, !dbg !4486
  %64 = load i64, i64* %63, align 8, !dbg !4486, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %64, metadata !652, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i64 %64, metadata !4449, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4490
  %65 = and i64 %64, 2040, !dbg !4491
  %66 = getelementptr inbounds i8, i8* %12, i64 %65, !dbg !4492
  call void @llvm.dbg.value(metadata i8* %66, metadata !4454, metadata !DIExpression()), !dbg !4490
  %67 = bitcast i8* %66 to i64*, !dbg !4493
  call void @llvm.dbg.value(metadata i64* %67, metadata !4455, metadata !DIExpression()), !dbg !4490
  %68 = load i64, i64* %67, align 8, !dbg !4494, !tbaa !2355
  %69 = add i64 %62, %56, !dbg !4486
  %70 = add i64 %69, %68, !dbg !4486
  call void @llvm.dbg.value(metadata i64 %70, metadata !654, metadata !DIExpression()), !dbg !4487
  store i64 %70, i64* %63, align 8, !dbg !4486, !tbaa !2355
  %71 = lshr i64 %70, 8, !dbg !4486
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i64 %71, metadata !4449, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4497
  %72 = and i64 %71, 2040, !dbg !4498
  %73 = getelementptr inbounds i8, i8* %12, i64 %72, !dbg !4499
  call void @llvm.dbg.value(metadata i8* %73, metadata !4454, metadata !DIExpression()), !dbg !4497
  %74 = bitcast i8* %73 to i64*, !dbg !4500
  call void @llvm.dbg.value(metadata i64* %74, metadata !4455, metadata !DIExpression()), !dbg !4497
  %75 = load i64, i64* %74, align 8, !dbg !4501, !tbaa !2355
  %76 = add i64 %75, %64, !dbg !4486
  call void @llvm.dbg.value(metadata i64 %76, metadata !642, metadata !DIExpression()), !dbg !4429
  %77 = getelementptr inbounds i64, i64* %15, i64 2, !dbg !4486
  store i64 %76, i64* %77, align 8, !dbg !4486, !tbaa !2355
  %78 = lshr i64 %62, 33, !dbg !4502
  %79 = xor i64 %78, %62, !dbg !4502
  %80 = getelementptr inbounds i64, i64* %16, i64 131, !dbg !4502
  %81 = load i64, i64* %80, align 8, !dbg !4502, !tbaa !2355
  %82 = add i64 %81, %79, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %82, metadata !641, metadata !DIExpression()), !dbg !4429
  %83 = getelementptr inbounds i64, i64* %16, i64 3, !dbg !4502
  %84 = load i64, i64* %83, align 8, !dbg !4502, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %84, metadata !655, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %84, metadata !4449, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4506
  %85 = and i64 %84, 2040, !dbg !4507
  %86 = getelementptr inbounds i8, i8* %12, i64 %85, !dbg !4508
  call void @llvm.dbg.value(metadata i8* %86, metadata !4454, metadata !DIExpression()), !dbg !4506
  %87 = bitcast i8* %86 to i64*, !dbg !4509
  call void @llvm.dbg.value(metadata i64* %87, metadata !4455, metadata !DIExpression()), !dbg !4506
  %88 = load i64, i64* %87, align 8, !dbg !4510, !tbaa !2355
  %89 = add i64 %82, %76, !dbg !4502
  %90 = add i64 %89, %88, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %90, metadata !657, metadata !DIExpression()), !dbg !4503
  store i64 %90, i64* %83, align 8, !dbg !4502, !tbaa !2355
  %91 = lshr i64 %90, 8, !dbg !4502
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %91, metadata !4449, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4513
  %92 = and i64 %91, 2040, !dbg !4514
  %93 = getelementptr inbounds i8, i8* %12, i64 %92, !dbg !4515
  call void @llvm.dbg.value(metadata i8* %93, metadata !4454, metadata !DIExpression()), !dbg !4513
  %94 = bitcast i8* %93 to i64*, !dbg !4516
  call void @llvm.dbg.value(metadata i64* %94, metadata !4455, metadata !DIExpression()), !dbg !4513
  %95 = load i64, i64* %94, align 8, !dbg !4517, !tbaa !2355
  %96 = add i64 %95, %84, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %96, metadata !642, metadata !DIExpression()), !dbg !4429
  %97 = getelementptr inbounds i64, i64* %15, i64 3, !dbg !4502
  store i64 %96, i64* %97, align 8, !dbg !4502, !tbaa !2355
  %98 = getelementptr inbounds i64, i64* %15, i64 4, !dbg !4518
  call void @llvm.dbg.value(metadata i64* %98, metadata !644, metadata !DIExpression()), !dbg !4429
  %99 = getelementptr inbounds i64, i64* %16, i64 4, !dbg !4519
  call void @llvm.dbg.value(metadata i64* %99, metadata !643, metadata !DIExpression()), !dbg !4429
  %100 = icmp ult i64* %99, %13, !dbg !4520
  br i1 %100, label %14, label %101, !dbg !4521, !llvm.loop !4522

101:                                              ; preds = %14
  %102 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 256
  br label %103, !dbg !4524

103:                                              ; preds = %101, %103
  %104 = phi i64* [ %187, %103 ], [ %98, %101 ], !dbg !4429
  %105 = phi i64* [ %188, %103 ], [ %99, %101 ], !dbg !4429
  %106 = phi i64 [ %185, %103 ], [ %96, %101 ], !dbg !4429
  %107 = phi i64 [ %171, %103 ], [ %82, %101 ], !dbg !4429
  call void @llvm.dbg.value(metadata i64 %107, metadata !641, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %106, metadata !642, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64* %105, metadata !643, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64* %104, metadata !644, metadata !DIExpression()), !dbg !4429
  %108 = shl i64 %107, 21, !dbg !4525
  %109 = xor i64 %107, %108, !dbg !4525
  %110 = xor i64 %109, -1, !dbg !4525
  %111 = getelementptr inbounds i64, i64* %105, i64 -128, !dbg !4525
  %112 = load i64, i64* %111, align 8, !dbg !4525, !tbaa !2355
  %113 = add i64 %112, %110, !dbg !4525
  call void @llvm.dbg.value(metadata i64 %113, metadata !641, metadata !DIExpression()), !dbg !4429
  %114 = load i64, i64* %105, align 8, !dbg !4525, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %114, metadata !658, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %114, metadata !4449, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4529
  %115 = and i64 %114, 2040, !dbg !4530
  %116 = getelementptr inbounds i8, i8* %12, i64 %115, !dbg !4531
  call void @llvm.dbg.value(metadata i8* %116, metadata !4454, metadata !DIExpression()), !dbg !4529
  %117 = bitcast i8* %116 to i64*, !dbg !4532
  call void @llvm.dbg.value(metadata i64* %117, metadata !4455, metadata !DIExpression()), !dbg !4529
  %118 = load i64, i64* %117, align 8, !dbg !4533, !tbaa !2355
  %119 = add i64 %113, %106, !dbg !4525
  %120 = add i64 %119, %118, !dbg !4525
  call void @llvm.dbg.value(metadata i64 %120, metadata !661, metadata !DIExpression()), !dbg !4526
  store i64 %120, i64* %105, align 8, !dbg !4525, !tbaa !2355
  %121 = lshr i64 %120, 8, !dbg !4525
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %121, metadata !4449, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4536
  %122 = and i64 %121, 2040, !dbg !4537
  %123 = getelementptr inbounds i8, i8* %12, i64 %122, !dbg !4538
  call void @llvm.dbg.value(metadata i8* %123, metadata !4454, metadata !DIExpression()), !dbg !4536
  %124 = bitcast i8* %123 to i64*, !dbg !4539
  call void @llvm.dbg.value(metadata i64* %124, metadata !4455, metadata !DIExpression()), !dbg !4536
  %125 = load i64, i64* %124, align 8, !dbg !4540, !tbaa !2355
  %126 = add i64 %125, %114, !dbg !4525
  call void @llvm.dbg.value(metadata i64 %126, metadata !642, metadata !DIExpression()), !dbg !4429
  store i64 %126, i64* %104, align 8, !dbg !4525, !tbaa !2355
  %127 = lshr i64 %113, 5, !dbg !4541
  %128 = xor i64 %127, %113, !dbg !4541
  %129 = getelementptr inbounds i64, i64* %105, i64 -127, !dbg !4541
  %130 = load i64, i64* %129, align 8, !dbg !4541, !tbaa !2355
  %131 = add i64 %130, %128, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %131, metadata !641, metadata !DIExpression()), !dbg !4429
  %132 = getelementptr inbounds i64, i64* %105, i64 1, !dbg !4541
  %133 = load i64, i64* %132, align 8, !dbg !4541, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %133, metadata !662, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %133, metadata !4449, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4545
  %134 = and i64 %133, 2040, !dbg !4546
  %135 = getelementptr inbounds i8, i8* %12, i64 %134, !dbg !4547
  call void @llvm.dbg.value(metadata i8* %135, metadata !4454, metadata !DIExpression()), !dbg !4545
  %136 = bitcast i8* %135 to i64*, !dbg !4548
  call void @llvm.dbg.value(metadata i64* %136, metadata !4455, metadata !DIExpression()), !dbg !4545
  %137 = load i64, i64* %136, align 8, !dbg !4549, !tbaa !2355
  %138 = add i64 %131, %126, !dbg !4541
  %139 = add i64 %138, %137, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %139, metadata !664, metadata !DIExpression()), !dbg !4542
  store i64 %139, i64* %132, align 8, !dbg !4541, !tbaa !2355
  %140 = lshr i64 %139, 8, !dbg !4541
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i64 %140, metadata !4449, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4552
  %141 = and i64 %140, 2040, !dbg !4553
  %142 = getelementptr inbounds i8, i8* %12, i64 %141, !dbg !4554
  call void @llvm.dbg.value(metadata i8* %142, metadata !4454, metadata !DIExpression()), !dbg !4552
  %143 = bitcast i8* %142 to i64*, !dbg !4555
  call void @llvm.dbg.value(metadata i64* %143, metadata !4455, metadata !DIExpression()), !dbg !4552
  %144 = load i64, i64* %143, align 8, !dbg !4556, !tbaa !2355
  %145 = add i64 %144, %133, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %145, metadata !642, metadata !DIExpression()), !dbg !4429
  %146 = getelementptr inbounds i64, i64* %104, i64 1, !dbg !4541
  store i64 %145, i64* %146, align 8, !dbg !4541, !tbaa !2355
  %147 = shl i64 %131, 12, !dbg !4557
  %148 = xor i64 %147, %131, !dbg !4557
  %149 = getelementptr inbounds i64, i64* %105, i64 -126, !dbg !4557
  %150 = load i64, i64* %149, align 8, !dbg !4557, !tbaa !2355
  %151 = add i64 %150, %148, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %151, metadata !641, metadata !DIExpression()), !dbg !4429
  %152 = getelementptr inbounds i64, i64* %105, i64 2, !dbg !4557
  %153 = load i64, i64* %152, align 8, !dbg !4557, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %153, metadata !665, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %153, metadata !4449, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4561
  %154 = and i64 %153, 2040, !dbg !4562
  %155 = getelementptr inbounds i8, i8* %12, i64 %154, !dbg !4563
  call void @llvm.dbg.value(metadata i8* %155, metadata !4454, metadata !DIExpression()), !dbg !4561
  %156 = bitcast i8* %155 to i64*, !dbg !4564
  call void @llvm.dbg.value(metadata i64* %156, metadata !4455, metadata !DIExpression()), !dbg !4561
  %157 = load i64, i64* %156, align 8, !dbg !4565, !tbaa !2355
  %158 = add i64 %151, %145, !dbg !4557
  %159 = add i64 %158, %157, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %159, metadata !667, metadata !DIExpression()), !dbg !4558
  store i64 %159, i64* %152, align 8, !dbg !4557, !tbaa !2355
  %160 = lshr i64 %159, 8, !dbg !4557
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %160, metadata !4449, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4568
  %161 = and i64 %160, 2040, !dbg !4569
  %162 = getelementptr inbounds i8, i8* %12, i64 %161, !dbg !4570
  call void @llvm.dbg.value(metadata i8* %162, metadata !4454, metadata !DIExpression()), !dbg !4568
  %163 = bitcast i8* %162 to i64*, !dbg !4571
  call void @llvm.dbg.value(metadata i64* %163, metadata !4455, metadata !DIExpression()), !dbg !4568
  %164 = load i64, i64* %163, align 8, !dbg !4572, !tbaa !2355
  %165 = add i64 %164, %153, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %165, metadata !642, metadata !DIExpression()), !dbg !4429
  %166 = getelementptr inbounds i64, i64* %104, i64 2, !dbg !4557
  store i64 %165, i64* %166, align 8, !dbg !4557, !tbaa !2355
  %167 = lshr i64 %151, 33, !dbg !4573
  %168 = xor i64 %167, %151, !dbg !4573
  %169 = getelementptr inbounds i64, i64* %105, i64 -125, !dbg !4573
  %170 = load i64, i64* %169, align 8, !dbg !4573, !tbaa !2355
  %171 = add i64 %170, %168, !dbg !4573
  call void @llvm.dbg.value(metadata i64 %171, metadata !641, metadata !DIExpression()), !dbg !4429
  %172 = getelementptr inbounds i64, i64* %105, i64 3, !dbg !4573
  %173 = load i64, i64* %172, align 8, !dbg !4573, !tbaa !2355
  call void @llvm.dbg.value(metadata i64 %173, metadata !668, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %173, metadata !4449, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4577
  %174 = and i64 %173, 2040, !dbg !4578
  %175 = getelementptr inbounds i8, i8* %12, i64 %174, !dbg !4579
  call void @llvm.dbg.value(metadata i8* %175, metadata !4454, metadata !DIExpression()), !dbg !4577
  %176 = bitcast i8* %175 to i64*, !dbg !4580
  call void @llvm.dbg.value(metadata i64* %176, metadata !4455, metadata !DIExpression()), !dbg !4577
  %177 = load i64, i64* %176, align 8, !dbg !4581, !tbaa !2355
  %178 = add i64 %171, %165, !dbg !4573
  %179 = add i64 %178, %177, !dbg !4573
  call void @llvm.dbg.value(metadata i64 %179, metadata !670, metadata !DIExpression()), !dbg !4574
  store i64 %179, i64* %172, align 8, !dbg !4573, !tbaa !2355
  %180 = lshr i64 %179, 8, !dbg !4573
  call void @llvm.dbg.value(metadata i64* %11, metadata !4442, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i64 %180, metadata !4449, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i8* %12, metadata !4450, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i8* %12, metadata !4453, metadata !DIExpression()), !dbg !4584
  %181 = and i64 %180, 2040, !dbg !4585
  %182 = getelementptr inbounds i8, i8* %12, i64 %181, !dbg !4586
  call void @llvm.dbg.value(metadata i8* %182, metadata !4454, metadata !DIExpression()), !dbg !4584
  %183 = bitcast i8* %182 to i64*, !dbg !4587
  call void @llvm.dbg.value(metadata i64* %183, metadata !4455, metadata !DIExpression()), !dbg !4584
  %184 = load i64, i64* %183, align 8, !dbg !4588, !tbaa !2355
  %185 = add i64 %184, %173, !dbg !4573
  call void @llvm.dbg.value(metadata i64 %185, metadata !642, metadata !DIExpression()), !dbg !4429
  %186 = getelementptr inbounds i64, i64* %104, i64 3, !dbg !4573
  store i64 %185, i64* %186, align 8, !dbg !4573, !tbaa !2355
  %187 = getelementptr inbounds i64, i64* %104, i64 4, !dbg !4589
  call void @llvm.dbg.value(metadata i64* %187, metadata !644, metadata !DIExpression()), !dbg !4429
  %188 = getelementptr inbounds i64, i64* %105, i64 4, !dbg !4590
  call void @llvm.dbg.value(metadata i64* %188, metadata !643, metadata !DIExpression()), !dbg !4429
  %189 = icmp ult i64* %188, %102, !dbg !4591
  br i1 %189, label %103, label %190, !dbg !4592, !llvm.loop !4593

190:                                              ; preds = %103
  store i64 %171, i64* %3, align 8, !dbg !4595, !tbaa !4431
  store i64 %185, i64* %5, align 8, !dbg !4596, !tbaa !4433
  ret void, !dbg !4597
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local void @isaac_seed(%struct.isaac_state* nocapture %0) local_unnamed_addr #28 !dbg !4598 {
  call void @llvm.dbg.value(metadata %struct.isaac_state* %0, metadata !4602, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 7240739780546808700, metadata !4603, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 -5046086420515862430, metadata !4604, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 -8354558816804203872, metadata !4605, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 -5576812576440232668, metadata !4606, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 -9011610652101975858, metadata !4607, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 5259722845879046933, metadata !4608, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 -5865837416287532563, metadata !4609, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 -7424904924229222229, metadata !4610, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i32 0, metadata !4611, metadata !DIExpression()), !dbg !4616
  br label %2, !dbg !4617

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
  call void @llvm.dbg.value(metadata i64 %3, metadata !4611, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i64 %4, metadata !4610, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %5, metadata !4609, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %6, metadata !4608, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %7, metadata !4607, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %8, metadata !4606, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %9, metadata !4605, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %10, metadata !4604, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %11, metadata !4603, metadata !DIExpression()), !dbg !4615
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %3, !dbg !4619
  %13 = load i64, i64* %12, align 8, !dbg !4619, !tbaa !2355
  %14 = add i64 %13, %11, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %14, metadata !4603, metadata !DIExpression()), !dbg !4615
  %15 = or i64 %3, 1, !dbg !4619
  %16 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %15, !dbg !4619
  %17 = load i64, i64* %16, align 8, !dbg !4619, !tbaa !2355
  %18 = add i64 %17, %10, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %18, metadata !4604, metadata !DIExpression()), !dbg !4615
  %19 = or i64 %3, 2, !dbg !4619
  %20 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %19, !dbg !4619
  %21 = load i64, i64* %20, align 8, !dbg !4619, !tbaa !2355
  %22 = add i64 %21, %9, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %22, metadata !4605, metadata !DIExpression()), !dbg !4615
  %23 = or i64 %3, 3, !dbg !4619
  %24 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %23, !dbg !4619
  %25 = load i64, i64* %24, align 8, !dbg !4619, !tbaa !2355
  %26 = add i64 %25, %8, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %26, metadata !4606, metadata !DIExpression()), !dbg !4615
  %27 = or i64 %3, 4, !dbg !4619
  %28 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %27, !dbg !4619
  %29 = load i64, i64* %28, align 8, !dbg !4619, !tbaa !2355
  %30 = add i64 %29, %7, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %30, metadata !4607, metadata !DIExpression()), !dbg !4615
  %31 = or i64 %3, 5, !dbg !4619
  %32 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %31, !dbg !4619
  %33 = load i64, i64* %32, align 8, !dbg !4619, !tbaa !2355
  %34 = add i64 %33, %6, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %34, metadata !4608, metadata !DIExpression()), !dbg !4615
  %35 = or i64 %3, 6, !dbg !4619
  %36 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %35, !dbg !4619
  %37 = load i64, i64* %36, align 8, !dbg !4619, !tbaa !2355
  %38 = add i64 %37, %5, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %38, metadata !4609, metadata !DIExpression()), !dbg !4615
  %39 = or i64 %3, 7, !dbg !4619
  %40 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %39, !dbg !4619
  %41 = load i64, i64* %40, align 8, !dbg !4619, !tbaa !2355
  %42 = add i64 %41, %4, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %42, metadata !4610, metadata !DIExpression()), !dbg !4615
  %43 = sub i64 %14, %30, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %43, metadata !4603, metadata !DIExpression()), !dbg !4615
  %44 = lshr i64 %42, 9, !dbg !4622
  %45 = xor i64 %44, %34, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %45, metadata !4608, metadata !DIExpression()), !dbg !4615
  %46 = add i64 %42, %43, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %46, metadata !4610, metadata !DIExpression()), !dbg !4615
  %47 = sub i64 %18, %45, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %47, metadata !4604, metadata !DIExpression()), !dbg !4615
  %48 = shl i64 %43, 9, !dbg !4622
  %49 = xor i64 %38, %48, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %49, metadata !4609, metadata !DIExpression()), !dbg !4615
  %50 = add i64 %47, %43, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %50, metadata !4603, metadata !DIExpression()), !dbg !4615
  %51 = sub i64 %22, %49, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %51, metadata !4605, metadata !DIExpression()), !dbg !4615
  %52 = lshr i64 %47, 23, !dbg !4622
  %53 = xor i64 %52, %46, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %53, metadata !4610, metadata !DIExpression()), !dbg !4615
  %54 = add i64 %47, %51, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %54, metadata !4604, metadata !DIExpression()), !dbg !4615
  %55 = sub i64 %26, %53, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %55, metadata !4606, metadata !DIExpression()), !dbg !4615
  %56 = shl i64 %51, 15, !dbg !4622
  %57 = xor i64 %50, %56, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %57, metadata !4603, metadata !DIExpression()), !dbg !4615
  %58 = add i64 %55, %51, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %58, metadata !4605, metadata !DIExpression()), !dbg !4615
  %59 = sub i64 %30, %57, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %59, metadata !4607, metadata !DIExpression()), !dbg !4615
  %60 = lshr i64 %55, 14, !dbg !4622
  %61 = xor i64 %60, %54, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %61, metadata !4604, metadata !DIExpression()), !dbg !4615
  %62 = add i64 %55, %59, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %62, metadata !4606, metadata !DIExpression()), !dbg !4615
  %63 = sub i64 %45, %61, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %63, metadata !4608, metadata !DIExpression()), !dbg !4615
  %64 = shl i64 %59, 20, !dbg !4622
  %65 = xor i64 %58, %64, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %65, metadata !4605, metadata !DIExpression()), !dbg !4615
  %66 = add i64 %63, %59, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %66, metadata !4607, metadata !DIExpression()), !dbg !4615
  %67 = sub i64 %49, %65, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %67, metadata !4609, metadata !DIExpression()), !dbg !4615
  %68 = lshr i64 %63, 17, !dbg !4622
  %69 = xor i64 %68, %62, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %69, metadata !4606, metadata !DIExpression()), !dbg !4615
  %70 = add i64 %63, %67, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %70, metadata !4608, metadata !DIExpression()), !dbg !4615
  %71 = sub i64 %53, %69, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %71, metadata !4610, metadata !DIExpression()), !dbg !4615
  %72 = shl i64 %67, 14, !dbg !4622
  %73 = xor i64 %66, %72, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %73, metadata !4607, metadata !DIExpression()), !dbg !4615
  %74 = add i64 %71, %67, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %74, metadata !4609, metadata !DIExpression()), !dbg !4615
  store i64 %57, i64* %12, align 8, !dbg !4619, !tbaa !2355
  store i64 %61, i64* %16, align 8, !dbg !4619, !tbaa !2355
  store i64 %65, i64* %20, align 8, !dbg !4619, !tbaa !2355
  store i64 %69, i64* %24, align 8, !dbg !4619, !tbaa !2355
  store i64 %73, i64* %28, align 8, !dbg !4619, !tbaa !2355
  store i64 %70, i64* %32, align 8, !dbg !4619, !tbaa !2355
  store i64 %74, i64* %36, align 8, !dbg !4619, !tbaa !2355
  store i64 %71, i64* %40, align 8, !dbg !4619, !tbaa !2355
  %75 = add nuw nsw i64 %3, 8, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %75, metadata !4611, metadata !DIExpression()), !dbg !4616
  %76 = icmp ult i64 %3, 248, !dbg !4624
  br i1 %76, label %2, label %77, !dbg !4617, !llvm.loop !4625

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
  call void @llvm.dbg.value(metadata i64 %78, metadata !4613, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata i64 %79, metadata !4610, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %80, metadata !4609, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %81, metadata !4608, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %82, metadata !4607, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %83, metadata !4606, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %84, metadata !4605, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %85, metadata !4604, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %86, metadata !4603, metadata !DIExpression()), !dbg !4615
  %87 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %78, !dbg !4627
  %88 = load i64, i64* %87, align 8, !dbg !4627, !tbaa !2355
  %89 = add i64 %88, %86, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %89, metadata !4603, metadata !DIExpression()), !dbg !4615
  %90 = or i64 %78, 1, !dbg !4627
  %91 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %90, !dbg !4627
  %92 = load i64, i64* %91, align 8, !dbg !4627, !tbaa !2355
  %93 = add i64 %92, %85, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %93, metadata !4604, metadata !DIExpression()), !dbg !4615
  %94 = or i64 %78, 2, !dbg !4627
  %95 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %94, !dbg !4627
  %96 = load i64, i64* %95, align 8, !dbg !4627, !tbaa !2355
  %97 = add i64 %96, %84, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %97, metadata !4605, metadata !DIExpression()), !dbg !4615
  %98 = or i64 %78, 3, !dbg !4627
  %99 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %98, !dbg !4627
  %100 = load i64, i64* %99, align 8, !dbg !4627, !tbaa !2355
  %101 = add i64 %100, %83, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %101, metadata !4606, metadata !DIExpression()), !dbg !4615
  %102 = or i64 %78, 4, !dbg !4627
  %103 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %102, !dbg !4627
  %104 = load i64, i64* %103, align 8, !dbg !4627, !tbaa !2355
  %105 = add i64 %104, %82, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %105, metadata !4607, metadata !DIExpression()), !dbg !4615
  %106 = or i64 %78, 5, !dbg !4627
  %107 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %106, !dbg !4627
  %108 = load i64, i64* %107, align 8, !dbg !4627, !tbaa !2355
  %109 = add i64 %108, %81, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %109, metadata !4608, metadata !DIExpression()), !dbg !4615
  %110 = or i64 %78, 6, !dbg !4627
  %111 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %110, !dbg !4627
  %112 = load i64, i64* %111, align 8, !dbg !4627, !tbaa !2355
  %113 = add i64 %112, %80, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %113, metadata !4609, metadata !DIExpression()), !dbg !4615
  %114 = or i64 %78, 7, !dbg !4627
  %115 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %114, !dbg !4627
  %116 = load i64, i64* %115, align 8, !dbg !4627, !tbaa !2355
  %117 = add i64 %116, %79, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %117, metadata !4610, metadata !DIExpression()), !dbg !4615
  %118 = sub i64 %89, %105, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %118, metadata !4603, metadata !DIExpression()), !dbg !4615
  %119 = lshr i64 %117, 9, !dbg !4631
  %120 = xor i64 %119, %109, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %120, metadata !4608, metadata !DIExpression()), !dbg !4615
  %121 = add i64 %117, %118, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %121, metadata !4610, metadata !DIExpression()), !dbg !4615
  %122 = sub i64 %93, %120, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %122, metadata !4604, metadata !DIExpression()), !dbg !4615
  %123 = shl i64 %118, 9, !dbg !4631
  %124 = xor i64 %113, %123, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %124, metadata !4609, metadata !DIExpression()), !dbg !4615
  %125 = add i64 %122, %118, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %125, metadata !4603, metadata !DIExpression()), !dbg !4615
  %126 = sub i64 %97, %124, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %126, metadata !4605, metadata !DIExpression()), !dbg !4615
  %127 = lshr i64 %122, 23, !dbg !4631
  %128 = xor i64 %127, %121, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %128, metadata !4610, metadata !DIExpression()), !dbg !4615
  %129 = add i64 %122, %126, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %129, metadata !4604, metadata !DIExpression()), !dbg !4615
  %130 = sub i64 %101, %128, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %130, metadata !4606, metadata !DIExpression()), !dbg !4615
  %131 = shl i64 %126, 15, !dbg !4631
  %132 = xor i64 %125, %131, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %132, metadata !4603, metadata !DIExpression()), !dbg !4615
  %133 = add i64 %130, %126, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %133, metadata !4605, metadata !DIExpression()), !dbg !4615
  %134 = sub i64 %105, %132, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %134, metadata !4607, metadata !DIExpression()), !dbg !4615
  %135 = lshr i64 %130, 14, !dbg !4631
  %136 = xor i64 %135, %129, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %136, metadata !4604, metadata !DIExpression()), !dbg !4615
  %137 = add i64 %130, %134, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %137, metadata !4606, metadata !DIExpression()), !dbg !4615
  %138 = sub i64 %120, %136, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %138, metadata !4608, metadata !DIExpression()), !dbg !4615
  %139 = shl i64 %134, 20, !dbg !4631
  %140 = xor i64 %133, %139, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %140, metadata !4605, metadata !DIExpression()), !dbg !4615
  %141 = add i64 %138, %134, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %141, metadata !4607, metadata !DIExpression()), !dbg !4615
  %142 = sub i64 %124, %140, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %142, metadata !4609, metadata !DIExpression()), !dbg !4615
  %143 = lshr i64 %138, 17, !dbg !4631
  %144 = xor i64 %143, %137, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %144, metadata !4606, metadata !DIExpression()), !dbg !4615
  %145 = add i64 %138, %142, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %145, metadata !4608, metadata !DIExpression()), !dbg !4615
  %146 = sub i64 %128, %144, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %146, metadata !4610, metadata !DIExpression()), !dbg !4615
  %147 = shl i64 %142, 14, !dbg !4631
  %148 = xor i64 %141, %147, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %148, metadata !4607, metadata !DIExpression()), !dbg !4615
  %149 = add i64 %146, %142, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %149, metadata !4609, metadata !DIExpression()), !dbg !4615
  store i64 %132, i64* %87, align 8, !dbg !4627, !tbaa !2355
  store i64 %136, i64* %91, align 8, !dbg !4627, !tbaa !2355
  store i64 %140, i64* %95, align 8, !dbg !4627, !tbaa !2355
  store i64 %144, i64* %99, align 8, !dbg !4627, !tbaa !2355
  store i64 %148, i64* %103, align 8, !dbg !4627, !tbaa !2355
  store i64 %145, i64* %107, align 8, !dbg !4627, !tbaa !2355
  store i64 %149, i64* %111, align 8, !dbg !4627, !tbaa !2355
  store i64 %146, i64* %115, align 8, !dbg !4627, !tbaa !2355
  %150 = add nuw nsw i64 %78, 8, !dbg !4633
  call void @llvm.dbg.value(metadata i64 %150, metadata !4613, metadata !DIExpression()), !dbg !4626
  %151 = icmp ult i64 %78, 248, !dbg !4633
  br i1 %151, label %77, label %152, !dbg !4634, !llvm.loop !4635

152:                                              ; preds = %77
  %153 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !4636
  %154 = bitcast i64* %153 to i8*, !dbg !4637
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %154, i8 0, i64 24, i1 false), !dbg !4638
  ret void, !dbg !4637
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4643, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i8* %1, metadata !4644, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i64 %2, metadata !4645, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i32 %0, metadata !4647, metadata !DIExpression()) #29, !dbg !4656
  call void @llvm.dbg.value(metadata i8* %1, metadata !4650, metadata !DIExpression()) #29, !dbg !4656
  call void @llvm.dbg.value(metadata i64 %2, metadata !4651, metadata !DIExpression()) #29, !dbg !4656
  call void @llvm.dbg.value(metadata i32 %0, metadata !4658, metadata !DIExpression()) #29, !dbg !4664
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !4666
  call void @llvm.dbg.value(metadata i8* %4, metadata !4663, metadata !DIExpression()) #29, !dbg !4664
  call void @llvm.dbg.value(metadata i8* %4, metadata !4652, metadata !DIExpression()) #29, !dbg !4656
  %5 = icmp eq i8* %4, null, !dbg !4667
  br i1 %5, label %6, label %9, !dbg !4668

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4669
  br i1 %7, label %19, label %8, !dbg !4672

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4673, !tbaa !919
  br label %19, !dbg !4674

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #30, !dbg !4675
  call void @llvm.dbg.value(metadata i64 %10, metadata !4653, metadata !DIExpression()) #29, !dbg !4676
  %11 = icmp ult i64 %10, %2, !dbg !4677
  br i1 %11, label %12, label %14, !dbg !4679

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4680
  call void @llvm.dbg.value(metadata i8* %1, metadata !4682, metadata !DIExpression()) #29, !dbg !4687
  call void @llvm.dbg.value(metadata i8* %4, metadata !4685, metadata !DIExpression()) #29, !dbg !4687
  call void @llvm.dbg.value(metadata i64 %13, metadata !4686, metadata !DIExpression()) #29, !dbg !4687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #29, !dbg !4689
  br label %19, !dbg !4690

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4691
  br i1 %15, label %19, label %16, !dbg !4694

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4695
  call void @llvm.dbg.value(metadata i8* %1, metadata !4682, metadata !DIExpression()) #29, !dbg !4697
  call void @llvm.dbg.value(metadata i8* %4, metadata !4685, metadata !DIExpression()) #29, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %17, metadata !4686, metadata !DIExpression()) #29, !dbg !4697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #29, !dbg !4699
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4700
  store i8 0, i8* %18, align 1, !dbg !4701, !tbaa !919
  br label %19, !dbg !4702

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4703
  ret i32 %20, !dbg !4704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4705 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4707, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i32 %0, metadata !4658, metadata !DIExpression()) #29, !dbg !4709
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !4711
  call void @llvm.dbg.value(metadata i8* %2, metadata !4663, metadata !DIExpression()) #29, !dbg !4709
  ret i8* %2, !dbg !4712
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !4713 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4751, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata i8* %1, metadata !4752, metadata !DIExpression()), !dbg !4766
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !4767
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !4753, metadata !DIExpression()), !dbg !4766
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !4768
  br i1 %4, label %25, label %5, !dbg !4769

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #29, !dbg !4770
  call void @llvm.dbg.value(metadata i32 %6, metadata !4754, metadata !DIExpression()), !dbg !4771
  %7 = icmp ult i32 %6, 3, !dbg !4772
  br i1 %7, label %8, label %25, !dbg !4772

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #29, !dbg !4773
  call void @llvm.dbg.value(metadata i32 %9, metadata !4757, metadata !DIExpression()), !dbg !4774
  %10 = icmp slt i32 %9, 0, !dbg !4775
  br i1 %10, label %11, label %15, !dbg !4776

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #33, !dbg !4777
  %13 = load i32, i32* %12, align 4, !dbg !4777, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %13, metadata !4760, metadata !DIExpression()), !dbg !4778
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #29, !dbg !4779
  store i32 %13, i32* %12, align 4, !dbg !4780, !tbaa !894
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #29, !dbg !4781
  %17 = icmp eq i32 %16, 0, !dbg !4782
  br i1 %17, label %18, label %21, !dbg !4783

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #29, !dbg !4784
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !4753, metadata !DIExpression()), !dbg !4766
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !4785
  br i1 %20, label %21, label %25, !dbg !4786

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !4753, metadata !DIExpression()), !dbg !4766
  %22 = tail call i32* @__errno_location() #33, !dbg !4787
  %23 = load i32, i32* %22, align 4, !dbg !4787, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %23, metadata !4763, metadata !DIExpression()), !dbg !4788
  %24 = tail call i32 @close(i32 %9) #29, !dbg !4789
  store i32 %23, i32* %22, align 4, !dbg !4790, !tbaa !894
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !4766
  ret %struct._IO_FILE* %26, !dbg !4791
}

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4792 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !4795 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4797, metadata !DIExpression()), !dbg !4798
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #29, !dbg !4799
  ret i32 %2, !dbg !4800
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !4801 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4805, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata i32 %1, metadata !4806, metadata !DIExpression()), !dbg !4829
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4830
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #29, !dbg !4830
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4807, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 -1, metadata !4817, metadata !DIExpression()), !dbg !4829
  call void @llvm.va_start(i8* nonnull %4), !dbg !4832
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
  ], !dbg !4833

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4834
  %7 = load i32, i32* %6, align 16, !dbg !4834
  %8 = icmp ult i32 %7, 41, !dbg !4834
  br i1 %8, label %9, label %15, !dbg !4834

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4834
  %11 = load i8*, i8** %10, align 16, !dbg !4834
  %12 = zext i32 %7 to i64, !dbg !4834
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !4834
  %14 = add nuw nsw i32 %7, 8, !dbg !4834
  store i32 %14, i32* %6, align 16, !dbg !4834
  br label %19, !dbg !4834

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4834
  %17 = load i8*, i8** %16, align 8, !dbg !4834
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !4834
  store i8* %18, i8** %16, align 8, !dbg !4834
  br label %19, !dbg !4834

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !4834
  %22 = load i32, i32* %21, align 4, !dbg !4834
  call void @llvm.dbg.value(metadata i32 %22, metadata !4818, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i32 %0, metadata !4836, metadata !DIExpression()) #29, !dbg !4841
  call void @llvm.dbg.value(metadata i32 %22, metadata !4839, metadata !DIExpression()) #29, !dbg !4841
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #29, !dbg !4843
  call void @llvm.dbg.value(metadata i32 %23, metadata !4840, metadata !DIExpression()) #29, !dbg !4841
  call void @llvm.dbg.value(metadata i32 %23, metadata !4817, metadata !DIExpression()), !dbg !4829
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4844
  %26 = load i32, i32* %25, align 16, !dbg !4844
  %27 = icmp ult i32 %26, 41, !dbg !4844
  br i1 %27, label %28, label %34, !dbg !4844

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4844
  %30 = load i8*, i8** %29, align 16, !dbg !4844
  %31 = zext i32 %26 to i64, !dbg !4844
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !4844
  %33 = add nuw nsw i32 %26, 8, !dbg !4844
  store i32 %33, i32* %25, align 16, !dbg !4844
  br label %38, !dbg !4844

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4844
  %36 = load i8*, i8** %35, align 8, !dbg !4844
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !4844
  store i8* %37, i8** %35, align 8, !dbg !4844
  br label %38, !dbg !4844

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !4844
  %41 = load i32, i32* %40, align 4, !dbg !4844
  call void @llvm.dbg.value(metadata i32 %41, metadata !4821, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.value(metadata i32 %0, metadata !164, metadata !DIExpression()) #29, !dbg !4846
  call void @llvm.dbg.value(metadata i32 %41, metadata !165, metadata !DIExpression()) #29, !dbg !4846
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4848, !tbaa !894
  %43 = icmp sgt i32 %42, -1, !dbg !4850
  br i1 %43, label %44, label %56, !dbg !4851

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #29, !dbg !4852
  call void @llvm.dbg.value(metadata i32 %45, metadata !166, metadata !DIExpression()) #29, !dbg !4846
  %46 = icmp sgt i32 %45, -1, !dbg !4854
  br i1 %46, label %51, label %47, !dbg !4856

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #33, !dbg !4857
  %49 = load i32, i32* %48, align 4, !dbg !4857, !tbaa !894
  %50 = icmp eq i32 %49, 22, !dbg !4858
  br i1 %50, label %52, label %51, !dbg !4859

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4860, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %62, metadata !166, metadata !DIExpression()) #29, !dbg !4846
  br label %116, !dbg !4862

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !4836, metadata !DIExpression()) #29, !dbg !4863
  call void @llvm.dbg.value(metadata i32 %41, metadata !4839, metadata !DIExpression()) #29, !dbg !4863
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #29, !dbg !4866
  call void @llvm.dbg.value(metadata i32 %53, metadata !4840, metadata !DIExpression()) #29, !dbg !4863
  call void @llvm.dbg.value(metadata i32 %53, metadata !166, metadata !DIExpression()) #29, !dbg !4846
  %54 = icmp sgt i32 %53, -1, !dbg !4867
  br i1 %54, label %55, label %116, !dbg !4869

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4870, !tbaa !894
  br label %60, !dbg !4871

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4836, metadata !DIExpression()) #29, !dbg !4872
  call void @llvm.dbg.value(metadata i32 %41, metadata !4839, metadata !DIExpression()) #29, !dbg !4872
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #29, !dbg !4874
  call void @llvm.dbg.value(metadata i32 %57, metadata !4840, metadata !DIExpression()) #29, !dbg !4872
  call void @llvm.dbg.value(metadata i32 %57, metadata !166, metadata !DIExpression()) #29, !dbg !4846
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !4875
  call void @llvm.dbg.value(metadata i32 %62, metadata !166, metadata !DIExpression()) #29, !dbg !4846
  %63 = icmp sgt i32 %62, -1, !dbg !4876
  %64 = and i1 %61, %63, !dbg !4862
  br i1 %64, label %65, label %116, !dbg !4862

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #29, !dbg !4877
  call void @llvm.dbg.value(metadata i32 %66, metadata !167, metadata !DIExpression()) #29, !dbg !4878
  %67 = icmp slt i32 %66, 0, !dbg !4879
  br i1 %67, label %72, label %68, !dbg !4880

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !4881
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #29, !dbg !4882
  %71 = icmp eq i32 %70, -1, !dbg !4883
  br i1 %71, label %72, label %116, !dbg !4884

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #33, !dbg !4885
  %74 = load i32, i32* %73, align 4, !dbg !4885, !tbaa !894
  call void @llvm.dbg.value(metadata i32 %74, metadata !170, metadata !DIExpression()) #29, !dbg !4886
  %75 = call i32 @close(i32 %62) #29, !dbg !4887
  store i32 %74, i32* %73, align 4, !dbg !4888, !tbaa !894
  call void @llvm.dbg.value(metadata i32 -1, metadata !166, metadata !DIExpression()) #29, !dbg !4846
  br label %116, !dbg !4889

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #29, !dbg !4890
  call void @llvm.dbg.value(metadata i32 %77, metadata !4817, metadata !DIExpression()), !dbg !4829
  br label %116, !dbg !4891

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4892
  %80 = load i32, i32* %79, align 16, !dbg !4892
  %81 = icmp ult i32 %80, 41, !dbg !4892
  br i1 %81, label %82, label %88, !dbg !4892

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4892
  %84 = load i8*, i8** %83, align 16, !dbg !4892
  %85 = zext i32 %80 to i64, !dbg !4892
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !4892
  %87 = add nuw nsw i32 %80, 8, !dbg !4892
  store i32 %87, i32* %79, align 16, !dbg !4892
  br label %92, !dbg !4892

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4892
  %90 = load i8*, i8** %89, align 8, !dbg !4892
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !4892
  store i8* %91, i8** %89, align 8, !dbg !4892
  br label %92, !dbg !4892

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !4892
  %95 = load i32, i32* %94, align 4, !dbg !4892
  call void @llvm.dbg.value(metadata i32 %95, metadata !4823, metadata !DIExpression()), !dbg !4893
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #29, !dbg !4894
  call void @llvm.dbg.value(metadata i32 %96, metadata !4817, metadata !DIExpression()), !dbg !4829
  br label %116, !dbg !4895

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4896
  %99 = load i32, i32* %98, align 16, !dbg !4896
  %100 = icmp ult i32 %99, 41, !dbg !4896
  br i1 %100, label %101, label %107, !dbg !4896

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4896
  %103 = load i8*, i8** %102, align 16, !dbg !4896
  %104 = zext i32 %99 to i64, !dbg !4896
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !4896
  %106 = add nuw nsw i32 %99, 8, !dbg !4896
  store i32 %106, i32* %98, align 16, !dbg !4896
  br label %111, !dbg !4896

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4896
  %109 = load i8*, i8** %108, align 8, !dbg !4896
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !4896
  store i8* %110, i8** %108, align 8, !dbg !4896
  br label %111, !dbg !4896

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !4896
  %114 = load i8*, i8** %113, align 8, !dbg !4896
  call void @llvm.dbg.value(metadata i8* %114, metadata !4827, metadata !DIExpression()), !dbg !4897
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #29, !dbg !4898
  call void @llvm.dbg.value(metadata i32 %115, metadata !4817, metadata !DIExpression()), !dbg !4829
  br label %116, !dbg !4899

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !4900
  call void @llvm.dbg.value(metadata i32 %117, metadata !4817, metadata !DIExpression()), !dbg !4829
  call void @llvm.va_end(i8* nonnull %4), !dbg !4901
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #29, !dbg !4902
  ret i32 %117, !dbg !4903
}

declare !dbg !4904 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind }
attributes #19 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nosync nounwind willreturn }
attributes #26 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nofree norecurse nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #29 = { nounwind }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind readnone willreturn }
attributes #34 = { cold }

!llvm.dbg.cu = !{!2, !33, !173, !38, !175, !45, !178, !181, !51, !57, !141, !183, !149, !189, !206, !208, !210, !212, !214, !216, !219, !221, !610, !612, !615, !674, !676, !678, !161}
!llvm.ident = !{!680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680}
!llvm.module.flags = !{!681, !682, !683, !684, !685}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 48, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mktemp.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!10, !0, !13}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "stdout_closed", scope: !2, file: !3, line: 130, type: !12, isLocal: true, isDefinition: true)
!12 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "default_template", scope: !2, file: !3, line: 39, type: !15, isLocal: true, isDefinition: true)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !28)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !20, line: 50, size: 256, elements: !21)
!20 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!21 = !{!22, !23, !25, !27}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !20, line: 52, baseType: !15, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !19, file: !20, line: 55, baseType: !24, size: 32, offset: 64)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !19, file: !20, line: 56, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !19, file: !20, line: 57, baseType: !24, size: 32, offset: 192)
!28 = !{!29}
!29 = !DISubrange(count: 8)
!30 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "Version", scope: !33, file: !34, line: 2, type: !15, isLocal: false, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !35, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!35 = !{!31}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "file_name", scope: !38, file: !39, line: 46, type: !15, isLocal: true, isDefinition: true)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !40, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!40 = !{!36, !41}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !38, file: !39, line: 56, type: !12, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "exit_failure", scope: !45, file: !46, line: 24, type: !48, isLocal: false, isDefinition: true)
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !47, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!47 = !{!43}
!48 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "program_name", scope: !51, file: !52, line: 33, type: !15, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !53, globals: !54, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!53 = !{!8, !6}
!54 = !{!49}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !57, file: !58, line: 85, type: !135, isLocal: false, isDefinition: true)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !95, globals: !100, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!59 = !{!60, !75, !80}
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !61, line: 32, baseType: !62, size: 32, elements: !63)
!61 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!64 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!69 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!70 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!71 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!72 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!73 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!74 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !61, line: 242, baseType: !62, size: 32, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 46, baseType: !62, size: 32, elements: !82)
!81 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!83 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!95 = !{!24, !96, !97, !6}
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!99 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100 = !{!55, !101, !107, !117, !119, !124, !131, !133}
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !57, file: !58, line: 101, type: !103, isLocal: false, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 320, elements: !105)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!105 = !{!106}
!106 = !DISubrange(count: 10)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !57, file: !58, line: 1052, type: !109, isLocal: false, isDefinition: true)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !58, line: 65, size: 448, elements: !110)
!110 = !{!111, !112, !113, !115, !116}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !109, file: !58, line: 68, baseType: !60, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !58, line: 71, baseType: !24, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !109, file: !58, line: 75, baseType: !114, size: 256, offset: 64)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !28)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !109, file: !58, line: 78, baseType: !15, size: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !109, file: !58, line: 81, baseType: !15, size: 64, offset: 384)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !57, file: !58, line: 116, type: !109, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "slot0", scope: !57, file: !58, line: 842, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 256)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "slotvec", scope: !57, file: !58, line: 845, type: !126, isLocal: true, isDefinition: true)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !58, line: 834, size: 128, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !127, file: !58, line: 836, baseType: !97, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !127, file: !58, line: 837, baseType: !6, size: 64, offset: 64)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "nslots", scope: !57, file: !58, line: 843, type: !24, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "slotvec0", scope: !57, file: !58, line: 844, type: !127, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 704, elements: !137)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!137 = !{!138}
!138 = !DISubrange(count: 11)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "letters", scope: !141, file: !142, line: 184, type: !144, isLocal: true, isDefinition: true)
!141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !142, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !143, splitDebugInlining: false, nameTableKind: None)
!142 = !DIFile(filename: "lib/tempname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!143 = !{!139}
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 504, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 63)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !149, file: !150, line: 26, type: !152, isLocal: false, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !151, splitDebugInlining: false, nameTableKind: None)
!150 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !{!147}
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 376, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 47)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !157, file: !158, line: 507, type: !24, isLocal: true, isDefinition: true)
!157 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !158, file: !158, line: 488, type: !159, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !163)
!158 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!159 = !DISubroutineType(types: !160)
!160 = !{!24, !24, !24}
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !162, splitDebugInlining: false, nameTableKind: None)
!162 = !{!155}
!163 = !{!164, !165, !166, !167, !170}
!164 = !DILocalVariable(name: "fd", arg: 1, scope: !157, file: !158, line: 488, type: !24)
!165 = !DILocalVariable(name: "target", arg: 2, scope: !157, file: !158, line: 488, type: !24)
!166 = !DILocalVariable(name: "result", scope: !157, file: !158, line: 490, type: !24)
!167 = !DILocalVariable(name: "flags", scope: !168, file: !158, line: 531, type: !24)
!168 = distinct !DILexicalBlock(scope: !169, file: !158, line: 530, column: 5)
!169 = distinct !DILexicalBlock(scope: !157, file: !158, line: 529, column: 7)
!170 = !DILocalVariable(name: "saved_errno", scope: !171, file: !158, line: 534, type: !24)
!171 = distinct !DILexicalBlock(scope: !172, file: !158, line: 533, column: 9)
!172 = distinct !DILexicalBlock(scope: !168, file: !158, line: 532, column: 11)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!174 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !{!6}
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !{!8}
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!184 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!185 = !{!186}
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 40, baseType: !62, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !191, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = !{!192}
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !194, file: !193, line: 186, baseType: !62, size: 32, elements: !203)
!193 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!194 = distinct !DISubprogram(name: "x2nrealloc", scope: !193, file: !193, line: 174, type: !195, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !198)
!195 = !DISubroutineType(types: !196)
!196 = !{!8, !8, !197, !97}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!198 = !{!199, !200, !201, !202}
!199 = !DILocalVariable(name: "p", arg: 1, scope: !194, file: !193, line: 174, type: !8)
!200 = !DILocalVariable(name: "pn", arg: 2, scope: !194, file: !193, line: 174, type: !197)
!201 = !DILocalVariable(name: "s", arg: 3, scope: !194, file: !193, line: 174, type: !97)
!202 = !DILocalVariable(name: "n", scope: !194, file: !193, line: 176, type: !97)
!203 = !{!204}
!204 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!205 = !{!97, !6, !8}
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!211 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !218, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!218 = !{!97}
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = !{!224}
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !225, line: 41, baseType: !62, size: 32, elements: !226)
!225 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!227 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!228 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!229 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!230 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!231 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!232 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!233 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!234 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!235 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!236 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!237 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!238 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!239 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!240 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!241 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!246 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!248 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!252 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!253 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!258 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!260 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!264 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!265 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!266 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!267 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!268 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!269 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!270 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!271 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!272 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!273 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!274 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!275 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!276 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!335 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!338 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!343 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!345 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!349 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!422 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!496 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!497 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!498 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!499 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!500 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!501 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!502 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!503 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!504 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!505 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!506 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!507 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!508 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!509 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!511 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!512 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!513 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!514 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!515 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!516 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!542 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!543 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!544 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!545 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!546 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!551 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!552 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!553 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!554 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!611 = !DIFile(filename: "lib/randint.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !614, splitDebugInlining: false, nameTableKind: None)
!613 = !DIFile(filename: "lib/randread.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!614 = !{!8, !97}
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !617, retainedTypes: !673, splitDebugInlining: false, nameTableKind: None)
!616 = !DIFile(filename: "lib/rand-isaac.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!617 = !{!618}
!618 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !619, file: !616, line: 100, baseType: !62, size: 32, elements: !671)
!619 = distinct !DISubprogram(name: "isaac_refill", scope: !616, file: !616, line: 90, type: !620, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !638)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !622, !637}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !624, line: 56, size: 16576, elements: !625)
!624 = !DIFile(filename: "./lib/rand-isaac.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!625 = !{!626, !634, !635, !636}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !623, file: !624, line: 58, baseType: !627, size: 16384)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 16384, elements: !122)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "isaac_word", file: !624, line: 44, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !630, line: 52, baseType: !631)
!630 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !632, line: 59, baseType: !633)
!632 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !632, line: 45, baseType: !99)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !623, file: !624, line: 59, baseType: !628, size: 64, offset: 16384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !623, file: !624, line: 59, baseType: !628, size: 64, offset: 16448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !623, file: !624, line: 59, baseType: !628, size: 64, offset: 16512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !648, !649, !651, !652, !654, !655, !657, !658, !661, !662, !664, !665, !667, !668, !670}
!639 = !DILocalVariable(name: "s", arg: 1, scope: !619, file: !616, line: 90, type: !622)
!640 = !DILocalVariable(name: "result", arg: 2, scope: !619, file: !616, line: 90, type: !637)
!641 = !DILocalVariable(name: "a", scope: !619, file: !616, line: 93, type: !628)
!642 = !DILocalVariable(name: "b", scope: !619, file: !616, line: 94, type: !628)
!643 = !DILocalVariable(name: "m", scope: !619, file: !616, line: 97, type: !637)
!644 = !DILocalVariable(name: "r", scope: !619, file: !616, line: 98, type: !637)
!645 = !DILocalVariable(name: "x", scope: !646, file: !616, line: 118, type: !628)
!646 = distinct !DILexicalBlock(scope: !647, file: !616, line: 118, column: 7)
!647 = distinct !DILexicalBlock(scope: !619, file: !616, line: 117, column: 5)
!648 = !DILocalVariable(name: "y", scope: !646, file: !616, line: 118, type: !628)
!649 = !DILocalVariable(name: "x", scope: !650, file: !616, line: 119, type: !628)
!650 = distinct !DILexicalBlock(scope: !647, file: !616, line: 119, column: 7)
!651 = !DILocalVariable(name: "y", scope: !650, file: !616, line: 119, type: !628)
!652 = !DILocalVariable(name: "x", scope: !653, file: !616, line: 120, type: !628)
!653 = distinct !DILexicalBlock(scope: !647, file: !616, line: 120, column: 7)
!654 = !DILocalVariable(name: "y", scope: !653, file: !616, line: 120, type: !628)
!655 = !DILocalVariable(name: "x", scope: !656, file: !616, line: 121, type: !628)
!656 = distinct !DILexicalBlock(scope: !647, file: !616, line: 121, column: 7)
!657 = !DILocalVariable(name: "y", scope: !656, file: !616, line: 121, type: !628)
!658 = !DILocalVariable(name: "x", scope: !659, file: !616, line: 128, type: !628)
!659 = distinct !DILexicalBlock(scope: !660, file: !616, line: 128, column: 7)
!660 = distinct !DILexicalBlock(scope: !619, file: !616, line: 127, column: 5)
!661 = !DILocalVariable(name: "y", scope: !659, file: !616, line: 128, type: !628)
!662 = !DILocalVariable(name: "x", scope: !663, file: !616, line: 129, type: !628)
!663 = distinct !DILexicalBlock(scope: !660, file: !616, line: 129, column: 7)
!664 = !DILocalVariable(name: "y", scope: !663, file: !616, line: 129, type: !628)
!665 = !DILocalVariable(name: "x", scope: !666, file: !616, line: 130, type: !628)
!666 = distinct !DILexicalBlock(scope: !660, file: !616, line: 130, column: 7)
!667 = !DILocalVariable(name: "y", scope: !666, file: !616, line: 130, type: !628)
!668 = !DILocalVariable(name: "x", scope: !669, file: !616, line: 131, type: !628)
!669 = distinct !DILexicalBlock(scope: !660, file: !616, line: 131, column: 7)
!670 = !DILocalVariable(name: "y", scope: !669, file: !616, line: 131, type: !628)
!671 = !{!672}
!672 = !DIEnumerator(name: "HALF", value: 128, isUnsigned: true)
!673 = !{!628}
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!677 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!679 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!680 = !{!"clang version 12.0.1"}
!681 = !{i32 7, !"Dwarf Version", i32 4}
!682 = !{i32 2, !"Debug Info Version", i32 3}
!683 = !{i32 1, !"wchar_size", i32 4}
!684 = !{i32 7, !"PIC Level", i32 2}
!685 = !{i32 7, !"PIE Level", i32 2}
!686 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 61, type: !687, scopeLine: 62, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !24}
!689 = !{!690}
!690 = !DILocalVariable(name: "status", arg: 1, scope: !686, file: !3, line: 61, type: !24)
!691 = !DILocation(line: 0, scope: !686)
!692 = !DILocation(line: 63, column: 14, scope: !693)
!693 = distinct !DILexicalBlock(scope: !686, file: !3, line: 63, column: 7)
!694 = !DILocation(line: 63, column: 7, scope: !686)
!695 = !DILocation(line: 64, column: 5, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !3, line: 64, column: 5)
!697 = !{!698, !698, i64 0}
!698 = !{!"any pointer", !699, i64 0}
!699 = !{!"omnipotent char", !700, i64 0}
!700 = !{!"Simple C/C++ TBAA"}
!701 = !DILocation(line: 67, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !693, file: !3, line: 66, column: 5)
!703 = !DILocation(line: 68, column: 7, scope: !702)
!704 = !DILocation(line: 73, column: 7, scope: !702)
!705 = !DILocation(line: 76, column: 7, scope: !702)
!706 = !DILocation(line: 77, column: 7, scope: !702)
!707 = !DILocation(line: 82, column: 7, scope: !702)
!708 = !DILocation(line: 86, column: 7, scope: !702)
!709 = !DILocation(line: 93, column: 7, scope: !702)
!710 = !DILocation(line: 98, column: 7, scope: !702)
!711 = !DILocation(line: 99, column: 7, scope: !702)
!712 = !DILocalVariable(name: "program", arg: 1, scope: !713, file: !714, line: 634, type: !15)
!713 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !714, file: !714, line: 634, type: !715, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !717)
!714 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!715 = !DISubroutineType(types: !716)
!716 = !{null, !15}
!717 = !{!712, !718, !727, !728, !730}
!718 = !DILocalVariable(name: "infomap", scope: !713, file: !714, line: 636, type: !719)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 896, elements: !725)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !713, file: !714, line: 636, size: 128, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !721, file: !714, line: 636, baseType: !15, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !714, line: 636, baseType: !15, size: 64, offset: 64)
!725 = !{!726}
!726 = !DISubrange(count: 7)
!727 = !DILocalVariable(name: "node", scope: !713, file: !714, line: 646, type: !15)
!728 = !DILocalVariable(name: "map_prog", scope: !713, file: !714, line: 647, type: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!730 = !DILocalVariable(name: "lc_messages", scope: !713, file: !714, line: 659, type: !15)
!731 = !DILocation(line: 0, scope: !713, inlinedAt: !732)
!732 = distinct !DILocation(line: 100, column: 7, scope: !702)
!733 = !DILocation(line: 636, column: 3, scope: !713, inlinedAt: !732)
!734 = !DILocation(line: 636, column: 67, scope: !713, inlinedAt: !732)
!735 = !DILocation(line: 647, column: 36, scope: !713, inlinedAt: !732)
!736 = !DILocation(line: 649, column: 3, scope: !713, inlinedAt: !732)
!737 = !DILocation(line: 649, column: 33, scope: !713, inlinedAt: !732)
!738 = !DILocation(line: 650, column: 13, scope: !713, inlinedAt: !732)
!739 = !DILocation(line: 649, column: 20, scope: !713, inlinedAt: !732)
!740 = !{!741, !698, i64 0}
!741 = !{!"infomap", !698, i64 0, !698, i64 8}
!742 = !DILocation(line: 649, column: 10, scope: !713, inlinedAt: !732)
!743 = !DILocation(line: 649, column: 28, scope: !713, inlinedAt: !732)
!744 = distinct !{!744, !736, !738, !745}
!745 = !{!"llvm.loop.mustprogress"}
!746 = !DILocation(line: 652, column: 17, scope: !747, inlinedAt: !732)
!747 = distinct !DILexicalBlock(scope: !713, file: !714, line: 652, column: 7)
!748 = !{!741, !698, i64 8}
!749 = !DILocation(line: 652, column: 7, scope: !747, inlinedAt: !732)
!750 = !DILocation(line: 652, column: 7, scope: !713, inlinedAt: !732)
!751 = !DILocation(line: 655, column: 3, scope: !713, inlinedAt: !732)
!752 = !DILocation(line: 659, column: 29, scope: !713, inlinedAt: !732)
!753 = !DILocation(line: 660, column: 7, scope: !754, inlinedAt: !732)
!754 = distinct !DILexicalBlock(scope: !713, file: !714, line: 660, column: 7)
!755 = !DILocation(line: 660, column: 19, scope: !754, inlinedAt: !732)
!756 = !DILocation(line: 660, column: 22, scope: !754, inlinedAt: !732)
!757 = !DILocation(line: 660, column: 7, scope: !713, inlinedAt: !732)
!758 = !DILocation(line: 666, column: 7, scope: !759, inlinedAt: !732)
!759 = distinct !DILexicalBlock(scope: !754, file: !714, line: 661, column: 5)
!760 = !DILocation(line: 668, column: 5, scope: !759, inlinedAt: !732)
!761 = !DILocation(line: 669, column: 3, scope: !713, inlinedAt: !732)
!762 = !DILocation(line: 671, column: 3, scope: !713, inlinedAt: !732)
!763 = !DILocation(line: 673, column: 1, scope: !713, inlinedAt: !732)
!764 = !DILocation(line: 103, column: 3, scope: !686)
!765 = !DISubprogram(name: "dcgettext", scope: !766, file: !766, line: 51, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!766 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!767 = !DISubroutineType(types: !768)
!768 = !{!6, !15, !15, !24}
!769 = !DISubprogram(name: "fputs_unlocked", scope: !770, file: !770, line: 667, type: !771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!770 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!771 = !DISubroutineType(types: !772)
!772 = !{!24, !15, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !775, line: 49, size: 1728, elements: !776)
!775 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !792, !793, !794, !795, !798, !799, !801, !805, !808, !810, !813, !816, !817, !818, !819, !820}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !774, file: !775, line: 51, baseType: !24, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !774, file: !775, line: 54, baseType: !6, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !774, file: !775, line: 55, baseType: !6, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !774, file: !775, line: 56, baseType: !6, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !774, file: !775, line: 57, baseType: !6, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !774, file: !775, line: 58, baseType: !6, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !774, file: !775, line: 59, baseType: !6, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !774, file: !775, line: 60, baseType: !6, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !774, file: !775, line: 61, baseType: !6, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !774, file: !775, line: 64, baseType: !6, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !774, file: !775, line: 65, baseType: !6, size: 64, offset: 640)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !774, file: !775, line: 66, baseType: !6, size: 64, offset: 704)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !774, file: !775, line: 68, baseType: !790, size: 64, offset: 768)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !775, line: 36, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !774, file: !775, line: 70, baseType: !773, size: 64, offset: 832)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !774, file: !775, line: 72, baseType: !24, size: 32, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !774, file: !775, line: 73, baseType: !24, size: 32, offset: 928)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !774, file: !775, line: 74, baseType: !796, size: 64, offset: 960)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !632, line: 152, baseType: !797)
!797 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !774, file: !775, line: 77, baseType: !96, size: 16, offset: 1024)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !774, file: !775, line: 78, baseType: !800, size: 8, offset: 1040)
!800 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !774, file: !775, line: 79, baseType: !802, size: 8, offset: 1048)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 1)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !774, file: !775, line: 81, baseType: !806, size: 64, offset: 1088)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !775, line: 43, baseType: null)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !774, file: !775, line: 89, baseType: !809, size: 64, offset: 1152)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !632, line: 153, baseType: !797)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !774, file: !775, line: 91, baseType: !811, size: 64, offset: 1216)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !775, line: 37, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !774, file: !775, line: 92, baseType: !814, size: 64, offset: 1280)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !775, line: 38, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !774, file: !775, line: 93, baseType: !773, size: 64, offset: 1344)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !774, file: !775, line: 94, baseType: !8, size: 64, offset: 1408)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !774, file: !775, line: 95, baseType: !97, size: 64, offset: 1472)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !774, file: !775, line: 96, baseType: !24, size: 32, offset: 1536)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !774, file: !775, line: 98, baseType: !821, size: 160, offset: 1568)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 20)
!824 = !DISubprogram(name: "setlocale", scope: !825, file: !825, line: 122, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!825 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!826 = !DISubroutineType(types: !827)
!827 = !{!6, !24, !15}
!828 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 146, type: !829, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!829 = !DISubroutineType(types: !830)
!830 = !{!24, !24, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !853, !858, !862, !865, !867}
!833 = !DILocalVariable(name: "argc", arg: 1, scope: !828, file: !3, line: 146, type: !24)
!834 = !DILocalVariable(name: "argv", arg: 2, scope: !828, file: !3, line: 146, type: !831)
!835 = !DILocalVariable(name: "dest_dir", scope: !828, file: !3, line: 148, type: !15)
!836 = !DILocalVariable(name: "dest_dir_arg", scope: !828, file: !3, line: 149, type: !15)
!837 = !DILocalVariable(name: "suppress_file_err", scope: !828, file: !3, line: 150, type: !12)
!838 = !DILocalVariable(name: "c", scope: !828, file: !3, line: 151, type: !24)
!839 = !DILocalVariable(name: "n_args", scope: !828, file: !3, line: 152, type: !62)
!840 = !DILocalVariable(name: "template", scope: !828, file: !3, line: 153, type: !6)
!841 = !DILocalVariable(name: "suffix", scope: !828, file: !3, line: 154, type: !6)
!842 = !DILocalVariable(name: "use_dest_dir", scope: !828, file: !3, line: 155, type: !12)
!843 = !DILocalVariable(name: "deprecated_t_option", scope: !828, file: !3, line: 156, type: !12)
!844 = !DILocalVariable(name: "create_directory", scope: !828, file: !3, line: 157, type: !12)
!845 = !DILocalVariable(name: "dry_run", scope: !828, file: !3, line: 158, type: !12)
!846 = !DILocalVariable(name: "status", scope: !828, file: !3, line: 159, type: !24)
!847 = !DILocalVariable(name: "x_count", scope: !828, file: !3, line: 160, type: !97)
!848 = !DILocalVariable(name: "suffix_len", scope: !828, file: !3, line: 161, type: !97)
!849 = !DILocalVariable(name: "dest_name", scope: !828, file: !3, line: 162, type: !6)
!850 = !DILocalVariable(name: "len", scope: !851, file: !3, line: 227, type: !97)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 226, column: 5)
!852 = distinct !DILexicalBlock(scope: !828, file: !3, line: 225, column: 7)
!853 = !DILocalVariable(name: "env", scope: !854, file: !3, line: 267, type: !6)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 266, column: 9)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 265, column: 11)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 264, column: 5)
!857 = distinct !DILexicalBlock(scope: !828, file: !3, line: 263, column: 7)
!858 = !DILocalVariable(name: "env", scope: !859, file: !3, line: 286, type: !6)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 285, column: 13)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 282, column: 15)
!861 = distinct !DILexicalBlock(scope: !855, file: !3, line: 281, column: 9)
!862 = !DILocalVariable(name: "err", scope: !863, file: !3, line: 308, type: !24)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 307, column: 5)
!864 = distinct !DILexicalBlock(scope: !828, file: !3, line: 306, column: 7)
!865 = !DILocalVariable(name: "fd", scope: !866, file: !3, line: 319, type: !24)
!866 = distinct !DILexicalBlock(scope: !864, file: !3, line: 318, column: 5)
!867 = !DILocalVariable(name: "saved_errno", scope: !868, file: !3, line: 336, type: !24)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 335, column: 9)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 334, column: 11)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 330, column: 5)
!871 = distinct !DILexicalBlock(scope: !828, file: !3, line: 329, column: 7)
!872 = !DILocation(line: 0, scope: !828)
!873 = !DILocation(line: 165, column: 21, scope: !828)
!874 = !DILocation(line: 165, column: 3, scope: !828)
!875 = !DILocation(line: 166, column: 3, scope: !828)
!876 = !DILocation(line: 167, column: 3, scope: !828)
!877 = !DILocation(line: 168, column: 3, scope: !828)
!878 = !DILocation(line: 170, column: 3, scope: !828)
!879 = !DILocation(line: 172, column: 3, scope: !828)
!880 = !DILocation(line: 150, column: 8, scope: !828)
!881 = !DILocation(line: 172, column: 15, scope: !828)
!882 = distinct !{!882, !879, !883, !745}
!883 = !DILocation(line: 206, column: 5, scope: !828)
!884 = !DILocation(line: 180, column: 26, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 175, column: 9)
!886 = distinct !DILexicalBlock(scope: !828, file: !3, line: 173, column: 5)
!887 = !DILocation(line: 182, column: 11, scope: !885)
!888 = !DILocation(line: 195, column: 20, scope: !885)
!889 = !DILocation(line: 196, column: 11, scope: !885)
!890 = !DILocation(line: 198, column: 9, scope: !885)
!891 = !DILocation(line: 202, column: 9, scope: !885)
!892 = !DILocation(line: 204, column: 11, scope: !885)
!893 = !DILocation(line: 208, column: 19, scope: !828)
!894 = !{!895, !895, i64 0}
!895 = !{!"int", !699, i64 0}
!896 = !DILocation(line: 208, column: 17, scope: !828)
!897 = !DILocation(line: 209, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !828, file: !3, line: 209, column: 7)
!899 = !DILocation(line: 209, column: 7, scope: !828)
!900 = !DILocation(line: 211, column: 20, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 210, column: 5)
!902 = !DILocation(line: 211, column: 7, scope: !901)
!903 = !DILocation(line: 212, column: 7, scope: !901)
!904 = !DILocation(line: 215, column: 14, scope: !905)
!905 = distinct !DILexicalBlock(scope: !828, file: !3, line: 215, column: 7)
!906 = !DILocation(line: 215, column: 7, scope: !828)
!907 = !DILocation(line: 222, column: 18, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 221, column: 5)
!909 = !DILocation(line: 0, scope: !905)
!910 = !DILocation(line: 225, column: 7, scope: !852)
!911 = !DILocation(line: 225, column: 7, scope: !828)
!912 = !DILocation(line: 227, column: 20, scope: !851)
!913 = !DILocation(line: 0, scope: !851)
!914 = !DILocation(line: 228, column: 12, scope: !915)
!915 = distinct !DILexicalBlock(scope: !851, file: !3, line: 228, column: 11)
!916 = !DILocation(line: 228, column: 16, scope: !915)
!917 = !DILocation(line: 228, column: 32, scope: !915)
!918 = !DILocation(line: 228, column: 19, scope: !915)
!919 = !{!699, !699, i64 0}
!920 = !DILocation(line: 228, column: 37, scope: !915)
!921 = !DILocation(line: 228, column: 11, scope: !851)
!922 = !DILocation(line: 230, column: 11, scope: !923)
!923 = distinct !DILexicalBlock(scope: !915, file: !3, line: 229, column: 9)
!924 = !DILocation(line: 234, column: 20, scope: !851)
!925 = !DILocation(line: 235, column: 35, scope: !851)
!926 = !DILocation(line: 235, column: 48, scope: !851)
!927 = !DILocalVariable(name: "n", arg: 1, scope: !928, file: !193, line: 216, type: !97)
!928 = distinct !DISubprogram(name: "xcharalloc", scope: !193, file: !193, line: 216, type: !929, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{!6, !97}
!931 = !{!927}
!932 = !DILocation(line: 0, scope: !928, inlinedAt: !933)
!933 = distinct !DILocation(line: 235, column: 19, scope: !851)
!934 = !DILocation(line: 218, column: 10, scope: !928, inlinedAt: !933)
!935 = !DILocalVariable(name: "__dest", arg: 1, scope: !936, file: !937, line: 26, type: !940)
!936 = distinct !DISubprogram(name: "memcpy", scope: !937, file: !937, line: 26, type: !938, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!937 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!938 = !DISubroutineType(types: !939)
!939 = !{!8, !940, !941, !97}
!940 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!941 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!944 = !{!935, !945, !946}
!945 = !DILocalVariable(name: "__src", arg: 2, scope: !936, file: !937, line: 26, type: !941)
!946 = !DILocalVariable(name: "__len", arg: 3, scope: !936, file: !937, line: 26, type: !97)
!947 = !DILocation(line: 0, scope: !936, inlinedAt: !948)
!948 = distinct !DILocation(line: 236, column: 7, scope: !851)
!949 = !DILocation(line: 29, column: 10, scope: !936, inlinedAt: !948)
!950 = !DILocation(line: 237, column: 25, scope: !851)
!951 = !DILocation(line: 0, scope: !936, inlinedAt: !952)
!952 = distinct !DILocation(line: 237, column: 7, scope: !851)
!953 = !DILocation(line: 29, column: 10, scope: !936, inlinedAt: !952)
!954 = !DILocation(line: 240, column: 5, scope: !851)
!955 = !DILocation(line: 243, column: 18, scope: !956)
!956 = distinct !DILexicalBlock(scope: !852, file: !3, line: 242, column: 5)
!957 = !DILocation(line: 244, column: 16, scope: !956)
!958 = !DILocation(line: 245, column: 12, scope: !959)
!959 = distinct !DILexicalBlock(scope: !956, file: !3, line: 245, column: 11)
!960 = !DILocation(line: 245, column: 11, scope: !956)
!961 = !DILocation(line: 246, column: 18, scope: !959)
!962 = !DILocation(line: 246, column: 9, scope: !959)
!963 = !DILocation(line: 248, column: 15, scope: !959)
!964 = !DILocation(line: 0, scope: !959)
!965 = !DILocation(line: 249, column: 20, scope: !956)
!966 = !DILocation(line: 0, scope: !852)
!967 = !DILocation(line: 253, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !828, file: !3, line: 253, column: 7)
!969 = !DILocation(line: 253, column: 18, scope: !968)
!970 = !DILocation(line: 253, column: 21, scope: !968)
!971 = !DILocation(line: 253, column: 45, scope: !968)
!972 = !DILocation(line: 253, column: 7, scope: !828)
!973 = !DILocation(line: 255, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !968, file: !3, line: 254, column: 5)
!975 = !DILocation(line: 259, column: 53, scope: !828)
!976 = !DILocalVariable(name: "s", arg: 1, scope: !977, file: !3, line: 107, type: !15)
!977 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !3, file: !3, line: 107, type: !978, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{!97, !15, !97}
!980 = !{!976, !981, !982}
!981 = !DILocalVariable(name: "len", arg: 2, scope: !977, file: !3, line: 107, type: !97)
!982 = !DILocalVariable(name: "n", scope: !977, file: !3, line: 109, type: !97)
!983 = !DILocation(line: 0, scope: !977, inlinedAt: !984)
!984 = distinct !DILocation(line: 259, column: 13, scope: !828)
!985 = !DILocation(line: 110, column: 11, scope: !986, inlinedAt: !984)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 110, column: 3)
!987 = distinct !DILexicalBlock(scope: !977, file: !3, line: 110, column: 3)
!988 = !DILocation(line: 110, column: 15, scope: !986, inlinedAt: !984)
!989 = !DILocation(line: 110, column: 23, scope: !986, inlinedAt: !984)
!990 = !DILocation(line: 110, column: 18, scope: !986, inlinedAt: !984)
!991 = !DILocation(line: 110, column: 27, scope: !986, inlinedAt: !984)
!992 = !DILocation(line: 110, column: 3, scope: !987, inlinedAt: !984)
!993 = !DILocation(line: 111, column: 5, scope: !986, inlinedAt: !984)
!994 = distinct !{!994, !992, !995, !745}
!995 = !DILocation(line: 111, column: 7, scope: !987, inlinedAt: !984)
!996 = !DILocation(line: 260, column: 15, scope: !997)
!997 = distinct !DILexicalBlock(scope: !828, file: !3, line: 260, column: 7)
!998 = !DILocation(line: 260, column: 7, scope: !828)
!999 = !DILocation(line: 261, column: 5, scope: !997)
!1000 = !DILocation(line: 263, column: 7, scope: !857)
!1001 = !DILocation(line: 263, column: 7, scope: !828)
!1002 = !DILocation(line: 265, column: 11, scope: !856)
!1003 = !DILocation(line: 267, column: 23, scope: !854)
!1004 = !DILocation(line: 0, scope: !854)
!1005 = !DILocation(line: 268, column: 15, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !854, file: !3, line: 268, column: 15)
!1007 = !DILocation(line: 268, column: 19, scope: !1006)
!1008 = !DILocation(line: 268, column: 22, scope: !1006)
!1009 = !DILocation(line: 268, column: 15, scope: !854)
!1010 = !DILocation(line: 270, column: 20, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 270, column: 20)
!1012 = !DILocation(line: 270, column: 33, scope: !1011)
!1013 = !DILocation(line: 270, column: 36, scope: !1011)
!1014 = !DILocation(line: 270, column: 20, scope: !1006)
!1015 = !DILocation(line: 0, scope: !1006)
!1016 = !DILocation(line: 275, column: 15, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !854, file: !3, line: 275, column: 15)
!1018 = !DILocation(line: 275, column: 41, scope: !1017)
!1019 = !DILocation(line: 275, column: 15, scope: !854)
!1020 = !DILocation(line: 276, column: 13, scope: !1017)
!1021 = !DILocation(line: 282, column: 15, scope: !860)
!1022 = !DILocation(line: 282, column: 28, scope: !860)
!1023 = !DILocation(line: 282, column: 31, scope: !860)
!1024 = !DILocation(line: 282, column: 15, scope: !861)
!1025 = !DILocation(line: 286, column: 27, scope: !859)
!1026 = !DILocation(line: 0, scope: !859)
!1027 = !DILocation(line: 287, column: 27, scope: !859)
!1028 = !DILocation(line: 287, column: 31, scope: !859)
!1029 = !DILocation(line: 287, column: 34, scope: !859)
!1030 = !DILocation(line: 0, scope: !860)
!1031 = !DILocation(line: 289, column: 15, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !861, file: !3, line: 289, column: 15)
!1033 = !DILocation(line: 289, column: 15, scope: !861)
!1034 = !DILocation(line: 290, column: 13, scope: !1032)
!1035 = !DILocation(line: 0, scope: !855)
!1036 = !DILocation(line: 296, column: 19, scope: !856)
!1037 = !DILocation(line: 297, column: 7, scope: !856)
!1038 = !DILocation(line: 300, column: 5, scope: !856)
!1039 = !DILocation(line: 304, column: 15, scope: !828)
!1040 = !DILocation(line: 306, column: 7, scope: !864)
!1041 = !DILocation(line: 306, column: 7, scope: !828)
!1042 = !DILocation(line: 308, column: 62, scope: !863)
!1043 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1044, file: !3, line: 123, type: !6)
!1044 = distinct !DISubprogram(name: "mkdtemp_len", scope: !3, file: !3, line: 123, type: !1045, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!24, !6, !97, !97, !12}
!1047 = !{!1043, !1048, !1049, !1050}
!1048 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1044, file: !3, line: 123, type: !97)
!1049 = !DILocalVariable(name: "x_len", arg: 3, scope: !1044, file: !3, line: 123, type: !97)
!1050 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1044, file: !3, line: 123, type: !12)
!1051 = !DILocation(line: 0, scope: !1044, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 308, column: 17, scope: !863)
!1053 = !DILocation(line: 125, column: 34, scope: !1044, inlinedAt: !1052)
!1054 = !DILocation(line: 125, column: 47, scope: !1044, inlinedAt: !1052)
!1055 = !DILocation(line: 125, column: 10, scope: !1044, inlinedAt: !1052)
!1056 = !DILocation(line: 0, scope: !863)
!1057 = !DILocation(line: 309, column: 15, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !863, file: !3, line: 309, column: 11)
!1059 = !DILocation(line: 309, column: 11, scope: !863)
!1060 = !DILocation(line: 311, column: 16, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 311, column: 15)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 310, column: 9)
!1063 = !DILocation(line: 311, column: 15, scope: !1062)
!1064 = !DILocation(line: 312, column: 23, scope: !1061)
!1065 = !DILocation(line: 312, column: 30, scope: !1061)
!1066 = !DILocation(line: 313, column: 20, scope: !1061)
!1067 = !DILocation(line: 312, column: 13, scope: !1061)
!1068 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1069, file: !3, line: 116, type: !6)
!1069 = distinct !DISubprogram(name: "mkstemp_len", scope: !3, file: !3, line: 116, type: !1045, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1070)
!1070 = !{!1068, !1071, !1072, !1073}
!1071 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1069, file: !3, line: 116, type: !97)
!1072 = !DILocalVariable(name: "x_len", arg: 3, scope: !1069, file: !3, line: 116, type: !97)
!1073 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1069, file: !3, line: 116, type: !12)
!1074 = !DILocation(line: 0, scope: !1069, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 319, column: 16, scope: !866)
!1076 = !DILocation(line: 118, column: 34, scope: !1069, inlinedAt: !1075)
!1077 = !DILocation(line: 118, column: 47, scope: !1069, inlinedAt: !1075)
!1078 = !DILocation(line: 118, column: 10, scope: !1069, inlinedAt: !1075)
!1079 = !DILocation(line: 0, scope: !866)
!1080 = !DILocation(line: 320, column: 14, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !866, file: !3, line: 320, column: 11)
!1082 = !DILocation(line: 320, column: 18, scope: !1081)
!1083 = !DILocation(line: 319, column: 61, scope: !866)
!1084 = !DILocation(line: 320, column: 31, scope: !1081)
!1085 = !DILocation(line: 331, column: 7, scope: !870)
!1086 = !DILocation(line: 334, column: 20, scope: !869)
!1087 = !DILocation(line: 320, column: 34, scope: !1081)
!1088 = !DILocation(line: 320, column: 45, scope: !1081)
!1089 = !DILocation(line: 320, column: 11, scope: !866)
!1090 = !DILocation(line: 322, column: 16, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 322, column: 15)
!1092 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 321, column: 9)
!1093 = !DILocation(line: 322, column: 15, scope: !1092)
!1094 = !DILocation(line: 323, column: 23, scope: !1091)
!1095 = !DILocation(line: 323, column: 30, scope: !1091)
!1096 = !DILocation(line: 324, column: 20, scope: !1091)
!1097 = !DILocation(line: 323, column: 13, scope: !1091)
!1098 = !DILocation(line: 334, column: 12, scope: !869)
!1099 = !DILocation(line: 334, column: 39, scope: !869)
!1100 = !DILocation(line: 334, column: 62, scope: !869)
!1101 = !DILocation(line: 334, column: 48, scope: !869)
!1102 = !DILocation(line: 334, column: 70, scope: !869)
!1103 = !DILocation(line: 334, column: 11, scope: !870)
!1104 = !DILocation(line: 336, column: 29, scope: !868)
!1105 = !DILocation(line: 0, scope: !868)
!1106 = !DILocation(line: 337, column: 11, scope: !868)
!1107 = !DILocation(line: 338, column: 16, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !868, file: !3, line: 338, column: 15)
!1109 = !DILocation(line: 338, column: 15, scope: !868)
!1110 = !DILocation(line: 339, column: 36, scope: !1108)
!1111 = !DILocation(line: 339, column: 13, scope: !1108)
!1112 = !DILocation(line: 350, column: 1, scope: !828)
!1113 = !DISubprogram(name: "bindtextdomain", scope: !766, file: !766, line: 86, type: !1114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!6, !15, !15}
!1116 = !DISubprogram(name: "textdomain", scope: !766, file: !766, line: 82, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!6, !15}
!1119 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !3, file: !3, line: 137, type: !1120, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null}
!1122 = !DILocation(line: 139, column: 8, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 139, column: 7)
!1124 = !DILocation(line: 139, column: 7, scope: !1119)
!1125 = !DILocation(line: 140, column: 5, scope: !1123)
!1126 = !DILocation(line: 141, column: 26, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 141, column: 12)
!1128 = !DILocation(line: 141, column: 12, scope: !1127)
!1129 = !DILocation(line: 141, column: 34, scope: !1127)
!1130 = !DILocation(line: 141, column: 12, scope: !1123)
!1131 = !DILocation(line: 142, column: 5, scope: !1127)
!1132 = !DILocation(line: 143, column: 1, scope: !1119)
!1133 = !DISubprogram(name: "atexit", scope: !1134, file: !1134, line: 595, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1134 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!24, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1138 = !DISubprogram(name: "getopt_long", scope: !20, file: !20, line: 66, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!24, !24, !1141, !15, !1143, !26}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1144 = !DISubprogram(name: "error", scope: !1145, file: !1145, line: 52, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1145 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !24, !24, !15, null}
!1148 = !DISubprogram(name: "getenv", scope: !1134, file: !1134, line: 634, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1149 = !DISubprogram(name: "puts", scope: !770, file: !770, line: 637, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!24, !15}
!1152 = !DISubprogram(name: "close", scope: !1153, file: !1153, line: 353, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1153 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!24, !24}
!1156 = !DISubprogram(name: "remove", scope: !770, file: !770, line: 146, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1157 = distinct !DISubprogram(name: "close_stream", scope: !174, file: !174, line: 56, type: !1158, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !1195)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!24, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1162, line: 7, baseType: !1163)
!1162 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !775, line: 49, size: 1728, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1163, file: !775, line: 51, baseType: !24, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1163, file: !775, line: 54, baseType: !6, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1163, file: !775, line: 55, baseType: !6, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1163, file: !775, line: 56, baseType: !6, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1163, file: !775, line: 57, baseType: !6, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1163, file: !775, line: 58, baseType: !6, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1163, file: !775, line: 59, baseType: !6, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1163, file: !775, line: 60, baseType: !6, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1163, file: !775, line: 61, baseType: !6, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1163, file: !775, line: 64, baseType: !6, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1163, file: !775, line: 65, baseType: !6, size: 64, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1163, file: !775, line: 66, baseType: !6, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1163, file: !775, line: 68, baseType: !790, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1163, file: !775, line: 70, baseType: !1179, size: 64, offset: 832)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1163, file: !775, line: 72, baseType: !24, size: 32, offset: 896)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1163, file: !775, line: 73, baseType: !24, size: 32, offset: 928)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1163, file: !775, line: 74, baseType: !796, size: 64, offset: 960)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1163, file: !775, line: 77, baseType: !96, size: 16, offset: 1024)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1163, file: !775, line: 78, baseType: !800, size: 8, offset: 1040)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1163, file: !775, line: 79, baseType: !802, size: 8, offset: 1048)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1163, file: !775, line: 81, baseType: !806, size: 64, offset: 1088)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1163, file: !775, line: 89, baseType: !809, size: 64, offset: 1152)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1163, file: !775, line: 91, baseType: !811, size: 64, offset: 1216)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1163, file: !775, line: 92, baseType: !814, size: 64, offset: 1280)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1163, file: !775, line: 93, baseType: !1179, size: 64, offset: 1344)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1163, file: !775, line: 94, baseType: !8, size: 64, offset: 1408)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1163, file: !775, line: 95, baseType: !97, size: 64, offset: 1472)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1163, file: !775, line: 96, baseType: !24, size: 32, offset: 1536)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1163, file: !775, line: 98, baseType: !821, size: 160, offset: 1568)
!1195 = !{!1196, !1197, !1199, !1200}
!1196 = !DILocalVariable(name: "stream", arg: 1, scope: !1157, file: !174, line: 56, type: !1160)
!1197 = !DILocalVariable(name: "some_pending", scope: !1157, file: !174, line: 58, type: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!1199 = !DILocalVariable(name: "prev_fail", scope: !1157, file: !174, line: 59, type: !1198)
!1200 = !DILocalVariable(name: "fclose_fail", scope: !1157, file: !174, line: 60, type: !1198)
!1201 = !DILocation(line: 0, scope: !1157)
!1202 = !DILocation(line: 58, column: 30, scope: !1157)
!1203 = !DILocalVariable(name: "__stream", arg: 1, scope: !1204, file: !1205, line: 135, type: !1160)
!1204 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1205, file: !1205, line: 135, type: !1158, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !1206)
!1205 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1206 = !{!1203}
!1207 = !DILocation(line: 0, scope: !1204, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 59, column: 27, scope: !1157)
!1209 = !DILocation(line: 137, column: 10, scope: !1204, inlinedAt: !1208)
!1210 = !{!1211, !895, i64 0}
!1211 = !{!"_IO_FILE", !895, i64 0, !698, i64 8, !698, i64 16, !698, i64 24, !698, i64 32, !698, i64 40, !698, i64 48, !698, i64 56, !698, i64 64, !698, i64 72, !698, i64 80, !698, i64 88, !698, i64 96, !698, i64 104, !895, i64 112, !895, i64 116, !1212, i64 120, !1213, i64 128, !699, i64 130, !699, i64 131, !698, i64 136, !1212, i64 144, !698, i64 152, !698, i64 160, !698, i64 168, !698, i64 176, !1212, i64 184, !895, i64 192, !699, i64 196}
!1212 = !{!"long", !699, i64 0}
!1213 = !{!"short", !699, i64 0}
!1214 = !DILocation(line: 59, column: 43, scope: !1157)
!1215 = !DILocation(line: 60, column: 29, scope: !1157)
!1216 = !DILocation(line: 60, column: 45, scope: !1157)
!1217 = !DILocation(line: 70, column: 17, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1157, file: !174, line: 70, column: 7)
!1219 = !DILocation(line: 58, column: 50, scope: !1157)
!1220 = !DILocation(line: 70, column: 33, scope: !1218)
!1221 = !DILocation(line: 70, column: 53, scope: !1218)
!1222 = !DILocation(line: 70, column: 59, scope: !1218)
!1223 = !DILocation(line: 70, column: 7, scope: !1157)
!1224 = !DILocation(line: 72, column: 11, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1218, file: !174, line: 71, column: 5)
!1226 = !DILocation(line: 73, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !174, line: 72, column: 11)
!1228 = !DILocation(line: 73, column: 15, scope: !1227)
!1229 = !DILocation(line: 78, column: 1, scope: !1157)
!1230 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !39, file: !39, line: 51, type: !715, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1231)
!1231 = !{!1232}
!1232 = !DILocalVariable(name: "file", arg: 1, scope: !1230, file: !39, line: 51, type: !15)
!1233 = !DILocation(line: 0, scope: !1230)
!1234 = !DILocation(line: 53, column: 13, scope: !1230)
!1235 = !DILocation(line: 54, column: 1, scope: !1230)
!1236 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !39, file: !39, line: 88, type: !1237, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1239)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !12}
!1239 = !{!1240}
!1240 = !DILocalVariable(name: "ignore", arg: 1, scope: !1236, file: !39, line: 88, type: !12)
!1241 = !DILocation(line: 0, scope: !1236)
!1242 = !DILocation(line: 90, column: 16, scope: !1236)
!1243 = !{!1244, !1244, i64 0}
!1244 = !{!"_Bool", !699, i64 0}
!1245 = !DILocation(line: 91, column: 1, scope: !1236)
!1246 = distinct !DISubprogram(name: "close_stdout", scope: !39, file: !39, line: 117, type: !1120, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1247)
!1247 = !{!1248}
!1248 = !DILocalVariable(name: "write_error", scope: !1249, file: !39, line: 122, type: !15)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !39, line: 121, column: 5)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !39, line: 119, column: 7)
!1251 = !DILocation(line: 119, column: 21, scope: !1250)
!1252 = !DILocation(line: 119, column: 7, scope: !1250)
!1253 = !DILocation(line: 119, column: 29, scope: !1250)
!1254 = !DILocation(line: 120, column: 7, scope: !1250)
!1255 = !DILocation(line: 120, column: 12, scope: !1250)
!1256 = !{i8 0, i8 2}
!1257 = !DILocation(line: 120, column: 25, scope: !1250)
!1258 = !DILocation(line: 120, column: 28, scope: !1250)
!1259 = !DILocation(line: 120, column: 34, scope: !1250)
!1260 = !DILocation(line: 119, column: 7, scope: !1246)
!1261 = !DILocation(line: 122, column: 33, scope: !1249)
!1262 = !DILocation(line: 0, scope: !1249)
!1263 = !DILocation(line: 123, column: 11, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1249, file: !39, line: 123, column: 11)
!1265 = !DILocation(line: 0, scope: !1264)
!1266 = !DILocation(line: 123, column: 11, scope: !1249)
!1267 = !DILocation(line: 124, column: 36, scope: !1264)
!1268 = !DILocation(line: 124, column: 9, scope: !1264)
!1269 = !DILocation(line: 127, column: 9, scope: !1264)
!1270 = !DILocation(line: 129, column: 14, scope: !1249)
!1271 = !DILocation(line: 129, column: 7, scope: !1249)
!1272 = !DILocation(line: 134, column: 42, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1246, file: !39, line: 134, column: 7)
!1274 = !DILocation(line: 134, column: 28, scope: !1273)
!1275 = !DILocation(line: 134, column: 50, scope: !1273)
!1276 = !DILocation(line: 134, column: 7, scope: !1246)
!1277 = !DILocation(line: 135, column: 12, scope: !1273)
!1278 = !DILocation(line: 135, column: 5, scope: !1273)
!1279 = !DILocation(line: 136, column: 1, scope: !1246)
!1280 = distinct !DISubprogram(name: "last_component", scope: !176, file: !176, line: 30, type: !1117, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1281)
!1281 = !{!1282, !1283, !1284, !1285}
!1282 = !DILocalVariable(name: "name", arg: 1, scope: !1280, file: !176, line: 30, type: !15)
!1283 = !DILocalVariable(name: "base", scope: !1280, file: !176, line: 32, type: !15)
!1284 = !DILocalVariable(name: "p", scope: !1280, file: !176, line: 33, type: !15)
!1285 = !DILocalVariable(name: "saw_slash", scope: !1280, file: !176, line: 34, type: !12)
!1286 = !DILocation(line: 0, scope: !1280)
!1287 = !DILocation(line: 36, column: 3, scope: !1280)
!1288 = !DILocation(line: 36, column: 10, scope: !1280)
!1289 = !DILocation(line: 37, column: 9, scope: !1280)
!1290 = distinct !{!1290, !1287, !1289, !745}
!1291 = !DILocation(line: 39, column: 18, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !176, line: 39, column: 3)
!1293 = distinct !DILexicalBlock(scope: !1280, file: !176, line: 39, column: 3)
!1294 = !DILocation(line: 32, column: 15, scope: !1280)
!1295 = !DILocation(line: 0, scope: !1293)
!1296 = !DILocation(line: 39, column: 3, scope: !1293)
!1297 = !DILocation(line: 43, column: 16, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !176, line: 43, column: 16)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !176, line: 41, column: 11)
!1300 = distinct !DILexicalBlock(scope: !1292, file: !176, line: 40, column: 5)
!1301 = !DILocation(line: 43, column: 16, scope: !1299)
!1302 = !DILocation(line: 39, column: 23, scope: !1292)
!1303 = !DILocation(line: 39, column: 3, scope: !1292)
!1304 = distinct !{!1304, !1296, !1305, !745}
!1305 = !DILocation(line: 48, column: 5, scope: !1293)
!1306 = !DILocation(line: 50, column: 3, scope: !1280)
!1307 = distinct !DISubprogram(name: "base_len", scope: !176, file: !176, line: 58, type: !1308, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1310)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!97, !15}
!1310 = !{!1311, !1312, !1313}
!1311 = !DILocalVariable(name: "name", arg: 1, scope: !1307, file: !176, line: 58, type: !15)
!1312 = !DILocalVariable(name: "len", scope: !1307, file: !176, line: 60, type: !97)
!1313 = !DILocalVariable(name: "prefix_len", scope: !1307, file: !176, line: 61, type: !97)
!1314 = !DILocation(line: 0, scope: !1307)
!1315 = !DILocation(line: 63, column: 14, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1307, file: !176, line: 63, column: 3)
!1317 = !DILocation(line: 63, column: 8, scope: !1316)
!1318 = !DILocation(line: 0, scope: !1316)
!1319 = !DILocation(line: 63, column: 32, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !176, line: 63, column: 3)
!1321 = !DILocation(line: 63, column: 38, scope: !1320)
!1322 = !DILocation(line: 63, column: 41, scope: !1320)
!1323 = !DILocation(line: 63, column: 3, scope: !1316)
!1324 = distinct !{!1324, !1323, !1325, !745}
!1325 = !DILocation(line: 64, column: 5, scope: !1316)
!1326 = !DILocation(line: 74, column: 3, scope: !1307)
!1327 = distinct !DISubprogram(name: "file_name_concat", scope: !179, file: !179, line: 35, type: !1328, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !1330)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!6, !15, !15, !831}
!1330 = !{!1331, !1332, !1333, !1334}
!1331 = !DILocalVariable(name: "dir", arg: 1, scope: !1327, file: !179, line: 35, type: !15)
!1332 = !DILocalVariable(name: "base", arg: 2, scope: !1327, file: !179, line: 35, type: !15)
!1333 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1327, file: !179, line: 35, type: !831)
!1334 = !DILocalVariable(name: "p", scope: !1327, file: !179, line: 37, type: !6)
!1335 = !DILocation(line: 0, scope: !1327)
!1336 = !DILocation(line: 37, column: 13, scope: !1327)
!1337 = !DILocation(line: 38, column: 9, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1327, file: !179, line: 38, column: 7)
!1339 = !DILocation(line: 38, column: 7, scope: !1327)
!1340 = !DILocation(line: 39, column: 5, scope: !1338)
!1341 = !DILocation(line: 40, column: 3, scope: !1327)
!1342 = distinct !DISubprogram(name: "mfile_name_concat", scope: !182, file: !182, line: 47, type: !1328, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353}
!1344 = !DILocalVariable(name: "dir", arg: 1, scope: !1342, file: !182, line: 47, type: !15)
!1345 = !DILocalVariable(name: "base", arg: 2, scope: !1342, file: !182, line: 47, type: !15)
!1346 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1342, file: !182, line: 47, type: !831)
!1347 = !DILocalVariable(name: "dirbase", scope: !1342, file: !182, line: 49, type: !15)
!1348 = !DILocalVariable(name: "dirbaselen", scope: !1342, file: !182, line: 50, type: !97)
!1349 = !DILocalVariable(name: "dirlen", scope: !1342, file: !182, line: 51, type: !97)
!1350 = !DILocalVariable(name: "baselen", scope: !1342, file: !182, line: 52, type: !97)
!1351 = !DILocalVariable(name: "sep", scope: !1342, file: !182, line: 53, type: !7)
!1352 = !DILocalVariable(name: "p_concat", scope: !1342, file: !182, line: 70, type: !6)
!1353 = !DILocalVariable(name: "p", scope: !1342, file: !182, line: 71, type: !6)
!1354 = !DILocation(line: 0, scope: !1342)
!1355 = !DILocation(line: 49, column: 25, scope: !1342)
!1356 = !DILocation(line: 50, column: 23, scope: !1342)
!1357 = !DILocation(line: 51, column: 27, scope: !1342)
!1358 = !DILocation(line: 51, column: 33, scope: !1342)
!1359 = !DILocation(line: 52, column: 20, scope: !1342)
!1360 = !DILocation(line: 54, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1342, file: !182, line: 54, column: 7)
!1362 = !DILocation(line: 54, column: 7, scope: !1342)
!1363 = !DILocation(line: 57, column: 13, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !182, line: 57, column: 11)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !182, line: 55, column: 5)
!1366 = !DILocation(line: 57, column: 39, scope: !1364)
!1367 = !DILocation(line: 57, column: 44, scope: !1364)
!1368 = !DILocation(line: 57, column: 11, scope: !1365)
!1369 = !DILocation(line: 60, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1361, file: !182, line: 60, column: 12)
!1371 = !DILocation(line: 60, column: 12, scope: !1361)
!1372 = !DILocation(line: 70, column: 35, scope: !1342)
!1373 = !DILocation(line: 70, column: 52, scope: !1342)
!1374 = !DILocation(line: 70, column: 62, scope: !1342)
!1375 = !DILocation(line: 70, column: 20, scope: !1342)
!1376 = !DILocation(line: 73, column: 16, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1342, file: !182, line: 73, column: 7)
!1378 = !DILocation(line: 73, column: 7, scope: !1342)
!1379 = !DILocalVariable(name: "__dest", arg: 1, scope: !1380, file: !937, line: 42, type: !940)
!1380 = distinct !DISubprogram(name: "mempcpy", scope: !937, file: !937, line: 42, type: !938, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1381)
!1381 = !{!1379, !1382, !1383}
!1382 = !DILocalVariable(name: "__src", arg: 2, scope: !1380, file: !937, line: 42, type: !941)
!1383 = !DILocalVariable(name: "__len", arg: 3, scope: !1380, file: !937, line: 42, type: !97)
!1384 = !DILocation(line: 0, scope: !1380, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 76, column: 7, scope: !1342)
!1386 = !DILocation(line: 45, column: 10, scope: !1380, inlinedAt: !1385)
!1387 = !DILocation(line: 77, column: 6, scope: !1342)
!1388 = !DILocation(line: 78, column: 5, scope: !1342)
!1389 = !DILocation(line: 80, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1342, file: !182, line: 80, column: 7)
!1391 = !DILocation(line: 80, column: 7, scope: !1342)
!1392 = !DILocation(line: 81, column: 21, scope: !1390)
!1393 = !DILocation(line: 81, column: 5, scope: !1390)
!1394 = !DILocation(line: 0, scope: !1380, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 83, column: 7, scope: !1342)
!1396 = !DILocation(line: 45, column: 10, scope: !1380, inlinedAt: !1395)
!1397 = !DILocation(line: 84, column: 6, scope: !1342)
!1398 = !DILocation(line: 86, column: 3, scope: !1342)
!1399 = !DILocation(line: 87, column: 1, scope: !1342)
!1400 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !715, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1401)
!1401 = !{!1402, !1403, !1404}
!1402 = !DILocalVariable(name: "argv0", arg: 1, scope: !1400, file: !52, line: 39, type: !15)
!1403 = !DILocalVariable(name: "slash", scope: !1400, file: !52, line: 46, type: !15)
!1404 = !DILocalVariable(name: "base", scope: !1400, file: !52, line: 47, type: !15)
!1405 = !DILocation(line: 0, scope: !1400)
!1406 = !DILocation(line: 51, column: 13, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1400, file: !52, line: 51, column: 7)
!1408 = !DILocation(line: 51, column: 7, scope: !1400)
!1409 = !DILocation(line: 55, column: 14, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1407, file: !52, line: 52, column: 5)
!1411 = !DILocation(line: 54, column: 7, scope: !1410)
!1412 = !DILocation(line: 56, column: 7, scope: !1410)
!1413 = !DILocation(line: 59, column: 11, scope: !1400)
!1414 = !DILocation(line: 60, column: 17, scope: !1400)
!1415 = !DILocation(line: 60, column: 11, scope: !1400)
!1416 = !DILocation(line: 61, column: 12, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1400, file: !52, line: 61, column: 7)
!1418 = !DILocation(line: 61, column: 20, scope: !1417)
!1419 = !DILocation(line: 61, column: 25, scope: !1417)
!1420 = !DILocation(line: 61, column: 42, scope: !1417)
!1421 = !DILocation(line: 61, column: 28, scope: !1417)
!1422 = !DILocation(line: 61, column: 61, scope: !1417)
!1423 = !DILocation(line: 61, column: 7, scope: !1400)
!1424 = !DILocation(line: 64, column: 11, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !52, line: 64, column: 11)
!1426 = distinct !DILexicalBlock(scope: !1417, file: !52, line: 62, column: 5)
!1427 = !DILocation(line: 64, column: 36, scope: !1425)
!1428 = !DILocation(line: 64, column: 11, scope: !1426)
!1429 = !DILocation(line: 66, column: 24, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !52, line: 65, column: 9)
!1431 = !DILocation(line: 70, column: 41, scope: !1430)
!1432 = !DILocation(line: 72, column: 9, scope: !1430)
!1433 = !DILocation(line: 84, column: 16, scope: !1400)
!1434 = !DILocation(line: 90, column: 27, scope: !1400)
!1435 = !DILocation(line: 92, column: 1, scope: !1400)
!1436 = distinct !DISubprogram(name: "clone_quoting_options", scope: !58, file: !58, line: 122, type: !1437, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1440)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1440 = !{!1441, !1442, !1443}
!1441 = !DILocalVariable(name: "o", arg: 1, scope: !1436, file: !58, line: 122, type: !1439)
!1442 = !DILocalVariable(name: "e", scope: !1436, file: !58, line: 124, type: !24)
!1443 = !DILocalVariable(name: "p", scope: !1436, file: !58, line: 125, type: !1439)
!1444 = !DILocation(line: 0, scope: !1436)
!1445 = !DILocation(line: 124, column: 11, scope: !1436)
!1446 = !DILocation(line: 125, column: 40, scope: !1436)
!1447 = !DILocation(line: 125, column: 31, scope: !1436)
!1448 = !DILocation(line: 127, column: 9, scope: !1436)
!1449 = !DILocation(line: 128, column: 3, scope: !1436)
!1450 = distinct !DISubprogram(name: "get_quoting_style", scope: !58, file: !58, line: 133, type: !1451, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1455)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!60, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1455 = !{!1456}
!1456 = !DILocalVariable(name: "o", arg: 1, scope: !1450, file: !58, line: 133, type: !1453)
!1457 = !DILocation(line: 0, scope: !1450)
!1458 = !DILocation(line: 135, column: 11, scope: !1450)
!1459 = !DILocation(line: 135, column: 46, scope: !1450)
!1460 = !{!1461, !699, i64 0}
!1461 = !{!"quoting_options", !699, i64 0, !895, i64 4, !699, i64 8, !698, i64 40, !698, i64 48}
!1462 = !DILocation(line: 135, column: 3, scope: !1450)
!1463 = distinct !DISubprogram(name: "set_quoting_style", scope: !58, file: !58, line: 141, type: !1464, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !1439, !60}
!1466 = !{!1467, !1468}
!1467 = !DILocalVariable(name: "o", arg: 1, scope: !1463, file: !58, line: 141, type: !1439)
!1468 = !DILocalVariable(name: "s", arg: 2, scope: !1463, file: !58, line: 141, type: !60)
!1469 = !DILocation(line: 0, scope: !1463)
!1470 = !DILocation(line: 143, column: 4, scope: !1463)
!1471 = !DILocation(line: 143, column: 39, scope: !1463)
!1472 = !DILocation(line: 143, column: 45, scope: !1463)
!1473 = !DILocation(line: 144, column: 1, scope: !1463)
!1474 = distinct !DISubprogram(name: "set_char_quoting", scope: !58, file: !58, line: 152, type: !1475, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!24, !1439, !7, !24}
!1477 = !{!1478, !1479, !1480, !1481, !1483, !1485, !1486}
!1478 = !DILocalVariable(name: "o", arg: 1, scope: !1474, file: !58, line: 152, type: !1439)
!1479 = !DILocalVariable(name: "c", arg: 2, scope: !1474, file: !58, line: 152, type: !7)
!1480 = !DILocalVariable(name: "i", arg: 3, scope: !1474, file: !58, line: 152, type: !24)
!1481 = !DILocalVariable(name: "uc", scope: !1474, file: !58, line: 154, type: !1482)
!1482 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1483 = !DILocalVariable(name: "p", scope: !1474, file: !58, line: 155, type: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1485 = !DILocalVariable(name: "shift", scope: !1474, file: !58, line: 157, type: !24)
!1486 = !DILocalVariable(name: "r", scope: !1474, file: !58, line: 158, type: !24)
!1487 = !DILocation(line: 0, scope: !1474)
!1488 = !DILocation(line: 156, column: 6, scope: !1474)
!1489 = !DILocation(line: 156, column: 62, scope: !1474)
!1490 = !DILocation(line: 156, column: 57, scope: !1474)
!1491 = !DILocation(line: 157, column: 15, scope: !1474)
!1492 = !DILocation(line: 158, column: 12, scope: !1474)
!1493 = !DILocation(line: 158, column: 15, scope: !1474)
!1494 = !DILocation(line: 158, column: 25, scope: !1474)
!1495 = !DILocation(line: 159, column: 13, scope: !1474)
!1496 = !DILocation(line: 159, column: 18, scope: !1474)
!1497 = !DILocation(line: 159, column: 23, scope: !1474)
!1498 = !DILocation(line: 159, column: 6, scope: !1474)
!1499 = !DILocation(line: 160, column: 3, scope: !1474)
!1500 = distinct !DISubprogram(name: "set_quoting_flags", scope: !58, file: !58, line: 168, type: !1501, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1503)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!24, !1439, !24}
!1503 = !{!1504, !1505, !1506}
!1504 = !DILocalVariable(name: "o", arg: 1, scope: !1500, file: !58, line: 168, type: !1439)
!1505 = !DILocalVariable(name: "i", arg: 2, scope: !1500, file: !58, line: 168, type: !24)
!1506 = !DILocalVariable(name: "r", scope: !1500, file: !58, line: 170, type: !24)
!1507 = !DILocation(line: 0, scope: !1500)
!1508 = !DILocation(line: 171, column: 8, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1500, file: !58, line: 171, column: 7)
!1510 = !DILocation(line: 171, column: 7, scope: !1500)
!1511 = !DILocation(line: 173, column: 10, scope: !1500)
!1512 = !{!1461, !895, i64 4}
!1513 = !DILocation(line: 174, column: 12, scope: !1500)
!1514 = !DILocation(line: 175, column: 3, scope: !1500)
!1515 = distinct !DISubprogram(name: "set_custom_quoting", scope: !58, file: !58, line: 179, type: !1516, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1439, !15, !15}
!1518 = !{!1519, !1520, !1521}
!1519 = !DILocalVariable(name: "o", arg: 1, scope: !1515, file: !58, line: 179, type: !1439)
!1520 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1515, file: !58, line: 180, type: !15)
!1521 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1515, file: !58, line: 180, type: !15)
!1522 = !DILocation(line: 0, scope: !1515)
!1523 = !DILocation(line: 182, column: 8, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1515, file: !58, line: 182, column: 7)
!1525 = !DILocation(line: 182, column: 7, scope: !1515)
!1526 = !DILocation(line: 184, column: 6, scope: !1515)
!1527 = !DILocation(line: 184, column: 12, scope: !1515)
!1528 = !DILocation(line: 185, column: 8, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1515, file: !58, line: 185, column: 7)
!1530 = !DILocation(line: 185, column: 19, scope: !1529)
!1531 = !DILocation(line: 186, column: 5, scope: !1529)
!1532 = !DILocation(line: 187, column: 6, scope: !1515)
!1533 = !DILocation(line: 187, column: 17, scope: !1515)
!1534 = !{!1461, !698, i64 40}
!1535 = !DILocation(line: 188, column: 6, scope: !1515)
!1536 = !DILocation(line: 188, column: 18, scope: !1515)
!1537 = !{!1461, !698, i64 48}
!1538 = !DILocation(line: 189, column: 1, scope: !1515)
!1539 = distinct !DISubprogram(name: "quotearg_buffer", scope: !58, file: !58, line: 784, type: !1540, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!97, !6, !97, !15, !97, !1453}
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1543 = !DILocalVariable(name: "buffer", arg: 1, scope: !1539, file: !58, line: 784, type: !6)
!1544 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1539, file: !58, line: 784, type: !97)
!1545 = !DILocalVariable(name: "arg", arg: 3, scope: !1539, file: !58, line: 785, type: !15)
!1546 = !DILocalVariable(name: "argsize", arg: 4, scope: !1539, file: !58, line: 785, type: !97)
!1547 = !DILocalVariable(name: "o", arg: 5, scope: !1539, file: !58, line: 786, type: !1453)
!1548 = !DILocalVariable(name: "p", scope: !1539, file: !58, line: 788, type: !1453)
!1549 = !DILocalVariable(name: "e", scope: !1539, file: !58, line: 789, type: !24)
!1550 = !DILocalVariable(name: "r", scope: !1539, file: !58, line: 790, type: !97)
!1551 = !DILocation(line: 0, scope: !1539)
!1552 = !DILocation(line: 788, column: 37, scope: !1539)
!1553 = !DILocation(line: 789, column: 11, scope: !1539)
!1554 = !DILocation(line: 791, column: 43, scope: !1539)
!1555 = !DILocation(line: 791, column: 53, scope: !1539)
!1556 = !DILocation(line: 791, column: 60, scope: !1539)
!1557 = !DILocation(line: 792, column: 43, scope: !1539)
!1558 = !DILocation(line: 792, column: 58, scope: !1539)
!1559 = !DILocation(line: 790, column: 14, scope: !1539)
!1560 = !DILocation(line: 793, column: 9, scope: !1539)
!1561 = !DILocation(line: 794, column: 3, scope: !1539)
!1562 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !58, file: !58, line: 256, type: !1563, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1567)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!97, !6, !97, !15, !97, !60, !24, !1565, !15, !15}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1592, !1593, !1594, !1595, !1596, !1599, !1600, !1618, !1621, !1622, !1629, !1632, !1633, !1634, !1635, !1636, !1637}
!1568 = !DILocalVariable(name: "buffer", arg: 1, scope: !1562, file: !58, line: 256, type: !6)
!1569 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1562, file: !58, line: 256, type: !97)
!1570 = !DILocalVariable(name: "arg", arg: 3, scope: !1562, file: !58, line: 257, type: !15)
!1571 = !DILocalVariable(name: "argsize", arg: 4, scope: !1562, file: !58, line: 257, type: !97)
!1572 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1562, file: !58, line: 258, type: !60)
!1573 = !DILocalVariable(name: "flags", arg: 6, scope: !1562, file: !58, line: 258, type: !24)
!1574 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1562, file: !58, line: 259, type: !1565)
!1575 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1562, file: !58, line: 260, type: !15)
!1576 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1562, file: !58, line: 261, type: !15)
!1577 = !DILocalVariable(name: "i", scope: !1562, file: !58, line: 263, type: !97)
!1578 = !DILocalVariable(name: "len", scope: !1562, file: !58, line: 264, type: !97)
!1579 = !DILocalVariable(name: "orig_buffersize", scope: !1562, file: !58, line: 265, type: !97)
!1580 = !DILocalVariable(name: "quote_string", scope: !1562, file: !58, line: 266, type: !15)
!1581 = !DILocalVariable(name: "quote_string_len", scope: !1562, file: !58, line: 267, type: !97)
!1582 = !DILocalVariable(name: "backslash_escapes", scope: !1562, file: !58, line: 268, type: !12)
!1583 = !DILocalVariable(name: "unibyte_locale", scope: !1562, file: !58, line: 269, type: !12)
!1584 = !DILocalVariable(name: "elide_outer_quotes", scope: !1562, file: !58, line: 270, type: !12)
!1585 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1562, file: !58, line: 271, type: !12)
!1586 = !DILocalVariable(name: "encountered_single_quote", scope: !1562, file: !58, line: 272, type: !12)
!1587 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1562, file: !58, line: 273, type: !12)
!1588 = !DILocalVariable(name: "c", scope: !1589, file: !58, line: 402, type: !1482)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !58, line: 401, column: 5)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !58, line: 400, column: 3)
!1591 = distinct !DILexicalBlock(scope: !1562, file: !58, line: 400, column: 3)
!1592 = !DILocalVariable(name: "esc", scope: !1589, file: !58, line: 403, type: !1482)
!1593 = !DILocalVariable(name: "is_right_quote", scope: !1589, file: !58, line: 404, type: !12)
!1594 = !DILocalVariable(name: "escaping", scope: !1589, file: !58, line: 405, type: !12)
!1595 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1589, file: !58, line: 406, type: !12)
!1596 = !DILocalVariable(name: "m", scope: !1597, file: !58, line: 610, type: !97)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 608, column: 11)
!1598 = distinct !DILexicalBlock(scope: !1589, file: !58, line: 426, column: 9)
!1599 = !DILocalVariable(name: "printable", scope: !1597, file: !58, line: 612, type: !12)
!1600 = !DILocalVariable(name: "mbstate", scope: !1601, file: !58, line: 621, type: !1603)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !58, line: 620, column: 15)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !58, line: 614, column: 17)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1604, line: 6, baseType: !1605)
!1604 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1606, line: 21, baseType: !1607)
!1606 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1606, line: 13, size: 64, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1607, file: !1606, line: 15, baseType: !24, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1607, file: !1606, line: 20, baseType: !1611, size: 32, offset: 32)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !1606, line: 16, size: 32, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1611, file: !1606, line: 18, baseType: !62, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1611, file: !1606, line: 19, baseType: !1615, size: 32)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1616)
!1616 = !{!1617}
!1617 = !DISubrange(count: 4)
!1618 = !DILocalVariable(name: "w", scope: !1619, file: !58, line: 631, type: !1620)
!1619 = distinct !DILexicalBlock(scope: !1601, file: !58, line: 630, column: 19)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !98, line: 74, baseType: !24)
!1621 = !DILocalVariable(name: "bytes", scope: !1619, file: !58, line: 632, type: !97)
!1622 = !DILocalVariable(name: "j", scope: !1623, file: !58, line: 657, type: !97)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !58, line: 656, column: 27)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !58, line: 654, column: 29)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !58, line: 649, column: 23)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !58, line: 641, column: 30)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !58, line: 636, column: 30)
!1628 = distinct !DILexicalBlock(scope: !1619, file: !58, line: 634, column: 25)
!1629 = !DILocalVariable(name: "ilim", scope: !1630, file: !58, line: 684, type: !97)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !58, line: 681, column: 15)
!1631 = distinct !DILexicalBlock(scope: !1597, file: !58, line: 680, column: 17)
!1632 = !DILabel(scope: !1562, name: "process_input", file: !58, line: 314)
!1633 = !DILabel(scope: !1598, name: "c_and_shell_escape", file: !58, line: 512)
!1634 = !DILabel(scope: !1598, name: "c_escape", file: !58, line: 517)
!1635 = !DILabel(scope: !1589, name: "store_escape", file: !58, line: 719)
!1636 = !DILabel(scope: !1589, name: "store_c", file: !58, line: 722)
!1637 = !DILabel(scope: !1562, name: "force_outer_quoting_style", file: !58, line: 763)
!1638 = !DILocation(line: 0, scope: !1562)
!1639 = !DILocation(line: 269, column: 25, scope: !1562)
!1640 = !DILocation(line: 269, column: 36, scope: !1562)
!1641 = !DILocation(line: 270, column: 8, scope: !1562)
!1642 = !DILocation(line: 273, column: 3, scope: !1562)
!1643 = !DILocation(line: 265, column: 10, scope: !1562)
!1644 = !DILocation(line: 266, column: 15, scope: !1562)
!1645 = !DILocation(line: 267, column: 10, scope: !1562)
!1646 = !DILocation(line: 268, column: 8, scope: !1562)
!1647 = !DILocation(line: 271, column: 8, scope: !1562)
!1648 = !DILocation(line: 272, column: 8, scope: !1562)
!1649 = !DILocation(line: 273, column: 8, scope: !1562)
!1650 = !DILocation(line: 314, column: 2, scope: !1562)
!1651 = !DILocation(line: 316, column: 3, scope: !1562)
!1652 = !DILocation(line: 323, column: 11, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1562, file: !58, line: 317, column: 5)
!1654 = !DILocation(line: 323, column: 12, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1653, file: !58, line: 323, column: 11)
!1656 = !DILocation(line: 324, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !58, line: 324, column: 9)
!1658 = distinct !DILexicalBlock(scope: !1655, file: !58, line: 324, column: 9)
!1659 = !DILocation(line: 324, column: 9, scope: !1658)
!1660 = !DILocation(line: 362, column: 26, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !58, line: 340, column: 11)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !58, line: 339, column: 13)
!1663 = distinct !DILexicalBlock(scope: !1653, file: !58, line: 338, column: 7)
!1664 = !DILocation(line: 363, column: 27, scope: !1661)
!1665 = !DILocation(line: 364, column: 11, scope: !1661)
!1666 = !DILocation(line: 365, column: 14, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !58, line: 365, column: 13)
!1668 = !DILocation(line: 365, column: 13, scope: !1663)
!1669 = !DILocation(line: 366, column: 43, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !58, line: 366, column: 11)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !58, line: 366, column: 11)
!1672 = !DILocation(line: 366, column: 11, scope: !1671)
!1673 = !DILocation(line: 367, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !58, line: 367, column: 13)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !58, line: 367, column: 13)
!1676 = !DILocation(line: 367, column: 13, scope: !1675)
!1677 = !DILocation(line: 366, column: 70, scope: !1670)
!1678 = distinct !{!1678, !1672, !1679, !745}
!1679 = !DILocation(line: 367, column: 13, scope: !1671)
!1680 = !DILocation(line: 264, column: 10, scope: !1562)
!1681 = !DILocation(line: 370, column: 28, scope: !1663)
!1682 = !DILocation(line: 372, column: 7, scope: !1653)
!1683 = !DILocation(line: 376, column: 7, scope: !1653)
!1684 = !DILocation(line: 379, column: 7, scope: !1653)
!1685 = !DILocation(line: 381, column: 12, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1653, file: !58, line: 381, column: 11)
!1687 = !DILocation(line: 381, column: 11, scope: !1653)
!1688 = !DILocation(line: 386, column: 12, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1653, file: !58, line: 386, column: 11)
!1690 = !DILocation(line: 386, column: 11, scope: !1653)
!1691 = !DILocation(line: 387, column: 9, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !58, line: 387, column: 9)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !58, line: 387, column: 9)
!1694 = !DILocation(line: 387, column: 9, scope: !1693)
!1695 = !DILocation(line: 394, column: 7, scope: !1653)
!1696 = !DILocation(line: 397, column: 7, scope: !1653)
!1697 = !DILocation(line: 400, column: 8, scope: !1591)
!1698 = !DILocation(line: 0, scope: !1591)
!1699 = !DILocation(line: 400, column: 27, scope: !1590)
!1700 = !DILocation(line: 400, column: 19, scope: !1590)
!1701 = !DILocation(line: 400, column: 41, scope: !1590)
!1702 = !DILocation(line: 400, column: 48, scope: !1590)
!1703 = !DILocation(line: 400, column: 3, scope: !1591)
!1704 = !DILocation(line: 400, column: 60, scope: !1590)
!1705 = !DILocation(line: 0, scope: !1589)
!1706 = !DILocation(line: 409, column: 11, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1589, file: !58, line: 408, column: 11)
!1708 = !DILocation(line: 411, column: 17, scope: !1707)
!1709 = !DILocation(line: 412, column: 39, scope: !1707)
!1710 = !DILocation(line: 416, column: 32, scope: !1707)
!1711 = !DILocation(line: 412, column: 19, scope: !1707)
!1712 = !DILocation(line: 412, column: 15, scope: !1707)
!1713 = !DILocation(line: 417, column: 11, scope: !1707)
!1714 = !DILocation(line: 417, column: 26, scope: !1707)
!1715 = !DILocation(line: 417, column: 14, scope: !1707)
!1716 = !DILocation(line: 417, column: 63, scope: !1707)
!1717 = !DILocation(line: 408, column: 11, scope: !1589)
!1718 = !DILocation(line: 424, column: 11, scope: !1589)
!1719 = !DILocation(line: 425, column: 7, scope: !1589)
!1720 = !DILocation(line: 428, column: 15, scope: !1598)
!1721 = !DILocation(line: 430, column: 15, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !58, line: 430, column: 15)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !58, line: 429, column: 13)
!1724 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 428, column: 15)
!1725 = !DILocation(line: 430, column: 15, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !58, line: 430, column: 15)
!1727 = !DILocation(line: 430, column: 15, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !58, line: 430, column: 15)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !58, line: 430, column: 15)
!1730 = distinct !DILexicalBlock(scope: !1726, file: !58, line: 430, column: 15)
!1731 = !DILocation(line: 430, column: 15, scope: !1729)
!1732 = !DILocation(line: 430, column: 15, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !58, line: 430, column: 15)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !58, line: 430, column: 15)
!1735 = !DILocation(line: 430, column: 15, scope: !1734)
!1736 = !DILocation(line: 430, column: 15, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !58, line: 430, column: 15)
!1738 = distinct !DILexicalBlock(scope: !1730, file: !58, line: 430, column: 15)
!1739 = !DILocation(line: 430, column: 15, scope: !1738)
!1740 = !DILocation(line: 430, column: 15, scope: !1730)
!1741 = !DILocation(line: 430, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !58, line: 430, column: 15)
!1743 = distinct !DILexicalBlock(scope: !1722, file: !58, line: 430, column: 15)
!1744 = !DILocation(line: 430, column: 15, scope: !1743)
!1745 = !DILocation(line: 438, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1723, file: !58, line: 437, column: 19)
!1747 = !DILocation(line: 438, column: 48, scope: !1746)
!1748 = !DILocation(line: 438, column: 59, scope: !1746)
!1749 = !DILocation(line: 440, column: 19, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !58, line: 440, column: 19)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !58, line: 440, column: 19)
!1752 = distinct !DILexicalBlock(scope: !1746, file: !58, line: 439, column: 17)
!1753 = !DILocation(line: 440, column: 19, scope: !1751)
!1754 = !DILocation(line: 441, column: 19, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !58, line: 441, column: 19)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !58, line: 441, column: 19)
!1757 = !DILocation(line: 441, column: 19, scope: !1756)
!1758 = !DILocation(line: 442, column: 17, scope: !1752)
!1759 = !DILocation(line: 449, column: 20, scope: !1724)
!1760 = !DILocation(line: 454, column: 11, scope: !1598)
!1761 = !DILocation(line: 457, column: 19, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 455, column: 13)
!1763 = !DILocation(line: 463, column: 19, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1762, file: !58, line: 462, column: 19)
!1765 = !DILocation(line: 463, column: 47, scope: !1764)
!1766 = !DILocation(line: 463, column: 41, scope: !1764)
!1767 = !DILocation(line: 463, column: 52, scope: !1764)
!1768 = !DILocation(line: 462, column: 19, scope: !1762)
!1769 = !DILocation(line: 464, column: 25, scope: !1764)
!1770 = !DILocation(line: 464, column: 17, scope: !1764)
!1771 = !DILocation(line: 471, column: 25, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1764, file: !58, line: 465, column: 19)
!1773 = !DILocation(line: 475, column: 21, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !58, line: 475, column: 21)
!1775 = distinct !DILexicalBlock(scope: !1772, file: !58, line: 475, column: 21)
!1776 = !DILocation(line: 475, column: 21, scope: !1775)
!1777 = !DILocation(line: 476, column: 21, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !58, line: 476, column: 21)
!1779 = distinct !DILexicalBlock(scope: !1772, file: !58, line: 476, column: 21)
!1780 = !DILocation(line: 476, column: 21, scope: !1779)
!1781 = !DILocation(line: 477, column: 21, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !58, line: 477, column: 21)
!1783 = distinct !DILexicalBlock(scope: !1772, file: !58, line: 477, column: 21)
!1784 = !DILocation(line: 477, column: 21, scope: !1783)
!1785 = !DILocation(line: 478, column: 21, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !58, line: 478, column: 21)
!1787 = distinct !DILexicalBlock(scope: !1772, file: !58, line: 478, column: 21)
!1788 = !DILocation(line: 478, column: 21, scope: !1787)
!1789 = !DILocation(line: 479, column: 21, scope: !1772)
!1790 = !DILocation(line: 492, column: 31, scope: !1598)
!1791 = !DILocation(line: 493, column: 31, scope: !1598)
!1792 = !DILocation(line: 495, column: 31, scope: !1598)
!1793 = !DILocation(line: 496, column: 31, scope: !1598)
!1794 = !DILocation(line: 497, column: 31, scope: !1598)
!1795 = !DILocation(line: 500, column: 15, scope: !1598)
!1796 = !DILocation(line: 502, column: 19, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !58, line: 501, column: 13)
!1798 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 500, column: 15)
!1799 = !DILocation(line: 509, column: 33, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 509, column: 15)
!1801 = !DILocation(line: 0, scope: !1598)
!1802 = !DILocation(line: 512, column: 9, scope: !1598)
!1803 = !DILocation(line: 514, column: 15, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 513, column: 15)
!1805 = !DILocation(line: 517, column: 9, scope: !1598)
!1806 = !DILocation(line: 518, column: 15, scope: !1598)
!1807 = !DILocation(line: 526, column: 15, scope: !1598)
!1808 = !DILocation(line: 526, column: 40, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 526, column: 15)
!1810 = !DILocation(line: 526, column: 47, scope: !1809)
!1811 = !DILocation(line: 526, column: 18, scope: !1809)
!1812 = !DILocation(line: 530, column: 17, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 530, column: 15)
!1814 = !DILocation(line: 530, column: 15, scope: !1598)
!1815 = !DILocation(line: 535, column: 11, scope: !1598)
!1816 = !DILocation(line: 549, column: 15, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 548, column: 15)
!1818 = !DILocation(line: 556, column: 15, scope: !1598)
!1819 = !DILocation(line: 558, column: 19, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !58, line: 557, column: 13)
!1821 = distinct !DILexicalBlock(scope: !1598, file: !58, line: 556, column: 15)
!1822 = !DILocation(line: 561, column: 19, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !58, line: 561, column: 19)
!1824 = !DILocation(line: 561, column: 30, scope: !1823)
!1825 = !DILocation(line: 570, column: 15, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !58, line: 570, column: 15)
!1827 = distinct !DILexicalBlock(scope: !1820, file: !58, line: 570, column: 15)
!1828 = !DILocation(line: 570, column: 15, scope: !1827)
!1829 = !DILocation(line: 571, column: 15, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !58, line: 571, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1820, file: !58, line: 571, column: 15)
!1832 = !DILocation(line: 571, column: 15, scope: !1831)
!1833 = !DILocation(line: 572, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !58, line: 572, column: 15)
!1835 = distinct !DILexicalBlock(scope: !1820, file: !58, line: 572, column: 15)
!1836 = !DILocation(line: 572, column: 15, scope: !1835)
!1837 = !DILocation(line: 574, column: 13, scope: !1820)
!1838 = !DILocation(line: 614, column: 17, scope: !1597)
!1839 = !DILocation(line: 0, scope: !1597)
!1840 = !DILocation(line: 617, column: 29, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1602, file: !58, line: 615, column: 15)
!1842 = !{!1213, !1213, i64 0}
!1843 = !DILocation(line: 617, column: 27, scope: !1841)
!1844 = !DILocation(line: 678, column: 40, scope: !1597)
!1845 = !DILocation(line: 680, column: 23, scope: !1631)
!1846 = !DILocation(line: 621, column: 17, scope: !1601)
!1847 = !DILocation(line: 621, column: 27, scope: !1601)
!1848 = !DILocalVariable(name: "__dest", arg: 1, scope: !1849, file: !937, line: 57, type: !8)
!1849 = distinct !DISubprogram(name: "memset", scope: !937, file: !937, line: 57, type: !1850, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !1852)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!8, !8, !24, !97}
!1852 = !{!1848, !1853, !1854}
!1853 = !DILocalVariable(name: "__ch", arg: 2, scope: !1849, file: !937, line: 57, type: !24)
!1854 = !DILocalVariable(name: "__len", arg: 3, scope: !1849, file: !937, line: 57, type: !97)
!1855 = !DILocation(line: 0, scope: !1849, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 622, column: 17, scope: !1601)
!1857 = !DILocation(line: 59, column: 10, scope: !1849, inlinedAt: !1856)
!1858 = !DILocation(line: 626, column: 29, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1601, file: !58, line: 626, column: 21)
!1860 = !DILocation(line: 626, column: 21, scope: !1601)
!1861 = !DILocation(line: 627, column: 29, scope: !1859)
!1862 = !DILocation(line: 627, column: 19, scope: !1859)
!1863 = !DILocation(line: 629, column: 17, scope: !1601)
!1864 = !DILocation(line: 624, column: 19, scope: !1601)
!1865 = !DILocation(line: 625, column: 27, scope: !1601)
!1866 = !DILocation(line: 631, column: 21, scope: !1619)
!1867 = !DILocation(line: 632, column: 56, scope: !1619)
!1868 = !DILocation(line: 632, column: 50, scope: !1619)
!1869 = !DILocation(line: 633, column: 53, scope: !1619)
!1870 = !DILocation(line: 0, scope: !1619)
!1871 = !DILocation(line: 632, column: 36, scope: !1619)
!1872 = !DILocation(line: 634, column: 25, scope: !1619)
!1873 = !DILocation(line: 644, column: 38, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1626, file: !58, line: 642, column: 23)
!1875 = !DILocation(line: 644, column: 48, scope: !1874)
!1876 = !DILocation(line: 644, column: 25, scope: !1874)
!1877 = !DILocation(line: 644, column: 51, scope: !1874)
!1878 = !DILocation(line: 645, column: 28, scope: !1874)
!1879 = !DILocation(line: 644, column: 34, scope: !1874)
!1880 = distinct !{!1880, !1876, !1878, !745}
!1881 = !DILocation(line: 655, column: 29, scope: !1624)
!1882 = !DILocation(line: 0, scope: !1623)
!1883 = !DILocation(line: 659, column: 49, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !58, line: 658, column: 29)
!1885 = distinct !DILexicalBlock(scope: !1623, file: !58, line: 658, column: 29)
!1886 = !DILocation(line: 659, column: 39, scope: !1884)
!1887 = !DILocation(line: 659, column: 31, scope: !1884)
!1888 = !DILocation(line: 658, column: 53, scope: !1884)
!1889 = !DILocation(line: 658, column: 43, scope: !1884)
!1890 = !DILocation(line: 658, column: 29, scope: !1885)
!1891 = distinct !{!1891, !1890, !1892, !745}
!1892 = !DILocation(line: 667, column: 33, scope: !1885)
!1893 = !DILocation(line: 674, column: 19, scope: !1601)
!1894 = !DILocation(line: 670, column: 41, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1625, file: !58, line: 670, column: 29)
!1896 = !DILocation(line: 670, column: 31, scope: !1895)
!1897 = !DILocation(line: 670, column: 29, scope: !1625)
!1898 = !DILocation(line: 672, column: 27, scope: !1625)
!1899 = !DILocation(line: 675, column: 26, scope: !1601)
!1900 = !DILocation(line: 675, column: 24, scope: !1601)
!1901 = !DILocation(line: 674, column: 19, scope: !1619)
!1902 = distinct !{!1902, !1863, !1903, !745}
!1903 = !DILocation(line: 675, column: 44, scope: !1601)
!1904 = !DILocation(line: 676, column: 15, scope: !1602)
!1905 = !DILocation(line: 680, column: 19, scope: !1631)
!1906 = !DILocation(line: 680, column: 45, scope: !1631)
!1907 = !DILocation(line: 684, column: 33, scope: !1630)
!1908 = !DILocation(line: 0, scope: !1630)
!1909 = !DILocation(line: 686, column: 17, scope: !1630)
!1910 = !DILocation(line: 405, column: 12, scope: !1589)
!1911 = !DILocation(line: 688, column: 43, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !58, line: 688, column: 25)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !58, line: 687, column: 19)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !58, line: 686, column: 17)
!1915 = distinct !DILexicalBlock(scope: !1630, file: !58, line: 686, column: 17)
!1916 = !DILocation(line: 690, column: 25, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !58, line: 690, column: 25)
!1918 = distinct !DILexicalBlock(scope: !1912, file: !58, line: 689, column: 23)
!1919 = !DILocation(line: 690, column: 25, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !58, line: 690, column: 25)
!1921 = !DILocation(line: 690, column: 25, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !58, line: 690, column: 25)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !58, line: 690, column: 25)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !58, line: 690, column: 25)
!1925 = !DILocation(line: 690, column: 25, scope: !1923)
!1926 = !DILocation(line: 690, column: 25, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !58, line: 690, column: 25)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !58, line: 690, column: 25)
!1929 = !DILocation(line: 690, column: 25, scope: !1928)
!1930 = !DILocation(line: 690, column: 25, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !58, line: 690, column: 25)
!1932 = distinct !DILexicalBlock(scope: !1924, file: !58, line: 690, column: 25)
!1933 = !DILocation(line: 690, column: 25, scope: !1932)
!1934 = !DILocation(line: 690, column: 25, scope: !1924)
!1935 = !DILocation(line: 690, column: 25, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !58, line: 690, column: 25)
!1937 = distinct !DILexicalBlock(scope: !1917, file: !58, line: 690, column: 25)
!1938 = !DILocation(line: 690, column: 25, scope: !1937)
!1939 = !DILocation(line: 691, column: 25, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !58, line: 691, column: 25)
!1941 = distinct !DILexicalBlock(scope: !1918, file: !58, line: 691, column: 25)
!1942 = !DILocation(line: 691, column: 25, scope: !1941)
!1943 = !DILocation(line: 692, column: 25, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !58, line: 692, column: 25)
!1945 = distinct !DILexicalBlock(scope: !1918, file: !58, line: 692, column: 25)
!1946 = !DILocation(line: 692, column: 25, scope: !1945)
!1947 = !DILocation(line: 693, column: 38, scope: !1918)
!1948 = !DILocation(line: 693, column: 33, scope: !1918)
!1949 = !DILocation(line: 694, column: 23, scope: !1918)
!1950 = !DILocation(line: 695, column: 30, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1912, file: !58, line: 695, column: 30)
!1952 = !DILocation(line: 695, column: 30, scope: !1912)
!1953 = !DILocation(line: 697, column: 25, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !58, line: 697, column: 25)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !58, line: 697, column: 25)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !58, line: 696, column: 23)
!1957 = !DILocation(line: 697, column: 25, scope: !1955)
!1958 = !DILocation(line: 699, column: 23, scope: !1956)
!1959 = !DILocation(line: 700, column: 35, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1913, file: !58, line: 700, column: 25)
!1961 = !DILocation(line: 700, column: 30, scope: !1960)
!1962 = !DILocation(line: 700, column: 25, scope: !1913)
!1963 = !DILocation(line: 702, column: 21, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !58, line: 702, column: 21)
!1965 = distinct !DILexicalBlock(scope: !1913, file: !58, line: 702, column: 21)
!1966 = !DILocation(line: 702, column: 21, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !58, line: 702, column: 21)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !58, line: 702, column: 21)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !58, line: 702, column: 21)
!1970 = !DILocation(line: 702, column: 21, scope: !1968)
!1971 = !DILocation(line: 702, column: 21, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !58, line: 702, column: 21)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !58, line: 702, column: 21)
!1974 = !DILocation(line: 702, column: 21, scope: !1973)
!1975 = !DILocation(line: 702, column: 21, scope: !1969)
!1976 = !DILocation(line: 0, scope: !1913)
!1977 = !DILocation(line: 703, column: 21, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !58, line: 703, column: 21)
!1979 = distinct !DILexicalBlock(scope: !1913, file: !58, line: 703, column: 21)
!1980 = !DILocation(line: 703, column: 21, scope: !1979)
!1981 = !DILocation(line: 704, column: 25, scope: !1913)
!1982 = !DILocation(line: 686, column: 17, scope: !1914)
!1983 = distinct !{!1983, !1984, !1985}
!1984 = !DILocation(line: 686, column: 17, scope: !1915)
!1985 = !DILocation(line: 705, column: 19, scope: !1915)
!1986 = !DILocation(line: 416, column: 30, scope: !1707)
!1987 = !DILocation(line: 712, column: 34, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1589, file: !58, line: 712, column: 11)
!1989 = !DILocation(line: 715, column: 35, scope: !1988)
!1990 = !DILocation(line: 715, column: 17, scope: !1988)
!1991 = !DILocation(line: 715, column: 47, scope: !1988)
!1992 = !DILocation(line: 715, column: 65, scope: !1988)
!1993 = !DILocation(line: 716, column: 11, scope: !1988)
!1994 = !DILocation(line: 712, column: 11, scope: !1589)
!1995 = !DILocation(line: 400, column: 10, scope: !1591)
!1996 = !DILocation(line: 719, column: 5, scope: !1589)
!1997 = !DILocation(line: 720, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1589, file: !58, line: 720, column: 7)
!1999 = !DILocation(line: 720, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1998, file: !58, line: 720, column: 7)
!2001 = !DILocation(line: 720, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !58, line: 720, column: 7)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !58, line: 720, column: 7)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !58, line: 720, column: 7)
!2005 = !DILocation(line: 720, column: 7, scope: !2003)
!2006 = !DILocation(line: 720, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !58, line: 720, column: 7)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !58, line: 720, column: 7)
!2009 = !DILocation(line: 720, column: 7, scope: !2008)
!2010 = !DILocation(line: 720, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !58, line: 720, column: 7)
!2012 = distinct !DILexicalBlock(scope: !2004, file: !58, line: 720, column: 7)
!2013 = !DILocation(line: 720, column: 7, scope: !2012)
!2014 = !DILocation(line: 720, column: 7, scope: !2004)
!2015 = !DILocation(line: 720, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !58, line: 720, column: 7)
!2017 = distinct !DILexicalBlock(scope: !1998, file: !58, line: 720, column: 7)
!2018 = !DILocation(line: 720, column: 7, scope: !2017)
!2019 = !DILocation(line: 722, column: 5, scope: !1589)
!2020 = !DILocation(line: 723, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !58, line: 723, column: 7)
!2022 = distinct !DILexicalBlock(scope: !1589, file: !58, line: 723, column: 7)
!2023 = !DILocation(line: 424, column: 9, scope: !1589)
!2024 = !DILocation(line: 723, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !58, line: 723, column: 7)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !58, line: 723, column: 7)
!2027 = distinct !DILexicalBlock(scope: !2021, file: !58, line: 723, column: 7)
!2028 = !DILocation(line: 723, column: 7, scope: !2026)
!2029 = !DILocation(line: 723, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !58, line: 723, column: 7)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !58, line: 723, column: 7)
!2032 = !DILocation(line: 723, column: 7, scope: !2031)
!2033 = !DILocation(line: 723, column: 7, scope: !2027)
!2034 = !DILocation(line: 724, column: 7, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !58, line: 724, column: 7)
!2036 = distinct !DILexicalBlock(scope: !1589, file: !58, line: 724, column: 7)
!2037 = !DILocation(line: 724, column: 7, scope: !2036)
!2038 = !DILocation(line: 726, column: 13, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1589, file: !58, line: 726, column: 11)
!2040 = !DILocation(line: 726, column: 11, scope: !1589)
!2041 = !DILocation(line: 728, column: 5, scope: !1590)
!2042 = !DILocation(line: 400, column: 75, scope: !1590)
!2043 = !DILocation(line: 400, column: 3, scope: !1590)
!2044 = distinct !{!2044, !1703, !2045, !745}
!2045 = !DILocation(line: 728, column: 5, scope: !1591)
!2046 = !DILocation(line: 730, column: 11, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1562, file: !58, line: 730, column: 7)
!2048 = !DILocation(line: 730, column: 16, scope: !2047)
!2049 = !DILocation(line: 738, column: 51, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1562, file: !58, line: 738, column: 7)
!2051 = !DILocation(line: 741, column: 11, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !58, line: 741, column: 11)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !58, line: 740, column: 5)
!2054 = !DILocation(line: 741, column: 11, scope: !2053)
!2055 = !DILocation(line: 742, column: 16, scope: !2052)
!2056 = !DILocation(line: 742, column: 9, scope: !2052)
!2057 = !DILocation(line: 746, column: 18, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2052, file: !58, line: 746, column: 16)
!2059 = !DILocation(line: 746, column: 29, scope: !2058)
!2060 = !DILocation(line: 755, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1562, file: !58, line: 755, column: 7)
!2062 = !DILocation(line: 755, column: 20, scope: !2061)
!2063 = !DILocation(line: 756, column: 12, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !58, line: 756, column: 5)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !58, line: 756, column: 5)
!2066 = !DILocation(line: 756, column: 5, scope: !2065)
!2067 = !DILocation(line: 757, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !58, line: 757, column: 7)
!2069 = distinct !DILexicalBlock(scope: !2064, file: !58, line: 757, column: 7)
!2070 = !DILocation(line: 757, column: 7, scope: !2069)
!2071 = !DILocation(line: 756, column: 39, scope: !2064)
!2072 = distinct !{!2072, !2066, !2073, !745}
!2073 = !DILocation(line: 757, column: 7, scope: !2065)
!2074 = !DILocation(line: 759, column: 11, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1562, file: !58, line: 759, column: 7)
!2076 = !DILocation(line: 759, column: 7, scope: !1562)
!2077 = !DILocation(line: 760, column: 5, scope: !2075)
!2078 = !DILocation(line: 760, column: 17, scope: !2075)
!2079 = !DILocation(line: 763, column: 2, scope: !1562)
!2080 = !DILocation(line: 766, column: 51, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1562, file: !58, line: 766, column: 7)
!2082 = !DILocation(line: 766, column: 21, scope: !2081)
!2083 = !DILocation(line: 770, column: 42, scope: !1562)
!2084 = !DILocation(line: 768, column: 10, scope: !1562)
!2085 = !DILocation(line: 768, column: 3, scope: !1562)
!2086 = !DILocation(line: 772, column: 1, scope: !1562)
!2087 = distinct !DISubprogram(name: "gettext_quote", scope: !58, file: !58, line: 207, type: !2088, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!15, !15, !60}
!2090 = !{!2091, !2092, !2093, !2094}
!2091 = !DILocalVariable(name: "msgid", arg: 1, scope: !2087, file: !58, line: 207, type: !15)
!2092 = !DILocalVariable(name: "s", arg: 2, scope: !2087, file: !58, line: 207, type: !60)
!2093 = !DILocalVariable(name: "translation", scope: !2087, file: !58, line: 209, type: !15)
!2094 = !DILocalVariable(name: "locale_code", scope: !2087, file: !58, line: 210, type: !15)
!2095 = !DILocation(line: 0, scope: !2087)
!2096 = !DILocation(line: 209, column: 29, scope: !2087)
!2097 = !DILocation(line: 212, column: 19, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2087, file: !58, line: 212, column: 7)
!2099 = !DILocation(line: 212, column: 7, scope: !2087)
!2100 = !DILocation(line: 233, column: 17, scope: !2087)
!2101 = !DILocalVariable(name: "s1", arg: 1, scope: !2102, file: !2103, line: 160, type: !15)
!2102 = distinct !DISubprogram(name: "strcaseeq0", scope: !2103, file: !2103, line: 160, type: !2104, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2106)
!2103 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!24, !15, !15, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2106 = !{!2101, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116}
!2107 = !DILocalVariable(name: "s2", arg: 2, scope: !2102, file: !2103, line: 160, type: !15)
!2108 = !DILocalVariable(name: "s20", arg: 3, scope: !2102, file: !2103, line: 160, type: !7)
!2109 = !DILocalVariable(name: "s21", arg: 4, scope: !2102, file: !2103, line: 160, type: !7)
!2110 = !DILocalVariable(name: "s22", arg: 5, scope: !2102, file: !2103, line: 160, type: !7)
!2111 = !DILocalVariable(name: "s23", arg: 6, scope: !2102, file: !2103, line: 160, type: !7)
!2112 = !DILocalVariable(name: "s24", arg: 7, scope: !2102, file: !2103, line: 160, type: !7)
!2113 = !DILocalVariable(name: "s25", arg: 8, scope: !2102, file: !2103, line: 160, type: !7)
!2114 = !DILocalVariable(name: "s26", arg: 9, scope: !2102, file: !2103, line: 160, type: !7)
!2115 = !DILocalVariable(name: "s27", arg: 10, scope: !2102, file: !2103, line: 160, type: !7)
!2116 = !DILocalVariable(name: "s28", arg: 11, scope: !2102, file: !2103, line: 160, type: !7)
!2117 = !DILocation(line: 0, scope: !2102, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 234, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2087, file: !58, line: 234, column: 7)
!2120 = !DILocation(line: 162, column: 7, scope: !2121, inlinedAt: !2118)
!2121 = distinct !DILexicalBlock(scope: !2102, file: !2103, line: 162, column: 7)
!2122 = !DILocalVariable(name: "s1", arg: 1, scope: !2123, file: !2103, line: 146, type: !15)
!2123 = distinct !DISubprogram(name: "strcaseeq1", scope: !2103, file: !2103, line: 146, type: !2124, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!24, !15, !15, !7, !7, !7, !7, !7, !7, !7, !7}
!2126 = !{!2122, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2127 = !DILocalVariable(name: "s2", arg: 2, scope: !2123, file: !2103, line: 146, type: !15)
!2128 = !DILocalVariable(name: "s21", arg: 3, scope: !2123, file: !2103, line: 146, type: !7)
!2129 = !DILocalVariable(name: "s22", arg: 4, scope: !2123, file: !2103, line: 146, type: !7)
!2130 = !DILocalVariable(name: "s23", arg: 5, scope: !2123, file: !2103, line: 146, type: !7)
!2131 = !DILocalVariable(name: "s24", arg: 6, scope: !2123, file: !2103, line: 146, type: !7)
!2132 = !DILocalVariable(name: "s25", arg: 7, scope: !2123, file: !2103, line: 146, type: !7)
!2133 = !DILocalVariable(name: "s26", arg: 8, scope: !2123, file: !2103, line: 146, type: !7)
!2134 = !DILocalVariable(name: "s27", arg: 9, scope: !2123, file: !2103, line: 146, type: !7)
!2135 = !DILocalVariable(name: "s28", arg: 10, scope: !2123, file: !2103, line: 146, type: !7)
!2136 = !DILocation(line: 0, scope: !2123, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 167, column: 16, scope: !2138, inlinedAt: !2118)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !2103, line: 164, column: 11)
!2139 = distinct !DILexicalBlock(scope: !2121, file: !2103, line: 163, column: 5)
!2140 = !DILocation(line: 148, column: 7, scope: !2141, inlinedAt: !2137)
!2141 = distinct !DILexicalBlock(scope: !2123, file: !2103, line: 148, column: 7)
!2142 = !DILocalVariable(name: "s1", arg: 1, scope: !2143, file: !2103, line: 132, type: !15)
!2143 = distinct !DISubprogram(name: "strcaseeq2", scope: !2103, file: !2103, line: 132, type: !2144, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!24, !15, !15, !7, !7, !7, !7, !7, !7, !7}
!2146 = !{!2142, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2147 = !DILocalVariable(name: "s2", arg: 2, scope: !2143, file: !2103, line: 132, type: !15)
!2148 = !DILocalVariable(name: "s22", arg: 3, scope: !2143, file: !2103, line: 132, type: !7)
!2149 = !DILocalVariable(name: "s23", arg: 4, scope: !2143, file: !2103, line: 132, type: !7)
!2150 = !DILocalVariable(name: "s24", arg: 5, scope: !2143, file: !2103, line: 132, type: !7)
!2151 = !DILocalVariable(name: "s25", arg: 6, scope: !2143, file: !2103, line: 132, type: !7)
!2152 = !DILocalVariable(name: "s26", arg: 7, scope: !2143, file: !2103, line: 132, type: !7)
!2153 = !DILocalVariable(name: "s27", arg: 8, scope: !2143, file: !2103, line: 132, type: !7)
!2154 = !DILocalVariable(name: "s28", arg: 9, scope: !2143, file: !2103, line: 132, type: !7)
!2155 = !DILocation(line: 0, scope: !2143, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 153, column: 16, scope: !2157, inlinedAt: !2137)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !2103, line: 150, column: 11)
!2158 = distinct !DILexicalBlock(scope: !2141, file: !2103, line: 149, column: 5)
!2159 = !DILocation(line: 134, column: 7, scope: !2160, inlinedAt: !2156)
!2160 = distinct !DILexicalBlock(scope: !2143, file: !2103, line: 134, column: 7)
!2161 = !DILocalVariable(name: "s1", arg: 1, scope: !2162, file: !2103, line: 118, type: !15)
!2162 = distinct !DISubprogram(name: "strcaseeq3", scope: !2103, file: !2103, line: 118, type: !2163, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!24, !15, !15, !7, !7, !7, !7, !7, !7}
!2165 = !{!2161, !2166, !2167, !2168, !2169, !2170, !2171, !2172}
!2166 = !DILocalVariable(name: "s2", arg: 2, scope: !2162, file: !2103, line: 118, type: !15)
!2167 = !DILocalVariable(name: "s23", arg: 3, scope: !2162, file: !2103, line: 118, type: !7)
!2168 = !DILocalVariable(name: "s24", arg: 4, scope: !2162, file: !2103, line: 118, type: !7)
!2169 = !DILocalVariable(name: "s25", arg: 5, scope: !2162, file: !2103, line: 118, type: !7)
!2170 = !DILocalVariable(name: "s26", arg: 6, scope: !2162, file: !2103, line: 118, type: !7)
!2171 = !DILocalVariable(name: "s27", arg: 7, scope: !2162, file: !2103, line: 118, type: !7)
!2172 = !DILocalVariable(name: "s28", arg: 8, scope: !2162, file: !2103, line: 118, type: !7)
!2173 = !DILocation(line: 0, scope: !2162, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 139, column: 16, scope: !2175, inlinedAt: !2156)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !2103, line: 136, column: 11)
!2176 = distinct !DILexicalBlock(scope: !2160, file: !2103, line: 135, column: 5)
!2177 = !DILocation(line: 120, column: 7, scope: !2178, inlinedAt: !2174)
!2178 = distinct !DILexicalBlock(scope: !2162, file: !2103, line: 120, column: 7)
!2179 = !DILocation(line: 120, column: 7, scope: !2162, inlinedAt: !2174)
!2180 = !DILocalVariable(name: "s1", arg: 1, scope: !2181, file: !2103, line: 104, type: !15)
!2181 = distinct !DISubprogram(name: "strcaseeq4", scope: !2103, file: !2103, line: 104, type: !2182, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!24, !15, !15, !7, !7, !7, !7, !7}
!2184 = !{!2180, !2185, !2186, !2187, !2188, !2189, !2190}
!2185 = !DILocalVariable(name: "s2", arg: 2, scope: !2181, file: !2103, line: 104, type: !15)
!2186 = !DILocalVariable(name: "s24", arg: 3, scope: !2181, file: !2103, line: 104, type: !7)
!2187 = !DILocalVariable(name: "s25", arg: 4, scope: !2181, file: !2103, line: 104, type: !7)
!2188 = !DILocalVariable(name: "s26", arg: 5, scope: !2181, file: !2103, line: 104, type: !7)
!2189 = !DILocalVariable(name: "s27", arg: 6, scope: !2181, file: !2103, line: 104, type: !7)
!2190 = !DILocalVariable(name: "s28", arg: 7, scope: !2181, file: !2103, line: 104, type: !7)
!2191 = !DILocation(line: 0, scope: !2181, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 125, column: 16, scope: !2193, inlinedAt: !2174)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !2103, line: 122, column: 11)
!2194 = distinct !DILexicalBlock(scope: !2178, file: !2103, line: 121, column: 5)
!2195 = !DILocation(line: 106, column: 7, scope: !2196, inlinedAt: !2192)
!2196 = distinct !DILexicalBlock(scope: !2181, file: !2103, line: 106, column: 7)
!2197 = !DILocation(line: 106, column: 7, scope: !2181, inlinedAt: !2192)
!2198 = !DILocalVariable(name: "s1", arg: 1, scope: !2199, file: !2103, line: 90, type: !15)
!2199 = distinct !DISubprogram(name: "strcaseeq5", scope: !2103, file: !2103, line: 90, type: !2200, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!24, !15, !15, !7, !7, !7, !7}
!2202 = !{!2198, !2203, !2204, !2205, !2206, !2207}
!2203 = !DILocalVariable(name: "s2", arg: 2, scope: !2199, file: !2103, line: 90, type: !15)
!2204 = !DILocalVariable(name: "s25", arg: 3, scope: !2199, file: !2103, line: 90, type: !7)
!2205 = !DILocalVariable(name: "s26", arg: 4, scope: !2199, file: !2103, line: 90, type: !7)
!2206 = !DILocalVariable(name: "s27", arg: 5, scope: !2199, file: !2103, line: 90, type: !7)
!2207 = !DILocalVariable(name: "s28", arg: 6, scope: !2199, file: !2103, line: 90, type: !7)
!2208 = !DILocation(line: 0, scope: !2199, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 111, column: 16, scope: !2210, inlinedAt: !2192)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !2103, line: 108, column: 11)
!2211 = distinct !DILexicalBlock(scope: !2196, file: !2103, line: 107, column: 5)
!2212 = !DILocation(line: 92, column: 7, scope: !2213, inlinedAt: !2209)
!2213 = distinct !DILexicalBlock(scope: !2199, file: !2103, line: 92, column: 7)
!2214 = !DILocation(line: 92, column: 7, scope: !2199, inlinedAt: !2209)
!2215 = !DILocation(line: 235, column: 12, scope: !2119)
!2216 = !DILocation(line: 235, column: 21, scope: !2119)
!2217 = !DILocation(line: 235, column: 5, scope: !2119)
!2218 = !DILocation(line: 0, scope: !2123, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 167, column: 16, scope: !2138, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 236, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2087, file: !58, line: 236, column: 7)
!2222 = !DILocation(line: 148, column: 7, scope: !2141, inlinedAt: !2219)
!2223 = !DILocation(line: 0, scope: !2143, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 153, column: 16, scope: !2157, inlinedAt: !2219)
!2225 = !DILocation(line: 134, column: 7, scope: !2160, inlinedAt: !2224)
!2226 = !DILocation(line: 134, column: 7, scope: !2143, inlinedAt: !2224)
!2227 = !DILocation(line: 0, scope: !2162, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 139, column: 16, scope: !2175, inlinedAt: !2224)
!2229 = !DILocation(line: 120, column: 7, scope: !2178, inlinedAt: !2228)
!2230 = !DILocation(line: 120, column: 7, scope: !2162, inlinedAt: !2228)
!2231 = !DILocation(line: 0, scope: !2181, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 125, column: 16, scope: !2193, inlinedAt: !2228)
!2233 = !DILocation(line: 106, column: 7, scope: !2196, inlinedAt: !2232)
!2234 = !DILocation(line: 106, column: 7, scope: !2181, inlinedAt: !2232)
!2235 = !DILocation(line: 0, scope: !2199, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 111, column: 16, scope: !2210, inlinedAt: !2232)
!2237 = !DILocation(line: 92, column: 7, scope: !2213, inlinedAt: !2236)
!2238 = !DILocation(line: 92, column: 7, scope: !2199, inlinedAt: !2236)
!2239 = !DILocalVariable(name: "s1", arg: 1, scope: !2240, file: !2103, line: 76, type: !15)
!2240 = distinct !DISubprogram(name: "strcaseeq6", scope: !2103, file: !2103, line: 76, type: !2241, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!24, !15, !15, !7, !7, !7}
!2243 = !{!2239, !2244, !2245, !2246, !2247}
!2244 = !DILocalVariable(name: "s2", arg: 2, scope: !2240, file: !2103, line: 76, type: !15)
!2245 = !DILocalVariable(name: "s26", arg: 3, scope: !2240, file: !2103, line: 76, type: !7)
!2246 = !DILocalVariable(name: "s27", arg: 4, scope: !2240, file: !2103, line: 76, type: !7)
!2247 = !DILocalVariable(name: "s28", arg: 5, scope: !2240, file: !2103, line: 76, type: !7)
!2248 = !DILocation(line: 0, scope: !2240, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 97, column: 16, scope: !2250, inlinedAt: !2236)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !2103, line: 94, column: 11)
!2251 = distinct !DILexicalBlock(scope: !2213, file: !2103, line: 93, column: 5)
!2252 = !DILocation(line: 78, column: 7, scope: !2253, inlinedAt: !2249)
!2253 = distinct !DILexicalBlock(scope: !2240, file: !2103, line: 78, column: 7)
!2254 = !DILocation(line: 78, column: 7, scope: !2240, inlinedAt: !2249)
!2255 = !DILocalVariable(name: "s1", arg: 1, scope: !2256, file: !2103, line: 62, type: !15)
!2256 = distinct !DISubprogram(name: "strcaseeq7", scope: !2103, file: !2103, line: 62, type: !2257, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!24, !15, !15, !7, !7}
!2259 = !{!2255, !2260, !2261, !2262}
!2260 = !DILocalVariable(name: "s2", arg: 2, scope: !2256, file: !2103, line: 62, type: !15)
!2261 = !DILocalVariable(name: "s27", arg: 3, scope: !2256, file: !2103, line: 62, type: !7)
!2262 = !DILocalVariable(name: "s28", arg: 4, scope: !2256, file: !2103, line: 62, type: !7)
!2263 = !DILocation(line: 0, scope: !2256, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 83, column: 16, scope: !2265, inlinedAt: !2249)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !2103, line: 80, column: 11)
!2266 = distinct !DILexicalBlock(scope: !2253, file: !2103, line: 79, column: 5)
!2267 = !DILocation(line: 64, column: 7, scope: !2268, inlinedAt: !2264)
!2268 = distinct !DILexicalBlock(scope: !2256, file: !2103, line: 64, column: 7)
!2269 = !DILocation(line: 236, column: 7, scope: !2087)
!2270 = !DILocation(line: 237, column: 12, scope: !2221)
!2271 = !DILocation(line: 237, column: 21, scope: !2221)
!2272 = !DILocation(line: 237, column: 5, scope: !2221)
!2273 = !DILocation(line: 239, column: 13, scope: !2087)
!2274 = !DILocation(line: 239, column: 11, scope: !2087)
!2275 = !DILocation(line: 239, column: 3, scope: !2087)
!2276 = !DILocation(line: 240, column: 1, scope: !2087)
!2277 = !DISubprogram(name: "iswprint", scope: !2278, file: !2278, line: 120, type: !2279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2278 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!24, !62}
!2281 = !DISubprogram(name: "mbsinit", scope: !2282, file: !2282, line: 292, type: !2283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2282 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!24, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1607)
!2287 = distinct !DISubprogram(name: "quotearg_alloc", scope: !58, file: !58, line: 799, type: !2288, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!6, !15, !97, !1453}
!2290 = !{!2291, !2292, !2293}
!2291 = !DILocalVariable(name: "arg", arg: 1, scope: !2287, file: !58, line: 799, type: !15)
!2292 = !DILocalVariable(name: "argsize", arg: 2, scope: !2287, file: !58, line: 799, type: !97)
!2293 = !DILocalVariable(name: "o", arg: 3, scope: !2287, file: !58, line: 800, type: !1453)
!2294 = !DILocation(line: 0, scope: !2287)
!2295 = !DILocalVariable(name: "arg", arg: 1, scope: !2296, file: !58, line: 812, type: !15)
!2296 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !58, file: !58, line: 812, type: !2297, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!6, !15, !97, !197, !1453}
!2299 = !{!2295, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307}
!2300 = !DILocalVariable(name: "argsize", arg: 2, scope: !2296, file: !58, line: 812, type: !97)
!2301 = !DILocalVariable(name: "size", arg: 3, scope: !2296, file: !58, line: 812, type: !197)
!2302 = !DILocalVariable(name: "o", arg: 4, scope: !2296, file: !58, line: 813, type: !1453)
!2303 = !DILocalVariable(name: "p", scope: !2296, file: !58, line: 815, type: !1453)
!2304 = !DILocalVariable(name: "e", scope: !2296, file: !58, line: 816, type: !24)
!2305 = !DILocalVariable(name: "flags", scope: !2296, file: !58, line: 818, type: !24)
!2306 = !DILocalVariable(name: "bufsize", scope: !2296, file: !58, line: 819, type: !97)
!2307 = !DILocalVariable(name: "buf", scope: !2296, file: !58, line: 823, type: !6)
!2308 = !DILocation(line: 0, scope: !2296, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 802, column: 10, scope: !2287)
!2310 = !DILocation(line: 815, column: 37, scope: !2296, inlinedAt: !2309)
!2311 = !DILocation(line: 816, column: 11, scope: !2296, inlinedAt: !2309)
!2312 = !DILocation(line: 818, column: 18, scope: !2296, inlinedAt: !2309)
!2313 = !DILocation(line: 818, column: 24, scope: !2296, inlinedAt: !2309)
!2314 = !DILocation(line: 819, column: 69, scope: !2296, inlinedAt: !2309)
!2315 = !DILocation(line: 820, column: 53, scope: !2296, inlinedAt: !2309)
!2316 = !DILocation(line: 821, column: 49, scope: !2296, inlinedAt: !2309)
!2317 = !DILocation(line: 822, column: 49, scope: !2296, inlinedAt: !2309)
!2318 = !DILocation(line: 819, column: 20, scope: !2296, inlinedAt: !2309)
!2319 = !DILocation(line: 822, column: 62, scope: !2296, inlinedAt: !2309)
!2320 = !DILocalVariable(name: "n", arg: 1, scope: !2321, file: !193, line: 216, type: !97)
!2321 = distinct !DISubprogram(name: "xcharalloc", scope: !193, file: !193, line: 216, type: !929, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2322)
!2322 = !{!2320}
!2323 = !DILocation(line: 0, scope: !2321, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 823, column: 15, scope: !2296, inlinedAt: !2309)
!2325 = !DILocation(line: 218, column: 10, scope: !2321, inlinedAt: !2324)
!2326 = !DILocation(line: 824, column: 60, scope: !2296, inlinedAt: !2309)
!2327 = !DILocation(line: 826, column: 32, scope: !2296, inlinedAt: !2309)
!2328 = !DILocation(line: 826, column: 47, scope: !2296, inlinedAt: !2309)
!2329 = !DILocation(line: 824, column: 3, scope: !2296, inlinedAt: !2309)
!2330 = !DILocation(line: 827, column: 9, scope: !2296, inlinedAt: !2309)
!2331 = !DILocation(line: 802, column: 3, scope: !2287)
!2332 = !DILocation(line: 0, scope: !2296)
!2333 = !DILocation(line: 815, column: 37, scope: !2296)
!2334 = !DILocation(line: 816, column: 11, scope: !2296)
!2335 = !DILocation(line: 818, column: 18, scope: !2296)
!2336 = !DILocation(line: 818, column: 27, scope: !2296)
!2337 = !DILocation(line: 818, column: 24, scope: !2296)
!2338 = !DILocation(line: 819, column: 69, scope: !2296)
!2339 = !DILocation(line: 820, column: 53, scope: !2296)
!2340 = !DILocation(line: 821, column: 49, scope: !2296)
!2341 = !DILocation(line: 822, column: 49, scope: !2296)
!2342 = !DILocation(line: 819, column: 20, scope: !2296)
!2343 = !DILocation(line: 822, column: 62, scope: !2296)
!2344 = !DILocation(line: 0, scope: !2321, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 823, column: 15, scope: !2296)
!2346 = !DILocation(line: 218, column: 10, scope: !2321, inlinedAt: !2345)
!2347 = !DILocation(line: 824, column: 60, scope: !2296)
!2348 = !DILocation(line: 826, column: 32, scope: !2296)
!2349 = !DILocation(line: 826, column: 47, scope: !2296)
!2350 = !DILocation(line: 824, column: 3, scope: !2296)
!2351 = !DILocation(line: 827, column: 9, scope: !2296)
!2352 = !DILocation(line: 828, column: 7, scope: !2296)
!2353 = !DILocation(line: 829, column: 11, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2296, file: !58, line: 828, column: 7)
!2355 = !{!1212, !1212, i64 0}
!2356 = !DILocation(line: 829, column: 5, scope: !2354)
!2357 = !DILocation(line: 830, column: 3, scope: !2296)
!2358 = distinct !DISubprogram(name: "quotearg_free", scope: !58, file: !58, line: 848, type: !1120, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2359)
!2359 = !{!2360, !2361}
!2360 = !DILocalVariable(name: "sv", scope: !2358, file: !58, line: 850, type: !126)
!2361 = !DILocalVariable(name: "i", scope: !2358, file: !58, line: 851, type: !24)
!2362 = !DILocation(line: 850, column: 24, scope: !2358)
!2363 = !DILocation(line: 0, scope: !2358)
!2364 = !DILocation(line: 852, column: 19, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !58, line: 852, column: 3)
!2366 = distinct !DILexicalBlock(scope: !2358, file: !58, line: 852, column: 3)
!2367 = !DILocation(line: 852, column: 17, scope: !2365)
!2368 = !DILocation(line: 852, column: 3, scope: !2366)
!2369 = !DILocation(line: 853, column: 17, scope: !2365)
!2370 = !{!2371, !698, i64 8}
!2371 = !{!"slotvec", !1212, i64 0, !698, i64 8}
!2372 = !DILocation(line: 853, column: 5, scope: !2365)
!2373 = !DILocation(line: 852, column: 28, scope: !2365)
!2374 = distinct !{!2374, !2368, !2375, !745}
!2375 = !DILocation(line: 853, column: 20, scope: !2366)
!2376 = !DILocation(line: 854, column: 13, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2358, file: !58, line: 854, column: 7)
!2378 = !DILocation(line: 854, column: 17, scope: !2377)
!2379 = !DILocation(line: 854, column: 7, scope: !2358)
!2380 = !DILocation(line: 856, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !58, line: 855, column: 5)
!2382 = !DILocation(line: 857, column: 21, scope: !2381)
!2383 = !{!2371, !1212, i64 0}
!2384 = !DILocation(line: 858, column: 20, scope: !2381)
!2385 = !DILocation(line: 859, column: 5, scope: !2381)
!2386 = !DILocation(line: 860, column: 10, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2358, file: !58, line: 860, column: 7)
!2388 = !DILocation(line: 860, column: 7, scope: !2358)
!2389 = !DILocation(line: 862, column: 13, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !58, line: 861, column: 5)
!2391 = !DILocation(line: 862, column: 7, scope: !2390)
!2392 = !DILocation(line: 863, column: 15, scope: !2390)
!2393 = !DILocation(line: 864, column: 5, scope: !2390)
!2394 = !DILocation(line: 865, column: 10, scope: !2358)
!2395 = !DILocation(line: 866, column: 1, scope: !2358)
!2396 = distinct !DISubprogram(name: "quotearg_n", scope: !58, file: !58, line: 931, type: !826, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2397)
!2397 = !{!2398, !2399}
!2398 = !DILocalVariable(name: "n", arg: 1, scope: !2396, file: !58, line: 931, type: !24)
!2399 = !DILocalVariable(name: "arg", arg: 2, scope: !2396, file: !58, line: 931, type: !15)
!2400 = !DILocation(line: 0, scope: !2396)
!2401 = !DILocation(line: 933, column: 10, scope: !2396)
!2402 = !DILocation(line: 933, column: 3, scope: !2396)
!2403 = distinct !DISubprogram(name: "quotearg_n_options", scope: !58, file: !58, line: 877, type: !2404, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!6, !24, !15, !97, !1453}
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2412, !2413, !2416, !2417, !2419, !2420, !2421}
!2407 = !DILocalVariable(name: "n", arg: 1, scope: !2403, file: !58, line: 877, type: !24)
!2408 = !DILocalVariable(name: "arg", arg: 2, scope: !2403, file: !58, line: 877, type: !15)
!2409 = !DILocalVariable(name: "argsize", arg: 3, scope: !2403, file: !58, line: 877, type: !97)
!2410 = !DILocalVariable(name: "options", arg: 4, scope: !2403, file: !58, line: 878, type: !1453)
!2411 = !DILocalVariable(name: "e", scope: !2403, file: !58, line: 880, type: !24)
!2412 = !DILocalVariable(name: "sv", scope: !2403, file: !58, line: 882, type: !126)
!2413 = !DILocalVariable(name: "preallocated", scope: !2414, file: !58, line: 889, type: !12)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !58, line: 888, column: 5)
!2415 = distinct !DILexicalBlock(scope: !2403, file: !58, line: 887, column: 7)
!2416 = !DILocalVariable(name: "nmax", scope: !2414, file: !58, line: 890, type: !24)
!2417 = !DILocalVariable(name: "size", scope: !2418, file: !58, line: 903, type: !97)
!2418 = distinct !DILexicalBlock(scope: !2403, file: !58, line: 902, column: 3)
!2419 = !DILocalVariable(name: "val", scope: !2418, file: !58, line: 904, type: !6)
!2420 = !DILocalVariable(name: "flags", scope: !2418, file: !58, line: 906, type: !24)
!2421 = !DILocalVariable(name: "qsize", scope: !2418, file: !58, line: 907, type: !97)
!2422 = !DILocation(line: 0, scope: !2403)
!2423 = !DILocation(line: 880, column: 11, scope: !2403)
!2424 = !DILocation(line: 882, column: 24, scope: !2403)
!2425 = !DILocation(line: 884, column: 9, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2403, file: !58, line: 884, column: 7)
!2427 = !DILocation(line: 884, column: 7, scope: !2403)
!2428 = !DILocation(line: 885, column: 5, scope: !2426)
!2429 = !DILocation(line: 887, column: 7, scope: !2415)
!2430 = !DILocation(line: 887, column: 14, scope: !2415)
!2431 = !DILocation(line: 887, column: 7, scope: !2403)
!2432 = !DILocation(line: 889, column: 31, scope: !2414)
!2433 = !DILocation(line: 0, scope: !2414)
!2434 = !DILocation(line: 892, column: 16, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2414, file: !58, line: 892, column: 11)
!2436 = !DILocation(line: 892, column: 11, scope: !2414)
!2437 = !DILocation(line: 893, column: 9, scope: !2435)
!2438 = !DILocation(line: 895, column: 32, scope: !2414)
!2439 = !DILocation(line: 895, column: 61, scope: !2414)
!2440 = !DILocation(line: 895, column: 66, scope: !2414)
!2441 = !DILocation(line: 895, column: 22, scope: !2414)
!2442 = !DILocation(line: 895, column: 15, scope: !2414)
!2443 = !DILocation(line: 896, column: 11, scope: !2414)
!2444 = !DILocation(line: 897, column: 15, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2414, file: !58, line: 896, column: 11)
!2446 = !{i64 0, i64 8, !2355, i64 8, i64 8, !697}
!2447 = !DILocation(line: 897, column: 9, scope: !2445)
!2448 = !DILocation(line: 898, column: 20, scope: !2414)
!2449 = !DILocation(line: 898, column: 18, scope: !2414)
!2450 = !DILocation(line: 898, column: 15, scope: !2414)
!2451 = !DILocation(line: 898, column: 38, scope: !2414)
!2452 = !DILocation(line: 898, column: 31, scope: !2414)
!2453 = !DILocation(line: 898, column: 48, scope: !2414)
!2454 = !DILocation(line: 0, scope: !1849, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 898, column: 7, scope: !2414)
!2456 = !DILocation(line: 59, column: 10, scope: !1849, inlinedAt: !2455)
!2457 = !DILocation(line: 899, column: 14, scope: !2414)
!2458 = !DILocation(line: 900, column: 5, scope: !2414)
!2459 = !DILocation(line: 903, column: 19, scope: !2418)
!2460 = !DILocation(line: 903, column: 25, scope: !2418)
!2461 = !DILocation(line: 0, scope: !2418)
!2462 = !DILocation(line: 904, column: 23, scope: !2418)
!2463 = !DILocation(line: 906, column: 26, scope: !2418)
!2464 = !DILocation(line: 906, column: 32, scope: !2418)
!2465 = !DILocation(line: 908, column: 55, scope: !2418)
!2466 = !DILocation(line: 909, column: 46, scope: !2418)
!2467 = !DILocation(line: 910, column: 55, scope: !2418)
!2468 = !DILocation(line: 911, column: 55, scope: !2418)
!2469 = !DILocation(line: 907, column: 20, scope: !2418)
!2470 = !DILocation(line: 913, column: 14, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2418, file: !58, line: 913, column: 9)
!2472 = !DILocation(line: 913, column: 9, scope: !2418)
!2473 = !DILocation(line: 915, column: 35, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !58, line: 914, column: 7)
!2475 = !DILocation(line: 915, column: 20, scope: !2474)
!2476 = !DILocation(line: 916, column: 17, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !58, line: 916, column: 13)
!2478 = !DILocation(line: 916, column: 13, scope: !2474)
!2479 = !DILocation(line: 917, column: 11, scope: !2477)
!2480 = !DILocation(line: 0, scope: !2321, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 918, column: 27, scope: !2474)
!2482 = !DILocation(line: 218, column: 10, scope: !2321, inlinedAt: !2481)
!2483 = !DILocation(line: 918, column: 19, scope: !2474)
!2484 = !DILocation(line: 919, column: 69, scope: !2474)
!2485 = !DILocation(line: 921, column: 44, scope: !2474)
!2486 = !DILocation(line: 922, column: 44, scope: !2474)
!2487 = !DILocation(line: 919, column: 9, scope: !2474)
!2488 = !DILocation(line: 923, column: 7, scope: !2474)
!2489 = !DILocation(line: 925, column: 11, scope: !2418)
!2490 = !DILocation(line: 926, column: 5, scope: !2418)
!2491 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !58, file: !58, line: 937, type: !2492, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!6, !24, !15, !97}
!2494 = !{!2495, !2496, !2497}
!2495 = !DILocalVariable(name: "n", arg: 1, scope: !2491, file: !58, line: 937, type: !24)
!2496 = !DILocalVariable(name: "arg", arg: 2, scope: !2491, file: !58, line: 937, type: !15)
!2497 = !DILocalVariable(name: "argsize", arg: 3, scope: !2491, file: !58, line: 937, type: !97)
!2498 = !DILocation(line: 0, scope: !2491)
!2499 = !DILocation(line: 939, column: 10, scope: !2491)
!2500 = !DILocation(line: 939, column: 3, scope: !2491)
!2501 = distinct !DISubprogram(name: "quotearg", scope: !58, file: !58, line: 943, type: !1117, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2502)
!2502 = !{!2503}
!2503 = !DILocalVariable(name: "arg", arg: 1, scope: !2501, file: !58, line: 943, type: !15)
!2504 = !DILocation(line: 0, scope: !2501)
!2505 = !DILocation(line: 0, scope: !2396, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 945, column: 10, scope: !2501)
!2507 = !DILocation(line: 933, column: 10, scope: !2396, inlinedAt: !2506)
!2508 = !DILocation(line: 945, column: 3, scope: !2501)
!2509 = distinct !DISubprogram(name: "quotearg_mem", scope: !58, file: !58, line: 949, type: !2510, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!6, !15, !97}
!2512 = !{!2513, !2514}
!2513 = !DILocalVariable(name: "arg", arg: 1, scope: !2509, file: !58, line: 949, type: !15)
!2514 = !DILocalVariable(name: "argsize", arg: 2, scope: !2509, file: !58, line: 949, type: !97)
!2515 = !DILocation(line: 0, scope: !2509)
!2516 = !DILocation(line: 0, scope: !2491, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 951, column: 10, scope: !2509)
!2518 = !DILocation(line: 939, column: 10, scope: !2491, inlinedAt: !2517)
!2519 = !DILocation(line: 951, column: 3, scope: !2509)
!2520 = distinct !DISubprogram(name: "quotearg_n_style", scope: !58, file: !58, line: 955, type: !2521, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!6, !24, !60, !15}
!2523 = !{!2524, !2525, !2526, !2527}
!2524 = !DILocalVariable(name: "n", arg: 1, scope: !2520, file: !58, line: 955, type: !24)
!2525 = !DILocalVariable(name: "s", arg: 2, scope: !2520, file: !58, line: 955, type: !60)
!2526 = !DILocalVariable(name: "arg", arg: 3, scope: !2520, file: !58, line: 955, type: !15)
!2527 = !DILocalVariable(name: "o", scope: !2520, file: !58, line: 957, type: !1454)
!2528 = !DILocation(line: 0, scope: !2520)
!2529 = !DILocation(line: 957, column: 3, scope: !2520)
!2530 = !DILocation(line: 957, column: 32, scope: !2520)
!2531 = !{!2532}
!2532 = distinct !{!2532, !2533, !"quoting_options_from_style: argument 0"}
!2533 = distinct !{!2533, !"quoting_options_from_style"}
!2534 = !DILocation(line: 957, column: 36, scope: !2520)
!2535 = !DILocalVariable(name: "style", arg: 1, scope: !2536, file: !58, line: 193, type: !60)
!2536 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !58, file: !58, line: 193, type: !2537, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!109, !60}
!2539 = !{!2535, !2540}
!2540 = !DILocalVariable(name: "o", scope: !2536, file: !58, line: 195, type: !109)
!2541 = !DILocation(line: 0, scope: !2536, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 957, column: 36, scope: !2520)
!2543 = !DILocation(line: 195, column: 26, scope: !2536, inlinedAt: !2542)
!2544 = !DILocation(line: 196, column: 13, scope: !2545, inlinedAt: !2542)
!2545 = distinct !DILexicalBlock(scope: !2536, file: !58, line: 196, column: 7)
!2546 = !DILocation(line: 196, column: 7, scope: !2536, inlinedAt: !2542)
!2547 = !DILocation(line: 197, column: 5, scope: !2545, inlinedAt: !2542)
!2548 = !DILocation(line: 198, column: 5, scope: !2536, inlinedAt: !2542)
!2549 = !DILocation(line: 198, column: 11, scope: !2536, inlinedAt: !2542)
!2550 = !DILocation(line: 958, column: 10, scope: !2520)
!2551 = !DILocation(line: 959, column: 1, scope: !2520)
!2552 = !DILocation(line: 958, column: 3, scope: !2520)
!2553 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !58, file: !58, line: 962, type: !2554, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!6, !24, !60, !15, !97}
!2556 = !{!2557, !2558, !2559, !2560, !2561}
!2557 = !DILocalVariable(name: "n", arg: 1, scope: !2553, file: !58, line: 962, type: !24)
!2558 = !DILocalVariable(name: "s", arg: 2, scope: !2553, file: !58, line: 962, type: !60)
!2559 = !DILocalVariable(name: "arg", arg: 3, scope: !2553, file: !58, line: 963, type: !15)
!2560 = !DILocalVariable(name: "argsize", arg: 4, scope: !2553, file: !58, line: 963, type: !97)
!2561 = !DILocalVariable(name: "o", scope: !2553, file: !58, line: 965, type: !1454)
!2562 = !DILocation(line: 0, scope: !2553)
!2563 = !DILocation(line: 965, column: 3, scope: !2553)
!2564 = !DILocation(line: 965, column: 32, scope: !2553)
!2565 = !{!2566}
!2566 = distinct !{!2566, !2567, !"quoting_options_from_style: argument 0"}
!2567 = distinct !{!2567, !"quoting_options_from_style"}
!2568 = !DILocation(line: 965, column: 36, scope: !2553)
!2569 = !DILocation(line: 0, scope: !2536, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 965, column: 36, scope: !2553)
!2571 = !DILocation(line: 195, column: 26, scope: !2536, inlinedAt: !2570)
!2572 = !DILocation(line: 196, column: 13, scope: !2545, inlinedAt: !2570)
!2573 = !DILocation(line: 196, column: 7, scope: !2536, inlinedAt: !2570)
!2574 = !DILocation(line: 197, column: 5, scope: !2545, inlinedAt: !2570)
!2575 = !DILocation(line: 198, column: 5, scope: !2536, inlinedAt: !2570)
!2576 = !DILocation(line: 198, column: 11, scope: !2536, inlinedAt: !2570)
!2577 = !DILocation(line: 966, column: 10, scope: !2553)
!2578 = !DILocation(line: 967, column: 1, scope: !2553)
!2579 = !DILocation(line: 966, column: 3, scope: !2553)
!2580 = distinct !DISubprogram(name: "quotearg_style", scope: !58, file: !58, line: 970, type: !2581, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!6, !60, !15}
!2583 = !{!2584, !2585}
!2584 = !DILocalVariable(name: "s", arg: 1, scope: !2580, file: !58, line: 970, type: !60)
!2585 = !DILocalVariable(name: "arg", arg: 2, scope: !2580, file: !58, line: 970, type: !15)
!2586 = !DILocation(line: 0, scope: !2580)
!2587 = !DILocation(line: 0, scope: !2520, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 972, column: 10, scope: !2580)
!2589 = !DILocation(line: 957, column: 3, scope: !2520, inlinedAt: !2588)
!2590 = !DILocation(line: 957, column: 32, scope: !2520, inlinedAt: !2588)
!2591 = !{!2592}
!2592 = distinct !{!2592, !2593, !"quoting_options_from_style: argument 0"}
!2593 = distinct !{!2593, !"quoting_options_from_style"}
!2594 = !DILocation(line: 957, column: 36, scope: !2520, inlinedAt: !2588)
!2595 = !DILocation(line: 0, scope: !2536, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 957, column: 36, scope: !2520, inlinedAt: !2588)
!2597 = !DILocation(line: 195, column: 26, scope: !2536, inlinedAt: !2596)
!2598 = !DILocation(line: 196, column: 13, scope: !2545, inlinedAt: !2596)
!2599 = !DILocation(line: 196, column: 7, scope: !2536, inlinedAt: !2596)
!2600 = !DILocation(line: 197, column: 5, scope: !2545, inlinedAt: !2596)
!2601 = !DILocation(line: 198, column: 5, scope: !2536, inlinedAt: !2596)
!2602 = !DILocation(line: 198, column: 11, scope: !2536, inlinedAt: !2596)
!2603 = !DILocation(line: 958, column: 10, scope: !2520, inlinedAt: !2588)
!2604 = !DILocation(line: 959, column: 1, scope: !2520, inlinedAt: !2588)
!2605 = !DILocation(line: 972, column: 3, scope: !2580)
!2606 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !58, file: !58, line: 976, type: !2607, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!6, !60, !15, !97}
!2609 = !{!2610, !2611, !2612}
!2610 = !DILocalVariable(name: "s", arg: 1, scope: !2606, file: !58, line: 976, type: !60)
!2611 = !DILocalVariable(name: "arg", arg: 2, scope: !2606, file: !58, line: 976, type: !15)
!2612 = !DILocalVariable(name: "argsize", arg: 3, scope: !2606, file: !58, line: 976, type: !97)
!2613 = !DILocation(line: 0, scope: !2606)
!2614 = !DILocation(line: 0, scope: !2553, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 978, column: 10, scope: !2606)
!2616 = !DILocation(line: 965, column: 3, scope: !2553, inlinedAt: !2615)
!2617 = !DILocation(line: 965, column: 32, scope: !2553, inlinedAt: !2615)
!2618 = !{!2619}
!2619 = distinct !{!2619, !2620, !"quoting_options_from_style: argument 0"}
!2620 = distinct !{!2620, !"quoting_options_from_style"}
!2621 = !DILocation(line: 965, column: 36, scope: !2553, inlinedAt: !2615)
!2622 = !DILocation(line: 0, scope: !2536, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 965, column: 36, scope: !2553, inlinedAt: !2615)
!2624 = !DILocation(line: 195, column: 26, scope: !2536, inlinedAt: !2623)
!2625 = !DILocation(line: 196, column: 13, scope: !2545, inlinedAt: !2623)
!2626 = !DILocation(line: 196, column: 7, scope: !2536, inlinedAt: !2623)
!2627 = !DILocation(line: 197, column: 5, scope: !2545, inlinedAt: !2623)
!2628 = !DILocation(line: 198, column: 5, scope: !2536, inlinedAt: !2623)
!2629 = !DILocation(line: 198, column: 11, scope: !2536, inlinedAt: !2623)
!2630 = !DILocation(line: 966, column: 10, scope: !2553, inlinedAt: !2615)
!2631 = !DILocation(line: 967, column: 1, scope: !2553, inlinedAt: !2615)
!2632 = !DILocation(line: 978, column: 3, scope: !2606)
!2633 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !58, file: !58, line: 982, type: !2634, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!6, !15, !97, !7}
!2636 = !{!2637, !2638, !2639, !2640}
!2637 = !DILocalVariable(name: "arg", arg: 1, scope: !2633, file: !58, line: 982, type: !15)
!2638 = !DILocalVariable(name: "argsize", arg: 2, scope: !2633, file: !58, line: 982, type: !97)
!2639 = !DILocalVariable(name: "ch", arg: 3, scope: !2633, file: !58, line: 982, type: !7)
!2640 = !DILocalVariable(name: "options", scope: !2633, file: !58, line: 984, type: !109)
!2641 = !DILocation(line: 0, scope: !2633)
!2642 = !DILocation(line: 984, column: 3, scope: !2633)
!2643 = !DILocation(line: 984, column: 26, scope: !2633)
!2644 = !DILocation(line: 985, column: 13, scope: !2633)
!2645 = !{i64 0, i64 4, !919, i64 4, i64 4, !894, i64 8, i64 32, !919, i64 40, i64 8, !697, i64 48, i64 8, !697}
!2646 = !DILocation(line: 0, scope: !1474, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 986, column: 3, scope: !2633)
!2648 = !DILocation(line: 156, column: 62, scope: !1474, inlinedAt: !2647)
!2649 = !DILocation(line: 156, column: 57, scope: !1474, inlinedAt: !2647)
!2650 = !DILocation(line: 157, column: 15, scope: !1474, inlinedAt: !2647)
!2651 = !DILocation(line: 158, column: 12, scope: !1474, inlinedAt: !2647)
!2652 = !DILocation(line: 158, column: 15, scope: !1474, inlinedAt: !2647)
!2653 = !DILocation(line: 158, column: 25, scope: !1474, inlinedAt: !2647)
!2654 = !DILocation(line: 159, column: 18, scope: !1474, inlinedAt: !2647)
!2655 = !DILocation(line: 159, column: 23, scope: !1474, inlinedAt: !2647)
!2656 = !DILocation(line: 159, column: 6, scope: !1474, inlinedAt: !2647)
!2657 = !DILocation(line: 987, column: 10, scope: !2633)
!2658 = !DILocation(line: 988, column: 1, scope: !2633)
!2659 = !DILocation(line: 987, column: 3, scope: !2633)
!2660 = distinct !DISubprogram(name: "quotearg_char", scope: !58, file: !58, line: 991, type: !2661, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!6, !15, !7}
!2663 = !{!2664, !2665}
!2664 = !DILocalVariable(name: "arg", arg: 1, scope: !2660, file: !58, line: 991, type: !15)
!2665 = !DILocalVariable(name: "ch", arg: 2, scope: !2660, file: !58, line: 991, type: !7)
!2666 = !DILocation(line: 0, scope: !2660)
!2667 = !DILocation(line: 0, scope: !2633, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 993, column: 10, scope: !2660)
!2669 = !DILocation(line: 984, column: 3, scope: !2633, inlinedAt: !2668)
!2670 = !DILocation(line: 984, column: 26, scope: !2633, inlinedAt: !2668)
!2671 = !DILocation(line: 985, column: 13, scope: !2633, inlinedAt: !2668)
!2672 = !DILocation(line: 0, scope: !1474, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 986, column: 3, scope: !2633, inlinedAt: !2668)
!2674 = !DILocation(line: 156, column: 62, scope: !1474, inlinedAt: !2673)
!2675 = !DILocation(line: 156, column: 57, scope: !1474, inlinedAt: !2673)
!2676 = !DILocation(line: 157, column: 15, scope: !1474, inlinedAt: !2673)
!2677 = !DILocation(line: 158, column: 12, scope: !1474, inlinedAt: !2673)
!2678 = !DILocation(line: 158, column: 15, scope: !1474, inlinedAt: !2673)
!2679 = !DILocation(line: 158, column: 25, scope: !1474, inlinedAt: !2673)
!2680 = !DILocation(line: 159, column: 18, scope: !1474, inlinedAt: !2673)
!2681 = !DILocation(line: 159, column: 23, scope: !1474, inlinedAt: !2673)
!2682 = !DILocation(line: 159, column: 6, scope: !1474, inlinedAt: !2673)
!2683 = !DILocation(line: 987, column: 10, scope: !2633, inlinedAt: !2668)
!2684 = !DILocation(line: 988, column: 1, scope: !2633, inlinedAt: !2668)
!2685 = !DILocation(line: 993, column: 3, scope: !2660)
!2686 = distinct !DISubprogram(name: "quotearg_colon", scope: !58, file: !58, line: 997, type: !1117, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2687)
!2687 = !{!2688}
!2688 = !DILocalVariable(name: "arg", arg: 1, scope: !2686, file: !58, line: 997, type: !15)
!2689 = !DILocation(line: 0, scope: !2686)
!2690 = !DILocation(line: 0, scope: !2660, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 999, column: 10, scope: !2686)
!2692 = !DILocation(line: 0, scope: !2633, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 993, column: 10, scope: !2660, inlinedAt: !2691)
!2694 = !DILocation(line: 984, column: 3, scope: !2633, inlinedAt: !2693)
!2695 = !DILocation(line: 984, column: 26, scope: !2633, inlinedAt: !2693)
!2696 = !DILocation(line: 985, column: 13, scope: !2633, inlinedAt: !2693)
!2697 = !DILocation(line: 0, scope: !1474, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 986, column: 3, scope: !2633, inlinedAt: !2693)
!2699 = !DILocation(line: 156, column: 57, scope: !1474, inlinedAt: !2698)
!2700 = !DILocation(line: 158, column: 12, scope: !1474, inlinedAt: !2698)
!2701 = !DILocation(line: 159, column: 6, scope: !1474, inlinedAt: !2698)
!2702 = !DILocation(line: 987, column: 10, scope: !2633, inlinedAt: !2693)
!2703 = !DILocation(line: 988, column: 1, scope: !2633, inlinedAt: !2693)
!2704 = !DILocation(line: 999, column: 3, scope: !2686)
!2705 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !58, file: !58, line: 1003, type: !2510, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2706)
!2706 = !{!2707, !2708}
!2707 = !DILocalVariable(name: "arg", arg: 1, scope: !2705, file: !58, line: 1003, type: !15)
!2708 = !DILocalVariable(name: "argsize", arg: 2, scope: !2705, file: !58, line: 1003, type: !97)
!2709 = !DILocation(line: 0, scope: !2705)
!2710 = !DILocation(line: 0, scope: !2633, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 1005, column: 10, scope: !2705)
!2712 = !DILocation(line: 984, column: 3, scope: !2633, inlinedAt: !2711)
!2713 = !DILocation(line: 984, column: 26, scope: !2633, inlinedAt: !2711)
!2714 = !DILocation(line: 985, column: 13, scope: !2633, inlinedAt: !2711)
!2715 = !DILocation(line: 0, scope: !1474, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 986, column: 3, scope: !2633, inlinedAt: !2711)
!2717 = !DILocation(line: 156, column: 57, scope: !1474, inlinedAt: !2716)
!2718 = !DILocation(line: 158, column: 12, scope: !1474, inlinedAt: !2716)
!2719 = !DILocation(line: 159, column: 6, scope: !1474, inlinedAt: !2716)
!2720 = !DILocation(line: 987, column: 10, scope: !2633, inlinedAt: !2711)
!2721 = !DILocation(line: 988, column: 1, scope: !2633, inlinedAt: !2711)
!2722 = !DILocation(line: 1005, column: 3, scope: !2705)
!2723 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !58, file: !58, line: 1009, type: !2521, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2724)
!2724 = !{!2725, !2726, !2727, !2728}
!2725 = !DILocalVariable(name: "n", arg: 1, scope: !2723, file: !58, line: 1009, type: !24)
!2726 = !DILocalVariable(name: "s", arg: 2, scope: !2723, file: !58, line: 1009, type: !60)
!2727 = !DILocalVariable(name: "arg", arg: 3, scope: !2723, file: !58, line: 1009, type: !15)
!2728 = !DILocalVariable(name: "options", scope: !2723, file: !58, line: 1011, type: !109)
!2729 = !DILocation(line: 195, column: 26, scope: !2536, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1012, column: 13, scope: !2723)
!2731 = !DILocation(line: 0, scope: !2723)
!2732 = !DILocation(line: 1011, column: 3, scope: !2723)
!2733 = !DILocation(line: 1011, column: 26, scope: !2723)
!2734 = !DILocation(line: 1012, column: 13, scope: !2723)
!2735 = !{!2736}
!2736 = distinct !{!2736, !2737, !"quoting_options_from_style: argument 0"}
!2737 = distinct !{!2737, !"quoting_options_from_style"}
!2738 = !DILocation(line: 0, scope: !2536, inlinedAt: !2730)
!2739 = !DILocation(line: 196, column: 13, scope: !2545, inlinedAt: !2730)
!2740 = !DILocation(line: 196, column: 7, scope: !2536, inlinedAt: !2730)
!2741 = !DILocation(line: 197, column: 5, scope: !2545, inlinedAt: !2730)
!2742 = !{i64 0, i64 4, !894, i64 4, i64 32, !919, i64 36, i64 8, !697, i64 44, i64 8, !697}
!2743 = !DILocation(line: 0, scope: !1474, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1013, column: 3, scope: !2723)
!2745 = !DILocation(line: 156, column: 57, scope: !1474, inlinedAt: !2744)
!2746 = !DILocation(line: 158, column: 12, scope: !1474, inlinedAt: !2744)
!2747 = !DILocation(line: 159, column: 6, scope: !1474, inlinedAt: !2744)
!2748 = !DILocation(line: 1014, column: 10, scope: !2723)
!2749 = !DILocation(line: 1015, column: 1, scope: !2723)
!2750 = !DILocation(line: 1014, column: 3, scope: !2723)
!2751 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !58, file: !58, line: 1018, type: !2752, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!6, !24, !15, !15, !15}
!2754 = !{!2755, !2756, !2757, !2758}
!2755 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !58, line: 1018, type: !24)
!2756 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2751, file: !58, line: 1018, type: !15)
!2757 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2751, file: !58, line: 1019, type: !15)
!2758 = !DILocalVariable(name: "arg", arg: 4, scope: !2751, file: !58, line: 1019, type: !15)
!2759 = !DILocation(line: 0, scope: !2751)
!2760 = !DILocalVariable(name: "n", arg: 1, scope: !2761, file: !58, line: 1026, type: !24)
!2761 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !58, file: !58, line: 1026, type: !2762, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!6, !24, !15, !15, !15, !97}
!2764 = !{!2760, !2765, !2766, !2767, !2768, !2769}
!2765 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2761, file: !58, line: 1026, type: !15)
!2766 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2761, file: !58, line: 1027, type: !15)
!2767 = !DILocalVariable(name: "arg", arg: 4, scope: !2761, file: !58, line: 1028, type: !15)
!2768 = !DILocalVariable(name: "argsize", arg: 5, scope: !2761, file: !58, line: 1028, type: !97)
!2769 = !DILocalVariable(name: "o", scope: !2761, file: !58, line: 1030, type: !109)
!2770 = !DILocation(line: 0, scope: !2761, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1021, column: 10, scope: !2751)
!2772 = !DILocation(line: 1030, column: 3, scope: !2761, inlinedAt: !2771)
!2773 = !DILocation(line: 1030, column: 26, scope: !2761, inlinedAt: !2771)
!2774 = !DILocation(line: 1030, column: 30, scope: !2761, inlinedAt: !2771)
!2775 = !DILocation(line: 0, scope: !1515, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 1031, column: 3, scope: !2761, inlinedAt: !2771)
!2777 = !DILocation(line: 184, column: 6, scope: !1515, inlinedAt: !2776)
!2778 = !DILocation(line: 184, column: 12, scope: !1515, inlinedAt: !2776)
!2779 = !DILocation(line: 185, column: 8, scope: !1529, inlinedAt: !2776)
!2780 = !DILocation(line: 185, column: 19, scope: !1529, inlinedAt: !2776)
!2781 = !DILocation(line: 186, column: 5, scope: !1529, inlinedAt: !2776)
!2782 = !DILocation(line: 187, column: 6, scope: !1515, inlinedAt: !2776)
!2783 = !DILocation(line: 187, column: 17, scope: !1515, inlinedAt: !2776)
!2784 = !DILocation(line: 188, column: 6, scope: !1515, inlinedAt: !2776)
!2785 = !DILocation(line: 188, column: 18, scope: !1515, inlinedAt: !2776)
!2786 = !DILocation(line: 1032, column: 10, scope: !2761, inlinedAt: !2771)
!2787 = !DILocation(line: 1033, column: 1, scope: !2761, inlinedAt: !2771)
!2788 = !DILocation(line: 1021, column: 3, scope: !2751)
!2789 = !DILocation(line: 0, scope: !2761)
!2790 = !DILocation(line: 1030, column: 3, scope: !2761)
!2791 = !DILocation(line: 1030, column: 26, scope: !2761)
!2792 = !DILocation(line: 1030, column: 30, scope: !2761)
!2793 = !DILocation(line: 0, scope: !1515, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 1031, column: 3, scope: !2761)
!2795 = !DILocation(line: 184, column: 6, scope: !1515, inlinedAt: !2794)
!2796 = !DILocation(line: 184, column: 12, scope: !1515, inlinedAt: !2794)
!2797 = !DILocation(line: 185, column: 8, scope: !1529, inlinedAt: !2794)
!2798 = !DILocation(line: 185, column: 19, scope: !1529, inlinedAt: !2794)
!2799 = !DILocation(line: 186, column: 5, scope: !1529, inlinedAt: !2794)
!2800 = !DILocation(line: 187, column: 6, scope: !1515, inlinedAt: !2794)
!2801 = !DILocation(line: 187, column: 17, scope: !1515, inlinedAt: !2794)
!2802 = !DILocation(line: 188, column: 6, scope: !1515, inlinedAt: !2794)
!2803 = !DILocation(line: 188, column: 18, scope: !1515, inlinedAt: !2794)
!2804 = !DILocation(line: 1032, column: 10, scope: !2761)
!2805 = !DILocation(line: 1033, column: 1, scope: !2761)
!2806 = !DILocation(line: 1032, column: 3, scope: !2761)
!2807 = distinct !DISubprogram(name: "quotearg_custom", scope: !58, file: !58, line: 1036, type: !2808, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!6, !15, !15, !15}
!2810 = !{!2811, !2812, !2813}
!2811 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2807, file: !58, line: 1036, type: !15)
!2812 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2807, file: !58, line: 1036, type: !15)
!2813 = !DILocalVariable(name: "arg", arg: 3, scope: !2807, file: !58, line: 1037, type: !15)
!2814 = !DILocation(line: 0, scope: !2807)
!2815 = !DILocation(line: 0, scope: !2751, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 1039, column: 10, scope: !2807)
!2817 = !DILocation(line: 0, scope: !2761, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 1021, column: 10, scope: !2751, inlinedAt: !2816)
!2819 = !DILocation(line: 1030, column: 3, scope: !2761, inlinedAt: !2818)
!2820 = !DILocation(line: 1030, column: 26, scope: !2761, inlinedAt: !2818)
!2821 = !DILocation(line: 1030, column: 30, scope: !2761, inlinedAt: !2818)
!2822 = !DILocation(line: 0, scope: !1515, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 1031, column: 3, scope: !2761, inlinedAt: !2818)
!2824 = !DILocation(line: 184, column: 6, scope: !1515, inlinedAt: !2823)
!2825 = !DILocation(line: 184, column: 12, scope: !1515, inlinedAt: !2823)
!2826 = !DILocation(line: 185, column: 8, scope: !1529, inlinedAt: !2823)
!2827 = !DILocation(line: 185, column: 19, scope: !1529, inlinedAt: !2823)
!2828 = !DILocation(line: 186, column: 5, scope: !1529, inlinedAt: !2823)
!2829 = !DILocation(line: 187, column: 6, scope: !1515, inlinedAt: !2823)
!2830 = !DILocation(line: 187, column: 17, scope: !1515, inlinedAt: !2823)
!2831 = !DILocation(line: 188, column: 6, scope: !1515, inlinedAt: !2823)
!2832 = !DILocation(line: 188, column: 18, scope: !1515, inlinedAt: !2823)
!2833 = !DILocation(line: 1032, column: 10, scope: !2761, inlinedAt: !2818)
!2834 = !DILocation(line: 1033, column: 1, scope: !2761, inlinedAt: !2818)
!2835 = !DILocation(line: 1039, column: 3, scope: !2807)
!2836 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !58, file: !58, line: 1043, type: !2837, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!6, !15, !15, !15, !97}
!2839 = !{!2840, !2841, !2842, !2843}
!2840 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2836, file: !58, line: 1043, type: !15)
!2841 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2836, file: !58, line: 1043, type: !15)
!2842 = !DILocalVariable(name: "arg", arg: 3, scope: !2836, file: !58, line: 1044, type: !15)
!2843 = !DILocalVariable(name: "argsize", arg: 4, scope: !2836, file: !58, line: 1044, type: !97)
!2844 = !DILocation(line: 0, scope: !2836)
!2845 = !DILocation(line: 0, scope: !2761, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 1046, column: 10, scope: !2836)
!2847 = !DILocation(line: 1030, column: 3, scope: !2761, inlinedAt: !2846)
!2848 = !DILocation(line: 1030, column: 26, scope: !2761, inlinedAt: !2846)
!2849 = !DILocation(line: 1030, column: 30, scope: !2761, inlinedAt: !2846)
!2850 = !DILocation(line: 0, scope: !1515, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 1031, column: 3, scope: !2761, inlinedAt: !2846)
!2852 = !DILocation(line: 184, column: 6, scope: !1515, inlinedAt: !2851)
!2853 = !DILocation(line: 184, column: 12, scope: !1515, inlinedAt: !2851)
!2854 = !DILocation(line: 185, column: 8, scope: !1529, inlinedAt: !2851)
!2855 = !DILocation(line: 185, column: 19, scope: !1529, inlinedAt: !2851)
!2856 = !DILocation(line: 186, column: 5, scope: !1529, inlinedAt: !2851)
!2857 = !DILocation(line: 187, column: 6, scope: !1515, inlinedAt: !2851)
!2858 = !DILocation(line: 187, column: 17, scope: !1515, inlinedAt: !2851)
!2859 = !DILocation(line: 188, column: 6, scope: !1515, inlinedAt: !2851)
!2860 = !DILocation(line: 188, column: 18, scope: !1515, inlinedAt: !2851)
!2861 = !DILocation(line: 1032, column: 10, scope: !2761, inlinedAt: !2846)
!2862 = !DILocation(line: 1033, column: 1, scope: !2761, inlinedAt: !2846)
!2863 = !DILocation(line: 1046, column: 3, scope: !2836)
!2864 = distinct !DISubprogram(name: "quote_n_mem", scope: !58, file: !58, line: 1061, type: !2865, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!15, !24, !15, !97}
!2867 = !{!2868, !2869, !2870}
!2868 = !DILocalVariable(name: "n", arg: 1, scope: !2864, file: !58, line: 1061, type: !24)
!2869 = !DILocalVariable(name: "arg", arg: 2, scope: !2864, file: !58, line: 1061, type: !15)
!2870 = !DILocalVariable(name: "argsize", arg: 3, scope: !2864, file: !58, line: 1061, type: !97)
!2871 = !DILocation(line: 0, scope: !2864)
!2872 = !DILocation(line: 1063, column: 10, scope: !2864)
!2873 = !DILocation(line: 1063, column: 3, scope: !2864)
!2874 = distinct !DISubprogram(name: "quote_mem", scope: !58, file: !58, line: 1067, type: !2875, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!15, !15, !97}
!2877 = !{!2878, !2879}
!2878 = !DILocalVariable(name: "arg", arg: 1, scope: !2874, file: !58, line: 1067, type: !15)
!2879 = !DILocalVariable(name: "argsize", arg: 2, scope: !2874, file: !58, line: 1067, type: !97)
!2880 = !DILocation(line: 0, scope: !2874)
!2881 = !DILocation(line: 0, scope: !2864, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 1069, column: 10, scope: !2874)
!2883 = !DILocation(line: 1063, column: 10, scope: !2864, inlinedAt: !2882)
!2884 = !DILocation(line: 1069, column: 3, scope: !2874)
!2885 = distinct !DISubprogram(name: "quote_n", scope: !58, file: !58, line: 1073, type: !2886, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!15, !24, !15}
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "n", arg: 1, scope: !2885, file: !58, line: 1073, type: !24)
!2890 = !DILocalVariable(name: "arg", arg: 2, scope: !2885, file: !58, line: 1073, type: !15)
!2891 = !DILocation(line: 0, scope: !2885)
!2892 = !DILocation(line: 0, scope: !2864, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1075, column: 10, scope: !2885)
!2894 = !DILocation(line: 1063, column: 10, scope: !2864, inlinedAt: !2893)
!2895 = !DILocation(line: 1075, column: 3, scope: !2885)
!2896 = distinct !DISubprogram(name: "quote", scope: !58, file: !58, line: 1079, type: !2897, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !57, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!15, !15}
!2899 = !{!2900}
!2900 = !DILocalVariable(name: "arg", arg: 1, scope: !2896, file: !58, line: 1079, type: !15)
!2901 = !DILocation(line: 0, scope: !2896)
!2902 = !DILocation(line: 0, scope: !2885, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 1081, column: 10, scope: !2896)
!2904 = !DILocation(line: 0, scope: !2864, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 1075, column: 10, scope: !2885, inlinedAt: !2903)
!2906 = !DILocation(line: 1063, column: 10, scope: !2864, inlinedAt: !2905)
!2907 = !DILocation(line: 1081, column: 3, scope: !2896)
!2908 = distinct !DISubprogram(name: "try_tempname_len", scope: !142, file: !142, line: 188, type: !2909, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2914)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!24, !6, !24, !8, !2911, !97}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!24, !6, !8}
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2929, !2930, !2934, !2936}
!2915 = !DILocalVariable(name: "tmpl", arg: 1, scope: !2908, file: !142, line: 188, type: !6)
!2916 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !2908, file: !142, line: 188, type: !24)
!2917 = !DILocalVariable(name: "args", arg: 3, scope: !2908, file: !142, line: 188, type: !8)
!2918 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !2908, file: !142, line: 189, type: !2911)
!2919 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !2908, file: !142, line: 189, type: !97)
!2920 = !DILocalVariable(name: "len", scope: !2908, file: !142, line: 191, type: !97)
!2921 = !DILocalVariable(name: "XXXXXX", scope: !2908, file: !142, line: 192, type: !6)
!2922 = !DILocalVariable(name: "count", scope: !2908, file: !142, line: 193, type: !62)
!2923 = !DILocalVariable(name: "fd", scope: !2908, file: !142, line: 194, type: !24)
!2924 = !DILocalVariable(name: "save_errno", scope: !2908, file: !142, line: 195, type: !24)
!2925 = !DILocalVariable(name: "rand_src", scope: !2908, file: !142, line: 196, type: !2926)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !2928, line: 33, flags: DIFlagFwdDecl)
!2928 = !DIFile(filename: "./lib/randint.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2929 = !DILocalVariable(name: "attempts", scope: !2908, file: !142, line: 212, type: !62)
!2930 = !DILocalVariable(name: "i", scope: !2931, file: !142, line: 234, type: !97)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !142, line: 233, column: 5)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !142, line: 232, column: 3)
!2933 = distinct !DILexicalBlock(scope: !2908, file: !142, line: 232, column: 3)
!2934 = !DILocalVariable(name: "saved_errno", scope: !2935, file: !142, line: 260, type: !24)
!2935 = distinct !DILexicalBlock(scope: !2908, file: !142, line: 259, column: 3)
!2936 = !DILabel(scope: !2908, name: "done", file: !142, line: 258)
!2937 = !DILocation(line: 0, scope: !2908)
!2938 = !DILocation(line: 195, column: 20, scope: !2908)
!2939 = !DILocation(line: 215, column: 9, scope: !2908)
!2940 = !DILocation(line: 216, column: 28, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2908, file: !142, line: 216, column: 7)
!2942 = !DILocation(line: 216, column: 26, scope: !2941)
!2943 = !DILocation(line: 216, column: 11, scope: !2941)
!2944 = !DILocation(line: 217, column: 7, scope: !2941)
!2945 = !DILocation(line: 217, column: 53, scope: !2941)
!2946 = !DILocation(line: 217, column: 29, scope: !2941)
!2947 = !DILocalVariable(name: "s", arg: 1, scope: !2948, file: !142, line: 178, type: !15)
!2948 = distinct !DISubprogram(name: "check_x_suffix", scope: !142, file: !142, line: 178, type: !2949, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!12, !15, !97}
!2951 = !{!2947, !2952}
!2952 = !DILocalVariable(name: "len", arg: 2, scope: !2948, file: !142, line: 178, type: !97)
!2953 = !DILocation(line: 0, scope: !2948, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 217, column: 12, scope: !2941)
!2955 = !DILocation(line: 180, column: 17, scope: !2948, inlinedAt: !2954)
!2956 = !DILocation(line: 180, column: 14, scope: !2948, inlinedAt: !2954)
!2957 = !DILocation(line: 216, column: 7, scope: !2908)
!2958 = !DILocation(line: 228, column: 14, scope: !2908)
!2959 = !DILocation(line: 229, column: 9, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2908, file: !142, line: 229, column: 7)
!2961 = !DILocation(line: 229, column: 7, scope: !2908)
!2962 = !DILocation(line: 232, column: 3, scope: !2933)
!2963 = !DILocation(line: 232, column: 25, scope: !2932)
!2964 = distinct !{!2964, !2962, !2965, !745}
!2965 = !DILocation(line: 250, column: 5, scope: !2933)
!2966 = !DILocation(line: 0, scope: !2931)
!2967 = !DILocation(line: 236, column: 7, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2931, file: !142, line: 236, column: 7)
!2969 = !DILocation(line: 237, column: 29, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2968, file: !142, line: 236, column: 7)
!2971 = !DILocation(line: 237, column: 21, scope: !2970)
!2972 = !DILocation(line: 237, column: 9, scope: !2970)
!2973 = !DILocation(line: 237, column: 19, scope: !2970)
!2974 = !DILocation(line: 236, column: 38, scope: !2970)
!2975 = !DILocation(line: 236, column: 21, scope: !2970)
!2976 = distinct !{!2976, !2967, !2977, !745}
!2977 = !DILocation(line: 237, column: 74, scope: !2968)
!2978 = !DILocation(line: 239, column: 12, scope: !2931)
!2979 = !DILocation(line: 240, column: 14, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2931, file: !142, line: 240, column: 11)
!2981 = !DILocation(line: 240, column: 11, scope: !2931)
!2982 = !DILocation(line: 242, column: 11, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2980, file: !142, line: 241, column: 9)
!2984 = !DILocation(line: 243, column: 11, scope: !2983)
!2985 = !DILocation(line: 245, column: 16, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2980, file: !142, line: 245, column: 16)
!2987 = !DILocation(line: 245, column: 22, scope: !2986)
!2988 = !DILocation(line: 232, column: 37, scope: !2932)
!2989 = !DILocation(line: 252, column: 3, scope: !2908)
!2990 = !DILocation(line: 256, column: 3, scope: !2908)
!2991 = !DILocation(line: 260, column: 23, scope: !2935)
!2992 = !DILocation(line: 258, column: 2, scope: !2908)
!2993 = !DILocation(line: 0, scope: !2935)
!2994 = !DILocation(line: 261, column: 5, scope: !2935)
!2995 = !DILocation(line: 264, column: 3, scope: !2908)
!2996 = !DILocation(line: 265, column: 1, scope: !2908)
!2997 = distinct !DISubprogram(name: "gen_tempname_len", scope: !142, file: !142, line: 307, type: !2998, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!24, !6, !24, !24, !24, !97}
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3006}
!3001 = !DILocalVariable(name: "tmpl", arg: 1, scope: !2997, file: !142, line: 307, type: !6)
!3002 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !2997, file: !142, line: 307, type: !24)
!3003 = !DILocalVariable(name: "flags", arg: 3, scope: !2997, file: !142, line: 307, type: !24)
!3004 = !DILocalVariable(name: "kind", arg: 4, scope: !2997, file: !142, line: 307, type: !24)
!3005 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !2997, file: !142, line: 308, type: !97)
!3006 = !DILocalVariable(name: "tryfunc", scope: !2997, file: !142, line: 310, type: !2911)
!3007 = !DILocation(line: 0, scope: !2997)
!3008 = !DILocation(line: 312, column: 3, scope: !2997)
!3009 = !DILocation(line: 327, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !142, line: 327, column: 7)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !142, line: 327, column: 7)
!3012 = distinct !DILexicalBlock(scope: !2997, file: !142, line: 313, column: 5)
!3013 = !DILocation(line: 330, column: 45, scope: !2997)
!3014 = !DILocation(line: 330, column: 10, scope: !2997)
!3015 = !DILocation(line: 330, column: 3, scope: !2997)
!3016 = distinct !DISubprogram(name: "try_file", scope: !142, file: !142, line: 268, type: !2912, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !3017)
!3017 = !{!3018, !3019, !3020}
!3018 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3016, file: !142, line: 268, type: !6)
!3019 = !DILocalVariable(name: "flags", arg: 2, scope: !3016, file: !142, line: 268, type: !8)
!3020 = !DILocalVariable(name: "openflags", scope: !3016, file: !142, line: 270, type: !26)
!3021 = !DILocation(line: 0, scope: !3016)
!3022 = !DILocation(line: 270, column: 20, scope: !3016)
!3023 = !DILocation(line: 272, column: 19, scope: !3016)
!3024 = !DILocation(line: 272, column: 30, scope: !3016)
!3025 = !DILocation(line: 273, column: 37, scope: !3016)
!3026 = !DILocation(line: 271, column: 10, scope: !3016)
!3027 = !DILocation(line: 271, column: 3, scope: !3016)
!3028 = distinct !DISubprogram(name: "try_dir", scope: !142, file: !142, line: 277, type: !2912, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !3029)
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3028, file: !142, line: 277, type: !6)
!3031 = !DILocalVariable(name: "flags", arg: 2, scope: !3028, file: !142, line: 277, type: !8)
!3032 = !DILocation(line: 0, scope: !3028)
!3033 = !DILocation(line: 279, column: 10, scope: !3028)
!3034 = !DILocation(line: 279, column: 3, scope: !3028)
!3035 = distinct !DISubprogram(name: "try_nocreate", scope: !142, file: !142, line: 283, type: !2912, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !3036)
!3036 = !{!3037, !3038, !3039}
!3037 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3035, file: !142, line: 283, type: !6)
!3038 = !DILocalVariable(name: "flags", arg: 2, scope: !3035, file: !142, line: 283, type: !8)
!3039 = !DILocalVariable(name: "st", scope: !3035, file: !142, line: 285, type: !3040)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3041, line: 26, size: 1152, elements: !3042)
!3041 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!3042 = !{!3043, !3045, !3047, !3049, !3051, !3053, !3055, !3056, !3057, !3058, !3060, !3062, !3070, !3071, !3072}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3040, file: !3041, line: 28, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !632, line: 145, baseType: !99)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3040, file: !3041, line: 33, baseType: !3046, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !632, line: 148, baseType: !99)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3040, file: !3041, line: 41, baseType: !3048, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !632, line: 151, baseType: !99)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3040, file: !3041, line: 42, baseType: !3050, size: 32, offset: 192)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !632, line: 150, baseType: !62)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3040, file: !3041, line: 44, baseType: !3052, size: 32, offset: 224)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !632, line: 146, baseType: !62)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3040, file: !3041, line: 45, baseType: !3054, size: 32, offset: 256)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !632, line: 147, baseType: !62)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3040, file: !3041, line: 47, baseType: !24, size: 32, offset: 288)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3040, file: !3041, line: 49, baseType: !3044, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3040, file: !3041, line: 54, baseType: !796, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3040, file: !3041, line: 58, baseType: !3059, size: 64, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !632, line: 175, baseType: !797)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3040, file: !3041, line: 60, baseType: !3061, size: 64, offset: 512)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !632, line: 180, baseType: !797)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3040, file: !3041, line: 71, baseType: !3063, size: 128, offset: 576)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3064, line: 10, size: 128, elements: !3065)
!3064 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!3065 = !{!3066, !3068}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3063, file: !3064, line: 12, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !632, line: 160, baseType: !797)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3063, file: !3064, line: 16, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !632, line: 197, baseType: !797)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3040, file: !3041, line: 72, baseType: !3063, size: 128, offset: 704)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3040, file: !3041, line: 73, baseType: !3063, size: 128, offset: 832)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3040, file: !3041, line: 86, baseType: !3073, size: 192, offset: 960)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3069, size: 192, elements: !3074)
!3074 = !{!3075}
!3075 = !DISubrange(count: 3)
!3076 = !DILocation(line: 0, scope: !3035)
!3077 = !DILocation(line: 285, column: 3, scope: !3035)
!3078 = !DILocation(line: 285, column: 17, scope: !3035)
!3079 = !DILocation(line: 287, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3035, file: !142, line: 287, column: 7)
!3081 = !DILocation(line: 287, column: 41, scope: !3080)
!3082 = !DILocation(line: 0, scope: !3080)
!3083 = !DILocation(line: 287, column: 46, scope: !3080)
!3084 = !DILocation(line: 287, column: 49, scope: !3080)
!3085 = !DILocation(line: 287, column: 55, scope: !3080)
!3086 = !DILocation(line: 287, column: 7, scope: !3035)
!3087 = !DILocation(line: 288, column: 5, scope: !3080)
!3088 = !DILocation(line: 289, column: 10, scope: !3035)
!3089 = !DILocation(line: 289, column: 16, scope: !3035)
!3090 = !DILocation(line: 290, column: 1, scope: !3035)
!3091 = !DILocation(line: 289, column: 3, scope: !3035)
!3092 = !DISubprogram(name: "lstat", scope: !3093, file: !3093, line: 259, type: !3094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3093 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!24, !15, !3096}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3097 = !DISubprogram(name: "mkdir", scope: !3093, file: !3093, line: 317, type: !3098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!24, !15, !62}
!3100 = !DISubprogram(name: "open", scope: !3101, file: !3101, line: 196, type: !3102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3101 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!24, !15, !24, null}
!3104 = distinct !DISubprogram(name: "gen_tempname", scope: !142, file: !142, line: 334, type: !3105, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!24, !6, !24, !24, !24}
!3107 = !{!3108, !3109, !3110, !3111}
!3108 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3104, file: !142, line: 334, type: !6)
!3109 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3104, file: !142, line: 334, type: !24)
!3110 = !DILocalVariable(name: "flags", arg: 3, scope: !3104, file: !142, line: 334, type: !24)
!3111 = !DILocalVariable(name: "kind", arg: 4, scope: !3104, file: !142, line: 334, type: !24)
!3112 = !DILocation(line: 0, scope: !3104)
!3113 = !DILocation(line: 0, scope: !2997, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 336, column: 10, scope: !3104)
!3115 = !DILocation(line: 312, column: 3, scope: !2997, inlinedAt: !3114)
!3116 = !DILocation(line: 327, column: 7, scope: !3010, inlinedAt: !3114)
!3117 = !DILocation(line: 330, column: 10, scope: !2997, inlinedAt: !3114)
!3118 = !DILocation(line: 330, column: 3, scope: !2997, inlinedAt: !3114)
!3119 = !DILocation(line: 336, column: 3, scope: !3104)
!3120 = distinct !DISubprogram(name: "try_tempname", scope: !142, file: !142, line: 340, type: !3121, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!24, !6, !24, !8, !2911}
!3123 = !{!3124, !3125, !3126, !3127}
!3124 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3120, file: !142, line: 340, type: !6)
!3125 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3120, file: !142, line: 340, type: !24)
!3126 = !DILocalVariable(name: "args", arg: 3, scope: !3120, file: !142, line: 340, type: !8)
!3127 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3120, file: !142, line: 341, type: !2911)
!3128 = !DILocation(line: 0, scope: !3120)
!3129 = !DILocation(line: 343, column: 10, scope: !3120)
!3130 = !DILocation(line: 343, column: 3, scope: !3120)
!3131 = distinct !DISubprogram(name: "version_etc_arn", scope: !184, file: !184, line: 61, type: !3132, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3169)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !3134, !15, !15, !15, !3168, !97}
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1162, line: 7, baseType: !3136)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !775, line: 49, size: 1728, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3136, file: !775, line: 51, baseType: !24, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3136, file: !775, line: 54, baseType: !6, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3136, file: !775, line: 55, baseType: !6, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3136, file: !775, line: 56, baseType: !6, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3136, file: !775, line: 57, baseType: !6, size: 64, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3136, file: !775, line: 58, baseType: !6, size: 64, offset: 320)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3136, file: !775, line: 59, baseType: !6, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3136, file: !775, line: 60, baseType: !6, size: 64, offset: 448)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3136, file: !775, line: 61, baseType: !6, size: 64, offset: 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3136, file: !775, line: 64, baseType: !6, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3136, file: !775, line: 65, baseType: !6, size: 64, offset: 640)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3136, file: !775, line: 66, baseType: !6, size: 64, offset: 704)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3136, file: !775, line: 68, baseType: !790, size: 64, offset: 768)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3136, file: !775, line: 70, baseType: !3152, size: 64, offset: 832)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3136, file: !775, line: 72, baseType: !24, size: 32, offset: 896)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3136, file: !775, line: 73, baseType: !24, size: 32, offset: 928)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3136, file: !775, line: 74, baseType: !796, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3136, file: !775, line: 77, baseType: !96, size: 16, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3136, file: !775, line: 78, baseType: !800, size: 8, offset: 1040)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3136, file: !775, line: 79, baseType: !802, size: 8, offset: 1048)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3136, file: !775, line: 81, baseType: !806, size: 64, offset: 1088)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3136, file: !775, line: 89, baseType: !809, size: 64, offset: 1152)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3136, file: !775, line: 91, baseType: !811, size: 64, offset: 1216)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3136, file: !775, line: 92, baseType: !814, size: 64, offset: 1280)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3136, file: !775, line: 93, baseType: !3152, size: 64, offset: 1344)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3136, file: !775, line: 94, baseType: !8, size: 64, offset: 1408)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3136, file: !775, line: 95, baseType: !97, size: 64, offset: 1472)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3136, file: !775, line: 96, baseType: !24, size: 32, offset: 1536)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3136, file: !775, line: 98, baseType: !821, size: 160, offset: 1568)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175}
!3170 = !DILocalVariable(name: "stream", arg: 1, scope: !3131, file: !184, line: 61, type: !3134)
!3171 = !DILocalVariable(name: "command_name", arg: 2, scope: !3131, file: !184, line: 62, type: !15)
!3172 = !DILocalVariable(name: "package", arg: 3, scope: !3131, file: !184, line: 62, type: !15)
!3173 = !DILocalVariable(name: "version", arg: 4, scope: !3131, file: !184, line: 63, type: !15)
!3174 = !DILocalVariable(name: "authors", arg: 5, scope: !3131, file: !184, line: 64, type: !3168)
!3175 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3131, file: !184, line: 64, type: !97)
!3176 = !DILocation(line: 0, scope: !3131)
!3177 = !DILocation(line: 66, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3131, file: !184, line: 66, column: 7)
!3179 = !DILocation(line: 66, column: 7, scope: !3131)
!3180 = !DILocation(line: 67, column: 5, scope: !3178)
!3181 = !DILocation(line: 69, column: 5, scope: !3178)
!3182 = !DILocation(line: 83, column: 3, scope: !3131)
!3183 = !DILocation(line: 85, column: 3, scope: !3131)
!3184 = !DILocation(line: 88, column: 3, scope: !3131)
!3185 = !DILocation(line: 95, column: 3, scope: !3131)
!3186 = !DILocation(line: 97, column: 3, scope: !3131)
!3187 = !DILocation(line: 105, column: 7, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3131, file: !184, line: 98, column: 5)
!3189 = !DILocation(line: 106, column: 7, scope: !3188)
!3190 = !DILocation(line: 109, column: 7, scope: !3188)
!3191 = !DILocation(line: 110, column: 7, scope: !3188)
!3192 = !DILocation(line: 113, column: 7, scope: !3188)
!3193 = !DILocation(line: 115, column: 7, scope: !3188)
!3194 = !DILocation(line: 120, column: 7, scope: !3188)
!3195 = !DILocation(line: 122, column: 7, scope: !3188)
!3196 = !DILocation(line: 127, column: 7, scope: !3188)
!3197 = !DILocation(line: 129, column: 7, scope: !3188)
!3198 = !DILocation(line: 134, column: 7, scope: !3188)
!3199 = !DILocation(line: 137, column: 7, scope: !3188)
!3200 = !DILocation(line: 142, column: 7, scope: !3188)
!3201 = !DILocation(line: 145, column: 7, scope: !3188)
!3202 = !DILocation(line: 150, column: 7, scope: !3188)
!3203 = !DILocation(line: 154, column: 7, scope: !3188)
!3204 = !DILocation(line: 159, column: 7, scope: !3188)
!3205 = !DILocation(line: 163, column: 7, scope: !3188)
!3206 = !DILocation(line: 170, column: 7, scope: !3188)
!3207 = !DILocation(line: 174, column: 7, scope: !3188)
!3208 = !DILocation(line: 176, column: 1, scope: !3131)
!3209 = distinct !DISubprogram(name: "version_etc_ar", scope: !184, file: !184, line: 183, type: !3210, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !3134, !15, !15, !15, !3168}
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218}
!3213 = !DILocalVariable(name: "stream", arg: 1, scope: !3209, file: !184, line: 183, type: !3134)
!3214 = !DILocalVariable(name: "command_name", arg: 2, scope: !3209, file: !184, line: 184, type: !15)
!3215 = !DILocalVariable(name: "package", arg: 3, scope: !3209, file: !184, line: 184, type: !15)
!3216 = !DILocalVariable(name: "version", arg: 4, scope: !3209, file: !184, line: 185, type: !15)
!3217 = !DILocalVariable(name: "authors", arg: 5, scope: !3209, file: !184, line: 185, type: !3168)
!3218 = !DILocalVariable(name: "n_authors", scope: !3209, file: !184, line: 187, type: !97)
!3219 = !DILocation(line: 0, scope: !3209)
!3220 = !DILocation(line: 189, column: 8, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3209, file: !184, line: 189, column: 3)
!3222 = !DILocation(line: 0, scope: !3221)
!3223 = !DILocation(line: 189, column: 23, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3221, file: !184, line: 189, column: 3)
!3225 = !DILocation(line: 189, column: 3, scope: !3221)
!3226 = !DILocation(line: 189, column: 52, scope: !3224)
!3227 = distinct !{!3227, !3225, !3228, !745}
!3228 = !DILocation(line: 190, column: 5, scope: !3221)
!3229 = !DILocation(line: 191, column: 3, scope: !3209)
!3230 = !DILocation(line: 192, column: 1, scope: !3209)
!3231 = distinct !DISubprogram(name: "version_etc_va", scope: !184, file: !184, line: 199, type: !3232, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3241)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{null, !3134, !15, !15, !15, !3234}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3235, file: !184, line: 192, baseType: !62, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3235, file: !184, line: 192, baseType: !62, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3235, file: !184, line: 192, baseType: !8, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3235, file: !184, line: 192, baseType: !8, size: 64, offset: 128)
!3241 = !{!3242, !3243, !3244, !3245, !3246, !3247, !3248}
!3242 = !DILocalVariable(name: "stream", arg: 1, scope: !3231, file: !184, line: 199, type: !3134)
!3243 = !DILocalVariable(name: "command_name", arg: 2, scope: !3231, file: !184, line: 200, type: !15)
!3244 = !DILocalVariable(name: "package", arg: 3, scope: !3231, file: !184, line: 200, type: !15)
!3245 = !DILocalVariable(name: "version", arg: 4, scope: !3231, file: !184, line: 201, type: !15)
!3246 = !DILocalVariable(name: "authors", arg: 5, scope: !3231, file: !184, line: 201, type: !3234)
!3247 = !DILocalVariable(name: "n_authors", scope: !3231, file: !184, line: 203, type: !97)
!3248 = !DILocalVariable(name: "authtab", scope: !3231, file: !184, line: 204, type: !3249)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 640, elements: !105)
!3250 = !DILocation(line: 0, scope: !3231)
!3251 = !DILocation(line: 204, column: 3, scope: !3231)
!3252 = !DILocation(line: 204, column: 15, scope: !3231)
!3253 = !DILocation(line: 208, column: 35, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !184, line: 206, column: 3)
!3255 = distinct !DILexicalBlock(scope: !3231, file: !184, line: 206, column: 3)
!3256 = !DILocation(line: 208, column: 14, scope: !3254)
!3257 = !DILocation(line: 208, column: 33, scope: !3254)
!3258 = !DILocation(line: 208, column: 67, scope: !3254)
!3259 = !DILocation(line: 206, column: 3, scope: !3255)
!3260 = !DILocation(line: 0, scope: !3255)
!3261 = !DILocation(line: 211, column: 3, scope: !3231)
!3262 = !DILocation(line: 213, column: 1, scope: !3231)
!3263 = distinct !DISubprogram(name: "version_etc", scope: !184, file: !184, line: 230, type: !3264, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{null, !3134, !15, !15, !15, null}
!3266 = !{!3267, !3268, !3269, !3270, !3271}
!3267 = !DILocalVariable(name: "stream", arg: 1, scope: !3263, file: !184, line: 230, type: !3134)
!3268 = !DILocalVariable(name: "command_name", arg: 2, scope: !3263, file: !184, line: 231, type: !15)
!3269 = !DILocalVariable(name: "package", arg: 3, scope: !3263, file: !184, line: 231, type: !15)
!3270 = !DILocalVariable(name: "version", arg: 4, scope: !3263, file: !184, line: 232, type: !15)
!3271 = !DILocalVariable(name: "authors", scope: !3263, file: !184, line: 234, type: !3272)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !770, line: 52, baseType: !3273)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3274, line: 32, baseType: !3275)
!3274 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !184, baseType: !3276)
!3276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3235, size: 192, elements: !803)
!3277 = !DILocation(line: 0, scope: !3263)
!3278 = !DILocation(line: 234, column: 3, scope: !3263)
!3279 = !DILocation(line: 234, column: 11, scope: !3263)
!3280 = !DILocation(line: 236, column: 3, scope: !3263)
!3281 = !DILocation(line: 237, column: 3, scope: !3263)
!3282 = !DILocation(line: 238, column: 3, scope: !3263)
!3283 = !DILocation(line: 239, column: 1, scope: !3263)
!3284 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !184, file: !184, line: 242, type: !1120, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !4)
!3285 = !DILocation(line: 244, column: 3, scope: !3284)
!3286 = !DILocation(line: 249, column: 3, scope: !3284)
!3287 = !DILocation(line: 255, column: 3, scope: !3284)
!3288 = !DILocation(line: 260, column: 3, scope: !3284)
!3289 = !DILocation(line: 262, column: 1, scope: !3284)
!3290 = distinct !DISubprogram(name: "xnmalloc", scope: !193, file: !193, line: 99, type: !3291, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!8, !97, !97}
!3293 = !{!3294, !3295}
!3294 = !DILocalVariable(name: "n", arg: 1, scope: !3290, file: !193, line: 99, type: !97)
!3295 = !DILocalVariable(name: "s", arg: 2, scope: !3290, file: !193, line: 99, type: !97)
!3296 = !DILocation(line: 0, scope: !3290)
!3297 = !DILocation(line: 101, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3290, file: !193, line: 101, column: 7)
!3299 = !DILocation(line: 101, column: 7, scope: !3290)
!3300 = !DILocation(line: 102, column: 5, scope: !3298)
!3301 = !DILocation(line: 103, column: 21, scope: !3290)
!3302 = !DILocalVariable(name: "n", arg: 1, scope: !3303, file: !190, line: 39, type: !97)
!3303 = distinct !DISubprogram(name: "xmalloc", scope: !190, file: !190, line: 39, type: !3304, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3305)
!3304 = !DISubroutineType(types: !614)
!3305 = !{!3302, !3306}
!3306 = !DILocalVariable(name: "p", scope: !3303, file: !190, line: 41, type: !8)
!3307 = !DILocation(line: 0, scope: !3303, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 103, column: 10, scope: !3290)
!3309 = !DILocation(line: 41, column: 13, scope: !3303, inlinedAt: !3308)
!3310 = !DILocation(line: 42, column: 8, scope: !3311, inlinedAt: !3308)
!3311 = distinct !DILexicalBlock(scope: !3303, file: !190, line: 42, column: 7)
!3312 = !DILocation(line: 42, column: 10, scope: !3311, inlinedAt: !3308)
!3313 = !DILocation(line: 43, column: 5, scope: !3311, inlinedAt: !3308)
!3314 = !DILocation(line: 103, column: 3, scope: !3290)
!3315 = !DILocation(line: 0, scope: !3303)
!3316 = !DILocation(line: 41, column: 13, scope: !3303)
!3317 = !DILocation(line: 42, column: 8, scope: !3311)
!3318 = !DILocation(line: 42, column: 10, scope: !3311)
!3319 = !DILocation(line: 43, column: 5, scope: !3311)
!3320 = !DILocation(line: 44, column: 3, scope: !3303)
!3321 = distinct !DISubprogram(name: "xnrealloc", scope: !193, file: !193, line: 112, type: !3322, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!8, !8, !97, !97}
!3324 = !{!3325, !3326, !3327}
!3325 = !DILocalVariable(name: "p", arg: 1, scope: !3321, file: !193, line: 112, type: !8)
!3326 = !DILocalVariable(name: "n", arg: 2, scope: !3321, file: !193, line: 112, type: !97)
!3327 = !DILocalVariable(name: "s", arg: 3, scope: !3321, file: !193, line: 112, type: !97)
!3328 = !DILocation(line: 0, scope: !3321)
!3329 = !DILocation(line: 114, column: 7, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3321, file: !193, line: 114, column: 7)
!3331 = !DILocation(line: 114, column: 7, scope: !3321)
!3332 = !DILocation(line: 115, column: 5, scope: !3330)
!3333 = !DILocation(line: 116, column: 25, scope: !3321)
!3334 = !DILocalVariable(name: "p", arg: 1, scope: !3335, file: !190, line: 51, type: !8)
!3335 = distinct !DISubprogram(name: "xrealloc", scope: !190, file: !190, line: 51, type: !3336, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!8, !8, !97}
!3338 = !{!3334, !3339}
!3339 = !DILocalVariable(name: "n", arg: 2, scope: !3335, file: !190, line: 51, type: !97)
!3340 = !DILocation(line: 0, scope: !3335, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 116, column: 10, scope: !3321)
!3342 = !DILocation(line: 53, column: 8, scope: !3343, inlinedAt: !3341)
!3343 = distinct !DILexicalBlock(scope: !3335, file: !190, line: 53, column: 7)
!3344 = !DILocation(line: 53, column: 10, scope: !3343, inlinedAt: !3341)
!3345 = !DILocation(line: 57, column: 7, scope: !3346, inlinedAt: !3341)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !190, line: 54, column: 5)
!3347 = !DILocation(line: 58, column: 7, scope: !3346, inlinedAt: !3341)
!3348 = !DILocation(line: 61, column: 7, scope: !3335, inlinedAt: !3341)
!3349 = !DILocation(line: 62, column: 8, scope: !3350, inlinedAt: !3341)
!3350 = distinct !DILexicalBlock(scope: !3335, file: !190, line: 62, column: 7)
!3351 = !DILocation(line: 62, column: 10, scope: !3350, inlinedAt: !3341)
!3352 = !DILocation(line: 63, column: 5, scope: !3350, inlinedAt: !3341)
!3353 = !DILocation(line: 116, column: 3, scope: !3321)
!3354 = !DILocation(line: 0, scope: !3335)
!3355 = !DILocation(line: 53, column: 8, scope: !3343)
!3356 = !DILocation(line: 53, column: 10, scope: !3343)
!3357 = !DILocation(line: 57, column: 7, scope: !3346)
!3358 = !DILocation(line: 58, column: 7, scope: !3346)
!3359 = !DILocation(line: 61, column: 7, scope: !3335)
!3360 = !DILocation(line: 62, column: 8, scope: !3350)
!3361 = !DILocation(line: 62, column: 10, scope: !3350)
!3362 = !DILocation(line: 63, column: 5, scope: !3350)
!3363 = !DILocation(line: 65, column: 1, scope: !3335)
!3364 = !DILocation(line: 0, scope: !194)
!3365 = !DILocation(line: 176, column: 14, scope: !194)
!3366 = !DILocation(line: 178, column: 9, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !194, file: !193, line: 178, column: 7)
!3368 = !DILocation(line: 178, column: 7, scope: !194)
!3369 = !DILocation(line: 180, column: 13, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !193, line: 180, column: 11)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !193, line: 179, column: 5)
!3372 = !DILocation(line: 180, column: 11, scope: !3371)
!3373 = !DILocation(line: 188, column: 30, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !193, line: 181, column: 9)
!3375 = !DILocation(line: 189, column: 16, scope: !3374)
!3376 = !DILocation(line: 189, column: 13, scope: !3374)
!3377 = !DILocation(line: 190, column: 9, scope: !3374)
!3378 = !DILocation(line: 191, column: 11, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3371, file: !193, line: 191, column: 11)
!3380 = !DILocation(line: 191, column: 11, scope: !3371)
!3381 = !DILocation(line: 206, column: 7, scope: !194)
!3382 = !DILocation(line: 207, column: 25, scope: !194)
!3383 = !DILocation(line: 0, scope: !3335, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 207, column: 10, scope: !194)
!3385 = !DILocation(line: 53, column: 10, scope: !3343, inlinedAt: !3384)
!3386 = !DILocation(line: 192, column: 9, scope: !3379)
!3387 = !DILocation(line: 200, column: 69, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !193, line: 200, column: 11)
!3389 = distinct !DILexicalBlock(scope: !3367, file: !193, line: 195, column: 5)
!3390 = !DILocation(line: 201, column: 11, scope: !3388)
!3391 = !DILocation(line: 200, column: 11, scope: !3389)
!3392 = !DILocation(line: 202, column: 9, scope: !3388)
!3393 = !DILocation(line: 203, column: 14, scope: !3389)
!3394 = !DILocation(line: 203, column: 18, scope: !3389)
!3395 = !DILocation(line: 203, column: 9, scope: !3389)
!3396 = !DILocation(line: 53, column: 8, scope: !3343, inlinedAt: !3384)
!3397 = !DILocation(line: 57, column: 7, scope: !3346, inlinedAt: !3384)
!3398 = !DILocation(line: 58, column: 7, scope: !3346, inlinedAt: !3384)
!3399 = !DILocation(line: 61, column: 7, scope: !3335, inlinedAt: !3384)
!3400 = !DILocation(line: 62, column: 8, scope: !3350, inlinedAt: !3384)
!3401 = !DILocation(line: 62, column: 10, scope: !3350, inlinedAt: !3384)
!3402 = !DILocation(line: 63, column: 5, scope: !3350, inlinedAt: !3384)
!3403 = !DILocation(line: 207, column: 3, scope: !194)
!3404 = distinct !DISubprogram(name: "xcharalloc", scope: !193, file: !193, line: 216, type: !929, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3405)
!3405 = !{!3406}
!3406 = !DILocalVariable(name: "n", arg: 1, scope: !3404, file: !193, line: 216, type: !97)
!3407 = !DILocation(line: 0, scope: !3404)
!3408 = !DILocation(line: 0, scope: !3303, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 218, column: 10, scope: !3404)
!3410 = !DILocation(line: 41, column: 13, scope: !3303, inlinedAt: !3409)
!3411 = !DILocation(line: 42, column: 8, scope: !3311, inlinedAt: !3409)
!3412 = !DILocation(line: 42, column: 10, scope: !3311, inlinedAt: !3409)
!3413 = !DILocation(line: 43, column: 5, scope: !3311, inlinedAt: !3409)
!3414 = !DILocation(line: 218, column: 3, scope: !3404)
!3415 = distinct !DISubprogram(name: "x2realloc", scope: !190, file: !190, line: 74, type: !3416, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!8, !8, !197}
!3418 = !{!3419, !3420}
!3419 = !DILocalVariable(name: "p", arg: 1, scope: !3415, file: !190, line: 74, type: !8)
!3420 = !DILocalVariable(name: "pn", arg: 2, scope: !3415, file: !190, line: 74, type: !197)
!3421 = !DILocation(line: 0, scope: !3415)
!3422 = !DILocation(line: 0, scope: !194, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 76, column: 10, scope: !3415)
!3424 = !DILocation(line: 176, column: 14, scope: !194, inlinedAt: !3423)
!3425 = !DILocation(line: 178, column: 9, scope: !3367, inlinedAt: !3423)
!3426 = !DILocation(line: 178, column: 7, scope: !194, inlinedAt: !3423)
!3427 = !DILocation(line: 180, column: 13, scope: !3370, inlinedAt: !3423)
!3428 = !DILocation(line: 180, column: 11, scope: !3371, inlinedAt: !3423)
!3429 = !DILocation(line: 191, column: 11, scope: !3379, inlinedAt: !3423)
!3430 = !DILocation(line: 191, column: 11, scope: !3371, inlinedAt: !3423)
!3431 = !DILocation(line: 192, column: 9, scope: !3379, inlinedAt: !3423)
!3432 = !DILocation(line: 201, column: 11, scope: !3388, inlinedAt: !3423)
!3433 = !DILocation(line: 200, column: 11, scope: !3389, inlinedAt: !3423)
!3434 = !DILocation(line: 202, column: 9, scope: !3388, inlinedAt: !3423)
!3435 = !DILocation(line: 203, column: 14, scope: !3389, inlinedAt: !3423)
!3436 = !DILocation(line: 203, column: 18, scope: !3389, inlinedAt: !3423)
!3437 = !DILocation(line: 203, column: 9, scope: !3389, inlinedAt: !3423)
!3438 = !DILocation(line: 0, scope: !3335, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 207, column: 10, scope: !194, inlinedAt: !3423)
!3440 = !DILocation(line: 53, column: 10, scope: !3343, inlinedAt: !3439)
!3441 = !DILocation(line: 206, column: 7, scope: !194, inlinedAt: !3423)
!3442 = !DILocation(line: 61, column: 7, scope: !3335, inlinedAt: !3439)
!3443 = !DILocation(line: 62, column: 8, scope: !3350, inlinedAt: !3439)
!3444 = !DILocation(line: 62, column: 10, scope: !3350, inlinedAt: !3439)
!3445 = !DILocation(line: 63, column: 5, scope: !3350, inlinedAt: !3439)
!3446 = !DILocation(line: 76, column: 3, scope: !3415)
!3447 = distinct !DISubprogram(name: "xzalloc", scope: !190, file: !190, line: 84, type: !3304, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3448)
!3448 = !{!3449}
!3449 = !DILocalVariable(name: "n", arg: 1, scope: !3447, file: !190, line: 84, type: !97)
!3450 = !DILocation(line: 0, scope: !3447)
!3451 = !DILocalVariable(name: "n", arg: 1, scope: !3452, file: !190, line: 93, type: !97)
!3452 = distinct !DISubprogram(name: "xcalloc", scope: !190, file: !190, line: 93, type: !3291, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3453)
!3453 = !{!3451, !3454, !3455}
!3454 = !DILocalVariable(name: "s", arg: 2, scope: !3452, file: !190, line: 93, type: !97)
!3455 = !DILocalVariable(name: "p", scope: !3452, file: !190, line: 95, type: !8)
!3456 = !DILocation(line: 0, scope: !3452, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 86, column: 10, scope: !3447)
!3458 = !DILocation(line: 100, column: 7, scope: !3459, inlinedAt: !3457)
!3459 = distinct !DILexicalBlock(scope: !3452, file: !190, line: 100, column: 7)
!3460 = !DILocation(line: 101, column: 7, scope: !3459, inlinedAt: !3457)
!3461 = !DILocation(line: 101, column: 18, scope: !3459, inlinedAt: !3457)
!3462 = !DILocation(line: 101, column: 16, scope: !3459, inlinedAt: !3457)
!3463 = !DILocation(line: 100, column: 7, scope: !3452, inlinedAt: !3457)
!3464 = !DILocation(line: 102, column: 5, scope: !3459, inlinedAt: !3457)
!3465 = !DILocation(line: 86, column: 3, scope: !3447)
!3466 = !DILocation(line: 0, scope: !3452)
!3467 = !DILocation(line: 100, column: 7, scope: !3459)
!3468 = !DILocation(line: 101, column: 7, scope: !3459)
!3469 = !DILocation(line: 101, column: 18, scope: !3459)
!3470 = !DILocation(line: 101, column: 16, scope: !3459)
!3471 = !DILocation(line: 100, column: 7, scope: !3452)
!3472 = !DILocation(line: 102, column: 5, scope: !3459)
!3473 = !DILocation(line: 103, column: 3, scope: !3452)
!3474 = distinct !DISubprogram(name: "xmemdup", scope: !190, file: !190, line: 111, type: !3475, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!8, !942, !97}
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "p", arg: 1, scope: !3474, file: !190, line: 111, type: !942)
!3479 = !DILocalVariable(name: "s", arg: 2, scope: !3474, file: !190, line: 111, type: !97)
!3480 = !DILocation(line: 0, scope: !3474)
!3481 = !DILocation(line: 0, scope: !3303, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 113, column: 18, scope: !3474)
!3483 = !DILocation(line: 41, column: 13, scope: !3303, inlinedAt: !3482)
!3484 = !DILocation(line: 42, column: 8, scope: !3311, inlinedAt: !3482)
!3485 = !DILocation(line: 42, column: 10, scope: !3311, inlinedAt: !3482)
!3486 = !DILocation(line: 43, column: 5, scope: !3311, inlinedAt: !3482)
!3487 = !DILocalVariable(name: "__dest", arg: 1, scope: !3488, file: !937, line: 26, type: !940)
!3488 = distinct !DISubprogram(name: "memcpy", scope: !937, file: !937, line: 26, type: !938, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3489)
!3489 = !{!3487, !3490, !3491}
!3490 = !DILocalVariable(name: "__src", arg: 2, scope: !3488, file: !937, line: 26, type: !941)
!3491 = !DILocalVariable(name: "__len", arg: 3, scope: !3488, file: !937, line: 26, type: !97)
!3492 = !DILocation(line: 0, scope: !3488, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 113, column: 10, scope: !3474)
!3494 = !DILocation(line: 29, column: 10, scope: !3488, inlinedAt: !3493)
!3495 = !DILocation(line: 113, column: 3, scope: !3474)
!3496 = distinct !DISubprogram(name: "xstrdup", scope: !190, file: !190, line: 119, type: !1117, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3497)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "string", arg: 1, scope: !3496, file: !190, line: 119, type: !15)
!3499 = !DILocation(line: 0, scope: !3496)
!3500 = !DILocation(line: 121, column: 27, scope: !3496)
!3501 = !DILocation(line: 121, column: 43, scope: !3496)
!3502 = !DILocation(line: 0, scope: !3474, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 121, column: 10, scope: !3496)
!3504 = !DILocation(line: 0, scope: !3303, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 113, column: 18, scope: !3474, inlinedAt: !3503)
!3506 = !DILocation(line: 41, column: 13, scope: !3303, inlinedAt: !3505)
!3507 = !DILocation(line: 42, column: 8, scope: !3311, inlinedAt: !3505)
!3508 = !DILocation(line: 42, column: 10, scope: !3311, inlinedAt: !3505)
!3509 = !DILocation(line: 43, column: 5, scope: !3311, inlinedAt: !3505)
!3510 = !DILocation(line: 0, scope: !3488, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 113, column: 10, scope: !3474, inlinedAt: !3503)
!3512 = !DILocation(line: 29, column: 10, scope: !3488, inlinedAt: !3511)
!3513 = !DILocation(line: 121, column: 3, scope: !3496)
!3514 = distinct !DISubprogram(name: "xalloc_die", scope: !207, file: !207, line: 32, type: !1120, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !4)
!3515 = !DILocation(line: 34, column: 10, scope: !3514)
!3516 = !DILocation(line: 34, column: 33, scope: !3514)
!3517 = !DILocation(line: 34, column: 3, scope: !3514)
!3518 = !DILocation(line: 40, column: 3, scope: !3514)
!3519 = distinct !DISubprogram(name: "rpl_calloc", scope: !209, file: !209, line: 42, type: !3291, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !208, retainedNodes: !3520)
!3520 = !{!3521, !3522, !3523, !3524}
!3521 = !DILocalVariable(name: "n", arg: 1, scope: !3519, file: !209, line: 42, type: !97)
!3522 = !DILocalVariable(name: "s", arg: 2, scope: !3519, file: !209, line: 42, type: !97)
!3523 = !DILocalVariable(name: "result", scope: !3519, file: !209, line: 44, type: !8)
!3524 = !DILocalVariable(name: "bytes", scope: !3525, file: !209, line: 56, type: !97)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !209, line: 53, column: 5)
!3526 = distinct !DILexicalBlock(scope: !3519, file: !209, line: 47, column: 7)
!3527 = !DILocation(line: 0, scope: !3519)
!3528 = !DILocation(line: 47, column: 9, scope: !3526)
!3529 = !DILocation(line: 47, column: 14, scope: !3526)
!3530 = !DILocation(line: 0, scope: !3525)
!3531 = !DILocation(line: 57, column: 21, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3525, file: !209, line: 57, column: 11)
!3533 = !DILocation(line: 57, column: 11, scope: !3525)
!3534 = !DILocation(line: 59, column: 11, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3532, file: !209, line: 58, column: 9)
!3536 = !DILocation(line: 59, column: 17, scope: !3535)
!3537 = !DILocation(line: 65, column: 12, scope: !3519)
!3538 = !DILocation(line: 72, column: 3, scope: !3519)
!3539 = !DILocation(line: 73, column: 1, scope: !3519)
!3540 = distinct !DISubprogram(name: "rpl_fclose", scope: !211, file: !211, line: 58, type: !3541, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !210, retainedNodes: !3577)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!24, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1162, line: 7, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !775, line: 49, size: 1728, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3545, file: !775, line: 51, baseType: !24, size: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3545, file: !775, line: 54, baseType: !6, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3545, file: !775, line: 55, baseType: !6, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3545, file: !775, line: 56, baseType: !6, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3545, file: !775, line: 57, baseType: !6, size: 64, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3545, file: !775, line: 58, baseType: !6, size: 64, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3545, file: !775, line: 59, baseType: !6, size: 64, offset: 384)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3545, file: !775, line: 60, baseType: !6, size: 64, offset: 448)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3545, file: !775, line: 61, baseType: !6, size: 64, offset: 512)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3545, file: !775, line: 64, baseType: !6, size: 64, offset: 576)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3545, file: !775, line: 65, baseType: !6, size: 64, offset: 640)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3545, file: !775, line: 66, baseType: !6, size: 64, offset: 704)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3545, file: !775, line: 68, baseType: !790, size: 64, offset: 768)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3545, file: !775, line: 70, baseType: !3561, size: 64, offset: 832)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3545, file: !775, line: 72, baseType: !24, size: 32, offset: 896)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3545, file: !775, line: 73, baseType: !24, size: 32, offset: 928)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3545, file: !775, line: 74, baseType: !796, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3545, file: !775, line: 77, baseType: !96, size: 16, offset: 1024)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3545, file: !775, line: 78, baseType: !800, size: 8, offset: 1040)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3545, file: !775, line: 79, baseType: !802, size: 8, offset: 1048)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3545, file: !775, line: 81, baseType: !806, size: 64, offset: 1088)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3545, file: !775, line: 89, baseType: !809, size: 64, offset: 1152)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3545, file: !775, line: 91, baseType: !811, size: 64, offset: 1216)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3545, file: !775, line: 92, baseType: !814, size: 64, offset: 1280)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3545, file: !775, line: 93, baseType: !3561, size: 64, offset: 1344)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3545, file: !775, line: 94, baseType: !8, size: 64, offset: 1408)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3545, file: !775, line: 95, baseType: !97, size: 64, offset: 1472)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3545, file: !775, line: 96, baseType: !24, size: 32, offset: 1536)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3545, file: !775, line: 98, baseType: !821, size: 160, offset: 1568)
!3577 = !{!3578, !3579, !3580, !3581}
!3578 = !DILocalVariable(name: "fp", arg: 1, scope: !3540, file: !211, line: 58, type: !3543)
!3579 = !DILocalVariable(name: "saved_errno", scope: !3540, file: !211, line: 60, type: !24)
!3580 = !DILocalVariable(name: "fd", scope: !3540, file: !211, line: 61, type: !24)
!3581 = !DILocalVariable(name: "result", scope: !3540, file: !211, line: 62, type: !24)
!3582 = !DILocation(line: 0, scope: !3540)
!3583 = !DILocation(line: 65, column: 8, scope: !3540)
!3584 = !DILocation(line: 66, column: 10, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3540, file: !211, line: 66, column: 7)
!3586 = !DILocation(line: 66, column: 7, scope: !3540)
!3587 = !DILocation(line: 67, column: 12, scope: !3585)
!3588 = !DILocation(line: 67, column: 5, scope: !3585)
!3589 = !DILocation(line: 72, column: 9, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3540, file: !211, line: 72, column: 7)
!3591 = !DILocation(line: 72, column: 23, scope: !3590)
!3592 = !DILocation(line: 72, column: 33, scope: !3590)
!3593 = !DILocation(line: 72, column: 26, scope: !3590)
!3594 = !DILocation(line: 72, column: 59, scope: !3590)
!3595 = !DILocation(line: 73, column: 7, scope: !3590)
!3596 = !DILocation(line: 73, column: 10, scope: !3590)
!3597 = !DILocation(line: 72, column: 7, scope: !3540)
!3598 = !DILocation(line: 100, column: 12, scope: !3540)
!3599 = !DILocation(line: 105, column: 7, scope: !3540)
!3600 = !DILocation(line: 74, column: 19, scope: !3590)
!3601 = !DILocation(line: 105, column: 19, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3540, file: !211, line: 105, column: 7)
!3603 = !DILocation(line: 107, column: 13, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3602, file: !211, line: 106, column: 5)
!3605 = !DILocation(line: 109, column: 5, scope: !3604)
!3606 = !DILocation(line: 112, column: 1, scope: !3540)
!3607 = !DISubprogram(name: "fileno", scope: !770, file: !770, line: 785, type: !3608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!24, !3561}
!3610 = !DISubprogram(name: "fclose", scope: !770, file: !770, line: 213, type: !3608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3611 = !DISubprogram(name: "lseek", scope: !1153, file: !1153, line: 334, type: !3612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!797, !24, !797, !24}
!3614 = distinct !DISubprogram(name: "rpl_fflush", scope: !213, file: !213, line: 129, type: !3615, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3651)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!24, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1162, line: 7, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !775, line: 49, size: 1728, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3619, file: !775, line: 51, baseType: !24, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3619, file: !775, line: 54, baseType: !6, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3619, file: !775, line: 55, baseType: !6, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3619, file: !775, line: 56, baseType: !6, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3619, file: !775, line: 57, baseType: !6, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3619, file: !775, line: 58, baseType: !6, size: 64, offset: 320)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3619, file: !775, line: 59, baseType: !6, size: 64, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3619, file: !775, line: 60, baseType: !6, size: 64, offset: 448)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3619, file: !775, line: 61, baseType: !6, size: 64, offset: 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3619, file: !775, line: 64, baseType: !6, size: 64, offset: 576)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3619, file: !775, line: 65, baseType: !6, size: 64, offset: 640)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3619, file: !775, line: 66, baseType: !6, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3619, file: !775, line: 68, baseType: !790, size: 64, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3619, file: !775, line: 70, baseType: !3635, size: 64, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3619, file: !775, line: 72, baseType: !24, size: 32, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3619, file: !775, line: 73, baseType: !24, size: 32, offset: 928)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3619, file: !775, line: 74, baseType: !796, size: 64, offset: 960)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3619, file: !775, line: 77, baseType: !96, size: 16, offset: 1024)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3619, file: !775, line: 78, baseType: !800, size: 8, offset: 1040)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3619, file: !775, line: 79, baseType: !802, size: 8, offset: 1048)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3619, file: !775, line: 81, baseType: !806, size: 64, offset: 1088)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3619, file: !775, line: 89, baseType: !809, size: 64, offset: 1152)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3619, file: !775, line: 91, baseType: !811, size: 64, offset: 1216)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3619, file: !775, line: 92, baseType: !814, size: 64, offset: 1280)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3619, file: !775, line: 93, baseType: !3635, size: 64, offset: 1344)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3619, file: !775, line: 94, baseType: !8, size: 64, offset: 1408)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3619, file: !775, line: 95, baseType: !97, size: 64, offset: 1472)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3619, file: !775, line: 96, baseType: !24, size: 32, offset: 1536)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3619, file: !775, line: 98, baseType: !821, size: 160, offset: 1568)
!3651 = !{!3652}
!3652 = !DILocalVariable(name: "stream", arg: 1, scope: !3614, file: !213, line: 129, type: !3617)
!3653 = !DILocation(line: 0, scope: !3614)
!3654 = !DILocation(line: 150, column: 14, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3614, file: !213, line: 150, column: 7)
!3656 = !DILocation(line: 150, column: 22, scope: !3655)
!3657 = !DILocation(line: 150, column: 27, scope: !3655)
!3658 = !DILocation(line: 150, column: 7, scope: !3614)
!3659 = !DILocation(line: 151, column: 12, scope: !3655)
!3660 = !DILocation(line: 151, column: 5, scope: !3655)
!3661 = !DILocalVariable(name: "fp", arg: 1, scope: !3662, file: !213, line: 41, type: !3617)
!3662 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !213, file: !213, line: 41, type: !3663, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{null, !3617}
!3665 = !{!3661}
!3666 = !DILocation(line: 0, scope: !3662, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 156, column: 3, scope: !3614)
!3668 = !DILocation(line: 43, column: 11, scope: !3669, inlinedAt: !3667)
!3669 = distinct !DILexicalBlock(scope: !3662, file: !213, line: 43, column: 7)
!3670 = !DILocation(line: 43, column: 18, scope: !3669, inlinedAt: !3667)
!3671 = !DILocation(line: 43, column: 7, scope: !3662, inlinedAt: !3667)
!3672 = !DILocation(line: 45, column: 5, scope: !3669, inlinedAt: !3667)
!3673 = !DILocation(line: 158, column: 10, scope: !3614)
!3674 = !DILocation(line: 158, column: 3, scope: !3614)
!3675 = !DILocation(line: 235, column: 1, scope: !3614)
!3676 = !DISubprogram(name: "fflush", scope: !770, file: !770, line: 218, type: !3677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!24, !3635}
!3679 = distinct !DISubprogram(name: "rpl_fseeko", scope: !215, file: !215, line: 28, type: !3680, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3717)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!24, !3682, !3716, !24}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1162, line: 7, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !775, line: 49, size: 1728, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3684, file: !775, line: 51, baseType: !24, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3684, file: !775, line: 54, baseType: !6, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3684, file: !775, line: 55, baseType: !6, size: 64, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3684, file: !775, line: 56, baseType: !6, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3684, file: !775, line: 57, baseType: !6, size: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3684, file: !775, line: 58, baseType: !6, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3684, file: !775, line: 59, baseType: !6, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3684, file: !775, line: 60, baseType: !6, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3684, file: !775, line: 61, baseType: !6, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3684, file: !775, line: 64, baseType: !6, size: 64, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3684, file: !775, line: 65, baseType: !6, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3684, file: !775, line: 66, baseType: !6, size: 64, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3684, file: !775, line: 68, baseType: !790, size: 64, offset: 768)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3684, file: !775, line: 70, baseType: !3700, size: 64, offset: 832)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3684, file: !775, line: 72, baseType: !24, size: 32, offset: 896)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3684, file: !775, line: 73, baseType: !24, size: 32, offset: 928)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3684, file: !775, line: 74, baseType: !796, size: 64, offset: 960)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3684, file: !775, line: 77, baseType: !96, size: 16, offset: 1024)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3684, file: !775, line: 78, baseType: !800, size: 8, offset: 1040)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3684, file: !775, line: 79, baseType: !802, size: 8, offset: 1048)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3684, file: !775, line: 81, baseType: !806, size: 64, offset: 1088)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3684, file: !775, line: 89, baseType: !809, size: 64, offset: 1152)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3684, file: !775, line: 91, baseType: !811, size: 64, offset: 1216)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3684, file: !775, line: 92, baseType: !814, size: 64, offset: 1280)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3684, file: !775, line: 93, baseType: !3700, size: 64, offset: 1344)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3684, file: !775, line: 94, baseType: !8, size: 64, offset: 1408)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3684, file: !775, line: 95, baseType: !97, size: 64, offset: 1472)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3684, file: !775, line: 96, baseType: !24, size: 32, offset: 1536)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3684, file: !775, line: 98, baseType: !821, size: 160, offset: 1568)
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !770, line: 63, baseType: !796)
!3717 = !{!3718, !3719, !3720, !3721}
!3718 = !DILocalVariable(name: "fp", arg: 1, scope: !3679, file: !215, line: 28, type: !3682)
!3719 = !DILocalVariable(name: "offset", arg: 2, scope: !3679, file: !215, line: 28, type: !3716)
!3720 = !DILocalVariable(name: "whence", arg: 3, scope: !3679, file: !215, line: 28, type: !24)
!3721 = !DILocalVariable(name: "pos", scope: !3722, file: !215, line: 117, type: !3716)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !215, line: 113, column: 5)
!3723 = distinct !DILexicalBlock(scope: !3679, file: !215, line: 52, column: 7)
!3724 = !DILocation(line: 0, scope: !3679)
!3725 = !DILocation(line: 52, column: 11, scope: !3723)
!3726 = !{!1211, !698, i64 16}
!3727 = !DILocation(line: 52, column: 31, scope: !3723)
!3728 = !{!1211, !698, i64 8}
!3729 = !DILocation(line: 52, column: 24, scope: !3723)
!3730 = !DILocation(line: 53, column: 7, scope: !3723)
!3731 = !DILocation(line: 53, column: 14, scope: !3723)
!3732 = !{!1211, !698, i64 40}
!3733 = !DILocation(line: 53, column: 35, scope: !3723)
!3734 = !{!1211, !698, i64 32}
!3735 = !DILocation(line: 53, column: 28, scope: !3723)
!3736 = !DILocation(line: 54, column: 7, scope: !3723)
!3737 = !DILocation(line: 54, column: 14, scope: !3723)
!3738 = !{!1211, !698, i64 72}
!3739 = !DILocation(line: 54, column: 28, scope: !3723)
!3740 = !DILocation(line: 52, column: 7, scope: !3679)
!3741 = !DILocation(line: 117, column: 26, scope: !3722)
!3742 = !DILocation(line: 117, column: 19, scope: !3722)
!3743 = !DILocation(line: 0, scope: !3722)
!3744 = !DILocation(line: 118, column: 15, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3722, file: !215, line: 118, column: 11)
!3746 = !DILocation(line: 118, column: 11, scope: !3722)
!3747 = !DILocation(line: 129, column: 11, scope: !3722)
!3748 = !DILocation(line: 129, column: 18, scope: !3722)
!3749 = !DILocation(line: 130, column: 11, scope: !3722)
!3750 = !DILocation(line: 130, column: 19, scope: !3722)
!3751 = !{!1211, !1212, i64 144}
!3752 = !DILocation(line: 161, column: 7, scope: !3722)
!3753 = !DILocation(line: 163, column: 10, scope: !3679)
!3754 = !DILocation(line: 163, column: 3, scope: !3679)
!3755 = !DILocation(line: 164, column: 1, scope: !3679)
!3756 = !DISubprogram(name: "fseeko", scope: !770, file: !770, line: 712, type: !3757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!24, !3700, !797, !24}
!3759 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !217, file: !217, line: 86, type: !3760, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !3774)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!97, !3762, !15, !97, !3763}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1604, line: 6, baseType: !3765)
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1606, line: 21, baseType: !3766)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1606, line: 13, size: 64, elements: !3767)
!3767 = !{!3768, !3769}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3766, file: !1606, line: 15, baseType: !24, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3766, file: !1606, line: 20, baseType: !3770, size: 32, offset: 32)
!3770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3766, file: !1606, line: 16, size: 32, elements: !3771)
!3771 = !{!3772, !3773}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3770, file: !1606, line: 18, baseType: !62, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3770, file: !1606, line: 19, baseType: !1615, size: 32)
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780, !3781}
!3775 = !DILocalVariable(name: "pwc", arg: 1, scope: !3759, file: !217, line: 86, type: !3762)
!3776 = !DILocalVariable(name: "s", arg: 2, scope: !3759, file: !217, line: 86, type: !15)
!3777 = !DILocalVariable(name: "n", arg: 3, scope: !3759, file: !217, line: 86, type: !97)
!3778 = !DILocalVariable(name: "ps", arg: 4, scope: !3759, file: !217, line: 86, type: !3763)
!3779 = !DILocalVariable(name: "ret", scope: !3759, file: !217, line: 88, type: !97)
!3780 = !DILocalVariable(name: "wc", scope: !3759, file: !217, line: 89, type: !1620)
!3781 = !DILocalVariable(name: "uc", scope: !3782, file: !217, line: 156, type: !1482)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !217, line: 155, column: 5)
!3783 = distinct !DILexicalBlock(scope: !3759, file: !217, line: 154, column: 7)
!3784 = !DILocation(line: 0, scope: !3759)
!3785 = !DILocation(line: 89, column: 3, scope: !3759)
!3786 = !DILocation(line: 105, column: 9, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3759, file: !217, line: 105, column: 7)
!3788 = !DILocation(line: 105, column: 7, scope: !3759)
!3789 = !DILocation(line: 145, column: 9, scope: !3759)
!3790 = !DILocation(line: 154, column: 19, scope: !3783)
!3791 = !DILocation(line: 154, column: 26, scope: !3783)
!3792 = !DILocation(line: 154, column: 41, scope: !3783)
!3793 = !DILocation(line: 154, column: 7, scope: !3759)
!3794 = !DILocation(line: 156, column: 26, scope: !3782)
!3795 = !DILocation(line: 0, scope: !3782)
!3796 = !DILocation(line: 157, column: 14, scope: !3782)
!3797 = !DILocation(line: 157, column: 12, scope: !3782)
!3798 = !DILocation(line: 163, column: 1, scope: !3759)
!3799 = !DISubprogram(name: "mbrtowc", scope: !2282, file: !2282, line: 296, type: !3800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!99, !26, !15, !99, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3803 = distinct !DISubprogram(name: "hard_locale", scope: !220, file: !220, line: 27, type: !3804, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3806)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!12, !24}
!3806 = !{!3807, !3808}
!3807 = !DILocalVariable(name: "category", arg: 1, scope: !3803, file: !220, line: 27, type: !24)
!3808 = !DILocalVariable(name: "locale", scope: !3803, file: !220, line: 29, type: !3809)
!3809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2056, elements: !3810)
!3810 = !{!3811}
!3811 = !DISubrange(count: 257)
!3812 = !DILocation(line: 0, scope: !3803)
!3813 = !DILocation(line: 29, column: 3, scope: !3803)
!3814 = !DILocation(line: 29, column: 8, scope: !3803)
!3815 = !DILocation(line: 31, column: 7, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3803, file: !220, line: 31, column: 7)
!3817 = !DILocation(line: 31, column: 7, scope: !3803)
!3818 = !DILocation(line: 34, column: 12, scope: !3803)
!3819 = !DILocation(line: 34, column: 38, scope: !3803)
!3820 = !DILocation(line: 34, column: 41, scope: !3803)
!3821 = !DILocation(line: 34, column: 66, scope: !3803)
!3822 = !DILocation(line: 35, column: 1, scope: !3803)
!3823 = distinct !DISubprogram(name: "locale_charset", scope: !222, file: !222, line: 831, type: !3824, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3826)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!15}
!3826 = !{!3827}
!3827 = !DILocalVariable(name: "codeset", scope: !3823, file: !222, line: 833, type: !15)
!3828 = !DILocation(line: 847, column: 13, scope: !3823)
!3829 = !DILocation(line: 0, scope: !3823)
!3830 = !DILocation(line: 911, column: 15, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3823, file: !222, line: 911, column: 7)
!3832 = !DILocation(line: 911, column: 7, scope: !3823)
!3833 = !DILocation(line: 1070, column: 13, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !222, line: 1070, column: 13)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !222, line: 1060, column: 7)
!3836 = distinct !DILexicalBlock(scope: !3823, file: !222, line: 1019, column: 3)
!3837 = !DILocation(line: 1070, column: 24, scope: !3834)
!3838 = !DILocation(line: 1070, column: 13, scope: !3835)
!3839 = !DILocation(line: 1158, column: 3, scope: !3823)
!3840 = !DISubprogram(name: "nl_langinfo", scope: !225, file: !225, line: 661, type: !3841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!6, !24}
!3843 = distinct !DISubprogram(name: "randint_new", scope: !611, file: !611, line: 71, type: !3844, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3858)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!3846, !3850}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !611, line: 54, size: 192, elements: !3848)
!3848 = !{!3849, !3853, !3857}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !3847, file: !611, line: 57, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !3852, line: 25, flags: DIFlagFwdDecl)
!3852 = !DIFile(filename: "./lib/randread.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "randnum", scope: !3847, file: !611, line: 64, baseType: !3854, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "randint", file: !2928, line: 30, baseType: !3855)
!3855 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !630, line: 102, baseType: !3856)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !632, line: 73, baseType: !99)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "randmax", scope: !3847, file: !611, line: 65, baseType: !3854, size: 64, offset: 128)
!3858 = !{!3859, !3860}
!3859 = !DILocalVariable(name: "source", arg: 1, scope: !3843, file: !611, line: 71, type: !3850)
!3860 = !DILocalVariable(name: "s", scope: !3843, file: !611, line: 73, type: !3846)
!3861 = !DILocation(line: 0, scope: !3843)
!3862 = !DILocation(line: 73, column: 30, scope: !3843)
!3863 = !DILocation(line: 74, column: 6, scope: !3843)
!3864 = !DILocation(line: 74, column: 13, scope: !3843)
!3865 = !{!3866, !698, i64 0}
!3866 = !{!"randint_source", !698, i64 0, !1212, i64 8, !1212, i64 16}
!3867 = !DILocation(line: 75, column: 6, scope: !3843)
!3868 = !DILocation(line: 75, column: 14, scope: !3843)
!3869 = !DILocation(line: 76, column: 3, scope: !3843)
!3870 = distinct !DISubprogram(name: "randint_all_new", scope: !611, file: !611, line: 84, type: !3871, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!3846, !15, !97}
!3873 = !{!3874, !3875, !3876}
!3874 = !DILocalVariable(name: "name", arg: 1, scope: !3870, file: !611, line: 84, type: !15)
!3875 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !3870, file: !611, line: 84, type: !97)
!3876 = !DILocalVariable(name: "source", scope: !3870, file: !611, line: 86, type: !3850)
!3877 = !DILocation(line: 0, scope: !3870)
!3878 = !DILocation(line: 86, column: 36, scope: !3870)
!3879 = !DILocation(line: 87, column: 11, scope: !3870)
!3880 = !DILocation(line: 0, scope: !3843, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 87, column: 20, scope: !3870)
!3882 = !DILocation(line: 73, column: 30, scope: !3843, inlinedAt: !3881)
!3883 = !DILocation(line: 74, column: 6, scope: !3843, inlinedAt: !3881)
!3884 = !DILocation(line: 74, column: 13, scope: !3843, inlinedAt: !3881)
!3885 = !DILocation(line: 75, column: 6, scope: !3843, inlinedAt: !3881)
!3886 = !DILocation(line: 75, column: 14, scope: !3843, inlinedAt: !3881)
!3887 = !DILocation(line: 87, column: 3, scope: !3870)
!3888 = distinct !DISubprogram(name: "randint_get_source", scope: !611, file: !611, line: 93, type: !3889, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3893)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!3850, !3891}
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3847)
!3893 = !{!3894}
!3894 = !DILocalVariable(name: "s", arg: 1, scope: !3888, file: !611, line: 93, type: !3891)
!3895 = !DILocation(line: 0, scope: !3888)
!3896 = !DILocation(line: 95, column: 13, scope: !3888)
!3897 = !DILocation(line: 95, column: 3, scope: !3888)
!3898 = distinct !DISubprogram(name: "randint_genmax", scope: !611, file: !611, line: 114, type: !3899, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!3854, !3846, !3854}
!3901 = !{!3902, !3903, !3904, !3905, !3906, !3907, !3908, !3912, !3913, !3915, !3918, !3919, !3920}
!3902 = !DILocalVariable(name: "s", arg: 1, scope: !3898, file: !611, line: 114, type: !3846)
!3903 = !DILocalVariable(name: "genmax", arg: 2, scope: !3898, file: !611, line: 114, type: !3854)
!3904 = !DILocalVariable(name: "source", scope: !3898, file: !611, line: 116, type: !3850)
!3905 = !DILocalVariable(name: "randnum", scope: !3898, file: !611, line: 117, type: !3854)
!3906 = !DILocalVariable(name: "randmax", scope: !3898, file: !611, line: 118, type: !3854)
!3907 = !DILocalVariable(name: "choices", scope: !3898, file: !611, line: 119, type: !3854)
!3908 = !DILocalVariable(name: "i", scope: !3909, file: !611, line: 128, type: !97)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !611, line: 124, column: 9)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !611, line: 123, column: 11)
!3911 = distinct !DILexicalBlock(scope: !3898, file: !611, line: 122, column: 5)
!3912 = !DILocalVariable(name: "rmax", scope: !3909, file: !611, line: 129, type: !3854)
!3913 = !DILocalVariable(name: "buf", scope: !3909, file: !611, line: 130, type: !3914)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1482, size: 64, elements: !28)
!3915 = !DILocalVariable(name: "excess_choices", scope: !3916, file: !611, line: 176, type: !3854)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !611, line: 165, column: 9)
!3917 = distinct !DILexicalBlock(scope: !3911, file: !611, line: 159, column: 11)
!3918 = !DILocalVariable(name: "unusable_choices", scope: !3916, file: !611, line: 177, type: !3854)
!3919 = !DILocalVariable(name: "last_usable_choice", scope: !3916, file: !611, line: 178, type: !3854)
!3920 = !DILocalVariable(name: "reduced_randnum", scope: !3916, file: !611, line: 179, type: !3854)
!3921 = !DILocation(line: 0, scope: !3898)
!3922 = !DILocation(line: 116, column: 39, scope: !3898)
!3923 = !DILocation(line: 117, column: 24, scope: !3898)
!3924 = !{!3866, !1212, i64 8}
!3925 = !DILocation(line: 118, column: 24, scope: !3898)
!3926 = !{!3866, !1212, i64 16}
!3927 = !DILocation(line: 119, column: 28, scope: !3898)
!3928 = !DILocation(line: 121, column: 3, scope: !3898)
!3929 = !DILocation(line: 123, column: 19, scope: !3910)
!3930 = !DILocation(line: 123, column: 11, scope: !3911)
!3931 = !DILocation(line: 0, scope: !3909)
!3932 = !DILocation(line: 130, column: 11, scope: !3909)
!3933 = !DILocation(line: 130, column: 25, scope: !3909)
!3934 = !DILocation(line: 132, column: 11, scope: !3909)
!3935 = !DILocalVariable(name: "x", arg: 1, scope: !3936, file: !611, line: 104, type: !3854)
!3936 = distinct !DISubprogram(name: "shift_left", scope: !611, file: !611, line: 104, type: !3937, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!3854, !3854}
!3939 = !{!3935}
!3940 = !DILocation(line: 0, scope: !3936, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 134, column: 22, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3909, file: !611, line: 133, column: 13)
!3943 = !DILocation(line: 106, column: 29, scope: !3936, inlinedAt: !3941)
!3944 = !DILocation(line: 134, column: 40, scope: !3942)
!3945 = !DILocation(line: 135, column: 16, scope: !3942)
!3946 = !DILocation(line: 137, column: 23, scope: !3909)
!3947 = !DILocation(line: 136, column: 13, scope: !3942)
!3948 = distinct !{!3948, !3934, !3949, !745}
!3949 = !DILocation(line: 137, column: 31, scope: !3909)
!3950 = !DILocation(line: 139, column: 11, scope: !3909)
!3951 = !DILocation(line: 150, column: 11, scope: !3909)
!3952 = !DILocation(line: 0, scope: !3936, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 152, column: 25, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3909, file: !611, line: 151, column: 13)
!3955 = !DILocation(line: 106, column: 29, scope: !3936, inlinedAt: !3953)
!3956 = !DILocation(line: 152, column: 48, scope: !3954)
!3957 = !DILocation(line: 152, column: 46, scope: !3954)
!3958 = !DILocation(line: 0, scope: !3936, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 153, column: 25, scope: !3954)
!3960 = !DILocation(line: 106, column: 29, scope: !3936, inlinedAt: !3959)
!3961 = !DILocation(line: 153, column: 46, scope: !3954)
!3962 = !DILocation(line: 154, column: 16, scope: !3954)
!3963 = !DILocation(line: 156, column: 26, scope: !3909)
!3964 = !DILocation(line: 155, column: 13, scope: !3954)
!3965 = distinct !{!3965, !3951, !3966, !745}
!3966 = !DILocation(line: 156, column: 34, scope: !3909)
!3967 = !DILocation(line: 157, column: 9, scope: !3910)
!3968 = !DILocation(line: 157, column: 9, scope: !3909)
!3969 = !DILocation(line: 159, column: 19, scope: !3917)
!3970 = !DILocation(line: 159, column: 11, scope: !3911)
!3971 = !DILocation(line: 162, column: 11, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3917, file: !611, line: 160, column: 9)
!3973 = !DILocation(line: 161, column: 22, scope: !3972)
!3974 = !DILocation(line: 176, column: 44, scope: !3916)
!3975 = !DILocation(line: 0, scope: !3916)
!3976 = !DILocation(line: 177, column: 53, scope: !3916)
!3977 = !DILocation(line: 184, column: 43, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !611, line: 182, column: 13)
!3979 = distinct !DILexicalBlock(scope: !3916, file: !611, line: 181, column: 15)
!3980 = !DILocation(line: 178, column: 48, scope: !3916)
!3981 = !DILocation(line: 179, column: 45, scope: !3916)
!3982 = !DILocation(line: 183, column: 36, scope: !3978)
!3983 = !DILocation(line: 181, column: 23, scope: !3979)
!3984 = !DILocation(line: 191, column: 38, scope: !3916)
!3985 = !DILocation(line: 181, column: 15, scope: !3916)
!3986 = !DILocation(line: 183, column: 26, scope: !3978)
!3987 = !DILocation(line: 184, column: 26, scope: !3978)
!3988 = !DILocation(line: 0, scope: !3917)
!3989 = !DILocation(line: 194, column: 1, scope: !3898)
!3990 = distinct !DISubprogram(name: "randint_free", scope: !611, file: !611, line: 199, type: !3991, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !3846}
!3993 = !{!3994}
!3994 = !DILocalVariable(name: "s", arg: 1, scope: !3990, file: !611, line: 199, type: !3846)
!3995 = !DILocation(line: 0, scope: !3990)
!3996 = !DILocation(line: 201, column: 19, scope: !3990)
!3997 = !DILocalVariable(name: "__dest", arg: 1, scope: !3998, file: !937, line: 70, type: !8)
!3998 = distinct !DISubprogram(name: "explicit_bzero", scope: !937, file: !937, line: 70, type: !3999, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !8, !97}
!4001 = !{!3997, !4002}
!4002 = !DILocalVariable(name: "__len", arg: 2, scope: !3998, file: !937, line: 70, type: !97)
!4003 = !DILocation(line: 0, scope: !3998, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 201, column: 3, scope: !3990)
!4005 = !DILocation(line: 72, column: 3, scope: !3998, inlinedAt: !4004)
!4006 = !DILocation(line: 202, column: 3, scope: !3990)
!4007 = !DILocation(line: 203, column: 1, scope: !3990)
!4008 = distinct !DISubprogram(name: "randint_all_free", scope: !611, file: !611, line: 209, type: !4009, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!24, !3846}
!4011 = !{!4012, !4013, !4014}
!4012 = !DILocalVariable(name: "s", arg: 1, scope: !4008, file: !611, line: 209, type: !3846)
!4013 = !DILocalVariable(name: "r", scope: !4008, file: !611, line: 211, type: !24)
!4014 = !DILocalVariable(name: "e", scope: !4008, file: !611, line: 212, type: !24)
!4015 = !DILocation(line: 0, scope: !4008)
!4016 = !DILocation(line: 211, column: 29, scope: !4008)
!4017 = !DILocation(line: 211, column: 11, scope: !4008)
!4018 = !DILocation(line: 212, column: 11, scope: !4008)
!4019 = !DILocation(line: 0, scope: !3990, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 213, column: 3, scope: !4008)
!4021 = !DILocation(line: 201, column: 19, scope: !3990, inlinedAt: !4020)
!4022 = !DILocation(line: 0, scope: !3998, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 201, column: 3, scope: !3990, inlinedAt: !4020)
!4024 = !DILocation(line: 72, column: 3, scope: !3998, inlinedAt: !4023)
!4025 = !DILocation(line: 202, column: 3, scope: !3990, inlinedAt: !4020)
!4026 = !DILocation(line: 214, column: 9, scope: !4008)
!4027 = !DILocation(line: 215, column: 3, scope: !4008)
!4028 = distinct !DISubprogram(name: "randread_new", scope: !613, file: !613, line: 204, type: !4029, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4100)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!4031, !15, !97}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !613, line: 79, size: 33216, elements: !4033)
!4033 = !{!4034, !4069, !4073, !4074}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4032, file: !613, line: 83, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1162, line: 7, baseType: !4037)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !775, line: 49, size: 1728, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4037, file: !775, line: 51, baseType: !24, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4037, file: !775, line: 54, baseType: !6, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4037, file: !775, line: 55, baseType: !6, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4037, file: !775, line: 56, baseType: !6, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4037, file: !775, line: 57, baseType: !6, size: 64, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4037, file: !775, line: 58, baseType: !6, size: 64, offset: 320)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4037, file: !775, line: 59, baseType: !6, size: 64, offset: 384)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4037, file: !775, line: 60, baseType: !6, size: 64, offset: 448)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4037, file: !775, line: 61, baseType: !6, size: 64, offset: 512)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4037, file: !775, line: 64, baseType: !6, size: 64, offset: 576)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4037, file: !775, line: 65, baseType: !6, size: 64, offset: 640)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4037, file: !775, line: 66, baseType: !6, size: 64, offset: 704)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4037, file: !775, line: 68, baseType: !790, size: 64, offset: 768)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4037, file: !775, line: 70, baseType: !4053, size: 64, offset: 832)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4037, file: !775, line: 72, baseType: !24, size: 32, offset: 896)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4037, file: !775, line: 73, baseType: !24, size: 32, offset: 928)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4037, file: !775, line: 74, baseType: !796, size: 64, offset: 960)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4037, file: !775, line: 77, baseType: !96, size: 16, offset: 1024)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4037, file: !775, line: 78, baseType: !800, size: 8, offset: 1040)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4037, file: !775, line: 79, baseType: !802, size: 8, offset: 1048)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4037, file: !775, line: 81, baseType: !806, size: 64, offset: 1088)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4037, file: !775, line: 89, baseType: !809, size: 64, offset: 1152)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4037, file: !775, line: 91, baseType: !811, size: 64, offset: 1216)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4037, file: !775, line: 92, baseType: !814, size: 64, offset: 1280)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4037, file: !775, line: 93, baseType: !4053, size: 64, offset: 1344)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4037, file: !775, line: 94, baseType: !8, size: 64, offset: 1408)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4037, file: !775, line: 95, baseType: !97, size: 64, offset: 1472)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4037, file: !775, line: 96, baseType: !24, size: 32, offset: 1536)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4037, file: !775, line: 98, baseType: !821, size: 160, offset: 1568)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4032, file: !613, line: 90, baseType: !4070, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !942}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "handler_arg", scope: !4032, file: !613, line: 91, baseType: !942, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4032, file: !613, line: 117, baseType: !4075, size: 33024, offset: 192)
!4075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4032, file: !613, line: 96, size: 33024, elements: !4076)
!4076 = !{!4077, !4081}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4075, file: !613, line: 99, baseType: !4078, size: 32768)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !4079)
!4079 = !{!4080}
!4080 = !DISubrange(count: 4096)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "isaac", scope: !4075, file: !613, line: 116, baseType: !4082, size: 33024)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac", file: !613, line: 102, size: 33024, elements: !4083)
!4083 = !{!4084, !4085, !4092}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !4082, file: !613, line: 105, baseType: !97, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4082, file: !613, line: 108, baseType: !4086, size: 16576, offset: 64)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !624, line: 56, size: 16576, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !4086, file: !624, line: 58, baseType: !627, size: 16384)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4086, file: !624, line: 59, baseType: !628, size: 64, offset: 16384)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4086, file: !624, line: 59, baseType: !628, size: 64, offset: 16448)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4086, file: !624, line: 59, baseType: !628, size: 64, offset: 16512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4082, file: !613, line: 115, baseType: !4093, size: 16384, offset: 16640)
!4093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4082, file: !613, line: 111, size: 16384, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !4093, file: !613, line: 113, baseType: !627, size: 16384)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4093, file: !613, line: 114, baseType: !4097, size: 16384)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1482, size: 16384, elements: !4098)
!4098 = !{!4099}
!4099 = !DISubrange(count: 2048)
!4100 = !{!4101, !4102, !4103, !4106}
!4101 = !DILocalVariable(name: "name", arg: 1, scope: !4028, file: !613, line: 204, type: !15)
!4102 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !4028, file: !613, line: 204, type: !97)
!4103 = !DILocalVariable(name: "source", scope: !4104, file: !613, line: 210, type: !4035)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !613, line: 209, column: 5)
!4105 = distinct !DILexicalBlock(scope: !4028, file: !613, line: 206, column: 7)
!4106 = !DILocalVariable(name: "s", scope: !4104, file: !613, line: 211, type: !4031)
!4107 = !DILocation(line: 0, scope: !4028)
!4108 = !DILocation(line: 206, column: 19, scope: !4105)
!4109 = !DILocation(line: 206, column: 7, scope: !4028)
!4110 = !DILocalVariable(name: "source", arg: 1, scope: !4111, file: !613, line: 137, type: !4035)
!4111 = distinct !DISubprogram(name: "simple_new", scope: !613, file: !613, line: 137, type: !4112, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!4031, !4035, !942}
!4114 = !{!4110, !4115, !4116}
!4115 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !4111, file: !613, line: 137, type: !942)
!4116 = !DILocalVariable(name: "s", scope: !4111, file: !613, line: 139, type: !4031)
!4117 = !DILocation(line: 0, scope: !4111, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 207, column: 12, scope: !4105)
!4119 = !DILocation(line: 139, column: 31, scope: !4111, inlinedAt: !4118)
!4120 = !DILocation(line: 140, column: 6, scope: !4111, inlinedAt: !4118)
!4121 = !DILocation(line: 140, column: 13, scope: !4111, inlinedAt: !4118)
!4122 = !{!4123, !698, i64 0}
!4123 = !{!"randread_source", !698, i64 0, !698, i64 8, !698, i64 16, !699, i64 24}
!4124 = !DILocation(line: 141, column: 6, scope: !4111, inlinedAt: !4118)
!4125 = !DILocation(line: 141, column: 14, scope: !4111, inlinedAt: !4118)
!4126 = !{!4123, !698, i64 8}
!4127 = !DILocation(line: 142, column: 6, scope: !4111, inlinedAt: !4118)
!4128 = !DILocation(line: 142, column: 18, scope: !4111, inlinedAt: !4118)
!4129 = !{!4123, !698, i64 16}
!4130 = !DILocation(line: 207, column: 5, scope: !4105)
!4131 = !DILocation(line: 0, scope: !4104)
!4132 = !DILocation(line: 213, column: 11, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4104, file: !613, line: 213, column: 11)
!4134 = !DILocation(line: 213, column: 11, scope: !4104)
!4135 = !DILocation(line: 214, column: 25, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !613, line: 214, column: 13)
!4137 = !DILocation(line: 214, column: 23, scope: !4136)
!4138 = !DILocation(line: 214, column: 13, scope: !4133)
!4139 = !DILocation(line: 0, scope: !4111, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 217, column: 11, scope: !4104)
!4141 = !DILocation(line: 139, column: 31, scope: !4111, inlinedAt: !4140)
!4142 = !DILocation(line: 140, column: 6, scope: !4111, inlinedAt: !4140)
!4143 = !DILocation(line: 140, column: 13, scope: !4111, inlinedAt: !4140)
!4144 = !DILocation(line: 141, column: 6, scope: !4111, inlinedAt: !4140)
!4145 = !DILocation(line: 141, column: 14, scope: !4111, inlinedAt: !4140)
!4146 = !DILocation(line: 142, column: 6, scope: !4111, inlinedAt: !4140)
!4147 = !DILocation(line: 142, column: 18, scope: !4111, inlinedAt: !4140)
!4148 = !DILocation(line: 219, column: 11, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4104, file: !613, line: 219, column: 11)
!4150 = !DILocation(line: 0, scope: !4149)
!4151 = !DILocation(line: 219, column: 11, scope: !4104)
!4152 = !DILocation(line: 220, column: 44, scope: !4149)
!4153 = !DILocation(line: 220, column: 9, scope: !4149)
!4154 = !DILocation(line: 223, column: 24, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4149, file: !613, line: 222, column: 9)
!4156 = !DILocation(line: 223, column: 33, scope: !4155)
!4157 = !DILocation(line: 224, column: 35, scope: !4155)
!4158 = !DILocalVariable(name: "buffer", arg: 1, scope: !4159, file: !613, line: 151, type: !8)
!4159 = distinct !DISubprogram(name: "get_nonce", scope: !613, file: !613, line: 151, type: !4160, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4162)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !8, !97, !97}
!4162 = !{!4158, !4163, !4164, !4165, !4166, !4170, !4171, !4180, !4181, !4186, !4187, !4190, !4191, !4195, !4196, !4199}
!4163 = !DILocalVariable(name: "bufsize", arg: 2, scope: !4159, file: !613, line: 151, type: !97)
!4164 = !DILocalVariable(name: "bytes_bound", arg: 3, scope: !4159, file: !613, line: 151, type: !97)
!4165 = !DILocalVariable(name: "buf", scope: !4159, file: !613, line: 153, type: !6)
!4166 = !DILocalVariable(name: "seeded", scope: !4159, file: !613, line: 154, type: !4167)
!4167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !4168, line: 108, baseType: !4169)
!4168 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!4169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !632, line: 194, baseType: !797)
!4170 = !DILocalVariable(name: "fd", scope: !4159, file: !613, line: 157, type: !24)
!4171 = !DILocalVariable(name: "v", scope: !4172, file: !613, line: 177, type: !4174)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !613, line: 177, column: 3)
!4173 = distinct !DILexicalBlock(scope: !4159, file: !613, line: 177, column: 3)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !4175, line: 8, size: 128, elements: !4176)
!4175 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "")
!4176 = !{!4177, !4178}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4174, file: !4175, line: 10, baseType: !3067, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !4174, file: !4175, line: 11, baseType: !4179, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !632, line: 162, baseType: !797)
!4180 = !DILocalVariable(name: "nbytes", scope: !4172, file: !613, line: 177, type: !97)
!4181 = !DILocalVariable(name: "v", scope: !4182, file: !613, line: 178, type: !4184)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !613, line: 178, column: 3)
!4183 = distinct !DILexicalBlock(scope: !4159, file: !613, line: 178, column: 3)
!4184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !4168, line: 97, baseType: !4185)
!4185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !632, line: 154, baseType: !24)
!4186 = !DILocalVariable(name: "nbytes", scope: !4182, file: !613, line: 178, type: !97)
!4187 = !DILocalVariable(name: "v", scope: !4188, file: !613, line: 179, type: !4184)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !613, line: 179, column: 3)
!4189 = distinct !DILexicalBlock(scope: !4159, file: !613, line: 179, column: 3)
!4190 = !DILocalVariable(name: "nbytes", scope: !4188, file: !613, line: 179, type: !97)
!4191 = !DILocalVariable(name: "v", scope: !4192, file: !613, line: 180, type: !4194)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !613, line: 180, column: 3)
!4193 = distinct !DILexicalBlock(scope: !4159, file: !613, line: 180, column: 3)
!4194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !4168, line: 79, baseType: !3052)
!4195 = !DILocalVariable(name: "nbytes", scope: !4192, file: !613, line: 180, type: !97)
!4196 = !DILocalVariable(name: "v", scope: !4197, file: !613, line: 181, type: !4194)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !613, line: 181, column: 3)
!4198 = distinct !DILexicalBlock(scope: !4159, file: !613, line: 181, column: 3)
!4199 = !DILocalVariable(name: "nbytes", scope: !4197, file: !613, line: 181, type: !97)
!4200 = !DILocation(line: 0, scope: !4159, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 224, column: 11, scope: !4155)
!4202 = !DILocation(line: 157, column: 12, scope: !4159, inlinedAt: !4201)
!4203 = !DILocation(line: 158, column: 9, scope: !4204, inlinedAt: !4201)
!4204 = distinct !DILexicalBlock(scope: !4159, file: !613, line: 158, column: 7)
!4205 = !DILocation(line: 158, column: 7, scope: !4159, inlinedAt: !4201)
!4206 = !DILocation(line: 160, column: 31, scope: !4207, inlinedAt: !4201)
!4207 = distinct !DILexicalBlock(scope: !4204, file: !613, line: 159, column: 5)
!4208 = !DILocation(line: 160, column: 16, scope: !4207, inlinedAt: !4201)
!4209 = !DILocation(line: 161, column: 11, scope: !4207, inlinedAt: !4201)
!4210 = !DILocation(line: 163, column: 7, scope: !4207, inlinedAt: !4201)
!4211 = !DILocation(line: 177, column: 3, scope: !4173, inlinedAt: !4201)
!4212 = !DILocation(line: 177, column: 3, scope: !4159, inlinedAt: !4201)
!4213 = !DILocation(line: 177, column: 3, scope: !4172, inlinedAt: !4201)
!4214 = !DILocation(line: 0, scope: !4172, inlinedAt: !4201)
!4215 = !DILocalVariable(name: "__dest", arg: 1, scope: !4216, file: !937, line: 26, type: !940)
!4216 = distinct !DISubprogram(name: "memcpy", scope: !937, file: !937, line: 26, type: !938, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4217)
!4217 = !{!4215, !4218, !4219}
!4218 = !DILocalVariable(name: "__src", arg: 2, scope: !4216, file: !937, line: 26, type: !941)
!4219 = !DILocalVariable(name: "__len", arg: 3, scope: !4216, file: !937, line: 26, type: !97)
!4220 = !DILocation(line: 0, scope: !4216, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 177, column: 3, scope: !4172, inlinedAt: !4201)
!4222 = !DILocation(line: 29, column: 10, scope: !4216, inlinedAt: !4221)
!4223 = !DILocation(line: 178, column: 3, scope: !4183, inlinedAt: !4201)
!4224 = !DILocation(line: 178, column: 3, scope: !4159, inlinedAt: !4201)
!4225 = !DILocation(line: 178, column: 3, scope: !4182, inlinedAt: !4201)
!4226 = !DILocation(line: 0, scope: !4182, inlinedAt: !4201)
!4227 = !DILocation(line: 0, scope: !4216, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 178, column: 3, scope: !4182, inlinedAt: !4201)
!4229 = !DILocation(line: 29, column: 10, scope: !4216, inlinedAt: !4228)
!4230 = !DILocation(line: 179, column: 3, scope: !4189, inlinedAt: !4201)
!4231 = !DILocation(line: 179, column: 3, scope: !4159, inlinedAt: !4201)
!4232 = !DILocation(line: 179, column: 3, scope: !4188, inlinedAt: !4201)
!4233 = !DILocation(line: 0, scope: !4188, inlinedAt: !4201)
!4234 = !DILocation(line: 0, scope: !4216, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 179, column: 3, scope: !4188, inlinedAt: !4201)
!4236 = !DILocation(line: 29, column: 10, scope: !4216, inlinedAt: !4235)
!4237 = !DILocation(line: 180, column: 3, scope: !4193, inlinedAt: !4201)
!4238 = !DILocation(line: 180, column: 3, scope: !4159, inlinedAt: !4201)
!4239 = !DILocation(line: 180, column: 3, scope: !4192, inlinedAt: !4201)
!4240 = !DILocation(line: 0, scope: !4192, inlinedAt: !4201)
!4241 = !DILocation(line: 0, scope: !4216, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 180, column: 3, scope: !4192, inlinedAt: !4201)
!4243 = !DILocation(line: 29, column: 10, scope: !4216, inlinedAt: !4242)
!4244 = !DILocation(line: 181, column: 3, scope: !4198, inlinedAt: !4201)
!4245 = !DILocation(line: 181, column: 3, scope: !4159, inlinedAt: !4201)
!4246 = !DILocation(line: 181, column: 3, scope: !4197, inlinedAt: !4201)
!4247 = !DILocation(line: 0, scope: !4197, inlinedAt: !4201)
!4248 = !DILocation(line: 0, scope: !4216, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 181, column: 3, scope: !4197, inlinedAt: !4201)
!4250 = !DILocation(line: 29, column: 10, scope: !4216, inlinedAt: !4249)
!4251 = !DILocation(line: 226, column: 11, scope: !4155)
!4252 = !DILocation(line: 0, scope: !4105)
!4253 = !DILocation(line: 231, column: 1, scope: !4028)
!4254 = distinct !DISubprogram(name: "randread_error", scope: !613, file: !613, line: 124, type: !4071, scopeLine: 125, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4255)
!4255 = !{!4256}
!4256 = !DILocalVariable(name: "file_name", arg: 1, scope: !4254, file: !613, line: 124, type: !942)
!4257 = !DILocation(line: 0, scope: !4254)
!4258 = !DILocation(line: 126, column: 7, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4254, file: !613, line: 126, column: 7)
!4260 = !DILocation(line: 126, column: 7, scope: !4254)
!4261 = !DILocation(line: 127, column: 12, scope: !4259)
!4262 = !DILocation(line: 127, column: 26, scope: !4259)
!4263 = !DILocation(line: 128, column: 18, scope: !4259)
!4264 = !DILocation(line: 128, column: 12, scope: !4259)
!4265 = !DILocation(line: 0, scope: !4259)
!4266 = !DILocation(line: 129, column: 12, scope: !4259)
!4267 = !DILocation(line: 127, column: 5, scope: !4259)
!4268 = !DILocation(line: 130, column: 3, scope: !4254)
!4269 = !DISubprogram(name: "setvbuf", scope: !770, file: !770, line: 308, type: !4270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!24, !4053, !6, !24, !99}
!4272 = !DISubprogram(name: "gettimeofday", scope: !4273, file: !4273, line: 66, type: !4274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4273 = !DIFile(filename: "/usr/include/sys/time.h", directory: "")
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!24, !4276, !8}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4277 = !DISubprogram(name: "getpid", scope: !1153, file: !1153, line: 640, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!24}
!4280 = !DISubprogram(name: "getppid", scope: !1153, file: !1153, line: 643, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4281 = !DISubprogram(name: "getuid", scope: !1153, file: !1153, line: 687, type: !4282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!62}
!4284 = !DISubprogram(name: "getgid", scope: !1153, file: !1153, line: 693, type: !4282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4285 = distinct !DISubprogram(name: "randread_set_handler", scope: !613, file: !613, line: 242, type: !4286, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{null, !4031, !4070}
!4288 = !{!4289, !4290}
!4289 = !DILocalVariable(name: "s", arg: 1, scope: !4285, file: !613, line: 242, type: !4031)
!4290 = !DILocalVariable(name: "handler", arg: 2, scope: !4285, file: !613, line: 242, type: !4070)
!4291 = !DILocation(line: 0, scope: !4285)
!4292 = !DILocation(line: 244, column: 6, scope: !4285)
!4293 = !DILocation(line: 244, column: 14, scope: !4285)
!4294 = !DILocation(line: 245, column: 1, scope: !4285)
!4295 = distinct !DISubprogram(name: "randread_set_handler_arg", scope: !613, file: !613, line: 248, type: !4296, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{null, !4031, !942}
!4298 = !{!4299, !4300}
!4299 = !DILocalVariable(name: "s", arg: 1, scope: !4295, file: !613, line: 248, type: !4031)
!4300 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !4295, file: !613, line: 248, type: !942)
!4301 = !DILocation(line: 0, scope: !4295)
!4302 = !DILocation(line: 250, column: 6, scope: !4295)
!4303 = !DILocation(line: 250, column: 18, scope: !4295)
!4304 = !DILocation(line: 251, column: 1, scope: !4295)
!4305 = distinct !DISubprogram(name: "randread", scope: !613, file: !613, line: 326, type: !4306, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4308)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{null, !4031, !8, !97}
!4308 = !{!4309, !4310, !4311}
!4309 = !DILocalVariable(name: "s", arg: 1, scope: !4305, file: !613, line: 326, type: !4031)
!4310 = !DILocalVariable(name: "buf", arg: 2, scope: !4305, file: !613, line: 326, type: !8)
!4311 = !DILocalVariable(name: "size", arg: 3, scope: !4305, file: !613, line: 326, type: !97)
!4312 = !DILocation(line: 0, scope: !4305)
!4313 = !DILocation(line: 328, column: 10, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4305, file: !613, line: 328, column: 7)
!4315 = !DILocation(line: 328, column: 7, scope: !4314)
!4316 = !DILocation(line: 328, column: 7, scope: !4305)
!4317 = !DILocalVariable(name: "s", arg: 1, scope: !4318, file: !613, line: 258, type: !4031)
!4318 = distinct !DISubprogram(name: "readsource", scope: !613, file: !613, line: 258, type: !4319, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4322)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !4031, !4321, !97}
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!4322 = !{!4317, !4323, !4324, !4325, !4327}
!4323 = !DILocalVariable(name: "p", arg: 2, scope: !4318, file: !613, line: 258, type: !4321)
!4324 = !DILocalVariable(name: "size", arg: 3, scope: !4318, file: !613, line: 258, type: !97)
!4325 = !DILocalVariable(name: "inbytes", scope: !4326, file: !613, line: 262, type: !97)
!4326 = distinct !DILexicalBlock(scope: !4318, file: !613, line: 261, column: 5)
!4327 = !DILocalVariable(name: "fread_errno", scope: !4326, file: !613, line: 263, type: !24)
!4328 = !DILocation(line: 0, scope: !4318, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 329, column: 5, scope: !4314)
!4330 = !DILocation(line: 262, column: 24, scope: !4326, inlinedAt: !4329)
!4331 = !DILocation(line: 0, scope: !4326, inlinedAt: !4329)
!4332 = !DILocation(line: 263, column: 25, scope: !4326, inlinedAt: !4329)
!4333 = !DILocation(line: 265, column: 12, scope: !4326, inlinedAt: !4329)
!4334 = !DILocation(line: 266, column: 16, scope: !4335, inlinedAt: !4329)
!4335 = distinct !DILexicalBlock(scope: !4326, file: !613, line: 266, column: 11)
!4336 = !DILocation(line: 266, column: 11, scope: !4326, inlinedAt: !4329)
!4337 = !DILocation(line: 264, column: 9, scope: !4326, inlinedAt: !4329)
!4338 = !DILocation(line: 268, column: 16, scope: !4326, inlinedAt: !4329)
!4339 = !DILocalVariable(name: "__stream", arg: 1, scope: !4340, file: !1205, line: 135, type: !4035)
!4340 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1205, file: !1205, line: 135, type: !4341, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!24, !4035}
!4343 = !{!4339}
!4344 = !DILocation(line: 0, scope: !4340, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 268, column: 16, scope: !4326, inlinedAt: !4329)
!4346 = !DILocation(line: 137, column: 10, scope: !4340, inlinedAt: !4345)
!4347 = !DILocation(line: 268, column: 13, scope: !4326, inlinedAt: !4329)
!4348 = !DILocation(line: 269, column: 10, scope: !4326, inlinedAt: !4329)
!4349 = !DILocation(line: 269, column: 22, scope: !4326, inlinedAt: !4329)
!4350 = !DILocation(line: 269, column: 7, scope: !4326, inlinedAt: !4329)
!4351 = !DILocalVariable(name: "isaac", arg: 1, scope: !4352, file: !613, line: 278, type: !4355)
!4352 = distinct !DISubprogram(name: "readisaac", scope: !613, file: !613, line: 278, type: !4353, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4356)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{null, !4355, !8, !97}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4356 = !{!4351, !4357, !4358, !4359, !4360, !4362}
!4357 = !DILocalVariable(name: "p", arg: 2, scope: !4352, file: !613, line: 278, type: !8)
!4358 = !DILocalVariable(name: "size", arg: 3, scope: !4352, file: !613, line: 278, type: !97)
!4359 = !DILocalVariable(name: "inbytes", scope: !4352, file: !613, line: 280, type: !97)
!4360 = !DILocalVariable(name: "char_p", scope: !4361, file: !613, line: 284, type: !6)
!4361 = distinct !DILexicalBlock(scope: !4352, file: !613, line: 283, column: 5)
!4362 = !DILocalVariable(name: "wp", scope: !4363, file: !613, line: 301, type: !637)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !613, line: 300, column: 9)
!4364 = distinct !DILexicalBlock(scope: !4361, file: !613, line: 299, column: 11)
!4365 = !DILocation(line: 0, scope: !4352, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 331, column: 5, scope: !4314)
!4367 = !DILocation(line: 280, column: 27, scope: !4352, inlinedAt: !4366)
!4368 = !{!4369, !1212, i64 0}
!4369 = !{!"isaac", !1212, i64 0, !4370, i64 8, !699, i64 2080}
!4370 = !{!"isaac_state", !699, i64 0, !1212, i64 2048, !1212, i64 2056, !1212, i64 2064}
!4371 = !DILocation(line: 0, scope: !4361, inlinedAt: !4366)
!4372 = !DILocation(line: 286, column: 16, scope: !4373, inlinedAt: !4366)
!4373 = distinct !DILexicalBlock(scope: !4361, file: !613, line: 286, column: 11)
!4374 = !DILocation(line: 286, column: 11, scope: !4361, inlinedAt: !4366)
!4375 = !DILocation(line: 280, column: 10, scope: !4352, inlinedAt: !4366)
!4376 = !DILocation(line: 288, column: 29, scope: !4377, inlinedAt: !4366)
!4377 = distinct !DILexicalBlock(scope: !4373, file: !613, line: 287, column: 9)
!4378 = !DILocation(line: 288, column: 36, scope: !4377, inlinedAt: !4366)
!4379 = !DILocation(line: 288, column: 50, scope: !4377, inlinedAt: !4366)
!4380 = !DILocation(line: 0, scope: !4216, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 288, column: 11, scope: !4377, inlinedAt: !4366)
!4382 = !DILocation(line: 29, column: 10, scope: !4216, inlinedAt: !4381)
!4383 = !DILocation(line: 289, column: 37, scope: !4377, inlinedAt: !4366)
!4384 = !DILocation(line: 290, column: 11, scope: !4377, inlinedAt: !4366)
!4385 = !DILocation(line: 293, column: 46, scope: !4361, inlinedAt: !4366)
!4386 = !DILocation(line: 0, scope: !4216, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 293, column: 7, scope: !4361, inlinedAt: !4366)
!4388 = !DILocation(line: 29, column: 10, scope: !4216, inlinedAt: !4387)
!4389 = !DILocation(line: 294, column: 18, scope: !4361, inlinedAt: !4366)
!4390 = !DILocation(line: 295, column: 12, scope: !4361, inlinedAt: !4366)
!4391 = !DILocation(line: 299, column: 11, scope: !4364, inlinedAt: !4366)
!4392 = !DILocation(line: 299, column: 11, scope: !4361, inlinedAt: !4366)
!4393 = !DILocation(line: 301, column: 28, scope: !4363, inlinedAt: !4366)
!4394 = !DILocation(line: 0, scope: !4363, inlinedAt: !4366)
!4395 = !DILocation(line: 302, column: 11, scope: !4363, inlinedAt: !4366)
!4396 = !DILocation(line: 302, column: 30, scope: !4363, inlinedAt: !4366)
!4397 = !DILocation(line: 304, column: 15, scope: !4398, inlinedAt: !4366)
!4398 = distinct !DILexicalBlock(scope: !4363, file: !613, line: 303, column: 13)
!4399 = !DILocation(line: 305, column: 18, scope: !4398, inlinedAt: !4366)
!4400 = !DILocation(line: 306, column: 20, scope: !4398, inlinedAt: !4366)
!4401 = !DILocation(line: 307, column: 24, scope: !4402, inlinedAt: !4366)
!4402 = distinct !DILexicalBlock(scope: !4398, file: !613, line: 307, column: 19)
!4403 = !DILocation(line: 307, column: 19, scope: !4398, inlinedAt: !4366)
!4404 = distinct !{!4404, !4395, !4405, !745}
!4405 = !DILocation(line: 312, column: 13, scope: !4363, inlinedAt: !4366)
!4406 = !DILocation(line: 313, column: 15, scope: !4363, inlinedAt: !4366)
!4407 = !DILocation(line: 316, column: 7, scope: !4361, inlinedAt: !4366)
!4408 = !DILocation(line: 332, column: 1, scope: !4305)
!4409 = distinct !DISubprogram(name: "randread_free", scope: !613, file: !613, line: 341, type: !4410, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4412)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!24, !4031}
!4412 = !{!4413, !4414}
!4413 = !DILocalVariable(name: "s", arg: 1, scope: !4409, file: !613, line: 341, type: !4031)
!4414 = !DILocalVariable(name: "source", scope: !4409, file: !613, line: 343, type: !4035)
!4415 = !DILocation(line: 0, scope: !4409)
!4416 = !DILocation(line: 343, column: 21, scope: !4409)
!4417 = !DILocation(line: 344, column: 19, scope: !4409)
!4418 = !DILocalVariable(name: "__dest", arg: 1, scope: !4419, file: !937, line: 70, type: !8)
!4419 = distinct !DISubprogram(name: "explicit_bzero", scope: !937, file: !937, line: 70, type: !3999, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !4420)
!4420 = !{!4418, !4421}
!4421 = !DILocalVariable(name: "__len", arg: 2, scope: !4419, file: !937, line: 70, type: !97)
!4422 = !DILocation(line: 0, scope: !4419, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 344, column: 3, scope: !4409)
!4424 = !DILocation(line: 72, column: 3, scope: !4419, inlinedAt: !4423)
!4425 = !DILocation(line: 345, column: 3, scope: !4409)
!4426 = !DILocation(line: 346, column: 11, scope: !4409)
!4427 = !DILocation(line: 346, column: 20, scope: !4409)
!4428 = !DILocation(line: 346, column: 3, scope: !4409)
!4429 = !DILocation(line: 0, scope: !619)
!4430 = !DILocation(line: 93, column: 21, scope: !619)
!4431 = !{!4370, !1212, i64 2048}
!4432 = !DILocation(line: 94, column: 21, scope: !619)
!4433 = !{!4370, !1212, i64 2056}
!4434 = !DILocation(line: 94, column: 31, scope: !619)
!4435 = !DILocation(line: 94, column: 26, scope: !619)
!4436 = !{!4370, !1212, i64 2064}
!4437 = !DILocation(line: 94, column: 23, scope: !619)
!4438 = !DILocation(line: 97, column: 19, scope: !619)
!4439 = !DILocation(line: 116, column: 3, scope: !619)
!4440 = !DILocation(line: 118, column: 7, scope: !646)
!4441 = !DILocation(line: 0, scope: !646)
!4442 = !DILocalVariable(name: "m", arg: 1, scope: !4443, file: !616, line: 68, type: !4446)
!4443 = distinct !DISubprogram(name: "ind", scope: !616, file: !616, line: 68, type: !4444, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !4448)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!628, !4446, !628}
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!4448 = !{!4442, !4449, !4450, !4453, !4454, !4455}
!4449 = !DILocalVariable(name: "x", arg: 2, scope: !4443, file: !616, line: 68, type: !628)
!4450 = !DILocalVariable(name: "void_m", scope: !4451, file: !616, line: 75, type: !942)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !616, line: 71, column: 5)
!4452 = distinct !DILexicalBlock(scope: !4443, file: !616, line: 70, column: 7)
!4453 = !DILocalVariable(name: "base_p", scope: !4451, file: !616, line: 76, type: !15)
!4454 = !DILocalVariable(name: "word_p", scope: !4451, file: !616, line: 77, type: !942)
!4455 = !DILocalVariable(name: "p", scope: !4451, file: !616, line: 78, type: !4446)
!4456 = !DILocation(line: 0, scope: !4443, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 118, column: 7, scope: !646)
!4458 = !DILocation(line: 0, scope: !4451, inlinedAt: !4457)
!4459 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4457)
!4460 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4457)
!4461 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4457)
!4462 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4457)
!4463 = !DILocation(line: 0, scope: !4443, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 118, column: 7, scope: !646)
!4465 = !DILocation(line: 0, scope: !4451, inlinedAt: !4464)
!4466 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4464)
!4467 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4464)
!4468 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4464)
!4469 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4464)
!4470 = !DILocation(line: 119, column: 7, scope: !650)
!4471 = !DILocation(line: 0, scope: !650)
!4472 = !DILocation(line: 0, scope: !4443, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 119, column: 7, scope: !650)
!4474 = !DILocation(line: 0, scope: !4451, inlinedAt: !4473)
!4475 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4473)
!4476 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4473)
!4477 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4473)
!4478 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4473)
!4479 = !DILocation(line: 0, scope: !4443, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 119, column: 7, scope: !650)
!4481 = !DILocation(line: 0, scope: !4451, inlinedAt: !4480)
!4482 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4480)
!4483 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4480)
!4484 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4480)
!4485 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4480)
!4486 = !DILocation(line: 120, column: 7, scope: !653)
!4487 = !DILocation(line: 0, scope: !653)
!4488 = !DILocation(line: 0, scope: !4443, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 120, column: 7, scope: !653)
!4490 = !DILocation(line: 0, scope: !4451, inlinedAt: !4489)
!4491 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4489)
!4492 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4489)
!4493 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4489)
!4494 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4489)
!4495 = !DILocation(line: 0, scope: !4443, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 120, column: 7, scope: !653)
!4497 = !DILocation(line: 0, scope: !4451, inlinedAt: !4496)
!4498 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4496)
!4499 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4496)
!4500 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4496)
!4501 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4496)
!4502 = !DILocation(line: 121, column: 7, scope: !656)
!4503 = !DILocation(line: 0, scope: !656)
!4504 = !DILocation(line: 0, scope: !4443, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 121, column: 7, scope: !656)
!4506 = !DILocation(line: 0, scope: !4451, inlinedAt: !4505)
!4507 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4505)
!4508 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4505)
!4509 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4505)
!4510 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4505)
!4511 = !DILocation(line: 0, scope: !4443, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 121, column: 7, scope: !656)
!4513 = !DILocation(line: 0, scope: !4451, inlinedAt: !4512)
!4514 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4512)
!4515 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4512)
!4516 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4512)
!4517 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4512)
!4518 = !DILocation(line: 122, column: 9, scope: !647)
!4519 = !DILocation(line: 124, column: 13, scope: !619)
!4520 = !DILocation(line: 124, column: 19, scope: !619)
!4521 = !DILocation(line: 123, column: 5, scope: !647)
!4522 = distinct !{!4522, !4439, !4523, !745}
!4523 = !DILocation(line: 124, column: 32, scope: !619)
!4524 = !DILocation(line: 126, column: 3, scope: !619)
!4525 = !DILocation(line: 128, column: 7, scope: !659)
!4526 = !DILocation(line: 0, scope: !659)
!4527 = !DILocation(line: 0, scope: !4443, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 128, column: 7, scope: !659)
!4529 = !DILocation(line: 0, scope: !4451, inlinedAt: !4528)
!4530 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4528)
!4531 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4528)
!4532 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4528)
!4533 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4528)
!4534 = !DILocation(line: 0, scope: !4443, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 128, column: 7, scope: !659)
!4536 = !DILocation(line: 0, scope: !4451, inlinedAt: !4535)
!4537 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4535)
!4538 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4535)
!4539 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4535)
!4540 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4535)
!4541 = !DILocation(line: 129, column: 7, scope: !663)
!4542 = !DILocation(line: 0, scope: !663)
!4543 = !DILocation(line: 0, scope: !4443, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 129, column: 7, scope: !663)
!4545 = !DILocation(line: 0, scope: !4451, inlinedAt: !4544)
!4546 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4544)
!4547 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4544)
!4548 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4544)
!4549 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4544)
!4550 = !DILocation(line: 0, scope: !4443, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 129, column: 7, scope: !663)
!4552 = !DILocation(line: 0, scope: !4451, inlinedAt: !4551)
!4553 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4551)
!4554 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4551)
!4555 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4551)
!4556 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4551)
!4557 = !DILocation(line: 130, column: 7, scope: !666)
!4558 = !DILocation(line: 0, scope: !666)
!4559 = !DILocation(line: 0, scope: !4443, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 130, column: 7, scope: !666)
!4561 = !DILocation(line: 0, scope: !4451, inlinedAt: !4560)
!4562 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4560)
!4563 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4560)
!4564 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4560)
!4565 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4560)
!4566 = !DILocation(line: 0, scope: !4443, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 130, column: 7, scope: !666)
!4568 = !DILocation(line: 0, scope: !4451, inlinedAt: !4567)
!4569 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4567)
!4570 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4567)
!4571 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4567)
!4572 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4567)
!4573 = !DILocation(line: 131, column: 7, scope: !669)
!4574 = !DILocation(line: 0, scope: !669)
!4575 = !DILocation(line: 0, scope: !4443, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 131, column: 7, scope: !669)
!4577 = !DILocation(line: 0, scope: !4451, inlinedAt: !4576)
!4578 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4576)
!4579 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4576)
!4580 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4576)
!4581 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4576)
!4582 = !DILocation(line: 0, scope: !4443, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 131, column: 7, scope: !669)
!4584 = !DILocation(line: 0, scope: !4451, inlinedAt: !4583)
!4585 = !DILocation(line: 77, column: 40, scope: !4451, inlinedAt: !4583)
!4586 = !DILocation(line: 77, column: 35, scope: !4451, inlinedAt: !4583)
!4587 = !DILocation(line: 78, column: 29, scope: !4451, inlinedAt: !4583)
!4588 = !DILocation(line: 79, column: 14, scope: !4451, inlinedAt: !4583)
!4589 = !DILocation(line: 132, column: 9, scope: !660)
!4590 = !DILocation(line: 134, column: 13, scope: !619)
!4591 = !DILocation(line: 134, column: 19, scope: !619)
!4592 = !DILocation(line: 133, column: 5, scope: !660)
!4593 = distinct !{!4593, !4524, !4594, !745}
!4594 = !DILocation(line: 134, column: 39, scope: !619)
!4595 = !DILocation(line: 136, column: 8, scope: !619)
!4596 = !DILocation(line: 137, column: 8, scope: !619)
!4597 = !DILocation(line: 138, column: 1, scope: !619)
!4598 = distinct !DISubprogram(name: "isaac_seed", scope: !616, file: !616, line: 248, type: !4599, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !4601)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{null, !622}
!4601 = !{!4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4613}
!4602 = !DILocalVariable(name: "s", arg: 1, scope: !4598, file: !616, line: 248, type: !622)
!4603 = !DILocalVariable(name: "a", scope: !4598, file: !616, line: 250, type: !628)
!4604 = !DILocalVariable(name: "b", scope: !4598, file: !616, line: 251, type: !628)
!4605 = !DILocalVariable(name: "c", scope: !4598, file: !616, line: 252, type: !628)
!4606 = !DILocalVariable(name: "d", scope: !4598, file: !616, line: 253, type: !628)
!4607 = !DILocalVariable(name: "e", scope: !4598, file: !616, line: 254, type: !628)
!4608 = !DILocalVariable(name: "f", scope: !4598, file: !616, line: 255, type: !628)
!4609 = !DILocalVariable(name: "g", scope: !4598, file: !616, line: 256, type: !628)
!4610 = !DILocalVariable(name: "h", scope: !4598, file: !616, line: 257, type: !628)
!4611 = !DILocalVariable(name: "i", scope: !4612, file: !616, line: 269, type: !24)
!4612 = distinct !DILexicalBlock(scope: !4598, file: !616, line: 269, column: 3)
!4613 = !DILocalVariable(name: "i", scope: !4614, file: !616, line: 270, type: !24)
!4614 = distinct !DILexicalBlock(scope: !4598, file: !616, line: 270, column: 3)
!4615 = !DILocation(line: 0, scope: !4598)
!4616 = !DILocation(line: 0, scope: !4612)
!4617 = !DILocation(line: 269, column: 3, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4612, file: !616, line: 269, column: 3)
!4619 = !DILocation(line: 269, column: 3, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4621, file: !616, line: 269, column: 3)
!4621 = distinct !DILexicalBlock(scope: !4618, file: !616, line: 269, column: 3)
!4622 = !DILocation(line: 269, column: 3, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4620, file: !616, line: 269, column: 3)
!4624 = !DILocation(line: 269, column: 3, scope: !4621)
!4625 = distinct !{!4625, !4617, !4617, !745}
!4626 = !DILocation(line: 0, scope: !4614)
!4627 = !DILocation(line: 270, column: 3, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !616, line: 270, column: 3)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !616, line: 270, column: 3)
!4630 = distinct !DILexicalBlock(scope: !4614, file: !616, line: 270, column: 3)
!4631 = !DILocation(line: 270, column: 3, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4628, file: !616, line: 270, column: 3)
!4633 = !DILocation(line: 270, column: 3, scope: !4629)
!4634 = !DILocation(line: 270, column: 3, scope: !4630)
!4635 = distinct !{!4635, !4634, !4634, !745}
!4636 = !DILocation(line: 272, column: 6, scope: !4598)
!4637 = !DILocation(line: 273, column: 1, scope: !4598)
!4638 = !DILocation(line: 272, column: 15, scope: !4598)
!4639 = distinct !DISubprogram(name: "setlocale_null_r", scope: !675, file: !675, line: 269, type: !4640, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4642)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!24, !24, !6, !97}
!4642 = !{!4643, !4644, !4645}
!4643 = !DILocalVariable(name: "category", arg: 1, scope: !4639, file: !675, line: 269, type: !24)
!4644 = !DILocalVariable(name: "buf", arg: 2, scope: !4639, file: !675, line: 269, type: !6)
!4645 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4639, file: !675, line: 269, type: !97)
!4646 = !DILocation(line: 0, scope: !4639)
!4647 = !DILocalVariable(name: "category", arg: 1, scope: !4648, file: !675, line: 91, type: !24)
!4648 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !675, file: !675, line: 91, type: !4640, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4649)
!4649 = !{!4647, !4650, !4651, !4652, !4653}
!4650 = !DILocalVariable(name: "buf", arg: 2, scope: !4648, file: !675, line: 91, type: !6)
!4651 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4648, file: !675, line: 91, type: !97)
!4652 = !DILocalVariable(name: "result", scope: !4648, file: !675, line: 140, type: !15)
!4653 = !DILocalVariable(name: "length", scope: !4654, file: !675, line: 154, type: !97)
!4654 = distinct !DILexicalBlock(scope: !4655, file: !675, line: 153, column: 5)
!4655 = distinct !DILexicalBlock(scope: !4648, file: !675, line: 142, column: 7)
!4656 = !DILocation(line: 0, scope: !4648, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 274, column: 10, scope: !4639)
!4658 = !DILocalVariable(name: "category", arg: 1, scope: !4659, file: !675, line: 60, type: !24)
!4659 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !675, file: !675, line: 60, type: !4660, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!15, !24}
!4662 = !{!4658, !4663}
!4663 = !DILocalVariable(name: "result", scope: !4659, file: !675, line: 62, type: !15)
!4664 = !DILocation(line: 0, scope: !4659, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 140, column: 24, scope: !4648, inlinedAt: !4657)
!4666 = !DILocation(line: 62, column: 24, scope: !4659, inlinedAt: !4665)
!4667 = !DILocation(line: 142, column: 14, scope: !4655, inlinedAt: !4657)
!4668 = !DILocation(line: 142, column: 7, scope: !4648, inlinedAt: !4657)
!4669 = !DILocation(line: 145, column: 19, scope: !4670, inlinedAt: !4657)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !675, line: 145, column: 11)
!4671 = distinct !DILexicalBlock(scope: !4655, file: !675, line: 143, column: 5)
!4672 = !DILocation(line: 145, column: 11, scope: !4671, inlinedAt: !4657)
!4673 = !DILocation(line: 149, column: 16, scope: !4670, inlinedAt: !4657)
!4674 = !DILocation(line: 149, column: 9, scope: !4670, inlinedAt: !4657)
!4675 = !DILocation(line: 154, column: 23, scope: !4654, inlinedAt: !4657)
!4676 = !DILocation(line: 0, scope: !4654, inlinedAt: !4657)
!4677 = !DILocation(line: 155, column: 18, scope: !4678, inlinedAt: !4657)
!4678 = distinct !DILexicalBlock(scope: !4654, file: !675, line: 155, column: 11)
!4679 = !DILocation(line: 155, column: 11, scope: !4654, inlinedAt: !4657)
!4680 = !DILocation(line: 157, column: 39, scope: !4681, inlinedAt: !4657)
!4681 = distinct !DILexicalBlock(scope: !4678, file: !675, line: 156, column: 9)
!4682 = !DILocalVariable(name: "__dest", arg: 1, scope: !4683, file: !937, line: 26, type: !940)
!4683 = distinct !DISubprogram(name: "memcpy", scope: !937, file: !937, line: 26, type: !938, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4684)
!4684 = !{!4682, !4685, !4686}
!4685 = !DILocalVariable(name: "__src", arg: 2, scope: !4683, file: !937, line: 26, type: !941)
!4686 = !DILocalVariable(name: "__len", arg: 3, scope: !4683, file: !937, line: 26, type: !97)
!4687 = !DILocation(line: 0, scope: !4683, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 157, column: 11, scope: !4681, inlinedAt: !4657)
!4689 = !DILocation(line: 29, column: 10, scope: !4683, inlinedAt: !4688)
!4690 = !DILocation(line: 158, column: 11, scope: !4681, inlinedAt: !4657)
!4691 = !DILocation(line: 162, column: 23, scope: !4692, inlinedAt: !4657)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !675, line: 162, column: 15)
!4693 = distinct !DILexicalBlock(scope: !4678, file: !675, line: 161, column: 9)
!4694 = !DILocation(line: 162, column: 15, scope: !4693, inlinedAt: !4657)
!4695 = !DILocation(line: 167, column: 44, scope: !4696, inlinedAt: !4657)
!4696 = distinct !DILexicalBlock(scope: !4692, file: !675, line: 163, column: 13)
!4697 = !DILocation(line: 0, scope: !4683, inlinedAt: !4698)
!4698 = distinct !DILocation(line: 167, column: 15, scope: !4696, inlinedAt: !4657)
!4699 = !DILocation(line: 29, column: 10, scope: !4683, inlinedAt: !4698)
!4700 = !DILocation(line: 168, column: 15, scope: !4696, inlinedAt: !4657)
!4701 = !DILocation(line: 168, column: 32, scope: !4696, inlinedAt: !4657)
!4702 = !DILocation(line: 169, column: 13, scope: !4696, inlinedAt: !4657)
!4703 = !DILocation(line: 0, scope: !4655, inlinedAt: !4657)
!4704 = !DILocation(line: 274, column: 3, scope: !4639)
!4705 = distinct !DISubprogram(name: "setlocale_null", scope: !675, file: !675, line: 301, type: !4660, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4706)
!4706 = !{!4707}
!4707 = !DILocalVariable(name: "category", arg: 1, scope: !4705, file: !675, line: 301, type: !24)
!4708 = !DILocation(line: 0, scope: !4705)
!4709 = !DILocation(line: 0, scope: !4659, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 304, column: 10, scope: !4705)
!4711 = !DILocation(line: 62, column: 24, scope: !4659, inlinedAt: !4710)
!4712 = !DILocation(line: 304, column: 3, scope: !4705)
!4713 = distinct !DISubprogram(name: "fopen_safer", scope: !677, file: !677, line: 31, type: !4714, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !4750)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!4716, !15, !15}
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1162, line: 7, baseType: !4718)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !775, line: 49, size: 1728, elements: !4719)
!4719 = !{!4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4718, file: !775, line: 51, baseType: !24, size: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4718, file: !775, line: 54, baseType: !6, size: 64, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4718, file: !775, line: 55, baseType: !6, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4718, file: !775, line: 56, baseType: !6, size: 64, offset: 192)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4718, file: !775, line: 57, baseType: !6, size: 64, offset: 256)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4718, file: !775, line: 58, baseType: !6, size: 64, offset: 320)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4718, file: !775, line: 59, baseType: !6, size: 64, offset: 384)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4718, file: !775, line: 60, baseType: !6, size: 64, offset: 448)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4718, file: !775, line: 61, baseType: !6, size: 64, offset: 512)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4718, file: !775, line: 64, baseType: !6, size: 64, offset: 576)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4718, file: !775, line: 65, baseType: !6, size: 64, offset: 640)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4718, file: !775, line: 66, baseType: !6, size: 64, offset: 704)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4718, file: !775, line: 68, baseType: !790, size: 64, offset: 768)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4718, file: !775, line: 70, baseType: !4734, size: 64, offset: 832)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4718, file: !775, line: 72, baseType: !24, size: 32, offset: 896)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4718, file: !775, line: 73, baseType: !24, size: 32, offset: 928)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4718, file: !775, line: 74, baseType: !796, size: 64, offset: 960)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4718, file: !775, line: 77, baseType: !96, size: 16, offset: 1024)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4718, file: !775, line: 78, baseType: !800, size: 8, offset: 1040)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4718, file: !775, line: 79, baseType: !802, size: 8, offset: 1048)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4718, file: !775, line: 81, baseType: !806, size: 64, offset: 1088)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4718, file: !775, line: 89, baseType: !809, size: 64, offset: 1152)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4718, file: !775, line: 91, baseType: !811, size: 64, offset: 1216)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4718, file: !775, line: 92, baseType: !814, size: 64, offset: 1280)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4718, file: !775, line: 93, baseType: !4734, size: 64, offset: 1344)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4718, file: !775, line: 94, baseType: !8, size: 64, offset: 1408)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4718, file: !775, line: 95, baseType: !97, size: 64, offset: 1472)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4718, file: !775, line: 96, baseType: !24, size: 32, offset: 1536)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4718, file: !775, line: 98, baseType: !821, size: 160, offset: 1568)
!4750 = !{!4751, !4752, !4753, !4754, !4757, !4760, !4763}
!4751 = !DILocalVariable(name: "file", arg: 1, scope: !4713, file: !677, line: 31, type: !15)
!4752 = !DILocalVariable(name: "mode", arg: 2, scope: !4713, file: !677, line: 31, type: !15)
!4753 = !DILocalVariable(name: "fp", scope: !4713, file: !677, line: 33, type: !4716)
!4754 = !DILocalVariable(name: "fd", scope: !4755, file: !677, line: 37, type: !24)
!4755 = distinct !DILexicalBlock(scope: !4756, file: !677, line: 36, column: 5)
!4756 = distinct !DILexicalBlock(scope: !4713, file: !677, line: 35, column: 7)
!4757 = !DILocalVariable(name: "f", scope: !4758, file: !677, line: 41, type: !24)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !677, line: 40, column: 9)
!4759 = distinct !DILexicalBlock(scope: !4755, file: !677, line: 39, column: 11)
!4760 = !DILocalVariable(name: "e", scope: !4761, file: !677, line: 45, type: !24)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !677, line: 44, column: 13)
!4762 = distinct !DILexicalBlock(scope: !4758, file: !677, line: 43, column: 15)
!4763 = !DILocalVariable(name: "e", scope: !4764, file: !677, line: 54, type: !24)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !677, line: 53, column: 13)
!4765 = distinct !DILexicalBlock(scope: !4758, file: !677, line: 51, column: 15)
!4766 = !DILocation(line: 0, scope: !4713)
!4767 = !DILocation(line: 33, column: 14, scope: !4713)
!4768 = !DILocation(line: 35, column: 7, scope: !4756)
!4769 = !DILocation(line: 35, column: 7, scope: !4713)
!4770 = !DILocation(line: 37, column: 16, scope: !4755)
!4771 = !DILocation(line: 0, scope: !4755)
!4772 = !DILocation(line: 39, column: 19, scope: !4759)
!4773 = !DILocation(line: 41, column: 19, scope: !4758)
!4774 = !DILocation(line: 0, scope: !4758)
!4775 = !DILocation(line: 43, column: 17, scope: !4762)
!4776 = !DILocation(line: 43, column: 15, scope: !4758)
!4777 = !DILocation(line: 45, column: 23, scope: !4761)
!4778 = !DILocation(line: 0, scope: !4761)
!4779 = !DILocation(line: 46, column: 15, scope: !4761)
!4780 = !DILocation(line: 47, column: 21, scope: !4761)
!4781 = !DILocation(line: 51, column: 15, scope: !4765)
!4782 = !DILocation(line: 51, column: 27, scope: !4765)
!4783 = !DILocation(line: 52, column: 15, scope: !4765)
!4784 = !DILocation(line: 52, column: 26, scope: !4765)
!4785 = !DILocation(line: 52, column: 24, scope: !4765)
!4786 = !DILocation(line: 51, column: 15, scope: !4758)
!4787 = !DILocation(line: 54, column: 23, scope: !4764)
!4788 = !DILocation(line: 0, scope: !4764)
!4789 = !DILocation(line: 55, column: 15, scope: !4764)
!4790 = !DILocation(line: 56, column: 21, scope: !4764)
!4791 = !DILocation(line: 63, column: 1, scope: !4713)
!4792 = !DISubprogram(name: "fdopen", scope: !770, file: !770, line: 279, type: !4793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!4734, !24, !15}
!4795 = distinct !DISubprogram(name: "dup_safer", scope: !679, file: !679, line: 31, type: !1154, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !4796)
!4796 = !{!4797}
!4797 = !DILocalVariable(name: "fd", arg: 1, scope: !4795, file: !679, line: 31, type: !24)
!4798 = !DILocation(line: 0, scope: !4795)
!4799 = !DILocation(line: 33, column: 10, scope: !4795)
!4800 = !DILocation(line: 33, column: 3, scope: !4795)
!4801 = distinct !DISubprogram(name: "rpl_fcntl", scope: !158, file: !158, line: 202, type: !4802, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!24, !24, !24, null}
!4804 = !{!4805, !4806, !4807, !4817, !4818, !4821, !4823, !4827}
!4805 = !DILocalVariable(name: "fd", arg: 1, scope: !4801, file: !158, line: 202, type: !24)
!4806 = !DILocalVariable(name: "action", arg: 2, scope: !4801, file: !158, line: 202, type: !24)
!4807 = !DILocalVariable(name: "arg", scope: !4801, file: !158, line: 208, type: !4808)
!4808 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3274, line: 14, baseType: !4809)
!4809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !158, baseType: !4810)
!4810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4811, size: 192, elements: !803)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4812)
!4812 = !{!4813, !4814, !4815, !4816}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4811, file: !158, line: 208, baseType: !62, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4811, file: !158, line: 208, baseType: !62, size: 32, offset: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4811, file: !158, line: 208, baseType: !8, size: 64, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4811, file: !158, line: 208, baseType: !8, size: 64, offset: 128)
!4817 = !DILocalVariable(name: "result", scope: !4801, file: !158, line: 209, type: !24)
!4818 = !DILocalVariable(name: "target", scope: !4819, file: !158, line: 215, type: !24)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !158, line: 214, column: 7)
!4820 = distinct !DILexicalBlock(scope: !4801, file: !158, line: 212, column: 5)
!4821 = !DILocalVariable(name: "target", scope: !4822, file: !158, line: 222, type: !24)
!4822 = distinct !DILexicalBlock(scope: !4820, file: !158, line: 221, column: 7)
!4823 = !DILocalVariable(name: "x", scope: !4824, file: !158, line: 423, type: !24)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !158, line: 422, column: 13)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !158, line: 260, column: 11)
!4826 = distinct !DILexicalBlock(scope: !4820, file: !158, line: 257, column: 7)
!4827 = !DILocalVariable(name: "p", scope: !4828, file: !158, line: 431, type: !8)
!4828 = distinct !DILexicalBlock(scope: !4825, file: !158, line: 430, column: 13)
!4829 = !DILocation(line: 0, scope: !4801)
!4830 = !DILocation(line: 208, column: 3, scope: !4801)
!4831 = !DILocation(line: 208, column: 11, scope: !4801)
!4832 = !DILocation(line: 210, column: 3, scope: !4801)
!4833 = !DILocation(line: 211, column: 3, scope: !4801)
!4834 = !DILocation(line: 215, column: 22, scope: !4819)
!4835 = !DILocation(line: 0, scope: !4819)
!4836 = !DILocalVariable(name: "fd", arg: 1, scope: !4837, file: !158, line: 447, type: !24)
!4837 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !158, file: !158, line: 447, type: !159, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !4838)
!4838 = !{!4836, !4839, !4840}
!4839 = !DILocalVariable(name: "target", arg: 2, scope: !4837, file: !158, line: 447, type: !24)
!4840 = !DILocalVariable(name: "result", scope: !4837, file: !158, line: 449, type: !24)
!4841 = !DILocation(line: 0, scope: !4837, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 216, column: 18, scope: !4819)
!4843 = !DILocation(line: 482, column: 12, scope: !4837, inlinedAt: !4842)
!4844 = !DILocation(line: 222, column: 22, scope: !4822)
!4845 = !DILocation(line: 0, scope: !4822)
!4846 = !DILocation(line: 0, scope: !157, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 223, column: 18, scope: !4822)
!4848 = !DILocation(line: 508, column: 12, scope: !4849, inlinedAt: !4847)
!4849 = distinct !DILexicalBlock(scope: !157, file: !158, line: 508, column: 7)
!4850 = !DILocation(line: 508, column: 9, scope: !4849, inlinedAt: !4847)
!4851 = !DILocation(line: 508, column: 7, scope: !157, inlinedAt: !4847)
!4852 = !DILocation(line: 510, column: 16, scope: !4853, inlinedAt: !4847)
!4853 = distinct !DILexicalBlock(scope: !4849, file: !158, line: 509, column: 5)
!4854 = !DILocation(line: 511, column: 13, scope: !4855, inlinedAt: !4847)
!4855 = distinct !DILexicalBlock(scope: !4853, file: !158, line: 511, column: 11)
!4856 = !DILocation(line: 511, column: 23, scope: !4855, inlinedAt: !4847)
!4857 = !DILocation(line: 511, column: 26, scope: !4855, inlinedAt: !4847)
!4858 = !DILocation(line: 511, column: 32, scope: !4855, inlinedAt: !4847)
!4859 = !DILocation(line: 511, column: 11, scope: !4853, inlinedAt: !4847)
!4860 = !DILocation(line: 513, column: 30, scope: !4861, inlinedAt: !4847)
!4861 = distinct !DILexicalBlock(scope: !4855, file: !158, line: 512, column: 9)
!4862 = !DILocation(line: 529, column: 19, scope: !169, inlinedAt: !4847)
!4863 = !DILocation(line: 0, scope: !4837, inlinedAt: !4864)
!4864 = distinct !DILocation(line: 521, column: 20, scope: !4865, inlinedAt: !4847)
!4865 = distinct !DILexicalBlock(scope: !4855, file: !158, line: 520, column: 9)
!4866 = !DILocation(line: 482, column: 12, scope: !4837, inlinedAt: !4864)
!4867 = !DILocation(line: 522, column: 22, scope: !4868, inlinedAt: !4847)
!4868 = distinct !DILexicalBlock(scope: !4865, file: !158, line: 522, column: 15)
!4869 = !DILocation(line: 522, column: 15, scope: !4865, inlinedAt: !4847)
!4870 = !DILocation(line: 523, column: 32, scope: !4868, inlinedAt: !4847)
!4871 = !DILocation(line: 523, column: 13, scope: !4868, inlinedAt: !4847)
!4872 = !DILocation(line: 0, scope: !4837, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 528, column: 14, scope: !4849, inlinedAt: !4847)
!4874 = !DILocation(line: 482, column: 12, scope: !4837, inlinedAt: !4873)
!4875 = !DILocation(line: 0, scope: !4849, inlinedAt: !4847)
!4876 = !DILocation(line: 529, column: 9, scope: !169, inlinedAt: !4847)
!4877 = !DILocation(line: 531, column: 19, scope: !168, inlinedAt: !4847)
!4878 = !DILocation(line: 0, scope: !168, inlinedAt: !4847)
!4879 = !DILocation(line: 532, column: 17, scope: !172, inlinedAt: !4847)
!4880 = !DILocation(line: 532, column: 21, scope: !172, inlinedAt: !4847)
!4881 = !DILocation(line: 532, column: 54, scope: !172, inlinedAt: !4847)
!4882 = !DILocation(line: 532, column: 24, scope: !172, inlinedAt: !4847)
!4883 = !DILocation(line: 532, column: 68, scope: !172, inlinedAt: !4847)
!4884 = !DILocation(line: 532, column: 11, scope: !168, inlinedAt: !4847)
!4885 = !DILocation(line: 534, column: 29, scope: !171, inlinedAt: !4847)
!4886 = !DILocation(line: 0, scope: !171, inlinedAt: !4847)
!4887 = !DILocation(line: 535, column: 11, scope: !171, inlinedAt: !4847)
!4888 = !DILocation(line: 536, column: 17, scope: !171, inlinedAt: !4847)
!4889 = !DILocation(line: 538, column: 9, scope: !171, inlinedAt: !4847)
!4890 = !DILocation(line: 328, column: 22, scope: !4825)
!4891 = !DILocation(line: 329, column: 13, scope: !4825)
!4892 = !DILocation(line: 423, column: 23, scope: !4824)
!4893 = !DILocation(line: 0, scope: !4824)
!4894 = !DILocation(line: 424, column: 24, scope: !4824)
!4895 = !DILocation(line: 426, column: 13, scope: !4825)
!4896 = !DILocation(line: 431, column: 25, scope: !4828)
!4897 = !DILocation(line: 0, scope: !4828)
!4898 = !DILocation(line: 432, column: 24, scope: !4828)
!4899 = !DILocation(line: 434, column: 13, scope: !4825)
!4900 = !DILocation(line: 0, scope: !4820)
!4901 = !DILocation(line: 442, column: 3, scope: !4801)
!4902 = !DILocation(line: 444, column: 1, scope: !4801)
!4903 = !DILocation(line: 443, column: 3, scope: !4801)
!4904 = !DISubprogram(name: "fcntl", scope: !3101, file: !3101, line: 176, type: !4802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
