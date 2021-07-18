; ModuleID = 'coreutils-8.32/src/head.bc'
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.linebuffer = type { [8192 x i8], i64, i64, %struct.linebuffer* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [133 x i8] c"Print the first %d lines of each FILE to standard output.\0AWith more than one FILE, precede each with a header giving the file name.\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [398 x i8] c"  -c, --bytes=[-]NUM       print the first NUM bytes of each file;\0A                             with the leading '-', print all but the last\0A                             NUM bytes of each file\0A  -n, --lines=[-]NUM       print the first NUM lines instead of the first %d;\0A                             with the leading '-', print all but the last\0A                             NUM lines of each file\0A\00", align 1
@.str.4 = private unnamed_addr constant [132 x i8] c"  -q, --quiet, --silent    never print headers giving file names\0A  -v, --verbose            always print headers giving file names\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [212 x i8] c"\0ANUM may have a multiplier suffix:\0Ab 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024,\0AGB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.34 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@print_headers = internal unnamed_addr global i1 false, align 1, !dbg !113
@line_end = internal unnamed_addr global i1 false, align 1, !dbg !114
@.str.14 = private unnamed_addr constant [30 x i8] c"invalid trailing option -- %c\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"invalid number of bytes\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"invalid number of lines\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"bkKmMGTPEZY0\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"c:n:qvz0123456789\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !92
@presume_input_pipe = internal unnamed_addr global i1 false, align 1, !dbg !115
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@main.default_file_list = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16, !dbg !48
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@write_header.first_file = internal unnamed_addr global i1 false, align 1, !dbg !116
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"%s==> %s <==\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"%s: file has shrunk too much\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"error writing %s\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"%s: cannot seek to offset %s\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"%s: cannot seek to relative offset %s\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"-presume-input-pipe\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !117
@.str.61 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !123
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !128
@.str.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.65 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.66 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !130
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !136
@.str.79 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 16, !dbg !142
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !170
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !174
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !186
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.95 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.96 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.97 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.98 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !193
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !200
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !188
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !202
@.str.109 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.110 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.111 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.112 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.113 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.114 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.115 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.116 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.117 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.118 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.119 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.120 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.121 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.122 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.123 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.124 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.127 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.128 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.129 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.130 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.131 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.132 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.133 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !207
@.str.1.144 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.151 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.152 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.161 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.164 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.165 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !686 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !690, metadata !DIExpression()), !dbg !691
  %3 = icmp eq i32 %0, 0, !dbg !692
  br i1 %3, label %9, label %4, !dbg !694

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !695, !tbaa !697
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !695
  %7 = load i8*, i8** @program_name, align 8, !dbg !695, !tbaa !697
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !695
  br label %74, !dbg !695

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !701
  %11 = load i8*, i8** @program_name, align 8, !dbg !701, !tbaa !697
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #27, !dbg !701
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !703
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 10) #27, !dbg !703
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i32 5) #27, !dbg !704
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !697
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #27, !dbg !704
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0), i32 5) #27, !dbg !710
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !697
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #27, !dbg !710
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([398 x i8], [398 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !713
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i32 10) #27, !dbg !713
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !714
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !697
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24), !dbg !714
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !715
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !697
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27), !dbg !715
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !716
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !697
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30), !dbg !716
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #27, !dbg !717
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !697
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33), !dbg !717
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.8, i64 0, i64 0), i32 5) #27, !dbg !718
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718, !tbaa !697
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36), !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), metadata !719, metadata !DIExpression()) #27, !dbg !735
  %38 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !737
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %38) #27, !dbg !737
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !722, metadata !DIExpression()) #27, !dbg !738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %38, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), metadata !731, metadata !DIExpression()) #27, !dbg !735
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !732, metadata !DIExpression()) #27, !dbg !735
  %39 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !739
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !732, metadata !DIExpression()) #27, !dbg !735
  br label %40, !dbg !740

40:                                               ; preds = %45, %9
  %41 = phi i8* [ %48, %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), %9 ]
  %42 = phi %struct.infomap* [ %46, %45 ], [ %39, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !732, metadata !DIExpression()) #27, !dbg !735
  %43 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %41) #28, !dbg !741
  %44 = icmp eq i32 %43, 0, !dbg !741
  br i1 %44, label %50, label %45, !dbg !740

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 1, !dbg !742
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !732, metadata !DIExpression()) #27, !dbg !735
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 0, !dbg !743
  %48 = load i8*, i8** %47, align 8, !dbg !743, !tbaa !744
  %49 = icmp eq i8* %48, null, !dbg !746
  br i1 %49, label %50, label %40, !dbg !747, !llvm.loop !748

50:                                               ; preds = %45, %40
  %51 = phi %struct.infomap* [ %42, %40 ], [ %46, %45 ]
  %52 = getelementptr inbounds %struct.infomap, %struct.infomap* %51, i64 0, i32 1, !dbg !750
  %53 = load i8*, i8** %52, align 8, !dbg !750, !tbaa !752
  %54 = icmp eq i8* %53, null, !dbg !753
  %55 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %53, !dbg !754
  call void @llvm.dbg.value(metadata i8* %55, metadata !731, metadata !DIExpression()) #27, !dbg !735
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #27, !dbg !755
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0)) #27, !dbg !755
  %58 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !756
  call void @llvm.dbg.value(metadata i8* %58, metadata !734, metadata !DIExpression()) #27, !dbg !735
  %59 = icmp eq i8* %58, null, !dbg !757
  br i1 %59, label %67, label %60, !dbg !759

60:                                               ; preds = %50
  %61 = tail call i32 @strncmp(i8* nonnull %58, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 3) #28, !dbg !760
  %62 = icmp eq i32 %61, 0, !dbg !760
  br i1 %62, label %67, label %63, !dbg !761

63:                                               ; preds = %60
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.34, i64 0, i64 0), i32 5) #27, !dbg !762
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !697
  %66 = tail call i32 @fputs_unlocked(i8* %64, %struct._IO_FILE* %65) #27, !dbg !762
  br label %67, !dbg !764

67:                                               ; preds = %50, %60, %63
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 5) #27, !dbg !765
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #27, !dbg !765
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 5) #27, !dbg !766
  %71 = icmp eq i8* %55, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), !dbg !766
  %72 = select i1 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !766
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* %55, i8* %72) #27, !dbg !766
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %38) #27, !dbg !767
  br label %74

74:                                               ; preds = %67, %4
  tail call void @exit(i32 %0) #29, !dbg !768
  unreachable, !dbg !768
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !769 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !773 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !825 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !50 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [2 x i8*], align 16
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [8192 x i8], align 16
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !56, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8** %1, metadata !57, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 0, metadata !58, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8 1, metadata !59, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 10, metadata !63, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8 1, metadata !67, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8 0, metadata !68, metadata !DIExpression()), !dbg !829
  %9 = load i8*, i8** %1, align 8, !dbg !830, !tbaa !697
  tail call void @set_program_name(i8* %9) #27, !dbg !831
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #27, !dbg !832
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #27, !dbg !833
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #27, !dbg !834
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !835
  store i1 false, i1* @have_read_stdin, align 1, !dbg !836
  store i1 false, i1* @print_headers, align 1, !dbg !837
  store i1 true, i1* @line_end, align 1, !dbg !838
  %14 = icmp sgt i32 %0, 1, !dbg !839
  br i1 %14, label %15, label %75, !dbg !840

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !841
  %17 = load i8*, i8** %16, align 8, !dbg !841, !tbaa !697
  %18 = load i8, i8* %17, align 1, !dbg !841, !tbaa !842
  %19 = icmp eq i8 %18, 45, !dbg !843
  br i1 %19, label %20, label %75, !dbg !844

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !845
  %22 = load i8, i8* %21, align 1, !dbg !845, !tbaa !842
  %23 = sext i8 %22 to i32, !dbg !845
  %24 = add nsw i32 %23, -48, !dbg !845
  %25 = icmp ult i32 %24, 10, !dbg !845
  br i1 %25, label %26, label %75, !dbg !846

26:                                               ; preds = %20, %26
  %27 = phi i8* [ %28, %26 ], [ %21, %20 ], !dbg !847
  call void @llvm.dbg.value(metadata i8* %27, metadata !70, metadata !DIExpression()), !dbg !847
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !848
  call void @llvm.dbg.value(metadata i8* %28, metadata !70, metadata !DIExpression()), !dbg !847
  %29 = load i8, i8* %28, align 1, !dbg !849, !tbaa !842
  %30 = sext i8 %29 to i32, !dbg !849
  %31 = add nsw i32 %30, -48, !dbg !849
  %32 = icmp ult i32 %31, 10, !dbg !849
  br i1 %32, label %26, label %33, !dbg !848, !llvm.loop !850

33:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !75, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i8* %28, metadata !70, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i8 1, metadata !67, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 0, metadata !58, metadata !DIExpression()), !dbg !829
  %34 = icmp eq i8 %29, 0, !dbg !853
  br i1 %34, label %35, label %36, !dbg !853

35:                                               ; preds = %33
  store i8 0, i8* %28, align 1, !dbg !855, !tbaa !842
  call void @llvm.dbg.value(metadata i1 %65, metadata !856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !862
  call void @llvm.dbg.value(metadata i8* %21, metadata !861, metadata !DIExpression()) #27, !dbg !862
  br label %67, !dbg !864

36:                                               ; preds = %33, %52
  %37 = phi i8 [ %55, %52 ], [ 0, %33 ]
  %38 = phi i8* [ %56, %52 ], [ %28, %33 ]
  %39 = phi i8 [ %54, %52 ], [ 1, %33 ]
  %40 = phi i32 [ %53, %52 ], [ 0, %33 ]
  %41 = phi i8 [ %57, %52 ], [ %29, %33 ]
  call void @llvm.dbg.value(metadata i8 %37, metadata !75, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i8* %38, metadata !70, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i8 %39, metadata !67, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 %40, metadata !58, metadata !DIExpression()), !dbg !829
  %42 = sext i8 %41 to i32, !dbg !865
  switch i32 %42, label %48 [
    i32 99, label %52
    i32 98, label %43
    i32 107, label %43
    i32 109, label %43
    i32 108, label %44
    i32 113, label %45
    i32 118, label %46
    i32 122, label %47
  ], !dbg !868

43:                                               ; preds = %36, %36, %36
  call void @llvm.dbg.value(metadata i8 0, metadata !67, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8 %41, metadata !75, metadata !DIExpression()), !dbg !847
  br label %52, !dbg !869

44:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !67, metadata !DIExpression()), !dbg !829
  br label %52, !dbg !871

45:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 2, metadata !58, metadata !DIExpression()), !dbg !829
  br label %52, !dbg !872

46:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 1, metadata !58, metadata !DIExpression()), !dbg !829
  br label %52, !dbg !873

47:                                               ; preds = %36
  store i1 false, i1* @line_end, align 1, !dbg !874
  br label %52, !dbg !875

48:                                               ; preds = %36
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #27, !dbg !876
  %50 = load i8, i8* %38, align 1, !dbg !877, !tbaa !842
  %51 = sext i8 %50 to i32, !dbg !877
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49, i32 %51) #27, !dbg !878
  tail call void @usage(i32 1) #30, !dbg !879
  unreachable, !dbg !879

52:                                               ; preds = %36, %43, %44, %45, %46, %47
  %53 = phi i32 [ %40, %47 ], [ 1, %46 ], [ 2, %45 ], [ %40, %44 ], [ %40, %43 ], [ %40, %36 ], !dbg !829
  %54 = phi i8 [ %39, %47 ], [ %39, %46 ], [ %39, %45 ], [ 1, %44 ], [ 0, %43 ], [ 0, %36 ], !dbg !829
  %55 = phi i8 [ %37, %47 ], [ %37, %46 ], [ %37, %45 ], [ %37, %44 ], [ %41, %43 ], [ 0, %36 ], !dbg !847
  call void @llvm.dbg.value(metadata i8 %55, metadata !75, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i8 %54, metadata !67, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 %53, metadata !58, metadata !DIExpression()), !dbg !829
  %56 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !880
  call void @llvm.dbg.value(metadata i8* %56, metadata !70, metadata !DIExpression()), !dbg !847
  %57 = load i8, i8* %56, align 1, !dbg !881, !tbaa !842
  %58 = icmp eq i8 %57, 0, !dbg !853
  br i1 %58, label %59, label %36, !dbg !853, !llvm.loop !882

59:                                               ; preds = %52
  store i8 %55, i8* %28, align 1, !dbg !855, !tbaa !842
  %60 = icmp eq i8 %55, 0, !dbg !884
  br i1 %60, label %63, label %61, !dbg !886

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !887
  call void @llvm.dbg.value(metadata i8* %62, metadata !74, metadata !DIExpression()), !dbg !847
  store i8 0, i8* %62, align 1, !dbg !888, !tbaa !842
  br label %63, !dbg !889

63:                                               ; preds = %61, %59
  %64 = and i8 %54, 1, !dbg !890
  %65 = icmp eq i8 %64, 0, !dbg !890
  call void @llvm.dbg.value(metadata i1 %65, metadata !856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !862
  call void @llvm.dbg.value(metadata i8* %21, metadata !861, metadata !DIExpression()) #27, !dbg !862
  %66 = select i1 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), !dbg !864
  br label %67, !dbg !864

67:                                               ; preds = %63, %35
  %68 = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), %35 ], [ %66, %63 ]
  %69 = phi i32 [ 0, %35 ], [ %53, %63 ]
  %70 = phi i8 [ 1, %35 ], [ %54, %63 ]
  %71 = tail call i8* @dcgettext(i8* null, i8* %68, i32 5) #27, !dbg !862
  %72 = tail call i64 @xdectoumax(i8* nonnull %21, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %71, i32 0) #27, !dbg !891
  call void @llvm.dbg.value(metadata i64 %72, metadata !63, metadata !DIExpression()), !dbg !829
  %73 = load i8*, i8** %1, align 8, !dbg !892, !tbaa !697
  store i8* %73, i8** %16, align 8, !dbg !893, !tbaa !697
  call void @llvm.dbg.value(metadata i8** %16, metadata !57, metadata !DIExpression()), !dbg !829
  %74 = add nsw i32 %0, -1, !dbg !894
  call void @llvm.dbg.value(metadata i32 %74, metadata !56, metadata !DIExpression()), !dbg !829
  br label %75, !dbg !895

75:                                               ; preds = %67, %20, %15, %2
  %76 = phi i32 [ %69, %67 ], [ 0, %20 ], [ 0, %15 ], [ 0, %2 ], !dbg !896
  %77 = phi i8** [ %16, %67 ], [ %1, %20 ], [ %1, %15 ], [ %1, %2 ]
  %78 = phi i64 [ %72, %67 ], [ 10, %20 ], [ 10, %15 ], [ 10, %2 ], !dbg !829
  %79 = phi i8 [ %70, %67 ], [ 1, %20 ], [ 1, %15 ], [ 1, %2 ], !dbg !897
  %80 = phi i32 [ %74, %67 ], [ %0, %20 ], [ %0, %15 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %80, metadata !56, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8 %79, metadata !67, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 %78, metadata !63, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8** %77, metadata !57, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 %76, metadata !58, metadata !DIExpression()), !dbg !829
  br label %81, !dbg !898

81:                                               ; preds = %119, %75
  %82 = phi i32 [ %76, %75 ], [ %120, %119 ]
  %83 = phi i64 [ %78, %75 ], [ %87, %119 ]
  %84 = phi i8 [ %79, %75 ], [ %88, %119 ]
  %85 = phi i8 [ 0, %75 ], [ %89, %119 ]
  br label %86, !dbg !898

86:                                               ; preds = %113, %81
  %87 = phi i64 [ %83, %81 ], [ %114, %113 ]
  %88 = phi i8 [ %84, %81 ], [ %115, %113 ]
  %89 = phi i8 [ %85, %81 ], [ %117, %113 ]
  br label %90, !dbg !898

90:                                               ; preds = %122, %86
  call void @llvm.dbg.value(metadata i8 %89, metadata !68, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8 %88, metadata !67, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 %87, metadata !63, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 %82, metadata !58, metadata !DIExpression()), !dbg !829
  %91 = tail call i32 @getopt_long(i32 %80, i8** nonnull %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #27, !dbg !899
  call void @llvm.dbg.value(metadata i32 %91, metadata !61, metadata !DIExpression()), !dbg !829
  switch i32 %91, label %127 [
    i32 -1, label %133
    i32 128, label %92
    i32 99, label %93
    i32 110, label %103
    i32 113, label %119
    i32 118, label %118
    i32 122, label %121
    i32 -130, label %123
    i32 -131, label %124
  ], !dbg !898, !llvm.loop !900

92:                                               ; preds = %90
  store i1 true, i1* @presume_input_pipe, align 1, !dbg !902
  br label %122, !dbg !905

93:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i8 0, metadata !67, metadata !DIExpression()), !dbg !829
  %94 = load i8*, i8** @optarg, align 8, !dbg !906, !tbaa !697
  %95 = load i8, i8* %94, align 1, !dbg !907, !tbaa !842
  %96 = icmp eq i8 %95, 45, !dbg !908
  call void @llvm.dbg.value(metadata i1 %96, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !829
  br i1 %96, label %97, label %99, !dbg !909

97:                                               ; preds = %93
  %98 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !910
  store i8* %98, i8** @optarg, align 8, !dbg !910, !tbaa !697
  br label %99, !dbg !910

99:                                               ; preds = %97, %93
  %100 = phi i8* [ %98, %97 ], [ %94, %93 ], !dbg !912
  call void @llvm.dbg.value(metadata i1 false, metadata !856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !913
  call void @llvm.dbg.value(metadata i8* %100, metadata !861, metadata !DIExpression()) #27, !dbg !913
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 5) #27, !dbg !915
  %102 = tail call i64 @xdectoumax(i8* nonnull %100, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %101, i32 0) #27, !dbg !916
  call void @llvm.dbg.value(metadata i64 %102, metadata !63, metadata !DIExpression()), !dbg !829
  br label %113, !dbg !917

103:                                              ; preds = %90
  call void @llvm.dbg.value(metadata i8 1, metadata !67, metadata !DIExpression()), !dbg !829
  %104 = load i8*, i8** @optarg, align 8, !dbg !918, !tbaa !697
  %105 = load i8, i8* %104, align 1, !dbg !919, !tbaa !842
  %106 = icmp eq i8 %105, 45, !dbg !920
  call void @llvm.dbg.value(metadata i1 %106, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !829
  br i1 %106, label %107, label %109, !dbg !921

107:                                              ; preds = %103
  %108 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !922
  store i8* %108, i8** @optarg, align 8, !dbg !922, !tbaa !697
  br label %109, !dbg !922

109:                                              ; preds = %107, %103
  %110 = phi i8* [ %108, %107 ], [ %104, %103 ], !dbg !924
  call void @llvm.dbg.value(metadata i1 true, metadata !856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !925
  call void @llvm.dbg.value(metadata i8* %110, metadata !861, metadata !DIExpression()) #27, !dbg !925
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 5) #27, !dbg !927
  %112 = tail call i64 @xdectoumax(i8* nonnull %110, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %111, i32 0) #27, !dbg !928
  call void @llvm.dbg.value(metadata i64 %112, metadata !63, metadata !DIExpression()), !dbg !829
  br label %113, !dbg !929

113:                                              ; preds = %109, %99
  %114 = phi i64 [ %102, %99 ], [ %112, %109 ]
  %115 = phi i8 [ 0, %99 ], [ 1, %109 ]
  %116 = phi i1 [ %96, %99 ], [ %106, %109 ]
  %117 = zext i1 %116 to i8, !dbg !930
  br label %86, !dbg !898, !llvm.loop !900

118:                                              ; preds = %90
  call void @llvm.dbg.value(metadata i32 1, metadata !58, metadata !DIExpression()), !dbg !829
  br label %119, !dbg !931

119:                                              ; preds = %90, %118
  %120 = phi i32 [ 1, %118 ], [ 2, %90 ]
  br label %81, !dbg !898, !llvm.loop !900

121:                                              ; preds = %90
  store i1 false, i1* @line_end, align 1, !dbg !932
  br label %122, !dbg !933

122:                                              ; preds = %121, %92
  br label %90, !dbg !829, !llvm.loop !900

123:                                              ; preds = %90
  tail call void @usage(i32 0) #30, !dbg !934
  unreachable, !dbg !934

124:                                              ; preds = %90
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !935, !tbaa !697
  %126 = load i8*, i8** @Version, align 8, !dbg !935, !tbaa !697
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* null) #27, !dbg !935
  tail call void @exit(i32 0) #29, !dbg !935
  unreachable, !dbg !935

127:                                              ; preds = %90
  %128 = add i32 %91, -48, !dbg !936
  %129 = icmp ult i32 %128, 10, !dbg !936
  br i1 %129, label %130, label %132, !dbg !938

130:                                              ; preds = %127
  %131 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #27, !dbg !939
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %131, i32 %91) #27, !dbg !940
  br label %132, !dbg !940

132:                                              ; preds = %130, %127
  tail call void @usage(i32 1) #30, !dbg !941
  unreachable, !dbg !941

133:                                              ; preds = %90
  switch i32 %82, label %139 [
    i32 1, label %138
    i32 0, label %134
  ], !dbg !942

134:                                              ; preds = %133
  %135 = load i32, i32* @optind, align 4, !dbg !944, !tbaa !945
  %136 = add nsw i32 %80, -1, !dbg !947
  %137 = icmp slt i32 %135, %136, !dbg !948
  br i1 %137, label %138, label %139, !dbg !949

138:                                              ; preds = %133, %134
  store i1 true, i1* @print_headers, align 1, !dbg !950
  br label %139, !dbg !951

139:                                              ; preds = %133, %138, %134
  %140 = and i8 %88, 1, !dbg !952
  %141 = icmp eq i8 %140, 0, !dbg !952
  br i1 %141, label %142, label %151, !dbg !953

142:                                              ; preds = %139
  %143 = icmp ne i8 %89, 0, !dbg !954
  %144 = icmp slt i64 %87, 0
  %145 = and i1 %144, %143, !dbg !955
  br i1 %145, label %146, label %151, !dbg !955

146:                                              ; preds = %142
  %147 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !956
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %147) #27, !dbg !956
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !76, metadata !DIExpression()), !dbg !957
  %148 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 5) #27, !dbg !958
  %149 = call i8* @umaxtostr(i64 %87, i8* nonnull %147) #27, !dbg !958
  %150 = call i8* @quote(i8* %149) #27, !dbg !958
  call void (i32, i32, i8*, ...) @error(i32 1, i32 75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %148, i8* %150) #27, !dbg !958
  unreachable, !dbg !958

151:                                              ; preds = %142, %139
  %152 = load i32, i32* @optind, align 4, !dbg !959, !tbaa !945
  %153 = icmp slt i32 %152, %80, !dbg !960
  %154 = sext i32 %152 to i64, !dbg !959
  %155 = getelementptr inbounds i8*, i8** %77, i64 %154, !dbg !959
  %156 = select i1 %153, i8** %155, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.default_file_list, i64 0, i64 0), !dbg !959
  call void @llvm.dbg.value(metadata i8** %156, metadata !69, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 0, metadata !62, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8 undef, metadata !59, metadata !DIExpression()), !dbg !829
  %157 = load i8*, i8** %156, align 8, !dbg !961, !tbaa !697
  %158 = icmp eq i8* %157, null, !dbg !964
  br i1 %158, label %831, label %159, !dbg !964

159:                                              ; preds = %151
  %160 = icmp eq i8 %89, 0
  %161 = bitcast %struct.stat* %7 to i8*
  %162 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 3
  %163 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 8
  %164 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 9
  %165 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %166 = icmp ne i64 %87, 0
  %167 = ptrtoint [8192 x i8]* %5 to i64
  %168 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %169 = icmp eq i64 %87, 0
  %170 = add i64 %87, 8192
  %171 = icmp ult i64 %87, 1048577
  %172 = and i64 %87, 8191
  %173 = sub nuw nsw i64 8192, %172
  %174 = add i64 %173, %87
  %175 = lshr i64 %174, 13
  %176 = add nuw nsw i64 %175, 1
  %177 = lshr i64 %176, 1
  %178 = icmp ult i64 %176, 16
  %179 = select i1 %178, i64 %176, i64 16
  %180 = bitcast [2 x i8*]* %4 to i8*
  %181 = icmp ugt i64 %170, 4611686018427387903
  %182 = shl nuw nsw i64 %170, 1
  %183 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %184 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %185 = bitcast %struct.stat* %3 to i8*
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  br label %187, !dbg !964

187:                                              ; preds = %159, %821
  %188 = phi i8* [ %157, %159 ], [ %826, %821 ]
  %189 = phi i64 [ 0, %159 ], [ %824, %821 ]
  %190 = phi i1 [ true, %159 ], [ %823, %821 ]
  call void @llvm.dbg.value(metadata i64 %189, metadata !62, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8* %188, metadata !965, metadata !DIExpression()) #27, !dbg !976
  call void @llvm.dbg.value(metadata i64 %87, metadata !970, metadata !DIExpression()) #27, !dbg !976
  call void @llvm.dbg.value(metadata i1 %141, metadata !971, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !976
  call void @llvm.dbg.value(metadata i1 %160, metadata !972, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !976
  %191 = call i32 @strcmp(i8* nonnull dereferenceable(1) %188, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #28, !dbg !978
  %192 = icmp eq i32 %191, 0, !dbg !978
  call void @llvm.dbg.value(metadata i1 %192, metadata !975, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !976
  br i1 %192, label %193, label %195, !dbg !979

193:                                              ; preds = %187
  store i1 true, i1* @have_read_stdin, align 1, !dbg !980
  call void @llvm.dbg.value(metadata i32 0, metadata !973, metadata !DIExpression()) #27, !dbg !976
  %194 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i32 5) #27, !dbg !983
  call void @llvm.dbg.value(metadata i8* %194, metadata !965, metadata !DIExpression()) #27, !dbg !976
  br label %203, !dbg !984

195:                                              ; preds = %187
  %196 = call i32 (i8*, i32, ...) @open(i8* nonnull %188, i32 0) #27, !dbg !985
  call void @llvm.dbg.value(metadata i32 %196, metadata !973, metadata !DIExpression()) #27, !dbg !976
  %197 = icmp slt i32 %196, 0, !dbg !987
  br i1 %197, label %198, label %203, !dbg !989

198:                                              ; preds = %195
  %199 = tail call i32* @__errno_location() #31, !dbg !990
  %200 = load i32, i32* %199, align 4, !dbg !990, !tbaa !945
  %201 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 5) #27, !dbg !992
  %202 = call i8* @quotearg_style(i32 4, i8* nonnull %188) #27, !dbg !993
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %200, i8* %201, i8* %202) #27, !dbg !994
  br label %821, !dbg !995

203:                                              ; preds = %195, %193
  %204 = phi i32 [ 0, %193 ], [ %196, %195 ], !dbg !996
  %205 = phi i8* [ %194, %193 ], [ %188, %195 ]
  call void @llvm.dbg.value(metadata i8* %205, metadata !965, metadata !DIExpression()) #27, !dbg !976
  call void @llvm.dbg.value(metadata i32 %204, metadata !973, metadata !DIExpression()) #27, !dbg !976
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !997, metadata !DIExpression()) #27, !dbg !1053
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1070, metadata !DIExpression()) #27, !dbg !1082
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1070, metadata !DIExpression()) #27, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %205, metadata !1060, metadata !DIExpression()) #27, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %204, metadata !1061, metadata !DIExpression()) #27, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %87, metadata !1062, metadata !DIExpression()) #27, !dbg !1142
  call void @llvm.dbg.value(metadata i1 %141, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1142
  call void @llvm.dbg.value(metadata i1 %160, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1142
  %206 = load i1, i1* @print_headers, align 1, !dbg !1143
  br i1 %206, label %207, label %211, !dbg !1145

207:                                              ; preds = %203
  call void @llvm.dbg.value(metadata i8* %205, metadata !112, metadata !DIExpression()) #27, !dbg !1146
  %208 = load i1, i1* @write_header.first_file, align 1, !dbg !1148
  %209 = select i1 %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1148
  %210 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* %209, i8* %205) #27, !dbg !1148
  store i1 true, i1* @write_header.first_file, align 1, !dbg !1149
  br label %211, !dbg !1150

211:                                              ; preds = %207, %203
  br i1 %160, label %748, label %212, !dbg !1151

212:                                              ; preds = %211
  call void @llvm.dbg.value(metadata i64 -1, metadata !1065, metadata !DIExpression()) #27, !dbg !1152
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %161) #27, !dbg !1153
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !1068, metadata !DIExpression()) #27, !dbg !1154
  %213 = call i32 @fstat(i32 %204, %struct.stat* nonnull %7) #27, !dbg !1155
  %214 = icmp eq i32 %213, 0, !dbg !1157
  br i1 %214, label %220, label %215, !dbg !1158

215:                                              ; preds = %212
  %216 = tail call i32* @__errno_location() #31, !dbg !1159
  %217 = load i32, i32* %216, align 4, !dbg !1159, !tbaa !945
  %218 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #27, !dbg !1161
  %219 = call i8* @quotearg_style(i32 4, i8* %205) #27, !dbg !1162
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %217, i8* %218, i8* %219) #27, !dbg !1163
  br label %746, !dbg !1164

220:                                              ; preds = %212
  %221 = load i1, i1* @presume_input_pipe, align 1, !dbg !1165
  br i1 %221, label %229, label %222, !dbg !1167

222:                                              ; preds = %220
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1168, metadata !DIExpression()) #27, !dbg !1173
  %223 = load i32, i32* %162, align 8, !dbg !1175, !tbaa !1176
  %224 = trunc i32 %223 to i16, !dbg !1180
  %225 = and i16 %224, -4096, !dbg !1180
  switch i16 %225, label %229 [
    i16 -32768, label %226
    i16 -24576, label %226
  ], !dbg !1180

226:                                              ; preds = %222, %222
  %227 = call fastcc i64 @elseek(i32 %204, i64 0, i32 1, i8* %205) #27, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %227, metadata !1065, metadata !DIExpression()) #27, !dbg !1152
  %228 = icmp slt i64 %227, 0, !dbg !1183
  br i1 %228, label %746, label %229, !dbg !1185

229:                                              ; preds = %226, %222, %220
  %230 = phi i64 [ -1, %220 ], [ %227, %226 ], [ -1, %222 ], !dbg !1152
  call void @llvm.dbg.value(metadata i64 %230, metadata !1065, metadata !DIExpression()) #27, !dbg !1152
  %231 = load i64, i64* %163, align 8, !dbg !1186, !tbaa !1187
  %232 = load i1, i1* @presume_input_pipe, align 1, !dbg !1186
  %233 = icmp slt i64 %230, 0
  %234 = or i1 %233, %232, !dbg !1186
  br i1 %141, label %541, label %235, !dbg !1188

235:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i8* %205, metadata !1135, metadata !DIExpression()) #27, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %204, metadata !1136, metadata !DIExpression()) #27, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %87, metadata !1137, metadata !DIExpression()) #27, !dbg !1189
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1138, metadata !DIExpression()) #27, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %230, metadata !1139, metadata !DIExpression()) #27, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %231, metadata !1140, metadata !DIExpression()) #27, !dbg !1189
  br i1 %234, label %243, label %236, !dbg !1190

236:                                              ; preds = %235
  %237 = load i64, i64* %164, align 8, !dbg !1191, !tbaa !1192
  %238 = icmp sgt i64 %237, 0, !dbg !1191
  %239 = icmp ult i64 %237, 2305843009213693953, !dbg !1191
  %240 = and i1 %238, %239, !dbg !1191
  %241 = select i1 %240, i64 %237, i64 512, !dbg !1191
  %242 = icmp sgt i64 %231, %241, !dbg !1193
  br i1 %242, label %442, label %243, !dbg !1194

243:                                              ; preds = %236, %235
  call void @llvm.dbg.value(metadata i8* %205, metadata !1195, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i32 %204, metadata !1200, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %87, metadata !1201, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %230, metadata !1202, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %230, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i64 0, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i8 1, metadata !1217, metadata !DIExpression()) #27, !dbg !1229
  %244 = call noalias i8* @xmalloc(i64 8216) #27, !dbg !1231
  %245 = bitcast i8* %244 to %struct.linebuffer*, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.linebuffer* %245, metadata !1214, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %245, metadata !1204, metadata !DIExpression()) #27, !dbg !1229
  %246 = getelementptr inbounds i8, i8* %244, i64 8192, !dbg !1232
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %246, i8 0, i64 24, i1 false) #27, !dbg !1233
  %247 = call noalias i8* @xmalloc(i64 8216) #27, !dbg !1234
  call void @llvm.dbg.value(metadata i8* %247, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  %248 = call i64 @safe_read(i32 %204, i8* %247, i64 8192) #27, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %248, metadata !1218, metadata !DIExpression()) #27, !dbg !1229
  %249 = add i64 %248, 1, !dbg !1236
  %250 = icmp ult i64 %249, 2, !dbg !1236
  br i1 %250, label %332, label %251, !dbg !1236

251:                                              ; preds = %243
  call void @llvm.dbg.value(metadata i8* %247, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  br i1 %169, label %273, label %252, !dbg !1236

252:                                              ; preds = %251
  %253 = bitcast i8* %247 to %struct.linebuffer*, !dbg !1234
  call void @llvm.dbg.value(metadata %struct.linebuffer* %253, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  br label %254, !dbg !1238

254:                                              ; preds = %322, %252
  %255 = phi i64 [ %329, %322 ], [ %248, %252 ]
  %256 = phi i8* [ %328, %322 ], [ %247, %252 ]
  %257 = phi i64 [ %327, %322 ], [ %230, %252 ]
  %258 = phi %struct.linebuffer* [ %326, %322 ], [ %245, %252 ]
  %259 = phi %struct.linebuffer* [ %325, %322 ], [ %245, %252 ]
  %260 = phi i64 [ %324, %322 ], [ 0, %252 ]
  %261 = phi %struct.linebuffer* [ %323, %322 ], [ %253, %252 ]
  call void @llvm.dbg.value(metadata i64 %257, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %258, metadata !1204, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %259, metadata !1214, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %260, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %261, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  %262 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %261, i64 0, i32 1, !dbg !1239
  store i64 %255, i64* %262, align 8, !dbg !1240, !tbaa !1241
  %263 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %261, i64 0, i32 2, !dbg !1243
  %264 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %261, i64 0, i32 0, i64 %255, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %264, metadata !1219, metadata !DIExpression()) #27, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %256, metadata !1222, metadata !DIExpression()) #27, !dbg !1245
  %265 = bitcast i64* %263 to i8*, !dbg !1246
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %265, i8 0, i64 16, i1 false) #27, !dbg !1247
  %266 = load i1, i1* @line_end, align 1, !dbg !1246
  %267 = select i1 %266, i32 10, i32 0, !dbg !1246
  %268 = ptrtoint i8* %264 to i64, !dbg !1248
  %269 = ptrtoint i8* %256 to i64, !dbg !1248
  %270 = sub i64 %268, %269, !dbg !1248
  %271 = call i8* @memchr(i8* nonnull %256, i32 %267, i64 %270) #28, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %271, metadata !1222, metadata !DIExpression()) #27, !dbg !1245
  %272 = icmp eq i8* %271, null, !dbg !1250
  br i1 %272, label %289, label %280, !dbg !1250

273:                                              ; preds = %251, %273
  %274 = phi i64 [ %277, %273 ], [ %248, %251 ]
  %275 = phi i64 [ %276, %273 ], [ %230, %251 ]
  call void @llvm.dbg.value(metadata i64 %275, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  %276 = add i64 %275, %274, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %276, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  call fastcc void @xwrite_stdout(i8* %247, i64 %274) #27, !dbg !1254
  call void @llvm.dbg.value(metadata %struct.linebuffer* %245, metadata !1204, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %245, metadata !1214, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i64 0, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %261, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  %277 = call i64 @safe_read(i32 %204, i8* %247, i64 8192) #27, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %277, metadata !1218, metadata !DIExpression()) #27, !dbg !1229
  %278 = add i64 %277, 1, !dbg !1236
  %279 = icmp ult i64 %278, 2, !dbg !1236
  br i1 %279, label %332, label %273, !dbg !1236, !llvm.loop !1255

280:                                              ; preds = %254, %280
  %281 = phi i64 [ %284, %280 ], [ 0, %254 ], !dbg !1257
  %282 = phi i8* [ %287, %280 ], [ %271, %254 ]
  %283 = getelementptr inbounds i8, i8* %282, i64 1, !dbg !1259
  call void @llvm.dbg.value(metadata i8* %283, metadata !1222, metadata !DIExpression()) #27, !dbg !1245
  %284 = add i64 %281, 1, !dbg !1257
  store i64 %284, i64* %263, align 8, !dbg !1257, !tbaa !1260
  %285 = ptrtoint i8* %283 to i64, !dbg !1248
  %286 = sub i64 %268, %285, !dbg !1248
  %287 = call i8* @memchr(i8* nonnull %283, i32 %267, i64 %286) #28, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %287, metadata !1222, metadata !DIExpression()) #27, !dbg !1245
  %288 = icmp eq i8* %287, null, !dbg !1250
  br i1 %288, label %289, label %280, !dbg !1250, !llvm.loop !1261

289:                                              ; preds = %280, %254
  %290 = phi i64 [ 0, %254 ], [ %284, %280 ], !dbg !1263
  %291 = add i64 %290, %260, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %291, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  %292 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %259, i64 0, i32 1, !dbg !1265
  %293 = load i64, i64* %292, align 8, !dbg !1265, !tbaa !1241
  %294 = add i64 %293, %255, !dbg !1267
  %295 = icmp ult i64 %294, 8192, !dbg !1268
  br i1 %295, label %296, label %304, !dbg !1269

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %259, i64 0, i32 0, i64 %293, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %297, metadata !1272, metadata !DIExpression()) #27, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %256, metadata !1282, metadata !DIExpression()) #27, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %255, metadata !1283, metadata !DIExpression()) #27, !dbg !1284
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %297, i8* nonnull align 1 %256, i64 %255, i1 false) #27, !dbg !1286
  %298 = bitcast i64* %262 to <2 x i64>*, !dbg !1287
  %299 = load <2 x i64>, <2 x i64>* %298, align 8, !dbg !1287, !tbaa !1288
  %300 = bitcast i64* %292 to <2 x i64>*, !dbg !1289
  %301 = load <2 x i64>, <2 x i64>* %300, align 8, !dbg !1289, !tbaa !1288
  %302 = add <2 x i64> %301, %299, !dbg !1289
  %303 = bitcast i64* %292 to <2 x i64>*, !dbg !1289
  store <2 x i64> %302, <2 x i64>* %303, align 8, !dbg !1289, !tbaa !1288
  br label %322, !dbg !1290

304:                                              ; preds = %289
  %305 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %259, i64 0, i32 3, !dbg !1291
  store %struct.linebuffer* %261, %struct.linebuffer** %305, align 8, !dbg !1293, !tbaa !1294
  call void @llvm.dbg.value(metadata %struct.linebuffer* %261, metadata !1214, metadata !DIExpression()) #27, !dbg !1229
  %306 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %258, i64 0, i32 2, !dbg !1295
  %307 = load i64, i64* %306, align 8, !dbg !1295, !tbaa !1260
  %308 = sub i64 %291, %307, !dbg !1297
  %309 = icmp ugt i64 %308, %87, !dbg !1298
  br i1 %309, label %310, label %319, !dbg !1299

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %258, i64 0, i32 1, !dbg !1300
  %312 = load i64, i64* %311, align 8, !dbg !1300, !tbaa !1241
  %313 = add i64 %312, %257, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %313, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  %314 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %258, i64 0, i32 0, i64 0, !dbg !1303
  call fastcc void @xwrite_stdout(i8* %314, i64 %312) #27, !dbg !1304
  call void @llvm.dbg.value(metadata %struct.linebuffer* %258, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  %315 = load i64, i64* %306, align 8, !dbg !1305, !tbaa !1260
  %316 = sub i64 %291, %315, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %316, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  %317 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %258, i64 0, i32 3, !dbg !1307
  %318 = load %struct.linebuffer*, %struct.linebuffer** %317, align 8, !dbg !1307, !tbaa !1294
  call void @llvm.dbg.value(metadata %struct.linebuffer* %318, metadata !1204, metadata !DIExpression()) #27, !dbg !1229
  br label %322, !dbg !1308

319:                                              ; preds = %304
  %320 = call noalias i8* @xmalloc(i64 8216) #27, !dbg !1309
  %321 = bitcast i8* %320 to %struct.linebuffer*, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.linebuffer* %321, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  br label %322

322:                                              ; preds = %319, %310, %296
  %323 = phi %struct.linebuffer* [ %261, %296 ], [ %258, %310 ], [ %321, %319 ], !dbg !1229
  %324 = phi i64 [ %291, %296 ], [ %316, %310 ], [ %291, %319 ], !dbg !1310
  %325 = phi %struct.linebuffer* [ %259, %296 ], [ %261, %310 ], [ %261, %319 ], !dbg !1229
  %326 = phi %struct.linebuffer* [ %258, %296 ], [ %318, %310 ], [ %258, %319 ], !dbg !1229
  %327 = phi i64 [ %257, %296 ], [ %313, %310 ], [ %257, %319 ], !dbg !1229
  call void @llvm.dbg.value(metadata i64 %327, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %326, metadata !1204, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %325, metadata !1214, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %324, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %323, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  %328 = getelementptr %struct.linebuffer, %struct.linebuffer* %323, i64 0, i32 0, i64 0, !dbg !1311
  %329 = call i64 @safe_read(i32 %204, i8* %328, i64 8192) #27, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %329, metadata !1218, metadata !DIExpression()) #27, !dbg !1229
  %330 = add i64 %329, 1, !dbg !1236
  %331 = icmp ult i64 %330, 2, !dbg !1236
  br i1 %331, label %332, label %254, !dbg !1236, !llvm.loop !1312

332:                                              ; preds = %322, %273, %243
  %333 = phi i64 [ 0, %243 ], [ 0, %273 ], [ %324, %322 ]
  %334 = phi %struct.linebuffer* [ %245, %243 ], [ %245, %273 ], [ %325, %322 ]
  %335 = phi %struct.linebuffer* [ %245, %243 ], [ %245, %273 ], [ %326, %322 ]
  %336 = phi i64 [ %230, %243 ], [ %276, %273 ], [ %327, %322 ], !dbg !1229
  %337 = phi i8* [ %247, %243 ], [ %247, %273 ], [ %328, %322 ], !dbg !1311
  %338 = phi i64 [ %248, %243 ], [ %277, %273 ], [ %329, %322 ], !dbg !1235
  %339 = icmp eq i64 %338, -1
  call void @free(i8* %337) #27, !dbg !1313
  br i1 %339, label %340, label %345, !dbg !1314

340:                                              ; preds = %332
  %341 = tail call i32* @__errno_location() #31, !dbg !1315
  %342 = load i32, i32* %341, align 4, !dbg !1315, !tbaa !945
  %343 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1318
  %344 = call i8* @quotearg_style(i32 4, i8* %205) #27, !dbg !1319
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %342, i8* %343, i8* %344) #27, !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1217, metadata !DIExpression()) #27, !dbg !1229
  br label %422, !dbg !1321

345:                                              ; preds = %332
  %346 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %334, i64 0, i32 1, !dbg !1322
  %347 = load i64, i64* %346, align 8, !dbg !1322, !tbaa !1241
  %348 = icmp eq i64 %347, 0, !dbg !1324
  br i1 %348, label %362, label %349, !dbg !1325

349:                                              ; preds = %345
  %350 = add i64 %347, -1, !dbg !1326
  %351 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %334, i64 0, i32 0, i64 %350, !dbg !1327
  %352 = load i8, i8* %351, align 1, !dbg !1327, !tbaa !842
  %353 = sext i8 %352 to i32, !dbg !1327
  %354 = load i1, i1* @line_end, align 1, !dbg !1328
  %355 = select i1 %354, i32 10, i32 0, !dbg !1328
  %356 = icmp eq i32 %355, %353, !dbg !1329
  br i1 %356, label %362, label %357, !dbg !1330

357:                                              ; preds = %349
  %358 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %334, i64 0, i32 2, !dbg !1331
  %359 = load i64, i64* %358, align 8, !dbg !1333, !tbaa !1260
  %360 = add i64 %359, 1, !dbg !1333
  store i64 %360, i64* %358, align 8, !dbg !1333, !tbaa !1260
  %361 = add i64 %333, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %361, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  br label %362, !dbg !1335

362:                                              ; preds = %357, %349, %345
  %363 = phi i64 [ %361, %357 ], [ %333, %349 ], [ %333, %345 ], !dbg !1229
  call void @llvm.dbg.value(metadata i64 %363, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %335, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %336, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  %364 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %335, i64 0, i32 2, !dbg !1336
  %365 = load i64, i64* %364, align 8, !dbg !1336, !tbaa !1260
  %366 = sub i64 %363, %365, !dbg !1339
  %367 = icmp ugt i64 %366, %87, !dbg !1340
  br i1 %367, label %368, label %385, !dbg !1341

368:                                              ; preds = %362, %368
  %369 = phi i64* [ %381, %368 ], [ %364, %362 ]
  %370 = phi i64 [ %375, %368 ], [ %336, %362 ]
  %371 = phi i64 [ %378, %368 ], [ %363, %362 ]
  %372 = phi %struct.linebuffer* [ %380, %368 ], [ %335, %362 ]
  call void @llvm.dbg.value(metadata i64 %370, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %371, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.linebuffer* %372, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  %373 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %372, i64 0, i32 1, !dbg !1342
  %374 = load i64, i64* %373, align 8, !dbg !1342, !tbaa !1241
  %375 = add i64 %374, %370, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %375, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  %376 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %372, i64 0, i32 0, i64 0, !dbg !1345
  call fastcc void @xwrite_stdout(i8* %376, i64 %374) #27, !dbg !1346
  %377 = load i64, i64* %369, align 8, !dbg !1347, !tbaa !1260
  %378 = sub i64 %371, %377, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %378, metadata !1216, metadata !DIExpression()) #27, !dbg !1229
  %379 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %372, i64 0, i32 3, !dbg !1349
  %380 = load %struct.linebuffer*, %struct.linebuffer** %379, align 8, !dbg !1349, !tbaa !1294
  call void @llvm.dbg.value(metadata %struct.linebuffer* %380, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  %381 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %380, i64 0, i32 2, !dbg !1336
  %382 = load i64, i64* %381, align 8, !dbg !1336, !tbaa !1260
  %383 = sub i64 %378, %382, !dbg !1339
  %384 = icmp ugt i64 %383, %87, !dbg !1340
  br i1 %384, label %368, label %385, !dbg !1341, !llvm.loop !1350

385:                                              ; preds = %368, %362
  %386 = phi i64 [ %365, %362 ], [ %382, %368 ]
  %387 = phi %struct.linebuffer* [ %335, %362 ], [ %380, %368 ], !dbg !1352
  %388 = phi i64 [ %363, %362 ], [ %378, %368 ], !dbg !1229
  %389 = phi i64 [ %336, %362 ], [ %375, %368 ], !dbg !1229
  %390 = phi i64* [ %364, %362 ], [ %381, %368 ], !dbg !1336
  %391 = icmp ugt i64 %388, %87, !dbg !1353
  br i1 %391, label %392, label %422, !dbg !1354

392:                                              ; preds = %385
  %393 = sub i64 %388, %87, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %393, metadata !1223, metadata !DIExpression()) #27, !dbg !1356
  %394 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %387, i64 0, i32 0, i64 0, !dbg !1357
  call void @llvm.dbg.value(metadata i8* undef, metadata !1226, metadata !DIExpression()) #27, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %394, metadata !1227, metadata !DIExpression()) #27, !dbg !1356
  %395 = icmp eq i64 %393, 0, !dbg !1358
  br i1 %395, label %416, label %396, !dbg !1359

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %387, i64 0, i32 1, !dbg !1360
  %398 = load i64, i64* %397, align 8, !dbg !1360, !tbaa !1241
  %399 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %387, i64 0, i32 0, i64 %398, !dbg !1361
  call void @llvm.dbg.value(metadata i8* %399, metadata !1226, metadata !DIExpression()) #27, !dbg !1356
  %400 = load i1, i1* @line_end, align 1
  %401 = select i1 %400, i32 10, i32 0
  %402 = ptrtoint i8* %399 to i64
  br label %403, !dbg !1359

403:                                              ; preds = %411, %396
  %404 = phi i64 [ %386, %396 ], [ %413, %411 ]
  %405 = phi i8* [ %394, %396 ], [ %412, %411 ]
  %406 = phi i64 [ %393, %396 ], [ %414, %411 ]
  call void @llvm.dbg.value(metadata i8* %405, metadata !1227, metadata !DIExpression()) #27, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %406, metadata !1223, metadata !DIExpression()) #27, !dbg !1356
  %407 = ptrtoint i8* %405 to i64, !dbg !1362
  %408 = sub i64 %402, %407, !dbg !1362
  %409 = call i8* @memchr(i8* nonnull %405, i32 %401, i64 %408) #28, !dbg !1363
  call void @llvm.dbg.value(metadata i8* %409, metadata !1227, metadata !DIExpression()) #27, !dbg !1356
  %410 = icmp eq i8* %409, null, !dbg !1359
  br i1 %410, label %416, label %411, !dbg !1364

411:                                              ; preds = %403
  %412 = getelementptr inbounds i8, i8* %409, i64 1, !dbg !1365
  call void @llvm.dbg.value(metadata i8* %412, metadata !1227, metadata !DIExpression()) #27, !dbg !1356
  %413 = add i64 %404, 1, !dbg !1367
  store i64 %413, i64* %390, align 8, !dbg !1367, !tbaa !1260
  %414 = add i64 %406, -1, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %414, metadata !1223, metadata !DIExpression()) #27, !dbg !1356
  %415 = icmp eq i64 %414, 0, !dbg !1358
  br i1 %415, label %416, label %403, !dbg !1359, !llvm.loop !1369

416:                                              ; preds = %411, %403, %392
  %417 = phi i8* [ %394, %392 ], [ %412, %411 ], [ null, %403 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8* %417, metadata !1227, metadata !DIExpression()) #27, !dbg !1356
  %418 = ptrtoint i8* %417 to i64, !dbg !1371
  %419 = ptrtoint %struct.linebuffer* %387 to i64, !dbg !1371
  %420 = sub i64 %418, %419, !dbg !1371
  %421 = add i64 %420, %389, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %421, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  call fastcc void @xwrite_stdout(i8* %394, i64 %420) #27, !dbg !1373
  br label %422, !dbg !1374

422:                                              ; preds = %416, %385, %340
  %423 = phi i8 [ 0, %340 ], [ 1, %416 ], [ 1, %385 ], !dbg !1229
  %424 = phi i64 [ %336, %340 ], [ %421, %416 ], [ %389, %385 ], !dbg !1229
  call void @llvm.dbg.value(metadata i64 %424, metadata !1203, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.value(metadata i8 %423, metadata !1217, metadata !DIExpression()) #27, !dbg !1229
  call void @llvm.dbg.label(metadata !1228) #27, !dbg !1375
  call void @llvm.dbg.value(metadata %struct.linebuffer* %335, metadata !1204, metadata !DIExpression()) #27, !dbg !1229
  %425 = icmp eq %struct.linebuffer* %335, null, !dbg !1376
  br i1 %425, label %432, label %426, !dbg !1376

426:                                              ; preds = %422, %426
  %427 = phi %struct.linebuffer* [ %429, %426 ], [ %335, %422 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %427, metadata !1204, metadata !DIExpression()) #27, !dbg !1229
  %428 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %427, i64 0, i32 3, !dbg !1377
  %429 = load %struct.linebuffer*, %struct.linebuffer** %428, align 8, !dbg !1377, !tbaa !1294
  call void @llvm.dbg.value(metadata %struct.linebuffer* %429, metadata !1215, metadata !DIExpression()) #27, !dbg !1229
  %430 = getelementptr %struct.linebuffer, %struct.linebuffer* %427, i64 0, i32 0, i64 0, !dbg !1379
  call void @free(i8* %430) #27, !dbg !1380
  call void @llvm.dbg.value(metadata %struct.linebuffer* %429, metadata !1204, metadata !DIExpression()) #27, !dbg !1229
  %431 = icmp eq %struct.linebuffer* %429, null, !dbg !1376
  br i1 %431, label %432, label %426, !dbg !1376, !llvm.loop !1381

432:                                              ; preds = %426, %422
  %433 = icmp sgt i64 %230, -1, !dbg !1383
  br i1 %433, label %434, label %438, !dbg !1385

434:                                              ; preds = %432
  %435 = call fastcc i64 @elseek(i32 %204, i64 %424, i32 0, i8* %205) #27, !dbg !1386
  %436 = icmp slt i64 %435, 0, !dbg !1387
  %437 = select i1 %436, i8 0, i8 %423, !dbg !1388
  br label %438, !dbg !1388

438:                                              ; preds = %434, %432
  %439 = phi i8 [ %423, %432 ], [ %437, %434 ], !dbg !1229
  call void @llvm.dbg.value(metadata i8 %439, metadata !1217, metadata !DIExpression()) #27, !dbg !1229
  %440 = and i8 %439, 1, !dbg !1389
  %441 = icmp ne i8 %440, 0, !dbg !1389
  br label %746, !dbg !1390

442:                                              ; preds = %236
  %443 = icmp sgt i64 %231, %230, !dbg !1391
  br i1 %443, label %444, label %746, !dbg !1392

444:                                              ; preds = %442
  call void @llvm.dbg.value(metadata i8* %205, metadata !1115, metadata !DIExpression()) #27, !dbg !1393
  call void @llvm.dbg.value(metadata i32 %204, metadata !1116, metadata !DIExpression()) #27, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %87, metadata !1117, metadata !DIExpression()) #27, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %230, metadata !1118, metadata !DIExpression()) #27, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %231, metadata !1119, metadata !DIExpression()) #27, !dbg !1393
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %165) #27, !dbg !1394
  call void @llvm.dbg.declare(metadata [8192 x i8]* %5, metadata !1120, metadata !DIExpression()) #27, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %231, metadata !1122, metadata !DIExpression()) #27, !dbg !1393
  %445 = sub nsw i64 %231, %230, !dbg !1396
  %446 = srem i64 %445, 8192, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %446, metadata !1121, metadata !DIExpression()) #27, !dbg !1393
  %447 = icmp eq i64 %446, 0, !dbg !1398
  %448 = select i1 %447, i64 8192, i64 %446, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %448, metadata !1121, metadata !DIExpression()) #27, !dbg !1393
  %449 = sub i64 %231, %448, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %449, metadata !1122, metadata !DIExpression()) #27, !dbg !1393
  %450 = call fastcc i64 @elseek(i32 %204, i64 %449, i32 0, i8* %205) #27, !dbg !1402
  %451 = icmp slt i64 %450, 0, !dbg !1404
  br i1 %451, label %539, label %452, !dbg !1405

452:                                              ; preds = %444
  %453 = call i64 @safe_read(i32 %204, i8* nonnull %165, i64 %448) #27, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %453, metadata !1121, metadata !DIExpression()) #27, !dbg !1393
  %454 = icmp eq i64 %453, -1, !dbg !1407
  br i1 %454, label %455, label %460, !dbg !1409

455:                                              ; preds = %452
  %456 = tail call i32* @__errno_location() #31, !dbg !1410
  %457 = load i32, i32* %456, align 4, !dbg !1410, !tbaa !945
  %458 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1412
  %459 = call i8* @quotearg_style(i32 4, i8* %205) #27, !dbg !1413
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %457, i8* %458, i8* %459) #27, !dbg !1414
  br label %539, !dbg !1415

460:                                              ; preds = %452
  call void @llvm.dbg.value(metadata i1 %166, metadata !1123, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1393
  %461 = icmp ne i64 %453, 0
  %462 = and i1 %166, %461, !dbg !1416
  br i1 %462, label %463, label %473, !dbg !1416

463:                                              ; preds = %460
  %464 = add i64 %453, -1, !dbg !1418
  %465 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %464, !dbg !1419
  %466 = load i8, i8* %465, align 1, !dbg !1419, !tbaa !842
  %467 = sext i8 %466 to i32, !dbg !1419
  %468 = load i1, i1* @line_end, align 1, !dbg !1420
  %469 = select i1 %468, i32 10, i32 0, !dbg !1420
  %470 = icmp ne i32 %469, %467, !dbg !1421
  %471 = sext i1 %470 to i64, !dbg !1422
  %472 = add i64 %87, %471, !dbg !1422
  br label %473, !dbg !1422

473:                                              ; preds = %463, %460
  %474 = phi i64 [ %87, %460 ], [ %472, %463 ]
  br label %475, !dbg !1423

475:                                              ; preds = %473, %532
  %476 = phi i64 [ %529, %532 ], [ %449, %473 ], !dbg !1401
  %477 = phi i64 [ %533, %532 ], [ %453, %473 ], !dbg !1424
  %478 = phi i64 [ %483, %532 ], [ %474, %473 ], !dbg !1393
  call void @llvm.dbg.value(metadata i64 %478, metadata !1117, metadata !DIExpression()) #27, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %477, metadata !1121, metadata !DIExpression()) #27, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %476, metadata !1122, metadata !DIExpression()) #27, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %477, metadata !1125, metadata !DIExpression()) #27, !dbg !1425
  %479 = load i1, i1* @line_end, align 1
  %480 = select i1 %479, i32 10, i32 0
  br label %481, !dbg !1423

481:                                              ; preds = %493, %475
  %482 = phi i64 [ %477, %475 ], [ %494, %493 ], !dbg !1425
  %483 = phi i64 [ %478, %475 ], [ %495, %493 ], !dbg !1393
  call void @llvm.dbg.value(metadata i64 %483, metadata !1117, metadata !DIExpression()) #27, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %482, metadata !1125, metadata !DIExpression()) #27, !dbg !1425
  %484 = icmp eq i64 %482, 0, !dbg !1423
  br i1 %484, label %526, label %485, !dbg !1423

485:                                              ; preds = %481
  br i1 %166, label %488, label %486, !dbg !1426

486:                                              ; preds = %485
  %487 = add i64 %482, -1, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %487, metadata !1125, metadata !DIExpression()) #27, !dbg !1425
  br label %493, !dbg !1428

488:                                              ; preds = %485
  %489 = call i8* @memrchr(i8* nonnull %165, i32 %480, i64 %482) #28, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %489, metadata !1126, metadata !DIExpression()) #27, !dbg !1430
  %490 = icmp eq i8* %489, null, !dbg !1431
  %491 = ptrtoint i8* %489 to i64, !dbg !1433
  %492 = sub i64 %491, %167, !dbg !1433
  call void @llvm.dbg.value(metadata i64 undef, metadata !1125, metadata !DIExpression()) #27, !dbg !1425
  br i1 %490, label %526, label %493

493:                                              ; preds = %488, %486
  %494 = phi i64 [ %487, %486 ], [ %492, %488 ], !dbg !1425
  call void @llvm.dbg.value(metadata i64 %494, metadata !1125, metadata !DIExpression()) #27, !dbg !1425
  %495 = add i64 %483, -1, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %495, metadata !1117, metadata !DIExpression()) #27, !dbg !1393
  %496 = icmp eq i64 %483, 0, !dbg !1435
  br i1 %496, label %497, label %481, !dbg !1436, !llvm.loop !1437

497:                                              ; preds = %493
  %498 = icmp sgt i64 %476, %230, !dbg !1439
  br i1 %498, label %499, label %521, !dbg !1440

499:                                              ; preds = %497
  %500 = call fastcc i64 @elseek(i32 %204, i64 %230, i32 0, i8* %205) #27, !dbg !1441
  %501 = icmp slt i64 %500, 0, !dbg !1443
  br i1 %501, label %539, label %502, !dbg !1444

502:                                              ; preds = %499
  %503 = sub nsw i64 %476, %230, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %204, metadata !1075, metadata !DIExpression()) #27, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %503, metadata !1076, metadata !DIExpression()) #27, !dbg !1446
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %168) #27, !dbg !1447
  call void @llvm.dbg.value(metadata i64 8192, metadata !1077, metadata !DIExpression()) #27, !dbg !1446
  %504 = icmp eq i64 %503, 0, !dbg !1448
  br i1 %504, label %520, label %505, !dbg !1449

505:                                              ; preds = %502, %516
  %506 = phi i64 [ %512, %516 ], [ %503, %502 ]
  call void @llvm.dbg.value(metadata i64 %506, metadata !1076, metadata !DIExpression()) #27, !dbg !1446
  %507 = icmp ult i64 %506, 8192, !dbg !1450
  %508 = select i1 %507, i64 %506, i64 8192, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %508, metadata !1079, metadata !DIExpression()) #27, !dbg !1451
  %509 = call i64 @safe_read(i32 %204, i8* nonnull %168, i64 %508) #27, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %509, metadata !1081, metadata !DIExpression()) #27, !dbg !1451
  %510 = icmp eq i64 %509, -1, !dbg !1453
  br i1 %510, label %518, label %511, !dbg !1455

511:                                              ; preds = %505
  %512 = sub i64 %506, %509, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %512, metadata !1076, metadata !DIExpression()) #27, !dbg !1446
  %513 = icmp eq i64 %509, 0, !dbg !1457
  %514 = icmp ne i64 %512, 0
  %515 = and i1 %513, %514, !dbg !1459
  br i1 %515, label %518, label %516, !dbg !1459

516:                                              ; preds = %511
  call fastcc void @xwrite_stdout(i8* nonnull %168, i64 %509) #27, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %512, metadata !1076, metadata !DIExpression()) #27, !dbg !1446
  %517 = icmp eq i64 %512, 0, !dbg !1448
  br i1 %517, label %520, label %505, !dbg !1449

518:                                              ; preds = %511, %505
  %519 = phi i32 [ 2, %511 ], [ 1, %505 ], !dbg !1446
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %168) #27, !dbg !1461
  call void @llvm.dbg.value(metadata i32 %519, metadata !1129, metadata !DIExpression()) #27, !dbg !1462
  call fastcc void @diagnose_copy_fd_failure(i32 %519, i8* %205) #27, !dbg !1463
  br label %539, !dbg !1466

520:                                              ; preds = %516, %502
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %168) #27, !dbg !1461
  br label %521

521:                                              ; preds = %520, %497
  %522 = add i64 %494, 1, !dbg !1467
  call fastcc void @xwrite_stdout(i8* nonnull %165, i64 %522) #27, !dbg !1468
  %523 = add i64 %522, %476, !dbg !1469
  %524 = call fastcc i64 @elseek(i32 %204, i64 %523, i32 0, i8* %205) #27, !dbg !1470
  %525 = icmp sgt i64 %524, -1, !dbg !1471
  br label %539, !dbg !1472

526:                                              ; preds = %488, %481
  %527 = icmp eq i64 %476, %230, !dbg !1473
  br i1 %527, label %539, label %528, !dbg !1475

528:                                              ; preds = %526
  %529 = add nsw i64 %476, -8192, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %529, metadata !1122, metadata !DIExpression()) #27, !dbg !1393
  %530 = call fastcc i64 @elseek(i32 %204, i64 %529, i32 0, i8* %205) #27, !dbg !1477
  %531 = icmp slt i64 %530, 0, !dbg !1479
  br i1 %531, label %539, label %532, !dbg !1480

532:                                              ; preds = %528
  %533 = call i64 @safe_read(i32 %204, i8* nonnull %165, i64 8192) #27, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %533, metadata !1121, metadata !DIExpression()) #27, !dbg !1393
  switch i64 %533, label %475 [
    i64 -1, label %534
    i64 0, label %539
  ], !dbg !1482

534:                                              ; preds = %532
  %535 = tail call i32* @__errno_location() #31, !dbg !1483
  %536 = load i32, i32* %535, align 4, !dbg !1483, !tbaa !945
  %537 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1486
  %538 = call i8* @quotearg_style(i32 4, i8* %205) #27, !dbg !1487
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %536, i8* %537, i8* %538) #27, !dbg !1488
  br label %539, !dbg !1489

539:                                              ; preds = %532, %528, %526, %534, %521, %518, %499, %455, %444
  %540 = phi i1 [ false, %455 ], [ false, %444 ], [ false, %534 ], [ %525, %521 ], [ false, %518 ], [ false, %499 ], [ true, %526 ], [ false, %528 ], [ true, %532 ], !dbg !1393
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %165) #27, !dbg !1490
  br label %746, !dbg !1392

541:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i8* %205, metadata !1092, metadata !DIExpression()) #27, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %204, metadata !1093, metadata !DIExpression()) #27, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %87, metadata !1094, metadata !DIExpression()) #27, !dbg !1491
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1095, metadata !DIExpression()) #27, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %230, metadata !1096, metadata !DIExpression()) #27, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %231, metadata !1097, metadata !DIExpression()) #27, !dbg !1491
  br i1 %234, label %549, label %542, !dbg !1492

542:                                              ; preds = %541
  %543 = load i64, i64* %164, align 8, !dbg !1493, !tbaa !1192
  %544 = icmp sgt i64 %543, 0, !dbg !1493
  %545 = icmp ult i64 %543, 2305843009213693953, !dbg !1493
  %546 = and i1 %544, %545, !dbg !1493
  %547 = select i1 %546, i64 %543, i64 512, !dbg !1493
  %548 = icmp sgt i64 %231, %547, !dbg !1494
  br i1 %548, label %722, label %549, !dbg !1495

549:                                              ; preds = %542, %541
  call void @llvm.dbg.value(metadata i8* %205, metadata !1496, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %204, metadata !1499, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %87, metadata !1500, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %230, metadata !1501, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %87, metadata !1502, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %230, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 1, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  br i1 %171, label %550, label %604, !dbg !1545

550:                                              ; preds = %549
  call void @llvm.dbg.value(metadata i8 1, metadata !1508, metadata !DIExpression()) #27, !dbg !1546
  call void @llvm.dbg.value(metadata i8 0, metadata !1511, metadata !DIExpression()) #27, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %170, metadata !1512, metadata !DIExpression()) #27, !dbg !1546
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %180) #27, !dbg !1547
  call void @llvm.dbg.declare(metadata [2 x i8*]* %4, metadata !1514, metadata !DIExpression()) #27, !dbg !1548
  call void @llvm.dbg.value(metadata i64 2, metadata !1549, metadata !DIExpression()) #27, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %170, metadata !1554, metadata !DIExpression()) #27, !dbg !1555
  br i1 %181, label %551, label %552, !dbg !1557

551:                                              ; preds = %550
  call void @xalloc_die() #29, !dbg !1558
  unreachable, !dbg !1558

552:                                              ; preds = %550
  %553 = call noalias i8* @xmalloc(i64 %182) #27, !dbg !1560
  store i8* %553, i8** %183, align 16, !dbg !1561, !tbaa !697
  %554 = getelementptr inbounds i8, i8* %553, i64 %170, !dbg !1562
  store i8* %554, i8** %184, align 8, !dbg !1563, !tbaa !697
  call void @llvm.dbg.value(metadata i64 %230, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 1, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 undef, metadata !1508, metadata !DIExpression()) #27, !dbg !1546
  call void @llvm.dbg.value(metadata i8 0, metadata !1511, metadata !DIExpression()) #27, !dbg !1546
  call void @llvm.dbg.value(metadata i8 undef, metadata !1513, metadata !DIExpression()) #27, !dbg !1546
  br label %555, !dbg !1564

555:                                              ; preds = %597, %552
  %556 = phi i8* [ %553, %552 ], [ %600, %597 ], !dbg !1565
  %557 = phi i64 [ %230, %552 ], [ %593, %597 ]
  %558 = phi i1 [ false, %552 ], [ true, %597 ]
  %559 = phi i8 [ 0, %552 ], [ %574, %597 ]
  %560 = phi i1 [ false, %552 ], [ %594, %597 ]
  call void @llvm.dbg.value(metadata i64 %557, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 %559, metadata !1511, metadata !DIExpression()) #27, !dbg !1546
  %561 = call i64 @full_read(i32 %204, i8* %556, i64 %170) #27, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %561, metadata !1516, metadata !DIExpression()) #27, !dbg !1567
  call void @llvm.dbg.value(metadata i64 0, metadata !1520, metadata !DIExpression()) #27, !dbg !1567
  %562 = icmp ult i64 %561, %170, !dbg !1568
  br i1 %562, label %563, label %572, !dbg !1570

563:                                              ; preds = %555
  %564 = tail call i32* @__errno_location() #31, !dbg !1571
  %565 = load i32, i32* %564, align 4, !dbg !1571, !tbaa !945
  %566 = icmp eq i32 %565, 0, !dbg !1574
  br i1 %566, label %567, label %589, !dbg !1575

567:                                              ; preds = %563
  %568 = icmp ule i64 %561, %87, !dbg !1576
  %569 = and i1 %558, %568, !dbg !1578
  %570 = sub i64 %561, %87, !dbg !1578
  %571 = select i1 %569, i64 %570, i64 0, !dbg !1578
  br label %572, !dbg !1578

572:                                              ; preds = %567, %555
  %573 = phi i64 [ 0, %555 ], [ %571, %567 ], !dbg !1579
  %574 = phi i8 [ %559, %555 ], [ 1, %567 ], !dbg !1546
  call void @llvm.dbg.value(metadata i8 %574, metadata !1511, metadata !DIExpression()) #27, !dbg !1546
  call void @llvm.dbg.value(metadata i64 undef, metadata !1520, metadata !DIExpression()) #27, !dbg !1567
  br i1 %558, label %575, label %583, !dbg !1580

575:                                              ; preds = %572
  %576 = add i64 %573, %87, !dbg !1581
  %577 = add i64 %576, %557, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %577, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  %578 = xor i1 %560, true, !dbg !1585
  %579 = zext i1 %578 to i64, !dbg !1586
  %580 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %579, !dbg !1586
  %581 = load i8*, i8** %580, align 8, !dbg !1586, !tbaa !697
  %582 = getelementptr inbounds i8, i8* %581, i64 8192, !dbg !1587
  call fastcc void @xwrite_stdout(i8* nonnull %582, i64 %576) #27, !dbg !1588
  br label %583, !dbg !1589

583:                                              ; preds = %575, %572
  %584 = phi i64 [ %557, %572 ], [ %577, %575 ], !dbg !1543
  call void @llvm.dbg.value(metadata i64 %584, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 0, metadata !1508, metadata !DIExpression()) #27, !dbg !1546
  %585 = icmp ugt i64 %561, %87, !dbg !1590
  br i1 %585, label %586, label %592, !dbg !1592

586:                                              ; preds = %583
  %587 = sub i64 %561, %87, !dbg !1593
  %588 = add i64 %584, %587, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %588, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call fastcc void @xwrite_stdout(i8* %556, i64 %587) #27, !dbg !1596
  br label %592, !dbg !1597

589:                                              ; preds = %563
  %590 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1598
  %591 = call i8* @quotearg_style(i32 4, i8* %205) #27, !dbg !1600
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %565, i8* %590, i8* %591) #27, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %557, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 0, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 undef, metadata !1508, metadata !DIExpression()) #27, !dbg !1546
  call void @llvm.dbg.value(metadata i8 undef, metadata !1511, metadata !DIExpression()) #27, !dbg !1546
  br label %601

592:                                              ; preds = %586, %583
  %593 = phi i64 [ %584, %583 ], [ %588, %586 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 0, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 undef, metadata !1508, metadata !DIExpression()) #27, !dbg !1546
  call void @llvm.dbg.value(metadata i8 undef, metadata !1511, metadata !DIExpression()) #27, !dbg !1546
  %594 = xor i1 %560, true, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %593, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 1, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 %574, metadata !1511, metadata !DIExpression()) #27, !dbg !1546
  call void @llvm.dbg.value(metadata i8 undef, metadata !1513, metadata !DIExpression()) #27, !dbg !1546
  %595 = and i8 %574, 1, !dbg !1603
  %596 = icmp eq i8 %595, 0, !dbg !1603
  br i1 %596, label %597, label %601, !dbg !1564, !llvm.loop !1604

597:                                              ; preds = %592
  %598 = zext i1 %594 to i64
  %599 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %598
  %600 = load i8*, i8** %599, align 8, !dbg !1565, !tbaa !697
  br label %555, !dbg !1564

601:                                              ; preds = %592, %589
  %602 = phi i64 [ %557, %589 ], [ %593, %592 ]
  %603 = phi i8 [ 0, %589 ], [ 1, %592 ], !dbg !1543
  call void @llvm.dbg.value(metadata i64 %602, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 %603, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  call void @free(i8* %553) #27, !dbg !1606
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %180) #27, !dbg !1607
  br label %710, !dbg !1608

604:                                              ; preds = %549, %671
  %605 = phi i64 [ %672, %671 ], [ %230, %549 ]
  %606 = phi i64 [ %638, %671 ], [ 0, %549 ]
  %607 = phi i64 [ %650, %671 ], [ 0, %549 ]
  %608 = phi i8** [ %637, %671 ], [ null, %549 ]
  %609 = phi i64 [ %676, %671 ], [ 1, %549 ]
  %610 = phi i64 [ %617, %671 ], [ 0, %549 ]
  %611 = phi i8 [ %663, %671 ], [ 0, %549 ]
  %612 = phi i8 [ %661, %671 ], [ 0, %549 ]
  br label %613, !dbg !1609

613:                                              ; preds = %666, %604
  %614 = phi i64 [ %638, %666 ], [ %606, %604 ]
  %615 = phi i64 [ %650, %666 ], [ %607, %604 ]
  %616 = phi i8** [ %637, %666 ], [ %608, %604 ]
  %617 = phi i64 [ %668, %666 ], [ %609, %604 ]
  %618 = phi i64 [ %617, %666 ], [ %610, %604 ]
  %619 = phi i8 [ %663, %666 ], [ %611, %604 ]
  %620 = phi i8 [ %661, %666 ], [ %612, %604 ]
  call void @llvm.dbg.value(metadata i64 %605, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %614, metadata !1532, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %615, metadata !1531, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8** %616, metadata !1527, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %617, metadata !1526, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %618, metadata !1525, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8 %619, metadata !1524, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8 %620, metadata !1521, metadata !DIExpression()) #27, !dbg !1611
  %621 = icmp eq i64 %614, %618, !dbg !1612
  br i1 %621, label %622, label %636, !dbg !1616

622:                                              ; preds = %613
  %623 = icmp eq i64 %614, 0, !dbg !1617
  br i1 %623, label %630, label %624, !dbg !1620

624:                                              ; preds = %622
  %625 = icmp ugt i64 %614, %177, !dbg !1621
  %626 = shl i64 %614, 1
  %627 = select i1 %625, i64 %176, i64 %626, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %627, metadata !1532, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8** %616, metadata !1624, metadata !DIExpression()) #27, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %627, metadata !1629, metadata !DIExpression()) #27, !dbg !1631
  call void @llvm.dbg.value(metadata i64 8, metadata !1630, metadata !DIExpression()) #27, !dbg !1631
  %628 = icmp ugt i64 %627, 1152921504606846975, !dbg !1633
  br i1 %628, label %629, label %630, !dbg !1635

629:                                              ; preds = %624
  call void @xalloc_die() #29, !dbg !1636
  unreachable, !dbg !1636

630:                                              ; preds = %624, %622
  %631 = phi i64 [ %627, %624 ], [ %179, %622 ]
  %632 = bitcast i8** %616 to i8*, !dbg !1637
  %633 = shl i64 %631, 3, !dbg !1638
  %634 = call i8* @xrealloc(i8* %632, i64 %633) #27, !dbg !1639
  %635 = bitcast i8* %634 to i8**, !dbg !1640
  call void @llvm.dbg.value(metadata i8** %635, metadata !1527, metadata !DIExpression()) #27, !dbg !1611
  br label %636, !dbg !1641

636:                                              ; preds = %630, %613
  %637 = phi i8** [ %635, %630 ], [ %616, %613 ], !dbg !1611
  %638 = phi i64 [ %631, %630 ], [ %614, %613 ], !dbg !1611
  call void @llvm.dbg.value(metadata i64 %638, metadata !1532, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8** %637, metadata !1527, metadata !DIExpression()) #27, !dbg !1611
  %639 = and i8 %619, 1, !dbg !1642
  %640 = icmp eq i8 %639, 0, !dbg !1642
  br i1 %640, label %644, label %641, !dbg !1644

641:                                              ; preds = %636
  %642 = getelementptr inbounds i8*, i8** %637, i64 %618
  %643 = load i8*, i8** %642, align 8, !dbg !1645, !tbaa !697
  br label %648, !dbg !1644

644:                                              ; preds = %636
  %645 = call noalias i8* @xmalloc(i64 8192) #27, !dbg !1646
  %646 = getelementptr inbounds i8*, i8** %637, i64 %618, !dbg !1648
  store i8* %645, i8** %646, align 8, !dbg !1649, !tbaa !697
  %647 = add nuw nsw i64 %618, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %647, metadata !1531, metadata !DIExpression()) #27, !dbg !1611
  br label %648, !dbg !1651

648:                                              ; preds = %644, %641
  %649 = phi i8* [ %643, %641 ], [ %645, %644 ], !dbg !1645
  %650 = phi i64 [ %615, %641 ], [ %647, %644 ], !dbg !1611
  call void @llvm.dbg.value(metadata i64 %650, metadata !1531, metadata !DIExpression()) #27, !dbg !1611
  %651 = call i64 @full_read(i32 %204, i8* %649, i64 8192) #27, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %651, metadata !1523, metadata !DIExpression()) #27, !dbg !1611
  %652 = icmp ult i64 %651, 8192, !dbg !1653
  br i1 %652, label %653, label %660, !dbg !1655

653:                                              ; preds = %648
  %654 = tail call i32* @__errno_location() #31, !dbg !1656
  %655 = load i32, i32* %654, align 4, !dbg !1656, !tbaa !945
  %656 = icmp eq i32 %655, 0, !dbg !1659
  br i1 %656, label %660, label %657, !dbg !1660

657:                                              ; preds = %653
  %658 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1661
  %659 = call i8* @quotearg_style(i32 4, i8* %205) #27, !dbg !1663
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %655, i8* %658, i8* %659) #27, !dbg !1664
  call void @llvm.dbg.value(metadata i8 0, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  br label %698, !dbg !1665

660:                                              ; preds = %653, %648
  %661 = phi i8 [ %620, %648 ], [ 1, %653 ], !dbg !1611
  call void @llvm.dbg.value(metadata i8 %661, metadata !1521, metadata !DIExpression()) #27, !dbg !1611
  %662 = icmp eq i64 %618, %175, !dbg !1666
  %663 = select i1 %662, i8 1, i8 %619, !dbg !1668
  call void @llvm.dbg.value(metadata i8 %663, metadata !1524, metadata !DIExpression()) #27, !dbg !1611
  %664 = and i8 %663, 1, !dbg !1669
  %665 = icmp eq i8 %664, 0, !dbg !1669
  br i1 %665, label %666, label %671, !dbg !1671

666:                                              ; preds = %660
  call void @llvm.dbg.value(metadata i64 %605, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %617, metadata !1525, metadata !DIExpression()) #27, !dbg !1611
  %667 = add nuw nsw i64 %617, 1, !dbg !1672
  %668 = urem i64 %667, %176, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %638, metadata !1532, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %650, metadata !1531, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8** %637, metadata !1527, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %668, metadata !1526, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8 %663, metadata !1524, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %651, metadata !1523, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8 %661, metadata !1521, metadata !DIExpression()) #27, !dbg !1611
  %669 = and i8 %661, 1, !dbg !1674
  %670 = icmp eq i8 %669, 0, !dbg !1674
  br i1 %670, label %613, label %691, !dbg !1609, !llvm.loop !1675

671:                                              ; preds = %660
  %672 = add i64 %651, %605, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %672, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  %673 = getelementptr inbounds i8*, i8** %637, i64 %617, !dbg !1679
  %674 = load i8*, i8** %673, align 8, !dbg !1679, !tbaa !697
  call fastcc void @xwrite_stdout(i8* %674, i64 %651) #27, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %605, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %617, metadata !1525, metadata !DIExpression()) #27, !dbg !1611
  %675 = add nuw nsw i64 %617, 1, !dbg !1672
  %676 = urem i64 %675, %176, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %638, metadata !1532, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %650, metadata !1531, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8** %637, metadata !1527, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8 %663, metadata !1524, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %651, metadata !1523, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8 %661, metadata !1521, metadata !DIExpression()) #27, !dbg !1611
  %677 = and i8 %661, 1, !dbg !1674
  %678 = icmp eq i8 %677, 0, !dbg !1674
  br i1 %678, label %604, label %679, !dbg !1609, !llvm.loop !1681

679:                                              ; preds = %671
  %680 = getelementptr inbounds i8*, i8** %637, i64 %617, !dbg !1679
  %681 = sub i64 8192, %651, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %681, metadata !1533, metadata !DIExpression()) #27, !dbg !1683
  %682 = add i64 %672, %173, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %682, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  %683 = icmp ult i64 %173, %681, !dbg !1685
  %684 = load i8*, i8** %680, align 8, !dbg !1687, !tbaa !697
  %685 = getelementptr inbounds i8, i8* %684, i64 %651, !dbg !1687
  br i1 %683, label %686, label %687, !dbg !1688

686:                                              ; preds = %679
  call fastcc void @xwrite_stdout(i8* %685, i64 %173) #27, !dbg !1689
  br label %698, !dbg !1691

687:                                              ; preds = %679
  call fastcc void @xwrite_stdout(i8* %685, i64 %681) #27, !dbg !1692
  %688 = getelementptr inbounds i8*, i8** %637, i64 %676, !dbg !1694
  %689 = load i8*, i8** %688, align 8, !dbg !1694, !tbaa !697
  %690 = sub i64 %173, %681, !dbg !1695
  call fastcc void @xwrite_stdout(i8* %689, i64 %690) #27, !dbg !1696
  br label %698

691:                                              ; preds = %666
  %692 = icmp eq i64 %617, %175, !dbg !1697
  br i1 %692, label %693, label %698, !dbg !1698

693:                                              ; preds = %691
  call void @llvm.dbg.value(metadata i64 %172, metadata !1538, metadata !DIExpression()) #27, !dbg !1699
  %694 = sub i64 %651, %172, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %694, metadata !1541, metadata !DIExpression()) #27, !dbg !1699
  %695 = add i64 %694, %605, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %695, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  %696 = getelementptr inbounds i8*, i8** %637, i64 %668, !dbg !1702
  %697 = load i8*, i8** %696, align 8, !dbg !1702, !tbaa !697
  call fastcc void @xwrite_stdout(i8* %697, i64 %694) #27, !dbg !1703
  br label %698, !dbg !1704

698:                                              ; preds = %693, %691, %687, %686, %657
  %699 = phi i8 [ 0, %657 ], [ 1, %693 ], [ 1, %691 ], [ 1, %687 ], [ 1, %686 ], !dbg !1543
  %700 = phi i64 [ %605, %657 ], [ %695, %693 ], [ %605, %691 ], [ %682, %687 ], [ %682, %686 ], !dbg !1543
  call void @llvm.dbg.value(metadata i64 %700, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 %699, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %650, metadata !1531, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.value(metadata i8** %637, metadata !1527, metadata !DIExpression()) #27, !dbg !1611
  call void @llvm.dbg.label(metadata !1542) #27, !dbg !1705
  call void @llvm.dbg.value(metadata i64 0, metadata !1525, metadata !DIExpression()) #27, !dbg !1611
  %701 = icmp eq i64 %650, 0, !dbg !1706
  br i1 %701, label %708, label %702, !dbg !1709

702:                                              ; preds = %698, %702
  %703 = phi i64 [ %706, %702 ], [ 0, %698 ]
  call void @llvm.dbg.value(metadata i64 %703, metadata !1525, metadata !DIExpression()) #27, !dbg !1611
  %704 = getelementptr inbounds i8*, i8** %637, i64 %703, !dbg !1710
  %705 = load i8*, i8** %704, align 8, !dbg !1710, !tbaa !697
  call void @free(i8* %705) #27, !dbg !1711
  %706 = add nuw i64 %703, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %706, metadata !1525, metadata !DIExpression()) #27, !dbg !1611
  %707 = icmp eq i64 %706, %650, !dbg !1706
  br i1 %707, label %708, label %702, !dbg !1709, !llvm.loop !1713

708:                                              ; preds = %702, %698
  %709 = bitcast i8** %637 to i8*, !dbg !1715
  call void @free(i8* %709) #27, !dbg !1716
  br label %710

710:                                              ; preds = %708, %601
  %711 = phi i8 [ %603, %601 ], [ %699, %708 ], !dbg !1717
  %712 = phi i64 [ %602, %601 ], [ %700, %708 ], !dbg !1718
  call void @llvm.dbg.value(metadata i64 %712, metadata !1503, metadata !DIExpression()) #27, !dbg !1543
  call void @llvm.dbg.value(metadata i8 %711, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  %713 = icmp sgt i64 %230, -1, !dbg !1719
  br i1 %713, label %714, label %718, !dbg !1721

714:                                              ; preds = %710
  %715 = call fastcc i64 @elseek(i32 %204, i64 %712, i32 0, i8* %205) #27, !dbg !1722
  %716 = icmp slt i64 %715, 0, !dbg !1723
  %717 = select i1 %716, i8 0, i8 %711, !dbg !1724
  br label %718, !dbg !1724

718:                                              ; preds = %714, %710
  %719 = phi i8 [ %711, %710 ], [ %717, %714 ], !dbg !1543
  call void @llvm.dbg.value(metadata i8 %719, metadata !1504, metadata !DIExpression()) #27, !dbg !1543
  %720 = and i8 %719, 1, !dbg !1725
  %721 = icmp ne i8 %720, 0, !dbg !1725
  br label %746, !dbg !1726

722:                                              ; preds = %542
  %723 = sub nsw i64 %231, %230, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %723, metadata !1098, metadata !DIExpression()) #27, !dbg !1728
  %724 = icmp sgt i64 %723, 0, !dbg !1729
  %725 = select i1 %724, i64 %723, i64 0, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %725, metadata !1099, metadata !DIExpression()) #27, !dbg !1728
  %726 = icmp ugt i64 %725, %87, !dbg !1730
  br i1 %726, label %727, label %746, !dbg !1732

727:                                              ; preds = %722
  %728 = sub i64 %725, %87, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %204, metadata !1075, metadata !DIExpression()) #27, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %728, metadata !1076, metadata !DIExpression()) #27, !dbg !1734
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %168) #27, !dbg !1735
  call void @llvm.dbg.value(metadata i64 8192, metadata !1077, metadata !DIExpression()) #27, !dbg !1734
  %729 = icmp eq i64 %728, 0, !dbg !1736
  br i1 %729, label %743, label %730, !dbg !1737

730:                                              ; preds = %727, %741
  %731 = phi i64 [ %737, %741 ], [ %728, %727 ]
  call void @llvm.dbg.value(metadata i64 %731, metadata !1076, metadata !DIExpression()) #27, !dbg !1734
  %732 = icmp ult i64 %731, 8192, !dbg !1738
  %733 = select i1 %732, i64 %731, i64 8192, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %733, metadata !1079, metadata !DIExpression()) #27, !dbg !1739
  %734 = call i64 @safe_read(i32 %204, i8* nonnull %168, i64 %733) #27, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %734, metadata !1081, metadata !DIExpression()) #27, !dbg !1739
  %735 = icmp eq i64 %734, -1, !dbg !1741
  br i1 %735, label %744, label %736, !dbg !1742

736:                                              ; preds = %730
  %737 = sub i64 %731, %734, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %737, metadata !1076, metadata !DIExpression()) #27, !dbg !1734
  %738 = icmp eq i64 %734, 0, !dbg !1744
  %739 = icmp ne i64 %737, 0
  %740 = and i1 %738, %739, !dbg !1745
  br i1 %740, label %744, label %741, !dbg !1745

741:                                              ; preds = %736
  call fastcc void @xwrite_stdout(i8* nonnull %168, i64 %734) #27, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %737, metadata !1076, metadata !DIExpression()) #27, !dbg !1734
  %742 = icmp eq i64 %737, 0, !dbg !1736
  br i1 %742, label %743, label %730, !dbg !1737

743:                                              ; preds = %741, %727
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %168) #27, !dbg !1747
  br label %746, !dbg !1748

744:                                              ; preds = %736, %730
  %745 = phi i32 [ 2, %736 ], [ 1, %730 ], !dbg !1734
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %168) #27, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %745, metadata !1100, metadata !DIExpression()) #27, !dbg !1728
  call fastcc void @diagnose_copy_fd_failure(i32 %745, i8* %205) #27, !dbg !1749
  br label %746, !dbg !1750

746:                                              ; preds = %744, %743, %722, %718, %539, %442, %438, %226, %215
  %747 = phi i1 [ false, %215 ], [ false, %226 ], [ %441, %438 ], [ true, %442 ], [ %540, %539 ], [ %721, %718 ], [ true, %722 ], [ false, %744 ], [ true, %743 ], !dbg !1152
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %161) #27, !dbg !1751
  br label %811

748:                                              ; preds = %211
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %168) #27, !dbg !1752
  br i1 %141, label %794, label %749, !dbg !1753

749:                                              ; preds = %748
  call void @llvm.dbg.value(metadata i8* %205, metadata !1002, metadata !DIExpression()) #27, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %204, metadata !1003, metadata !DIExpression()) #27, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %87, metadata !1004, metadata !DIExpression()) #27, !dbg !1754
  br i1 %169, label %792, label %750, !dbg !1755

750:                                              ; preds = %749, %790
  %751 = phi i64 [ %787, %790 ], [ %87, %749 ]
  call void @llvm.dbg.value(metadata i64 %751, metadata !1004, metadata !DIExpression()) #27, !dbg !1754
  %752 = call i64 @safe_read(i32 %204, i8* nonnull %168, i64 8192) #27, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %752, metadata !1005, metadata !DIExpression()) #27, !dbg !1757
  call void @llvm.dbg.value(metadata i64 0, metadata !1007, metadata !DIExpression()) #27, !dbg !1757
  switch i64 %752, label %753 [
    i64 -1, label %756
    i64 0, label %792
  ], !dbg !1758

753:                                              ; preds = %750
  call void @llvm.dbg.value(metadata i64 0, metadata !1007, metadata !DIExpression()) #27, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %751, metadata !1004, metadata !DIExpression()) #27, !dbg !1754
  %754 = load i1, i1* @line_end, align 1
  %755 = select i1 %754, i32 10, i32 0
  br label %761, !dbg !1759

756:                                              ; preds = %750
  %757 = tail call i32* @__errno_location() #31, !dbg !1760
  %758 = load i32, i32* %757, align 4, !dbg !1760, !tbaa !945
  %759 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1763
  %760 = call i8* @quotearg_style(i32 4, i8* %205) #27, !dbg !1764
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %758, i8* %759, i8* %760) #27, !dbg !1765
  br label %792

761:                                              ; preds = %786, %753
  %762 = phi i64 [ 0, %753 ], [ %764, %786 ]
  %763 = phi i64 [ %751, %753 ], [ %787, %786 ]
  call void @llvm.dbg.value(metadata i64 %762, metadata !1007, metadata !DIExpression()) #27, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %763, metadata !1004, metadata !DIExpression()) #27, !dbg !1754
  %764 = add nuw i64 %762, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %764, metadata !1007, metadata !DIExpression()) #27, !dbg !1757
  %765 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 %762, !dbg !1767
  %766 = load i8, i8* %765, align 1, !dbg !1767, !tbaa !842
  %767 = sext i8 %766 to i32, !dbg !1767
  %768 = icmp eq i32 %755, %767, !dbg !1768
  br i1 %768, label %769, label %786, !dbg !1769

769:                                              ; preds = %761
  %770 = add i64 %763, -1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %770, metadata !1004, metadata !DIExpression()) #27, !dbg !1754
  %771 = icmp eq i64 %770, 0, !dbg !1771
  br i1 %771, label %772, label %786, !dbg !1772

772:                                              ; preds = %769
  %773 = sub i64 %764, %752, !dbg !1773
  call void @llvm.dbg.value(metadata i64 undef, metadata !1008, metadata !DIExpression()) #27, !dbg !1774
  %774 = call i64 @lseek(i32 %204, i64 %773, i32 1) #27, !dbg !1775
  %775 = icmp slt i64 %774, 0, !dbg !1776
  br i1 %775, label %776, label %789, !dbg !1777

776:                                              ; preds = %772
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %185) #27, !dbg !1778
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1011, metadata !DIExpression()) #27, !dbg !1779
  %777 = call i32 @fstat(i32 %204, %struct.stat* nonnull %3) #27, !dbg !1780
  %778 = icmp eq i32 %777, 0, !dbg !1782
  br i1 %778, label %779, label %783, !dbg !1783

779:                                              ; preds = %776
  %780 = load i32, i32* %186, align 8, !dbg !1784, !tbaa !1176
  %781 = and i32 %780, 61440, !dbg !1784
  %782 = icmp eq i32 %781, 32768, !dbg !1784
  br i1 %782, label %783, label %785, !dbg !1785

783:                                              ; preds = %779, %776
  %784 = call fastcc i64 @elseek(i32 %204, i64 %773, i32 1, i8* %205) #27, !dbg !1786
  br label %785, !dbg !1786

785:                                              ; preds = %783, %779
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %185) #27, !dbg !1787
  br label %789, !dbg !1788

786:                                              ; preds = %769, %761
  %787 = phi i64 [ %770, %769 ], [ %763, %761 ]
  call void @llvm.dbg.value(metadata i64 %764, metadata !1007, metadata !DIExpression()) #27, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %787, metadata !1004, metadata !DIExpression()) #27, !dbg !1754
  %788 = icmp eq i64 %764, %752, !dbg !1789
  br i1 %788, label %790, label %761, !dbg !1759, !llvm.loop !1790

789:                                              ; preds = %785, %772
  call void @llvm.dbg.value(metadata i64 %752, metadata !1007, metadata !DIExpression()) #27, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %787, metadata !1004, metadata !DIExpression()) #27, !dbg !1754
  call fastcc void @xwrite_stdout(i8* nonnull %168, i64 %764) #27, !dbg !1792
  br label %792, !dbg !1755

790:                                              ; preds = %786
  call void @llvm.dbg.value(metadata i64 %752, metadata !1007, metadata !DIExpression()) #27, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %787, metadata !1004, metadata !DIExpression()) #27, !dbg !1754
  call fastcc void @xwrite_stdout(i8* nonnull %168, i64 %752) #27, !dbg !1792
  %791 = icmp eq i64 %787, 0, !dbg !1755
  br i1 %791, label %792, label %750, !dbg !1755

792:                                              ; preds = %790, %750, %789, %756, %749
  %793 = phi i1 [ false, %756 ], [ true, %749 ], [ true, %789 ], [ true, %750 ], [ true, %790 ], !dbg !1754
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %168) #27, !dbg !1793
  br label %811, !dbg !1794

794:                                              ; preds = %748
  call void @llvm.dbg.value(metadata i8* %205, metadata !1795, metadata !DIExpression()) #27, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %204, metadata !1798, metadata !DIExpression()) #27, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %87, metadata !1799, metadata !DIExpression()) #27, !dbg !1804
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1800, metadata !DIExpression()) #27, !dbg !1806
  call void @llvm.dbg.value(metadata i64 8192, metadata !1801, metadata !DIExpression()) #27, !dbg !1804
  br i1 %169, label %809, label %795, !dbg !1807

795:                                              ; preds = %794, %806
  %796 = phi i64 [ %799, %806 ], [ 8192, %794 ]
  %797 = phi i64 [ %807, %806 ], [ %87, %794 ]
  call void @llvm.dbg.value(metadata i64 %796, metadata !1801, metadata !DIExpression()) #27, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %797, metadata !1799, metadata !DIExpression()) #27, !dbg !1804
  %798 = icmp ult i64 %797, %796, !dbg !1808
  %799 = select i1 %798, i64 %797, i64 %796, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %799, metadata !1801, metadata !DIExpression()) #27, !dbg !1804
  %800 = call i64 @safe_read(i32 %204, i8* nonnull %168, i64 %799) #27, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %800, metadata !1802, metadata !DIExpression()) #27, !dbg !1812
  switch i64 %800, label %806 [
    i64 -1, label %801
    i64 0, label %809
  ], !dbg !1813

801:                                              ; preds = %795
  %802 = tail call i32* @__errno_location() #31, !dbg !1814
  %803 = load i32, i32* %802, align 4, !dbg !1814, !tbaa !945
  %804 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1817
  %805 = call i8* @quotearg_style(i32 4, i8* %205) #27, !dbg !1818
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %803, i8* %804, i8* %805) #27, !dbg !1819
  br label %809

806:                                              ; preds = %795
  call fastcc void @xwrite_stdout(i8* nonnull %168, i64 %800) #27, !dbg !1820
  %807 = sub i64 %797, %800, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %799, metadata !1801, metadata !DIExpression()) #27, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %807, metadata !1799, metadata !DIExpression()) #27, !dbg !1804
  %808 = icmp eq i64 %807, 0, !dbg !1807
  br i1 %808, label %809, label %795, !dbg !1807

809:                                              ; preds = %806, %795, %801, %794
  %810 = phi i1 [ false, %801 ], [ true, %794 ], [ true, %795 ], [ true, %806 ], !dbg !1804
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %168) #27, !dbg !1822
  br label %811, !dbg !1823

811:                                              ; preds = %809, %792, %746
  %812 = phi i1 [ %747, %746 ], [ %793, %792 ], [ %810, %809 ], !dbg !1142
  call void @llvm.dbg.value(metadata i1 %812, metadata !974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !976
  br i1 %192, label %821, label %813, !dbg !1824

813:                                              ; preds = %811
  %814 = call i32 @close(i32 %204) #27, !dbg !1826
  %815 = icmp eq i32 %814, 0, !dbg !1827
  br i1 %815, label %821, label %816, !dbg !1828

816:                                              ; preds = %813
  %817 = tail call i32* @__errno_location() #31, !dbg !1829
  %818 = load i32, i32* %817, align 4, !dbg !1829, !tbaa !945
  %819 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i32 5) #27, !dbg !1831
  %820 = call i8* @quotearg_style(i32 4, i8* %205) #27, !dbg !1832
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %818, i8* %819, i8* %820) #27, !dbg !1833
  br label %821, !dbg !1834

821:                                              ; preds = %198, %811, %813, %816
  %822 = phi i1 [ false, %816 ], [ false, %198 ], [ %812, %813 ], [ %812, %811 ], !dbg !976
  %823 = and i1 %190, %822, !dbg !1835
  call void @llvm.dbg.value(metadata i1 %823, metadata !59, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !829
  %824 = add i64 %189, 1, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %824, metadata !62, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8 undef, metadata !59, metadata !DIExpression()), !dbg !829
  %825 = getelementptr inbounds i8*, i8** %156, i64 %824, !dbg !961
  %826 = load i8*, i8** %825, align 8, !dbg !961, !tbaa !697
  %827 = icmp eq i8* %826, null, !dbg !964
  br i1 %827, label %828, label %187, !dbg !964, !llvm.loop !1837

828:                                              ; preds = %821
  %829 = xor i1 %823, true, !dbg !1839
  %830 = zext i1 %829 to i32, !dbg !1839
  br label %831, !dbg !1839

831:                                              ; preds = %828, %151
  %832 = phi i32 [ 0, %151 ], [ %830, %828 ]
  %833 = load i1, i1* @have_read_stdin, align 1, !dbg !1839
  br i1 %833, label %834, label %840, !dbg !1841

834:                                              ; preds = %831
  %835 = call i32 @close(i32 0) #27, !dbg !1842
  %836 = icmp slt i32 %835, 0, !dbg !1843
  br i1 %836, label %837, label %840, !dbg !1844

837:                                              ; preds = %834
  %838 = tail call i32* @__errno_location() #31, !dbg !1845
  %839 = load i32, i32* %838, align 4, !dbg !1845, !tbaa !945
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %839, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #27, !dbg !1845
  unreachable, !dbg !1845

840:                                              ; preds = %834, %831
  ret i32 %832, !dbg !1846
}

; Function Attrs: nounwind
declare !dbg !1847 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1850 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1853 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !1858 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1862 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1868 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !1872 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @elseek(i32 %0, i64 %1, i32 %2, i8* %3) unnamed_addr #8 !dbg !1877 {
  %5 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1881, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %1, metadata !1882, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i32 %2, metadata !1883, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8* %3, metadata !1884, metadata !DIExpression()), !dbg !1887
  %6 = tail call i64 @lseek(i32 %0, i64 %1, i32 %2) #27, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %6, metadata !1885, metadata !DIExpression()), !dbg !1887
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1889
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %7) #27, !dbg !1889
  call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !1886, metadata !DIExpression()), !dbg !1890
  %8 = icmp slt i64 %6, 0, !dbg !1891
  br i1 %8, label %9, label %17, !dbg !1893

9:                                                ; preds = %4
  %10 = tail call i32* @__errno_location() #31, !dbg !1894
  %11 = load i32, i32* %10, align 4, !dbg !1894, !tbaa !945
  %12 = icmp eq i32 %2, 0, !dbg !1895
  %13 = select i1 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i64 0, i64 0), !dbg !1895
  %14 = tail call i8* @dcgettext(i8* null, i8* %13, i32 5) #27, !dbg !1895
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #27, !dbg !1896
  %16 = call i8* @offtostr(i64 %1, i8* nonnull %7) #27, !dbg !1897
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* %14, i8* %15, i8* %16) #27, !dbg !1898
  br label %17, !dbg !1898

17:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %7) #27, !dbg !1899
  ret i64 %6, !dbg !1900
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xwrite_stdout(i8* nocapture %0, i64 %1) unnamed_addr #8 !dbg !1901 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1905, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %1, metadata !1906, metadata !DIExpression()), !dbg !1915
  %3 = icmp eq i64 %1, 0, !dbg !1916
  br i1 %3, label %14, label %4, !dbg !1917

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1918, !tbaa !697
  %6 = tail call i64 @fwrite_unlocked(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %5), !dbg !1918
  %7 = icmp ult i64 %6, %1, !dbg !1919
  br i1 %7, label %8, label %14, !dbg !1920

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1921, !tbaa !697
  tail call void @clearerr_unlocked(%struct._IO_FILE* %9) #27, !dbg !1921
  %10 = tail call i32* @__errno_location() #31, !dbg !1923
  %11 = load i32, i32* %10, align 4, !dbg !1923, !tbaa !945
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i32 5) #27, !dbg !1923
  %13 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0)) #27, !dbg !1923
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* %12, i8* %13) #27, !dbg !1923
  unreachable, !dbg !1923

14:                                               ; preds = %4, %2
  ret void, !dbg !1924
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare !dbg !1925 i8* @memrchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @diagnose_copy_fd_failure(i32 %0, i8* %1) unnamed_addr #8 !dbg !1929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1933, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %1, metadata !1934, metadata !DIExpression()), !dbg !1935
  switch i32 %0, label %13 [
    i32 1, label %3
    i32 2, label %8
  ], !dbg !1936

3:                                                ; preds = %2
  %4 = tail call i32* @__errno_location() #31, !dbg !1937
  %5 = load i32, i32* %4, align 4, !dbg !1937, !tbaa !945
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #27, !dbg !1939
  %7 = tail call i8* @quotearg_style(i32 4, i8* %1) #27, !dbg !1940
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %5, i8* %6, i8* %7) #27, !dbg !1941
  br label %14, !dbg !1942

8:                                                ; preds = %2
  %9 = tail call i32* @__errno_location() #31, !dbg !1943
  %10 = load i32, i32* %9, align 4, !dbg !1943, !tbaa !945
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i64 0, i64 0), i32 5) #27, !dbg !1944
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #27, !dbg !1945
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11, i8* %12) #27, !dbg !1946
  br label %14, !dbg !1947

13:                                               ; preds = %2
  tail call void @abort() #29, !dbg !1948
  unreachable, !dbg !1948

14:                                               ; preds = %8, %3
  ret void, !dbg !1949
}

; Function Attrs: nounwind
declare !dbg !1950 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare !dbg !1954 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !1957 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1960 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !1963 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1965, metadata !DIExpression()), !dbg !1966
  store i8* %0, i8** @file_name, align 8, !dbg !1967, !tbaa !697
  ret void, !dbg !1968
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !1969 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1973, metadata !DIExpression()), !dbg !1974
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1975, !tbaa !1976
  ret void, !dbg !1978
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1979 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1984, !tbaa !697
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1985
  %3 = icmp eq i32 %2, 0, !dbg !1986
  br i1 %3, label %22, label %4, !dbg !1987

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1988, !tbaa !1976, !range !1989
  %6 = icmp eq i8 %5, 0, !dbg !1988
  br i1 %6, label %11, label %7, !dbg !1990

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !1991
  %9 = load i32, i32* %8, align 4, !dbg !1991, !tbaa !945
  %10 = icmp eq i32 %9, 32, !dbg !1992
  br i1 %10, label %22, label %11, !dbg !1993

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 5) #27, !dbg !1994
  call void @llvm.dbg.value(metadata i8* %12, metadata !1981, metadata !DIExpression()), !dbg !1995
  %13 = load i8*, i8** @file_name, align 8, !dbg !1996, !tbaa !697
  %14 = icmp eq i8* %13, null, !dbg !1996
  %15 = tail call i32* @__errno_location() #31, !dbg !1998
  %16 = load i32, i32* %15, align 4, !dbg !1998, !tbaa !945
  br i1 %14, label %19, label %17, !dbg !1999

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !2000
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.65, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !2001
  br label %20, !dbg !2001

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.66, i64 0, i64 0), i8* %12) #27, !dbg !2002
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2003, !tbaa !945
  tail call void @_exit(i32 %21) #29, !dbg !2004
  unreachable, !dbg !2004

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2005, !tbaa !697
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !2007
  %25 = icmp eq i32 %24, 0, !dbg !2008
  br i1 %25, label %28, label %26, !dbg !2009

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2010, !tbaa !945
  tail call void @_exit(i32 %27) #29, !dbg !2011
  unreachable, !dbg !2011

28:                                               ; preds = %22
  ret void, !dbg !2012
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @full_read(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2018, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %1, metadata !2019, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %2, metadata !2020, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 0, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %1, metadata !2022, metadata !DIExpression()), !dbg !2025
  %4 = icmp eq i64 %2, 0, !dbg !2026
  br i1 %4, label %17, label %5, !dbg !2027

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %15, %12 ], [ %2, %3 ]
  %7 = phi i8* [ %14, %12 ], [ %1, %3 ]
  %8 = phi i64 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !2020, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %7, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %8, metadata !2021, metadata !DIExpression()), !dbg !2025
  %9 = tail call i64 @safe_read(i32 %0, i8* %7, i64 %6) #27, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %9, metadata !2023, metadata !DIExpression()), !dbg !2029
  switch i64 %9, label %12 [
    i64 -1, label %17
    i64 0, label %10
  ], !dbg !2030

10:                                               ; preds = %5
  %11 = tail call i32* @__errno_location() #31, !dbg !2031
  store i32 0, i32* %11, align 4, !dbg !2034, !tbaa !945
  br label %17, !dbg !2035

12:                                               ; preds = %5
  %13 = add i64 %9, %8, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %13, metadata !2021, metadata !DIExpression()), !dbg !2025
  %14 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !2037
  call void @llvm.dbg.value(metadata i8* %14, metadata !2022, metadata !DIExpression()), !dbg !2025
  %15 = sub i64 %6, %9, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %15, metadata !2020, metadata !DIExpression()), !dbg !2025
  %16 = icmp eq i64 %15, 0, !dbg !2026
  br i1 %16, label %17, label %5, !dbg !2027

17:                                               ; preds = %12, %5, %3, %10
  %18 = phi i64 [ %8, %10 ], [ 0, %3 ], [ %13, %12 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !2021, metadata !DIExpression()), !dbg !2025
  ret i64 %18, !dbg !2039
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @offtostr(i64 %0, i8* %1) local_unnamed_addr #15 !dbg !2040 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2045, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %1, metadata !2046, metadata !DIExpression()), !dbg !2048
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2049
  call void @llvm.dbg.value(metadata i8* %3, metadata !2047, metadata !DIExpression()), !dbg !2048
  store i8 0, i8* %3, align 1, !dbg !2050, !tbaa !842
  %4 = icmp slt i64 %0, 0, !dbg !2051
  br i1 %4, label %5, label %17, !dbg !2053

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %0, %2 ]
  %7 = phi i8* [ %11, %5 ], [ %3, %2 ], !dbg !2048
  call void @llvm.dbg.value(metadata i8* %7, metadata !2047, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %6, metadata !2045, metadata !DIExpression()), !dbg !2048
  %8 = srem i64 %6, 10, !dbg !2054
  %9 = trunc i64 %8 to i8, !dbg !2056
  %10 = sub nsw i8 48, %9, !dbg !2056
  %11 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !2057
  call void @llvm.dbg.value(metadata i8* %11, metadata !2047, metadata !DIExpression()), !dbg !2048
  store i8 %10, i8* %11, align 1, !dbg !2058, !tbaa !842
  %12 = sdiv i64 %6, 10, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %12, metadata !2045, metadata !DIExpression()), !dbg !2048
  %13 = add i64 %6, 9, !dbg !2060
  %14 = icmp ult i64 %13, 19, !dbg !2060
  br i1 %14, label %15, label %5, !dbg !2061, !llvm.loop !2062

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, i8* %7, i64 -2, !dbg !2065
  call void @llvm.dbg.value(metadata i8* %16, metadata !2047, metadata !DIExpression()), !dbg !2048
  store i8 45, i8* %16, align 1, !dbg !2066, !tbaa !842
  br label %27, !dbg !2067

17:                                               ; preds = %2, %17
  %18 = phi i64 [ %24, %17 ], [ %0, %2 ]
  %19 = phi i8* [ %23, %17 ], [ %3, %2 ], !dbg !2048
  call void @llvm.dbg.value(metadata i8* %19, metadata !2047, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %18, metadata !2045, metadata !DIExpression()), !dbg !2048
  %20 = srem i64 %18, 10, !dbg !2068
  %21 = trunc i64 %20 to i8, !dbg !2070
  %22 = add nsw i8 %21, 48, !dbg !2070
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2071
  call void @llvm.dbg.value(metadata i8* %23, metadata !2047, metadata !DIExpression()), !dbg !2048
  store i8 %22, i8* %23, align 1, !dbg !2072, !tbaa !842
  %24 = sdiv i64 %18, 10, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %24, metadata !2045, metadata !DIExpression()), !dbg !2048
  %25 = add i64 %18, 9, !dbg !2074
  %26 = icmp ult i64 %25, 19, !dbg !2074
  br i1 %26, label %27, label %17, !dbg !2075, !llvm.loop !2076

27:                                               ; preds = %17, %15
  %28 = phi i8* [ %16, %15 ], [ %23, %17 ], !dbg !2079
  call void @llvm.dbg.value(metadata i8* %28, metadata !2047, metadata !DIExpression()), !dbg !2048
  ret i8* %28, !dbg !2080
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #15 !dbg !2081 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2085, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %1, metadata !2086, metadata !DIExpression()), !dbg !2088
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2089
  call void @llvm.dbg.value(metadata i8* %3, metadata !2087, metadata !DIExpression()), !dbg !2088
  store i8 0, i8* %3, align 1, !dbg !2090, !tbaa !842
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2088
  call void @llvm.dbg.value(metadata i8* %6, metadata !2087, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %5, metadata !2085, metadata !DIExpression()), !dbg !2088
  %7 = urem i64 %5, 10, !dbg !2091
  %8 = trunc i64 %7 to i8, !dbg !2094
  %9 = or i8 %8, 48, !dbg !2094
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2095
  call void @llvm.dbg.value(metadata i8* %10, metadata !2087, metadata !DIExpression()), !dbg !2088
  store i8 %9, i8* %10, align 1, !dbg !2096, !tbaa !842
  %11 = udiv i64 %5, 10, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %11, metadata !2085, metadata !DIExpression()), !dbg !2088
  %12 = icmp ult i64 %5, 10, !dbg !2098
  br i1 %12, label %13, label %4, !dbg !2099, !llvm.loop !2100

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2087, metadata !DIExpression()), !dbg !2088
  ret i8* %10, !dbg !2103
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2104 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2106, metadata !DIExpression()), !dbg !2109
  %2 = icmp eq i8* %0, null, !dbg !2110
  br i1 %2, label %3, label %6, !dbg !2112

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2113, !tbaa !697
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !2115
  tail call void @abort() #29, !dbg !2116
  unreachable, !dbg !2116

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !2117
  call void @llvm.dbg.value(metadata i8* %7, metadata !2107, metadata !DIExpression()), !dbg !2109
  %8 = icmp eq i8* %7, null, !dbg !2118
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2119
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2119
  call void @llvm.dbg.value(metadata i8* %10, metadata !2108, metadata !DIExpression()), !dbg !2109
  %11 = ptrtoint i8* %10 to i64, !dbg !2120
  %12 = ptrtoint i8* %0 to i64, !dbg !2120
  %13 = sub i64 %11, %12, !dbg !2120
  %14 = icmp sgt i64 %13, 6, !dbg !2122
  br i1 %14, label %15, label %24, !dbg !2123

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2124
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.80, i64 0, i64 0), i64 7) #28, !dbg !2125
  %18 = icmp eq i32 %17, 0, !dbg !2126
  br i1 %18, label %19, label %24, !dbg !2127

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2106, metadata !DIExpression()), !dbg !2109
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i64 3) #28, !dbg !2128
  %21 = icmp eq i32 %20, 0, !dbg !2131
  br i1 %21, label %22, label %24, !dbg !2132

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %23, metadata !2106, metadata !DIExpression()), !dbg !2109
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2135, !tbaa !697
  br label %24, !dbg !2136

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2106, metadata !DIExpression()), !dbg !2109
  store i8* %25, i8** @program_name, align 8, !dbg !2137, !tbaa !697
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2138, !tbaa !697
  ret void, !dbg !2139
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2140 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2145, metadata !DIExpression()), !dbg !2148
  %2 = tail call i32* @__errno_location() #31, !dbg !2149
  %3 = load i32, i32* %2, align 4, !dbg !2149, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %3, metadata !2146, metadata !DIExpression()), !dbg !2148
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2150
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2150
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2150
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !2151
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2151
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2147, metadata !DIExpression()), !dbg !2148
  store i32 %3, i32* %2, align 4, !dbg !2152, !tbaa !945
  ret %struct.quoting_options* %8, !dbg !2153
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !2154 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2160, metadata !DIExpression()), !dbg !2161
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2162
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2162
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2163
  %5 = load i32, i32* %4, align 8, !dbg !2163, !tbaa !2164
  ret i32 %5, !dbg !2166
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2167 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %1, metadata !2172, metadata !DIExpression()), !dbg !2173
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2174
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2174
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2175
  store i32 %1, i32* %5, align 8, !dbg !2176, !tbaa !2164
  ret void, !dbg !2177
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !2178 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2182, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 %1, metadata !2183, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 %2, metadata !2184, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 %1, metadata !2185, metadata !DIExpression()), !dbg !2190
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2191
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2191
  %6 = lshr i8 %1, 5, !dbg !2192
  %7 = zext i8 %6 to i64, !dbg !2192
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2193
  call void @llvm.dbg.value(metadata i32* %8, metadata !2186, metadata !DIExpression()), !dbg !2190
  %9 = and i8 %1, 31, !dbg !2194
  %10 = zext i8 %9 to i32, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %10, metadata !2188, metadata !DIExpression()), !dbg !2190
  %11 = load i32, i32* %8, align 4, !dbg !2195, !tbaa !945
  %12 = lshr i32 %11, %10, !dbg !2196
  %13 = and i32 %12, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %13, metadata !2189, metadata !DIExpression()), !dbg !2190
  %14 = and i32 %2, 1, !dbg !2198
  %15 = xor i32 %13, %14, !dbg !2199
  %16 = shl i32 %15, %10, !dbg !2200
  %17 = xor i32 %16, %11, !dbg !2201
  store i32 %17, i32* %8, align 4, !dbg !2201, !tbaa !945
  ret i32 %13, !dbg !2202
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !2203 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 %1, metadata !2208, metadata !DIExpression()), !dbg !2210
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2211
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2207, metadata !DIExpression()), !dbg !2210
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2214
  %6 = load i32, i32* %5, align 4, !dbg !2214, !tbaa !2215
  call void @llvm.dbg.value(metadata i32 %6, metadata !2209, metadata !DIExpression()), !dbg !2210
  store i32 %1, i32* %5, align 4, !dbg !2216, !tbaa !2215
  ret i32 %6, !dbg !2217
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2218 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* %1, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* %2, metadata !2224, metadata !DIExpression()), !dbg !2225
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2226
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2222, metadata !DIExpression()), !dbg !2225
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2229
  store i32 10, i32* %6, align 8, !dbg !2230, !tbaa !2164
  %7 = icmp ne i8* %1, null, !dbg !2231
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2233
  br i1 %9, label %11, label %10, !dbg !2233

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !2234
  unreachable, !dbg !2234

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2235
  store i8* %1, i8** %12, align 8, !dbg !2236, !tbaa !2237
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2238
  store i8* %2, i8** %13, align 8, !dbg !2239, !tbaa !2240
  ret void, !dbg !2241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2242 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2246, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %1, metadata !2247, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8* %2, metadata !2248, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %3, metadata !2249, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2250, metadata !DIExpression()), !dbg !2254
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2255
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2251, metadata !DIExpression()), !dbg !2254
  %8 = tail call i32* @__errno_location() #31, !dbg !2256
  %9 = load i32, i32* %8, align 4, !dbg !2256, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %9, metadata !2252, metadata !DIExpression()), !dbg !2254
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2257
  %11 = load i32, i32* %10, align 8, !dbg !2257, !tbaa !2164
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2258
  %13 = load i32, i32* %12, align 4, !dbg !2258, !tbaa !2215
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2259
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2260
  %16 = load i8*, i8** %15, align 8, !dbg !2260, !tbaa !2237
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2261
  %18 = load i8*, i8** %17, align 8, !dbg !2261, !tbaa !2240
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2262
  call void @llvm.dbg.value(metadata i64 %19, metadata !2253, metadata !DIExpression()), !dbg !2254
  store i32 %9, i32* %8, align 4, !dbg !2263, !tbaa !945
  ret i64 %19, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2265 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2271, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %1, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %2, metadata !2273, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %3, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 %4, metadata !2275, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 %5, metadata !2276, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32* %6, metadata !2277, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %7, metadata !2278, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %8, metadata !2279, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 0, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 0, metadata !2282, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* null, metadata !2283, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 0, metadata !2284, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2285, metadata !DIExpression()), !dbg !2341
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !2342
  %14 = icmp eq i64 %13, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i1 %14, metadata !2286, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2341
  %15 = lshr i32 %5, 1, !dbg !2344
  %16 = trunc i32 %15 to i8, !dbg !2344
  %17 = and i8 %16, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i8 %17, metadata !2287, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2289, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 1, metadata !2290, metadata !DIExpression()), !dbg !2341
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2345

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2346
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2347
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2348
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2349
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2341
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2350
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2351
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2352
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %38, metadata !2290, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %37, metadata !2289, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %36, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %35, metadata !2287, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %34, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %33, metadata !2285, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %32, metadata !2284, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %31, metadata !2283, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %30, metadata !2282, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 0, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %29, metadata !2279, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %28, metadata !2278, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 %27, metadata !2275, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.label(metadata !2335), !dbg !2353
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
  ], !dbg !2354

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2287, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 5, metadata !2275, metadata !DIExpression()), !dbg !2341
  br label %92, !dbg !2355

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2287, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 5, metadata !2275, metadata !DIExpression()), !dbg !2341
  %42 = and i8 %35, 1, !dbg !2357
  %43 = icmp eq i8 %42, 0, !dbg !2357
  br i1 %43, label %44, label %92, !dbg !2355

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2359
  br i1 %45, label %92, label %46, !dbg !2362

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2359, !tbaa !842
  br label %92, !dbg !2359

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 %27), !dbg !2363
  call void @llvm.dbg.value(metadata i8* %48, metadata !2278, metadata !DIExpression()), !dbg !2341
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 %27), !dbg !2367
  call void @llvm.dbg.value(metadata i8* %49, metadata !2279, metadata !DIExpression()), !dbg !2341
  br label %50, !dbg !2368

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2279, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %51, metadata !2278, metadata !DIExpression()), !dbg !2341
  %53 = and i8 %35, 1, !dbg !2369
  %54 = icmp eq i8 %53, 0, !dbg !2369
  br i1 %54, label %55, label %70, !dbg !2371

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2283, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 0, metadata !2281, metadata !DIExpression()), !dbg !2341
  %56 = load i8, i8* %51, align 1, !dbg !2372, !tbaa !842
  %57 = icmp eq i8 %56, 0, !dbg !2375
  br i1 %57, label %70, label %58, !dbg !2375

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2283, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %61, metadata !2281, metadata !DIExpression()), !dbg !2341
  %62 = icmp ult i64 %61, %39, !dbg !2376
  br i1 %62, label %63, label %65, !dbg !2379

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2376
  store i8 %59, i8* %64, align 1, !dbg !2376, !tbaa !842
  br label %65, !dbg !2376

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %66, metadata !2281, metadata !DIExpression()), !dbg !2341
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2380
  call void @llvm.dbg.value(metadata i8* %67, metadata !2283, metadata !DIExpression()), !dbg !2341
  %68 = load i8, i8* %67, align 1, !dbg !2372, !tbaa !842
  %69 = icmp eq i8 %68, 0, !dbg !2375
  br i1 %69, label %70, label %58, !dbg !2375, !llvm.loop !2381

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2383
  call void @llvm.dbg.value(metadata i64 %71, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 1, metadata !2285, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %52, metadata !2283, metadata !DIExpression()), !dbg !2341
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %72, metadata !2284, metadata !DIExpression()), !dbg !2341
  br label %92, !dbg !2385

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2285, metadata !DIExpression()), !dbg !2341
  br label %74, !dbg !2386

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2341
  call void @llvm.dbg.value(metadata i8 %75, metadata !2285, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 1, metadata !2287, metadata !DIExpression()), !dbg !2341
  br label %76, !dbg !2387

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2349
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2341
  call void @llvm.dbg.value(metadata i8 %78, metadata !2287, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %77, metadata !2285, metadata !DIExpression()), !dbg !2341
  %79 = and i8 %78, 1, !dbg !2388
  %80 = icmp eq i8 %79, 0, !dbg !2388
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2390
  br label %82, !dbg !2390

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2341
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2344
  call void @llvm.dbg.value(metadata i8 %84, metadata !2287, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %83, metadata !2285, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 2, metadata !2275, metadata !DIExpression()), !dbg !2341
  %85 = and i8 %84, 1, !dbg !2391
  %86 = icmp eq i8 %85, 0, !dbg !2391
  br i1 %86, label %87, label %92, !dbg !2393

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2394
  br i1 %88, label %92, label %89, !dbg !2397

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2394, !tbaa !842
  br label %92, !dbg !2394

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2287, metadata !DIExpression()), !dbg !2341
  br label %92, !dbg !2398

91:                                               ; preds = %26
  call void @abort() #29, !dbg !2399
  unreachable, !dbg !2399

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2383
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %40 ], !dbg !2341
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2341
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2341
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2341
  call void @llvm.dbg.value(metadata i8 %100, metadata !2287, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %99, metadata !2285, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %98, metadata !2284, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %97, metadata !2283, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %96, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %95, metadata !2279, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %94, metadata !2278, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 %93, metadata !2275, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 0, metadata !2280, metadata !DIExpression()), !dbg !2341
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
  br label %121, !dbg !2400

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2401
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2383
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2346
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2350
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2351
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2352
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %128, metadata !2290, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %127, metadata !2289, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %126, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %125, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %124, metadata !2282, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %123, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %122, metadata !2280, metadata !DIExpression()), !dbg !2341
  %130 = icmp eq i64 %125, -1, !dbg !2402
  br i1 %130, label %131, label %135, !dbg !2403

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2404
  %133 = load i8, i8* %132, align 1, !dbg !2404, !tbaa !842
  %134 = icmp eq i8 %133, 0, !dbg !2405
  br i1 %134, label %587, label %137, !dbg !2406

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2407
  br i1 %136, label %587, label %137, !dbg !2406

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2296, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 0, metadata !2297, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 0, metadata !2298, metadata !DIExpression()), !dbg !2408
  br i1 %106, label %138, label %153, !dbg !2409

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2411
  %140 = and i1 %107, %130, !dbg !2412
  br i1 %140, label %141, label %143, !dbg !2412

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %142, metadata !2274, metadata !DIExpression()), !dbg !2341
  br label %143, !dbg !2414

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2414
  call void @llvm.dbg.value(metadata i64 %144, metadata !2274, metadata !DIExpression()), !dbg !2341
  %145 = icmp ugt i64 %139, %144, !dbg !2415
  br i1 %145, label %153, label %146, !dbg !2416

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2417
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2418
  %149 = icmp ne i32 %148, 0, !dbg !2419
  %150 = or i1 %149, %109, !dbg !2420
  %151 = xor i1 %149, true, !dbg !2420
  %152 = zext i1 %151 to i8, !dbg !2420
  br i1 %150, label %153, label %646, !dbg !2420

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2408
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2408
  call void @llvm.dbg.value(metadata i8 %156, metadata !2296, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 %154, metadata !2274, metadata !DIExpression()), !dbg !2341
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2421
  %158 = load i8, i8* %157, align 1, !dbg !2421, !tbaa !842
  call void @llvm.dbg.value(metadata i8 %158, metadata !2291, metadata !DIExpression()), !dbg !2408
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
  ], !dbg !2422

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2423

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2424

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2297, metadata !DIExpression()), !dbg !2408
  %162 = and i8 %126, 1, !dbg !2428
  %163 = icmp eq i8 %162, 0, !dbg !2428
  %164 = and i1 %110, %163, !dbg !2428
  br i1 %164, label %165, label %181, !dbg !2428

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2430
  br i1 %166, label %167, label %169, !dbg !2434

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2430
  store i8 39, i8* %168, align 1, !dbg !2430, !tbaa !842
  br label %169, !dbg !2430

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %170, metadata !2281, metadata !DIExpression()), !dbg !2341
  %171 = icmp ult i64 %170, %129, !dbg !2435
  br i1 %171, label %172, label %174, !dbg !2438

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2435
  store i8 36, i8* %173, align 1, !dbg !2435, !tbaa !842
  br label %174, !dbg !2435

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %175, metadata !2281, metadata !DIExpression()), !dbg !2341
  %176 = icmp ult i64 %175, %129, !dbg !2439
  br i1 %176, label %177, label %179, !dbg !2442

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2439
  store i8 39, i8* %178, align 1, !dbg !2439, !tbaa !842
  br label %179, !dbg !2439

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %180, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 1, metadata !2288, metadata !DIExpression()), !dbg !2341
  br label %181, !dbg !2443

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2341
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2341
  call void @llvm.dbg.value(metadata i8 %183, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %182, metadata !2281, metadata !DIExpression()), !dbg !2341
  %184 = icmp ult i64 %182, %129, !dbg !2444
  br i1 %184, label %185, label %187, !dbg !2447

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2444
  store i8 92, i8* %186, align 1, !dbg !2444, !tbaa !842
  br label %187, !dbg !2444

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %188, metadata !2281, metadata !DIExpression()), !dbg !2341
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2448
  br i1 %191, label %192, label %473, !dbg !2448

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2450
  %194 = load i8, i8* %193, align 1, !dbg !2450, !tbaa !842
  %195 = add i8 %194, -48, !dbg !2451
  %196 = icmp ult i8 %195, 10, !dbg !2451
  br i1 %196, label %197, label %473, !dbg !2451

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2452
  br i1 %198, label %199, label %201, !dbg !2456

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2452
  store i8 48, i8* %200, align 1, !dbg !2452, !tbaa !842
  br label %201, !dbg !2452

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %202, metadata !2281, metadata !DIExpression()), !dbg !2341
  %203 = icmp ult i64 %202, %129, !dbg !2457
  br i1 %203, label %204, label %206, !dbg !2460

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2457
  store i8 48, i8* %205, align 1, !dbg !2457, !tbaa !842
  br label %206, !dbg !2457

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %207, metadata !2281, metadata !DIExpression()), !dbg !2341
  br label %473, !dbg !2461

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2462

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2463

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2464

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2466
  br i1 %214, label %215, label %473, !dbg !2466

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2468
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2469
  %218 = load i8, i8* %217, align 1, !dbg !2469, !tbaa !842
  %219 = icmp eq i8 %218, 63, !dbg !2470
  br i1 %219, label %220, label %473, !dbg !2471

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2472
  %222 = load i8, i8* %221, align 1, !dbg !2472, !tbaa !842
  %223 = sext i8 %222 to i32, !dbg !2472
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
  ], !dbg !2473

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2474

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2291, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 undef, metadata !2280, metadata !DIExpression()), !dbg !2341
  %226 = icmp ult i64 %123, %129, !dbg !2476
  br i1 %226, label %227, label %229, !dbg !2479

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2476
  store i8 63, i8* %228, align 1, !dbg !2476, !tbaa !842
  br label %229, !dbg !2476

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %230, metadata !2281, metadata !DIExpression()), !dbg !2341
  %231 = icmp ult i64 %230, %129, !dbg !2480
  br i1 %231, label %232, label %234, !dbg !2483

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2480
  store i8 34, i8* %233, align 1, !dbg !2480, !tbaa !842
  br label %234, !dbg !2480

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %235, metadata !2281, metadata !DIExpression()), !dbg !2341
  %236 = icmp ult i64 %235, %129, !dbg !2484
  br i1 %236, label %237, label %239, !dbg !2487

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2484
  store i8 34, i8* %238, align 1, !dbg !2484, !tbaa !842
  br label %239, !dbg !2484

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %240, metadata !2281, metadata !DIExpression()), !dbg !2341
  %241 = icmp ult i64 %240, %129, !dbg !2488
  br i1 %241, label %242, label %244, !dbg !2491

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2488
  store i8 63, i8* %243, align 1, !dbg !2488, !tbaa !842
  br label %244, !dbg !2488

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %245, metadata !2281, metadata !DIExpression()), !dbg !2341
  br label %473, !dbg !2492

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2295, metadata !DIExpression()), !dbg !2408
  br label %256, !dbg !2493

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2295, metadata !DIExpression()), !dbg !2408
  br label %256, !dbg !2494

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2295, metadata !DIExpression()), !dbg !2408
  br label %254, !dbg !2495

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2295, metadata !DIExpression()), !dbg !2408
  br label %254, !dbg !2496

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2295, metadata !DIExpression()), !dbg !2408
  br label %256, !dbg !2497

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2295, metadata !DIExpression()), !dbg !2408
  br i1 %110, label %252, label %253, !dbg !2498

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2499

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2502

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2504
  call void @llvm.dbg.value(metadata i8 %255, metadata !2295, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.label(metadata !2336), !dbg !2505
  br i1 %111, label %256, label %631, !dbg !2506

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2504
  call void @llvm.dbg.value(metadata i8 %257, metadata !2295, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.label(metadata !2337), !dbg !2508
  br i1 %102, label %495, label %473, !dbg !2509

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2510

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2511, !tbaa !842
  %261 = icmp eq i8 %260, 0, !dbg !2513
  br i1 %261, label %262, label %473, !dbg !2514

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2515
  br i1 %263, label %264, label %473, !dbg !2517

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2298, metadata !DIExpression()), !dbg !2408
  br label %265, !dbg !2518

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2408
  call void @llvm.dbg.value(metadata i8 %266, metadata !2298, metadata !DIExpression()), !dbg !2408
  br i1 %111, label %473, label %631, !dbg !2519

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2289, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 1, metadata !2298, metadata !DIExpression()), !dbg !2408
  br i1 %110, label %268, label %473, !dbg !2521

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2522

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2525
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2527
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2527
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2527
  call void @llvm.dbg.value(metadata i64 %274, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %273, metadata !2282, metadata !DIExpression()), !dbg !2341
  %275 = icmp ult i64 %123, %274, !dbg !2528
  br i1 %275, label %276, label %278, !dbg !2531

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2528
  store i8 39, i8* %277, align 1, !dbg !2528, !tbaa !842
  br label %278, !dbg !2528

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %279, metadata !2281, metadata !DIExpression()), !dbg !2341
  %280 = icmp ult i64 %279, %274, !dbg !2532
  br i1 %280, label %281, label %283, !dbg !2535

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2532
  store i8 92, i8* %282, align 1, !dbg !2532, !tbaa !842
  br label %283, !dbg !2532

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %284, metadata !2281, metadata !DIExpression()), !dbg !2341
  %285 = icmp ult i64 %284, %274, !dbg !2536
  br i1 %285, label %286, label %288, !dbg !2539

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2536
  store i8 39, i8* %287, align 1, !dbg !2536, !tbaa !842
  br label %288, !dbg !2536

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %289, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2288, metadata !DIExpression()), !dbg !2341
  br label %473, !dbg !2540

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2541

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2299, metadata !DIExpression()), !dbg !2542
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !2543
  %293 = load i16*, i16** %292, align 8, !dbg !2543, !tbaa !697
  %294 = zext i8 %158 to i64, !dbg !2543
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2543
  %296 = load i16, i16* %295, align 2, !dbg !2543, !tbaa !2545
  %297 = lshr i16 %296, 14, !dbg !2547
  %298 = trunc i16 %297 to i8, !dbg !2547
  %299 = and i8 %298, 1, !dbg !2547
  call void @llvm.dbg.value(metadata i8 %354, metadata !2302, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 %355, metadata !2299, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 %306, metadata !2274, metadata !DIExpression()), !dbg !2341
  %300 = icmp eq i8 %299, 0, !dbg !2548
  call void @llvm.dbg.value(metadata i1 %357, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2408
  br label %359, !dbg !2549

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2550
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2303, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %23, metadata !2552, metadata !DIExpression()) #27, !dbg !2559
  call void @llvm.dbg.value(metadata i32 0, metadata !2557, metadata !DIExpression()) #27, !dbg !2559
  call void @llvm.dbg.value(metadata i64 8, metadata !2558, metadata !DIExpression()) #27, !dbg !2559
  store i64 0, i64* %10, align 8, !dbg !2561
  call void @llvm.dbg.value(metadata i64 0, metadata !2299, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 1, metadata !2302, metadata !DIExpression()), !dbg !2542
  %302 = icmp eq i64 %154, -1, !dbg !2562
  br i1 %302, label %303, label %305, !dbg !2564

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %304, metadata !2274, metadata !DIExpression()), !dbg !2341
  br label %305, !dbg !2566

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2408
  call void @llvm.dbg.value(metadata i64 %306, metadata !2274, metadata !DIExpression()), !dbg !2341
  br label %307, !dbg !2567

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2568
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2569
  call void @llvm.dbg.value(metadata i8 %309, metadata !2302, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 %308, metadata !2299, metadata !DIExpression()), !dbg !2542
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2570
  %310 = add i64 %308, %122, !dbg !2571
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2572
  %312 = sub i64 %306, %310, !dbg !2573
  call void @llvm.dbg.value(metadata i32* %12, metadata !2321, metadata !DIExpression(DW_OP_deref)), !dbg !2574
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %313, metadata !2324, metadata !DIExpression()), !dbg !2574
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2576

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2299, metadata !DIExpression()), !dbg !2542
  %315 = icmp ugt i64 %306, %310, !dbg !2577
  br i1 %315, label %316, label %341, !dbg !2579

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2580
  br label %318, !dbg !2580

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2299, metadata !DIExpression()), !dbg !2542
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2581
  %322 = load i8, i8* %321, align 1, !dbg !2581, !tbaa !842
  %323 = icmp eq i8 %322, 0, !dbg !2579
  br i1 %323, label %341, label %324, !dbg !2580

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %325, metadata !2299, metadata !DIExpression()), !dbg !2542
  %326 = add i64 %325, %122, !dbg !2583
  %327 = icmp ult i64 %326, %306, !dbg !2577
  br i1 %327, label %318, label %341, !dbg !2579, !llvm.loop !2584

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2585
  call void @llvm.dbg.value(metadata i64 1, metadata !2325, metadata !DIExpression()), !dbg !2586
  br i1 %330, label %331, label %344, !dbg !2585

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2325, metadata !DIExpression()), !dbg !2586
  %333 = add i64 %332, %310, !dbg !2587
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2590
  %335 = load i8, i8* %334, align 1, !dbg !2590, !tbaa !842
  %336 = sext i8 %335 to i32, !dbg !2590
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2591

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %338, metadata !2325, metadata !DIExpression()), !dbg !2586
  %339 = icmp eq i64 %338, %313, !dbg !2593
  br i1 %339, label %344, label %331, !dbg !2594, !llvm.loop !2595

340:                                              ; preds = %307
  br label %341, !dbg !2597

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2302, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 undef, metadata !2299, metadata !DIExpression()), !dbg !2542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2597
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2598, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %345, metadata !2321, metadata !DIExpression()), !dbg !2574
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !2600
  %347 = icmp eq i32 %346, 0, !dbg !2600
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2601
  call void @llvm.dbg.value(metadata i8 %348, metadata !2302, metadata !DIExpression()), !dbg !2542
  %349 = add i64 %313, %308, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %349, metadata !2299, metadata !DIExpression()), !dbg !2542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2597
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !2603
  %351 = icmp eq i32 %350, 0, !dbg !2604
  br i1 %351, label %307, label %353, !dbg !2605, !llvm.loop !2606

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2302, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 undef, metadata !2299, metadata !DIExpression()), !dbg !2542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2597
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2608
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2608
  call void @llvm.dbg.value(metadata i8 %354, metadata !2302, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 %355, metadata !2299, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 %306, metadata !2274, metadata !DIExpression()), !dbg !2341
  %356 = and i8 %354, 1, !dbg !2548
  %357 = icmp eq i8 %356, 0, !dbg !2548
  call void @llvm.dbg.value(metadata i1 %357, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2408
  %358 = icmp ugt i64 %355, 1, !dbg !2609
  br i1 %358, label %367, label %359, !dbg !2549

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2610
  br i1 %364, label %367, label %365, !dbg !2610

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i8 %472, metadata !2298, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %441, metadata !2297, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %440, metadata !2296, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %439, metadata !2291, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %438, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %371, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %437, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %375, metadata !2280, metadata !DIExpression()), !dbg !2341
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %372, metadata !2332, metadata !DIExpression()), !dbg !2612
  %373 = and i1 %102, %368
  br label %374, !dbg !2613

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2401
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2341
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2350
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2408
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2408
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2614
  call void @llvm.dbg.value(metadata i8 %380, metadata !2297, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %379, metadata !2296, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %378, metadata !2291, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %377, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %376, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %375, metadata !2280, metadata !DIExpression()), !dbg !2341
  br i1 %373, label %381, label %427, !dbg !2615

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2620

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2297, metadata !DIExpression()), !dbg !2408
  %383 = and i8 %377, 1, !dbg !2623
  %384 = icmp eq i8 %383, 0, !dbg !2623
  %385 = and i1 %110, %384, !dbg !2623
  br i1 %385, label %386, label %402, !dbg !2623

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2625
  br i1 %387, label %388, label %390, !dbg !2629

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2625
  store i8 39, i8* %389, align 1, !dbg !2625, !tbaa !842
  br label %390, !dbg !2625

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %391, metadata !2281, metadata !DIExpression()), !dbg !2341
  %392 = icmp ult i64 %391, %129, !dbg !2630
  br i1 %392, label %393, label %395, !dbg !2633

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2630
  store i8 36, i8* %394, align 1, !dbg !2630, !tbaa !842
  br label %395, !dbg !2630

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %396, metadata !2281, metadata !DIExpression()), !dbg !2341
  %397 = icmp ult i64 %396, %129, !dbg !2634
  br i1 %397, label %398, label %400, !dbg !2637

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2634
  store i8 39, i8* %399, align 1, !dbg !2634, !tbaa !842
  br label %400, !dbg !2634

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %401, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 1, metadata !2288, metadata !DIExpression()), !dbg !2341
  br label %402, !dbg !2638

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2341
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2341
  call void @llvm.dbg.value(metadata i8 %404, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %403, metadata !2281, metadata !DIExpression()), !dbg !2341
  %405 = icmp ult i64 %403, %129, !dbg !2639
  br i1 %405, label %406, label %408, !dbg !2642

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2639
  store i8 92, i8* %407, align 1, !dbg !2639, !tbaa !842
  br label %408, !dbg !2639

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %409, metadata !2281, metadata !DIExpression()), !dbg !2341
  %410 = icmp ult i64 %409, %129, !dbg !2643
  br i1 %410, label %411, label %415, !dbg !2646

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2643
  %413 = or i8 %412, 48, !dbg !2643
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2643
  store i8 %413, i8* %414, align 1, !dbg !2643, !tbaa !842
  br label %415, !dbg !2643

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %416, metadata !2281, metadata !DIExpression()), !dbg !2341
  %417 = icmp ult i64 %416, %129, !dbg !2647
  br i1 %417, label %418, label %423, !dbg !2650

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2647
  %420 = and i8 %419, 7, !dbg !2647
  %421 = or i8 %420, 48, !dbg !2647
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2647
  store i8 %421, i8* %422, align 1, !dbg !2647, !tbaa !842
  br label %423, !dbg !2647

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %424, metadata !2281, metadata !DIExpression()), !dbg !2341
  %425 = and i8 %378, 7, !dbg !2651
  %426 = or i8 %425, 48, !dbg !2652
  call void @llvm.dbg.value(metadata i8 %426, metadata !2291, metadata !DIExpression()), !dbg !2408
  br label %436, !dbg !2653

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2654
  %429 = icmp eq i8 %428, 0, !dbg !2654
  br i1 %429, label %436, label %430, !dbg !2656

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2657
  br i1 %431, label %432, label %434, !dbg !2661

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2657
  store i8 92, i8* %433, align 1, !dbg !2657, !tbaa !842
  br label %434, !dbg !2657

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %435, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2296, metadata !DIExpression()), !dbg !2408
  br label %436, !dbg !2662

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2341
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2350
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2408
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2408
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2408
  call void @llvm.dbg.value(metadata i8 %441, metadata !2297, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %440, metadata !2296, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %439, metadata !2291, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %438, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %437, metadata !2281, metadata !DIExpression()), !dbg !2341
  %442 = add i64 %375, 1, !dbg !2663
  %443 = icmp ugt i64 %372, %442, !dbg !2665
  br i1 %443, label %444, label %471, !dbg !2666

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2667
  %446 = icmp ne i8 %445, 0, !dbg !2667
  %447 = and i8 %441, 1, !dbg !2667
  %448 = icmp eq i8 %447, 0, !dbg !2667
  %449 = and i1 %446, %448, !dbg !2667
  br i1 %449, label %450, label %461, !dbg !2667

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2670
  br i1 %451, label %452, label %454, !dbg !2674

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2670
  store i8 39, i8* %453, align 1, !dbg !2670, !tbaa !842
  br label %454, !dbg !2670

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %455, metadata !2281, metadata !DIExpression()), !dbg !2341
  %456 = icmp ult i64 %455, %129, !dbg !2675
  br i1 %456, label %457, label %459, !dbg !2678

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2675
  store i8 39, i8* %458, align 1, !dbg !2675, !tbaa !842
  br label %459, !dbg !2675

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %460, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2288, metadata !DIExpression()), !dbg !2341
  br label %461, !dbg !2679

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2680
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2341
  call void @llvm.dbg.value(metadata i8 %463, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %462, metadata !2281, metadata !DIExpression()), !dbg !2341
  %464 = icmp ult i64 %462, %129, !dbg !2681
  br i1 %464, label %465, label %467, !dbg !2684

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2681
  store i8 %439, i8* %466, align 1, !dbg !2681, !tbaa !842
  br label %467, !dbg !2681

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %468, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %442, metadata !2280, metadata !DIExpression()), !dbg !2341
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2685
  %470 = load i8, i8* %469, align 1, !dbg !2685, !tbaa !842
  call void @llvm.dbg.value(metadata i8 %470, metadata !2291, metadata !DIExpression()), !dbg !2408
  br label %374, !dbg !2686, !llvm.loop !2687

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i8 %472, metadata !2298, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %441, metadata !2297, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %440, metadata !2296, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %439, metadata !2291, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %438, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %371, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %437, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %375, metadata !2280, metadata !DIExpression()), !dbg !2341
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2401
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2341
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2346
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2690
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2341
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2341
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2408
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2408
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2408
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %482, metadata !2298, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %481, metadata !2297, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %156, metadata !2296, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %480, metadata !2291, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %479, metadata !2289, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %478, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %477, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %476, metadata !2282, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %475, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %474, metadata !2280, metadata !DIExpression()), !dbg !2341
  br i1 %116, label %494, label %484, !dbg !2691

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2693
  %486 = zext i8 %485 to i64, !dbg !2693
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2694
  %488 = load i32, i32* %487, align 4, !dbg !2694, !tbaa !945
  %489 = and i8 %480, 31, !dbg !2695
  %490 = zext i8 %489 to i32, !dbg !2695
  %491 = shl nuw i32 1, %490, !dbg !2696
  %492 = and i32 %488, %491, !dbg !2696
  %493 = icmp eq i32 %492, 0, !dbg !2696
  br i1 %493, label %494, label %495, !dbg !2697

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2698

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2699
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2341
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2346
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2690
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2350
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2351
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2408
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2408
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %503, metadata !2298, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %502, metadata !2291, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %501, metadata !2289, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %500, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %499, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %498, metadata !2282, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %497, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %496, metadata !2280, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.label(metadata !2338), !dbg !2700
  br i1 %109, label %505, label %635, !dbg !2701

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2297, metadata !DIExpression()), !dbg !2408
  %506 = and i8 %500, 1, !dbg !2703
  %507 = icmp eq i8 %506, 0, !dbg !2703
  %508 = and i1 %110, %507, !dbg !2703
  br i1 %508, label %509, label %525, !dbg !2703

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2705
  br i1 %510, label %511, label %513, !dbg !2709

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2705
  store i8 39, i8* %512, align 1, !dbg !2705, !tbaa !842
  br label %513, !dbg !2705

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %514, metadata !2281, metadata !DIExpression()), !dbg !2341
  %515 = icmp ult i64 %514, %504, !dbg !2710
  br i1 %515, label %516, label %518, !dbg !2713

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2710
  store i8 36, i8* %517, align 1, !dbg !2710, !tbaa !842
  br label %518, !dbg !2710

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %519, metadata !2281, metadata !DIExpression()), !dbg !2341
  %520 = icmp ult i64 %519, %504, !dbg !2714
  br i1 %520, label %521, label %523, !dbg !2717

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2714
  store i8 39, i8* %522, align 1, !dbg !2714, !tbaa !842
  br label %523, !dbg !2714

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %524, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 1, metadata !2288, metadata !DIExpression()), !dbg !2341
  br label %525, !dbg !2718

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2408
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2341
  call void @llvm.dbg.value(metadata i8 %527, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %526, metadata !2281, metadata !DIExpression()), !dbg !2341
  %528 = icmp ult i64 %526, %504, !dbg !2719
  br i1 %528, label %529, label %531, !dbg !2722

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2719
  store i8 92, i8* %530, align 1, !dbg !2719, !tbaa !842
  br label %531, !dbg !2719

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %543, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %542, metadata !2298, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %541, metadata !2297, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %540, metadata !2291, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %539, metadata !2289, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %538, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %537, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %536, metadata !2282, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %535, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %534, metadata !2280, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.label(metadata !2339), !dbg !2723
  br label %560, !dbg !2724

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2699
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2341
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2346
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2690
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2350
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2351
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2727
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2408
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2408
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %542, metadata !2298, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %541, metadata !2297, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %540, metadata !2291, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %539, metadata !2289, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %538, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %537, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %536, metadata !2282, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %535, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %534, metadata !2280, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.label(metadata !2339), !dbg !2723
  %544 = and i8 %538, 1, !dbg !2724
  %545 = icmp ne i8 %544, 0, !dbg !2724
  %546 = and i8 %541, 1, !dbg !2724
  %547 = icmp eq i8 %546, 0, !dbg !2724
  %548 = and i1 %545, %547, !dbg !2724
  br i1 %548, label %549, label %560, !dbg !2724

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2728
  br i1 %550, label %551, label %553, !dbg !2732

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2728
  store i8 39, i8* %552, align 1, !dbg !2728, !tbaa !842
  br label %553, !dbg !2728

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %554, metadata !2281, metadata !DIExpression()), !dbg !2341
  %555 = icmp ult i64 %554, %543, !dbg !2733
  br i1 %555, label %556, label %558, !dbg !2736

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2733
  store i8 39, i8* %557, align 1, !dbg !2733, !tbaa !842
  br label %558, !dbg !2733

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %559, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2288, metadata !DIExpression()), !dbg !2341
  br label %560, !dbg !2737

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2408
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2341
  call void @llvm.dbg.value(metadata i8 %569, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %568, metadata !2281, metadata !DIExpression()), !dbg !2341
  %570 = icmp ult i64 %568, %561, !dbg !2738
  br i1 %570, label %571, label %573, !dbg !2741

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2738
  store i8 %563, i8* %572, align 1, !dbg !2738, !tbaa !842
  br label %573, !dbg !2738

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %574, metadata !2281, metadata !DIExpression()), !dbg !2341
  %575 = icmp eq i8 %562, 0, !dbg !2742
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2744
  call void @llvm.dbg.value(metadata i8 %576, metadata !2290, metadata !DIExpression()), !dbg !2341
  br label %577, !dbg !2745

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2699
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2341
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2346
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2690
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2350
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2341
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2352
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %584, metadata !2290, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %583, metadata !2289, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %582, metadata !2288, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %581, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %580, metadata !2282, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %579, metadata !2281, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %578, metadata !2280, metadata !DIExpression()), !dbg !2341
  %586 = add i64 %578, 1, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %586, metadata !2280, metadata !DIExpression()), !dbg !2341
  br label %121, !dbg !2747, !llvm.loop !2748

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2750
  %590 = and i1 %110, %589, !dbg !2752
  %591 = xor i1 %590, true, !dbg !2752
  %592 = or i1 %109, %591, !dbg !2752
  br i1 %592, label %593, label %635, !dbg !2752

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2753
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2753
  br i1 %597, label %598, label %607, !dbg !2753

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2755
  %600 = icmp eq i8 %599, 0, !dbg !2755
  br i1 %600, label %603, label %601, !dbg !2758

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2759
  br label %652, !dbg !2760

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2761
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2763
  br i1 %606, label %26, label %607, !dbg !2763

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2764
  %610 = and i1 %609, %608, !dbg !2766
  br i1 %610, label %611, label %626, !dbg !2766

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2283, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %123, metadata !2281, metadata !DIExpression()), !dbg !2341
  %612 = load i8, i8* %97, align 1, !dbg !2767, !tbaa !842
  %613 = icmp eq i8 %612, 0, !dbg !2770
  br i1 %613, label %626, label %614, !dbg !2770

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2283, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %617, metadata !2281, metadata !DIExpression()), !dbg !2341
  %618 = icmp ult i64 %617, %129, !dbg !2771
  br i1 %618, label %619, label %621, !dbg !2774

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2771
  store i8 %615, i8* %620, align 1, !dbg !2771, !tbaa !842
  br label %621, !dbg !2771

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %622, metadata !2281, metadata !DIExpression()), !dbg !2341
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %623, metadata !2283, metadata !DIExpression()), !dbg !2341
  %624 = load i8, i8* %623, align 1, !dbg !2767, !tbaa !842
  %625 = icmp eq i8 %624, 0, !dbg !2770
  br i1 %625, label %626, label %614, !dbg !2770, !llvm.loop !2776

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2383
  call void @llvm.dbg.value(metadata i64 %627, metadata !2281, metadata !DIExpression()), !dbg !2341
  %628 = icmp ult i64 %627, %129, !dbg !2778
  br i1 %628, label %629, label %652, !dbg !2780

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2781
  store i8 0, i8* %630, align 1, !dbg !2782, !tbaa !842
  br label %652, !dbg !2781

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %637, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.label(metadata !2340), !dbg !2783
  %633 = icmp eq i8 %101, 0, !dbg !2784
  %634 = select i1 %633, i32 2, i32 4, !dbg !2784
  br label %642, !dbg !2784

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2272, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %637, metadata !2274, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.label(metadata !2340), !dbg !2783
  %639 = icmp eq i32 %93, 2, !dbg !2786
  %640 = icmp eq i8 %636, 0, !dbg !2784
  %641 = select i1 %640, i32 2, i32 4, !dbg !2784
  br i1 %639, label %642, label %646, !dbg !2784

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2784

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2275, metadata !DIExpression()), !dbg !2341
  %650 = and i32 %5, -3, !dbg !2787
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2788
  br label %652, !dbg !2789

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2790
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2791 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %1, metadata !2796, metadata !DIExpression()), !dbg !2799
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %3, metadata !2797, metadata !DIExpression()), !dbg !2799
  %4 = icmp eq i8* %3, %0, !dbg !2801
  br i1 %4, label %5, label %72, !dbg !2803

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2804
  call void @llvm.dbg.value(metadata i8* %6, metadata !2798, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %6, metadata !2805, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* undef, metadata !2811, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 85, metadata !2812, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 84, metadata !2813, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 70, metadata !2814, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 45, metadata !2815, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 56, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 0, metadata !2820, metadata !DIExpression()), !dbg !2821
  %7 = load i8, i8* %6, align 1, !dbg !2824, !tbaa !842
  %8 = and i8 %7, -33, !dbg !2824
  %9 = sext i8 %8 to i32, !dbg !2824
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2824

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2826, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* undef, metadata !2831, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 84, metadata !2832, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 70, metadata !2833, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 45, metadata !2834, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 56, metadata !2835, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2836, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2839, metadata !DIExpression()), !dbg !2840
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2844
  %12 = load i8, i8* %11, align 1, !dbg !2844, !tbaa !842
  %13 = and i8 %12, -33, !dbg !2844
  %14 = icmp eq i8 %13, 84, !dbg !2844
  br i1 %14, label %15, label %69, !dbg !2844

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2846, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* undef, metadata !2851, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 70, metadata !2852, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 45, metadata !2853, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 56, metadata !2854, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2856, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2858, metadata !DIExpression()), !dbg !2859
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2863
  %17 = load i8, i8* %16, align 1, !dbg !2863, !tbaa !842
  %18 = and i8 %17, -33, !dbg !2863
  %19 = icmp eq i8 %18, 70, !dbg !2863
  br i1 %19, label %20, label %69, !dbg !2863

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2865, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8* undef, metadata !2870, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 45, metadata !2871, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 56, metadata !2872, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2873, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2875, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 0, metadata !2876, metadata !DIExpression()), !dbg !2877
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2881
  %22 = load i8, i8* %21, align 1, !dbg !2881, !tbaa !842
  %23 = icmp eq i8 %22, 45, !dbg !2881
  br i1 %23, label %24, label %69, !dbg !2883

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2884, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* undef, metadata !2889, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 56, metadata !2890, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 0, metadata !2891, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 0, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8 0, metadata !2894, metadata !DIExpression()), !dbg !2895
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2899
  %26 = load i8, i8* %25, align 1, !dbg !2899, !tbaa !842
  %27 = icmp eq i8 %26, 56, !dbg !2899
  br i1 %27, label %28, label %69, !dbg !2901

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2902, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* undef, metadata !2907, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 0, metadata !2908, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 0, metadata !2909, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 0, metadata !2910, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 0, metadata !2911, metadata !DIExpression()), !dbg !2912
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2916
  %30 = load i8, i8* %29, align 1, !dbg !2916, !tbaa !842
  %31 = icmp eq i8 %30, 0, !dbg !2916
  br i1 %31, label %32, label %69, !dbg !2918

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2919, !tbaa !842
  %34 = icmp eq i8 %33, 96, !dbg !2920
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.95, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.96, i64 0, i64 0), !dbg !2919
  br label %72, !dbg !2921

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2826, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8* undef, metadata !2831, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 66, metadata !2832, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 49, metadata !2833, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 56, metadata !2834, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 48, metadata !2835, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 51, metadata !2836, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 48, metadata !2837, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 0, metadata !2838, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8 0, metadata !2839, metadata !DIExpression()), !dbg !2922
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2926
  %38 = load i8, i8* %37, align 1, !dbg !2926, !tbaa !842
  %39 = and i8 %38, -33, !dbg !2926
  %40 = icmp eq i8 %39, 66, !dbg !2926
  br i1 %40, label %41, label %69, !dbg !2926

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2846, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8* undef, metadata !2851, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 49, metadata !2852, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 56, metadata !2853, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 48, metadata !2854, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 51, metadata !2855, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 48, metadata !2856, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 0, metadata !2857, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 0, metadata !2858, metadata !DIExpression()), !dbg !2927
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2929
  %43 = load i8, i8* %42, align 1, !dbg !2929, !tbaa !842
  %44 = icmp eq i8 %43, 49, !dbg !2929
  br i1 %44, label %45, label %69, !dbg !2930

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2865, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* undef, metadata !2870, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 56, metadata !2871, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 48, metadata !2872, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 51, metadata !2873, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 48, metadata !2874, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2875, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2876, metadata !DIExpression()), !dbg !2931
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2933
  %47 = load i8, i8* %46, align 1, !dbg !2933, !tbaa !842
  %48 = icmp eq i8 %47, 56, !dbg !2933
  br i1 %48, label %49, label %69, !dbg !2934

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2884, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8* undef, metadata !2889, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 48, metadata !2890, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 51, metadata !2891, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 48, metadata !2892, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 0, metadata !2893, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 0, metadata !2894, metadata !DIExpression()), !dbg !2935
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2937
  %51 = load i8, i8* %50, align 1, !dbg !2937, !tbaa !842
  %52 = icmp eq i8 %51, 48, !dbg !2937
  br i1 %52, label %53, label %69, !dbg !2938

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2902, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8* undef, metadata !2907, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 51, metadata !2908, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 48, metadata !2909, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 0, metadata !2910, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 0, metadata !2911, metadata !DIExpression()), !dbg !2939
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2941
  %55 = load i8, i8* %54, align 1, !dbg !2941, !tbaa !842
  %56 = icmp eq i8 %55, 51, !dbg !2941
  br i1 %56, label %57, label %69, !dbg !2942

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2943, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8* undef, metadata !2948, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8 48, metadata !2949, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8 0, metadata !2950, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8 0, metadata !2951, metadata !DIExpression()), !dbg !2952
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2956
  %59 = load i8, i8* %58, align 1, !dbg !2956, !tbaa !842
  %60 = icmp eq i8 %59, 48, !dbg !2956
  br i1 %60, label %61, label %69, !dbg !2958

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2959, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* undef, metadata !2964, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 0, metadata !2966, metadata !DIExpression()), !dbg !2967
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2971
  %63 = load i8, i8* %62, align 1, !dbg !2971, !tbaa !842
  %64 = icmp eq i8 %63, 0, !dbg !2971
  br i1 %64, label %65, label %69, !dbg !2973

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2974, !tbaa !842
  %67 = icmp eq i8 %66, 96, !dbg !2975
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.98, i64 0, i64 0), !dbg !2974
  br label %72, !dbg !2976

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2977
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !2978
  br label %72, !dbg !2979

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2799
  ret i8* %73, !dbg !2980
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2981 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2985 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2991 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %1, metadata !2996, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %0, metadata !2999, metadata !DIExpression()) #27, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %1, metadata !3004, metadata !DIExpression()) #27, !dbg !3012
  call void @llvm.dbg.value(metadata i64* null, metadata !3005, metadata !DIExpression()) #27, !dbg !3012
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3006, metadata !DIExpression()) #27, !dbg !3012
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3014
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3014
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3007, metadata !DIExpression()) #27, !dbg !3012
  %6 = tail call i32* @__errno_location() #31, !dbg !3015
  %7 = load i32, i32* %6, align 4, !dbg !3015, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %7, metadata !3008, metadata !DIExpression()) #27, !dbg !3012
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3016
  %9 = load i32, i32* %8, align 4, !dbg !3016, !tbaa !2215
  %10 = or i32 %9, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i32 %10, metadata !3009, metadata !DIExpression()) #27, !dbg !3012
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3018
  %12 = load i32, i32* %11, align 8, !dbg !3018, !tbaa !2164
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3019
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3020
  %15 = load i8*, i8** %14, align 8, !dbg !3020, !tbaa !2237
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3021
  %17 = load i8*, i8** %16, align 8, !dbg !3021, !tbaa !2240
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !3022
  %19 = add i64 %18, 1, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %19, metadata !3010, metadata !DIExpression()) #27, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %19, metadata !3024, metadata !DIExpression()) #27, !dbg !3028
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !3030
  call void @llvm.dbg.value(metadata i8* %20, metadata !3011, metadata !DIExpression()) #27, !dbg !3012
  %21 = load i32, i32* %11, align 8, !dbg !3031, !tbaa !2164
  %22 = load i8*, i8** %14, align 8, !dbg !3032, !tbaa !2237
  %23 = load i8*, i8** %16, align 8, !dbg !3033, !tbaa !2240
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !3034
  store i32 %7, i32* %6, align 4, !dbg !3035, !tbaa !945
  ret i8* %20, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3000 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2999, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %1, metadata !3004, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64* %2, metadata !3005, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3006, metadata !DIExpression()), !dbg !3037
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3038
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3007, metadata !DIExpression()), !dbg !3037
  %7 = tail call i32* @__errno_location() #31, !dbg !3039
  %8 = load i32, i32* %7, align 4, !dbg !3039, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %8, metadata !3008, metadata !DIExpression()), !dbg !3037
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3040
  %10 = load i32, i32* %9, align 4, !dbg !3040, !tbaa !2215
  %11 = icmp eq i64* %2, null, !dbg !3041
  %12 = zext i1 %11 to i32, !dbg !3041
  %13 = or i32 %10, %12, !dbg !3042
  call void @llvm.dbg.value(metadata i32 %13, metadata !3009, metadata !DIExpression()), !dbg !3037
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3043
  %15 = load i32, i32* %14, align 8, !dbg !3043, !tbaa !2164
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3044
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3045
  %18 = load i8*, i8** %17, align 8, !dbg !3045, !tbaa !2237
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3046
  %20 = load i8*, i8** %19, align 8, !dbg !3046, !tbaa !2240
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3047
  %22 = add i64 %21, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %22, metadata !3010, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %22, metadata !3024, metadata !DIExpression()) #27, !dbg !3049
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %23, metadata !3011, metadata !DIExpression()), !dbg !3037
  %24 = load i32, i32* %14, align 8, !dbg !3052, !tbaa !2164
  %25 = load i8*, i8** %17, align 8, !dbg !3053, !tbaa !2237
  %26 = load i8*, i8** %19, align 8, !dbg !3054, !tbaa !2240
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3055
  store i32 %8, i32* %7, align 4, !dbg !3056, !tbaa !945
  br i1 %11, label %29, label %28, !dbg !3057

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3058, !tbaa !1288
  br label %29, !dbg !3060

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3062 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3066, !tbaa !697
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3064, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 1, metadata !3065, metadata !DIExpression()), !dbg !3067
  %2 = load i32, i32* @nslots, align 4, !dbg !3068, !tbaa !945
  %3 = icmp sgt i32 %2, 1, !dbg !3071
  br i1 %3, label %4, label %12, !dbg !3072

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3071
  br label %6, !dbg !3072

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3065, metadata !DIExpression()), !dbg !3067
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3073
  %9 = load i8*, i8** %8, align 8, !dbg !3073, !tbaa !3074
  tail call void @free(i8* %9) #27, !dbg !3076
  %10 = add nuw nsw i64 %7, 1, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %10, metadata !3065, metadata !DIExpression()), !dbg !3067
  %11 = icmp eq i64 %10, %5, !dbg !3071
  br i1 %11, label %12, label %6, !dbg !3072, !llvm.loop !3078

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3080
  %14 = load i8*, i8** %13, align 8, !dbg !3080, !tbaa !3074
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3082
  br i1 %15, label %17, label %16, !dbg !3083

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !3084
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3086, !tbaa !3087
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3088, !tbaa !3074
  br label %17, !dbg !3089

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3090
  br i1 %18, label %21, label %19, !dbg !3092

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3093
  tail call void @free(i8* %20) #27, !dbg !3095
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3096, !tbaa !697
  br label %21, !dbg !3097

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3098, !tbaa !945
  ret void, !dbg !3099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3102, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i8* %1, metadata !3103, metadata !DIExpression()), !dbg !3104
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3105
  ret i8* %3, !dbg !3106
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3107 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3111, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %1, metadata !3112, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %2, metadata !3113, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3114, metadata !DIExpression()), !dbg !3126
  %5 = tail call i32* @__errno_location() #31, !dbg !3127
  %6 = load i32, i32* %5, align 4, !dbg !3127, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %6, metadata !3115, metadata !DIExpression()), !dbg !3126
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3128, !tbaa !697
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3116, metadata !DIExpression()), !dbg !3126
  %8 = icmp slt i32 %0, 0, !dbg !3129
  br i1 %8, label %9, label %10, !dbg !3131

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !3132
  unreachable, !dbg !3132

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3133, !tbaa !945
  %12 = icmp sgt i32 %11, %0, !dbg !3134
  br i1 %12, label %34, label %13, !dbg !3135

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3136
  call void @llvm.dbg.value(metadata i1 %14, metadata !3117, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3137
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3120, metadata !DIExpression()), !dbg !3137
  %15 = icmp eq i32 %0, 2147483647, !dbg !3138
  br i1 %15, label %16, label %17, !dbg !3140

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3141
  unreachable, !dbg !3141

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3142
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3142
  %20 = add nuw nsw i32 %0, 1, !dbg !3143
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3144
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !3145
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3116, metadata !DIExpression()), !dbg !3126
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3146, !tbaa !697
  br i1 %14, label %25, label %26, !dbg !3147

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3148, !tbaa.struct !3150
  br label %26, !dbg !3151

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3152, !tbaa !945
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3153
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3154
  %31 = sub nsw i32 %20, %27, !dbg !3155
  %32 = sext i32 %31 to i64, !dbg !3156
  %33 = shl nsw i64 %32, 4, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %30, metadata !2552, metadata !DIExpression()) #27, !dbg !3158
  call void @llvm.dbg.value(metadata i32 0, metadata !2557, metadata !DIExpression()) #27, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %33, metadata !2558, metadata !DIExpression()) #27, !dbg !3158
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !3160
  store i32 %20, i32* @nslots, align 4, !dbg !3161, !tbaa !945
  br label %34, !dbg !3162

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3126
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3116, metadata !DIExpression()), !dbg !3126
  %36 = zext i32 %0 to i64, !dbg !3163
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3164
  %38 = load i64, i64* %37, align 8, !dbg !3164, !tbaa !3087
  call void @llvm.dbg.value(metadata i64 %38, metadata !3121, metadata !DIExpression()), !dbg !3165
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3166
  %40 = load i8*, i8** %39, align 8, !dbg !3166, !tbaa !3074
  call void @llvm.dbg.value(metadata i8* %40, metadata !3123, metadata !DIExpression()), !dbg !3165
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3167
  %42 = load i32, i32* %41, align 4, !dbg !3167, !tbaa !2215
  %43 = or i32 %42, 1, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %43, metadata !3124, metadata !DIExpression()), !dbg !3165
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3169
  %45 = load i32, i32* %44, align 8, !dbg !3169, !tbaa !2164
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3170
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3171
  %48 = load i8*, i8** %47, align 8, !dbg !3171, !tbaa !2237
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3172
  %50 = load i8*, i8** %49, align 8, !dbg !3172, !tbaa !2240
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %51, metadata !3125, metadata !DIExpression()), !dbg !3165
  %52 = icmp ugt i64 %38, %51, !dbg !3174
  br i1 %52, label %63, label %53, !dbg !3176

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %54, metadata !3121, metadata !DIExpression()), !dbg !3165
  store i64 %54, i64* %37, align 8, !dbg !3179, !tbaa !3087
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3180
  br i1 %55, label %57, label %56, !dbg !3182

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !3183
  br label %57, !dbg !3183

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3024, metadata !DIExpression()) #27, !dbg !3184
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %58, metadata !3123, metadata !DIExpression()), !dbg !3165
  store i8* %58, i8** %39, align 8, !dbg !3187, !tbaa !3074
  %59 = load i32, i32* %44, align 8, !dbg !3188, !tbaa !2164
  %60 = load i8*, i8** %47, align 8, !dbg !3189, !tbaa !2237
  %61 = load i8*, i8** %49, align 8, !dbg !3190, !tbaa !2240
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3191
  br label %63, !dbg !3192

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3165
  call void @llvm.dbg.value(metadata i8* %64, metadata !3123, metadata !DIExpression()), !dbg !3165
  store i32 %6, i32* %5, align 4, !dbg !3193, !tbaa !945
  ret i8* %64, !dbg !3194
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3195 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3199, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8* %1, metadata !3200, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %2, metadata !3201, metadata !DIExpression()), !dbg !3202
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3203
  ret i8* %4, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 0, metadata !3102, metadata !DIExpression()) #27, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %0, metadata !3103, metadata !DIExpression()) #27, !dbg !3209
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !3211
  ret i8* %2, !dbg !3212
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3217, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 0, metadata !3199, metadata !DIExpression()) #27, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %0, metadata !3200, metadata !DIExpression()) #27, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()) #27, !dbg !3220
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !3222
  ret i8* %3, !dbg !3223
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3224 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3228, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %1, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %2, metadata !3230, metadata !DIExpression()), !dbg !3232
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3233
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3233
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3231, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3235), !dbg !3238
  call void @llvm.dbg.value(metadata i32 %1, metadata !3239, metadata !DIExpression()) #27, !dbg !3245
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3244, metadata !DIExpression()) #27, !dbg !3247
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !3247, !alias.scope !3235
  %6 = icmp eq i32 %1, 10, !dbg !3248
  br i1 %6, label %7, label %8, !dbg !3250

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3251, !noalias !3235
  unreachable, !dbg !3251

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3252
  store i32 %1, i32* %9, align 8, !dbg !3253, !tbaa !2164, !alias.scope !3235
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3254
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3255
  ret i8* %10, !dbg !3256
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3257 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3261, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32 %1, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8* %2, metadata !3263, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %3, metadata !3264, metadata !DIExpression()), !dbg !3266
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3267
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3267
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3265, metadata !DIExpression()), !dbg !3268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3269), !dbg !3272
  call void @llvm.dbg.value(metadata i32 %1, metadata !3239, metadata !DIExpression()) #27, !dbg !3273
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3244, metadata !DIExpression()) #27, !dbg !3275
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !3275, !alias.scope !3269
  %7 = icmp eq i32 %1, 10, !dbg !3276
  br i1 %7, label %8, label %9, !dbg !3277

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !3278, !noalias !3269
  unreachable, !dbg !3278

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3279
  store i32 %1, i32* %10, align 8, !dbg !3280, !tbaa !2164, !alias.scope !3269
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3281
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3282
  ret i8* %11, !dbg !3283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3284 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %1, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 0, metadata !3228, metadata !DIExpression()) #27, !dbg !3291
  call void @llvm.dbg.value(metadata i32 %0, metadata !3229, metadata !DIExpression()) #27, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %1, metadata !3230, metadata !DIExpression()) #27, !dbg !3291
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3293
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3293
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3231, metadata !DIExpression()) #27, !dbg !3294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3295) #27, !dbg !3298
  call void @llvm.dbg.value(metadata i32 %0, metadata !3239, metadata !DIExpression()) #27, !dbg !3299
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3244, metadata !DIExpression()) #27, !dbg !3301
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !3301, !alias.scope !3295
  %5 = icmp eq i32 %0, 10, !dbg !3302
  br i1 %5, label %6, label %7, !dbg !3303

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !3304, !noalias !3295
  unreachable, !dbg !3304

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3305
  store i32 %0, i32* %8, align 8, !dbg !3306, !tbaa !2164, !alias.scope !3295
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3307
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3308
  ret i8* %9, !dbg !3309
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3310 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %1, metadata !3315, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %2, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 0, metadata !3261, metadata !DIExpression()) #27, !dbg !3318
  call void @llvm.dbg.value(metadata i32 %0, metadata !3262, metadata !DIExpression()) #27, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %1, metadata !3263, metadata !DIExpression()) #27, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %2, metadata !3264, metadata !DIExpression()) #27, !dbg !3318
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3320
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3320
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3265, metadata !DIExpression()) #27, !dbg !3321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3322) #27, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %0, metadata !3239, metadata !DIExpression()) #27, !dbg !3326
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3244, metadata !DIExpression()) #27, !dbg !3328
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !3328, !alias.scope !3322
  %6 = icmp eq i32 %0, 10, !dbg !3329
  br i1 %6, label %7, label %8, !dbg !3330

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3331, !noalias !3322
  unreachable, !dbg !3331

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3332
  store i32 %0, i32* %9, align 8, !dbg !3333, !tbaa !2164, !alias.scope !3322
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !3334
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3335
  ret i8* %10, !dbg !3336
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3337 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i8 %2, metadata !3343, metadata !DIExpression()), !dbg !3345
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3346
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3346
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3344, metadata !DIExpression()), !dbg !3347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3348, !tbaa.struct !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2182, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8 %2, metadata !2183, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 1, metadata !2184, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8 %2, metadata !2185, metadata !DIExpression()), !dbg !3350
  %6 = lshr i8 %2, 5, !dbg !3352
  %7 = zext i8 %6 to i64, !dbg !3352
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3353
  call void @llvm.dbg.value(metadata i32* %8, metadata !2186, metadata !DIExpression()), !dbg !3350
  %9 = and i8 %2, 31, !dbg !3354
  %10 = zext i8 %9 to i32, !dbg !3354
  call void @llvm.dbg.value(metadata i32 %10, metadata !2188, metadata !DIExpression()), !dbg !3350
  %11 = load i32, i32* %8, align 4, !dbg !3355, !tbaa !945
  %12 = lshr i32 %11, %10, !dbg !3356
  %13 = and i32 %12, 1, !dbg !3357
  call void @llvm.dbg.value(metadata i32 %13, metadata !2189, metadata !DIExpression()), !dbg !3350
  %14 = xor i32 %13, 1, !dbg !3358
  %15 = shl i32 %14, %10, !dbg !3359
  %16 = xor i32 %15, %11, !dbg !3360
  store i32 %16, i32* %8, align 4, !dbg !3360, !tbaa !945
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3361
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3362
  ret i8* %17, !dbg !3363
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3364 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3368, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 %1, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()) #27, !dbg !3371
  call void @llvm.dbg.value(metadata i64 -1, metadata !3342, metadata !DIExpression()) #27, !dbg !3371
  call void @llvm.dbg.value(metadata i8 %1, metadata !3343, metadata !DIExpression()) #27, !dbg !3371
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3373
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3373
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3344, metadata !DIExpression()) #27, !dbg !3374
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3375, !tbaa.struct !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2182, metadata !DIExpression()) #27, !dbg !3376
  call void @llvm.dbg.value(metadata i8 %1, metadata !2183, metadata !DIExpression()) #27, !dbg !3376
  call void @llvm.dbg.value(metadata i32 1, metadata !2184, metadata !DIExpression()) #27, !dbg !3376
  call void @llvm.dbg.value(metadata i8 %1, metadata !2185, metadata !DIExpression()) #27, !dbg !3376
  %5 = lshr i8 %1, 5, !dbg !3378
  %6 = zext i8 %5 to i64, !dbg !3378
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3379
  call void @llvm.dbg.value(metadata i32* %7, metadata !2186, metadata !DIExpression()) #27, !dbg !3376
  %8 = and i8 %1, 31, !dbg !3380
  %9 = zext i8 %8 to i32, !dbg !3380
  call void @llvm.dbg.value(metadata i32 %9, metadata !2188, metadata !DIExpression()) #27, !dbg !3376
  %10 = load i32, i32* %7, align 4, !dbg !3381, !tbaa !945
  %11 = lshr i32 %10, %9, !dbg !3382
  %12 = and i32 %11, 1, !dbg !3383
  call void @llvm.dbg.value(metadata i32 %12, metadata !2189, metadata !DIExpression()) #27, !dbg !3376
  %13 = xor i32 %12, 1, !dbg !3384
  %14 = shl i32 %13, %9, !dbg !3385
  %15 = xor i32 %14, %10, !dbg !3386
  store i32 %15, i32* %7, align 4, !dbg !3386, !tbaa !945
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3387
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3388
  ret i8* %16, !dbg !3389
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3390 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %0, metadata !3368, metadata !DIExpression()) #27, !dbg !3394
  call void @llvm.dbg.value(metadata i8 58, metadata !3369, metadata !DIExpression()) #27, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()) #27, !dbg !3396
  call void @llvm.dbg.value(metadata i64 -1, metadata !3342, metadata !DIExpression()) #27, !dbg !3396
  call void @llvm.dbg.value(metadata i8 58, metadata !3343, metadata !DIExpression()) #27, !dbg !3396
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3398
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3398
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3344, metadata !DIExpression()) #27, !dbg !3399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3400, !tbaa.struct !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2182, metadata !DIExpression()) #27, !dbg !3401
  call void @llvm.dbg.value(metadata i8 58, metadata !2183, metadata !DIExpression()) #27, !dbg !3401
  call void @llvm.dbg.value(metadata i32 1, metadata !2184, metadata !DIExpression()) #27, !dbg !3401
  call void @llvm.dbg.value(metadata i8 58, metadata !2185, metadata !DIExpression()) #27, !dbg !3401
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3403
  call void @llvm.dbg.value(metadata i32* %4, metadata !2186, metadata !DIExpression()) #27, !dbg !3401
  call void @llvm.dbg.value(metadata i32 26, metadata !2188, metadata !DIExpression()) #27, !dbg !3401
  %5 = load i32, i32* %4, align 4, !dbg !3404, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %5, metadata !2189, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3401
  %6 = or i32 %5, 67108864, !dbg !3405
  store i32 %6, i32* %4, align 4, !dbg !3405, !tbaa !945
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !3406
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3407
  ret i8* %7, !dbg !3408
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3409 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3411, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %1, metadata !3412, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()) #27, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()) #27, !dbg !3414
  call void @llvm.dbg.value(metadata i8 58, metadata !3343, metadata !DIExpression()) #27, !dbg !3414
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3416
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3416
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3344, metadata !DIExpression()) #27, !dbg !3417
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3418, !tbaa.struct !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2182, metadata !DIExpression()) #27, !dbg !3419
  call void @llvm.dbg.value(metadata i8 58, metadata !2183, metadata !DIExpression()) #27, !dbg !3419
  call void @llvm.dbg.value(metadata i32 1, metadata !2184, metadata !DIExpression()) #27, !dbg !3419
  call void @llvm.dbg.value(metadata i8 58, metadata !2185, metadata !DIExpression()) #27, !dbg !3419
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3421
  call void @llvm.dbg.value(metadata i32* %5, metadata !2186, metadata !DIExpression()) #27, !dbg !3419
  call void @llvm.dbg.value(metadata i32 26, metadata !2188, metadata !DIExpression()) #27, !dbg !3419
  %6 = load i32, i32* %5, align 4, !dbg !3422, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %6, metadata !2189, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3419
  %7 = or i32 %6, 67108864, !dbg !3423
  store i32 %7, i32* %5, align 4, !dbg !3423, !tbaa !945
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !3424
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3425
  ret i8* %8, !dbg !3426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3427 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3244, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3433
  call void @llvm.dbg.value(metadata i32 %0, metadata !3429, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %1, metadata !3430, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i8* %2, metadata !3431, metadata !DIExpression()), !dbg !3435
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3436
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3436
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3432, metadata !DIExpression()), !dbg !3437
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3439), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %1, metadata !3239, metadata !DIExpression()) #27, !dbg !3442
  call void @llvm.dbg.value(metadata i32 0, metadata !3244, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3442
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3433, !alias.scope !3439
  %8 = icmp eq i32 %1, 10, !dbg !3443
  br i1 %8, label %9, label %10, !dbg !3444

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3445, !noalias !3439
  unreachable, !dbg !3445

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3244, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3442
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3438
  store i32 %1, i32* %11, align 8, !dbg !3438, !tbaa.struct !3349
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3438
  %13 = bitcast i32* %12 to i8*, !dbg !3438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3438, !tbaa.struct !3446
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3438
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2182, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8 58, metadata !2183, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32 1, metadata !2184, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8 58, metadata !2185, metadata !DIExpression()), !dbg !3447
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3449
  call void @llvm.dbg.value(metadata i32* %14, metadata !2186, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32 26, metadata !2188, metadata !DIExpression()), !dbg !3447
  %15 = load i32, i32* %14, align 4, !dbg !3450, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %15, metadata !2189, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3447
  %16 = or i32 %15, 67108864, !dbg !3451
  store i32 %16, i32* %14, align 4, !dbg !3451, !tbaa !945
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3452
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3453
  ret i8* %17, !dbg !3454
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3455 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3459, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %1, metadata !3460, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %2, metadata !3461, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %3, metadata !3462, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()) #27, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %1, metadata !3469, metadata !DIExpression()) #27, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %2, metadata !3470, metadata !DIExpression()) #27, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %3, metadata !3471, metadata !DIExpression()) #27, !dbg !3474
  call void @llvm.dbg.value(metadata i64 -1, metadata !3472, metadata !DIExpression()) #27, !dbg !3474
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3476
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3476
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3473, metadata !DIExpression()) #27, !dbg !3477
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3478, !tbaa.struct !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2222, metadata !DIExpression()) #27, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %1, metadata !2223, metadata !DIExpression()) #27, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %2, metadata !2224, metadata !DIExpression()) #27, !dbg !3479
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2222, metadata !DIExpression()) #27, !dbg !3479
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3481
  store i32 10, i32* %7, align 8, !dbg !3482, !tbaa !2164
  %8 = icmp ne i8* %1, null, !dbg !3483
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3484
  br i1 %10, label %12, label %11, !dbg !3484

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3485
  unreachable, !dbg !3485

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3486
  store i8* %1, i8** %13, align 8, !dbg !3487, !tbaa !2237
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3488
  store i8* %2, i8** %14, align 8, !dbg !3489, !tbaa !2240
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !3490
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3491
  ret i8* %15, !dbg !3492
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3465 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %1, metadata !3469, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %2, metadata !3470, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %3, metadata !3471, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %4, metadata !3472, metadata !DIExpression()), !dbg !3493
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3494
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3494
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3473, metadata !DIExpression()), !dbg !3495
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3496, !tbaa.struct !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2222, metadata !DIExpression()) #27, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %1, metadata !2223, metadata !DIExpression()) #27, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %2, metadata !2224, metadata !DIExpression()) #27, !dbg !3497
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2222, metadata !DIExpression()) #27, !dbg !3497
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3499
  store i32 10, i32* %8, align 8, !dbg !3500, !tbaa !2164
  %9 = icmp ne i8* %1, null, !dbg !3501
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3502
  br i1 %11, label %13, label %12, !dbg !3502

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !3503
  unreachable, !dbg !3503

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3504
  store i8* %1, i8** %14, align 8, !dbg !3505, !tbaa !2237
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3506
  store i8* %2, i8** %15, align 8, !dbg !3507, !tbaa !2240
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3508
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3509
  ret i8* %16, !dbg !3510
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3511 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3515, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %2, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i32 0, metadata !3459, metadata !DIExpression()) #27, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()) #27, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %1, metadata !3461, metadata !DIExpression()) #27, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %2, metadata !3462, metadata !DIExpression()) #27, !dbg !3519
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()) #27, !dbg !3521
  call void @llvm.dbg.value(metadata i8* %0, metadata !3469, metadata !DIExpression()) #27, !dbg !3521
  call void @llvm.dbg.value(metadata i8* %1, metadata !3470, metadata !DIExpression()) #27, !dbg !3521
  call void @llvm.dbg.value(metadata i8* %2, metadata !3471, metadata !DIExpression()) #27, !dbg !3521
  call void @llvm.dbg.value(metadata i64 -1, metadata !3472, metadata !DIExpression()) #27, !dbg !3521
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3523
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3523
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3473, metadata !DIExpression()) #27, !dbg !3524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3525, !tbaa.struct !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2222, metadata !DIExpression()) #27, !dbg !3526
  call void @llvm.dbg.value(metadata i8* %0, metadata !2223, metadata !DIExpression()) #27, !dbg !3526
  call void @llvm.dbg.value(metadata i8* %1, metadata !2224, metadata !DIExpression()) #27, !dbg !3526
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2222, metadata !DIExpression()) #27, !dbg !3526
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3528
  store i32 10, i32* %6, align 8, !dbg !3529, !tbaa !2164
  %7 = icmp ne i8* %0, null, !dbg !3530
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3531
  br i1 %9, label %11, label %10, !dbg !3531

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !3532
  unreachable, !dbg !3532

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3533
  store i8* %0, i8** %12, align 8, !dbg !3534, !tbaa !2237
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3535
  store i8* %1, i8** %13, align 8, !dbg !3536, !tbaa !2240
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !3537
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3538
  ret i8* %14, !dbg !3539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3540 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3544, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8* %1, metadata !3545, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8* %2, metadata !3546, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %3, metadata !3547, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()) #27, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %0, metadata !3469, metadata !DIExpression()) #27, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %1, metadata !3470, metadata !DIExpression()) #27, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %2, metadata !3471, metadata !DIExpression()) #27, !dbg !3549
  call void @llvm.dbg.value(metadata i64 %3, metadata !3472, metadata !DIExpression()) #27, !dbg !3549
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3551
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3551
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3473, metadata !DIExpression()) #27, !dbg !3552
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3553, !tbaa.struct !3349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2222, metadata !DIExpression()) #27, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %0, metadata !2223, metadata !DIExpression()) #27, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %1, metadata !2224, metadata !DIExpression()) #27, !dbg !3554
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2222, metadata !DIExpression()) #27, !dbg !3554
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3556
  store i32 10, i32* %7, align 8, !dbg !3557, !tbaa !2164
  %8 = icmp ne i8* %0, null, !dbg !3558
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3559
  br i1 %10, label %12, label %11, !dbg !3559

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3560
  unreachable, !dbg !3560

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3561
  store i8* %0, i8** %13, align 8, !dbg !3562, !tbaa !2237
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3563
  store i8* %1, i8** %14, align 8, !dbg !3564, !tbaa !2240
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !3565
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3566
  ret i8* %15, !dbg !3567
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3568 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3572, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %1, metadata !3573, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %2, metadata !3574, metadata !DIExpression()), !dbg !3575
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3576
  ret i8* %4, !dbg !3577
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3578 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 %1, metadata !3583, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 0, metadata !3572, metadata !DIExpression()) #27, !dbg !3585
  call void @llvm.dbg.value(metadata i8* %0, metadata !3573, metadata !DIExpression()) #27, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %1, metadata !3574, metadata !DIExpression()) #27, !dbg !3585
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3587
  ret i8* %3, !dbg !3588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3593, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i32 %0, metadata !3572, metadata !DIExpression()) #27, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %1, metadata !3573, metadata !DIExpression()) #27, !dbg !3596
  call void @llvm.dbg.value(metadata i64 -1, metadata !3574, metadata !DIExpression()) #27, !dbg !3596
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3598
  ret i8* %3, !dbg !3599
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3600 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3604, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 0, metadata !3593, metadata !DIExpression()) #27, !dbg !3606
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()) #27, !dbg !3606
  call void @llvm.dbg.value(metadata i32 0, metadata !3572, metadata !DIExpression()) #27, !dbg !3608
  call void @llvm.dbg.value(metadata i8* %0, metadata !3573, metadata !DIExpression()) #27, !dbg !3608
  call void @llvm.dbg.value(metadata i64 -1, metadata !3574, metadata !DIExpression()) #27, !dbg !3608
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3610
  ret i8* %2, !dbg !3611
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32 %0, i8* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !3612 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3614, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i8* %1, metadata !3615, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 %2, metadata !3616, metadata !DIExpression()), !dbg !3623
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #27, !dbg !3624
  call void @llvm.dbg.value(metadata i64 %4, metadata !3617, metadata !DIExpression()), !dbg !3625
  %5 = icmp sgt i64 %4, -1, !dbg !3626
  br i1 %5, label %21, label %6, !dbg !3628

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #31, !dbg !3623
  br label %8, !dbg !3628

8:                                                ; preds = %6, %17
  %9 = phi i64 [ %4, %6 ], [ %19, %17 ]
  %10 = phi i64 [ %2, %6 ], [ %18, %17 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !3616, metadata !DIExpression()), !dbg !3623
  %11 = load i32, i32* %7, align 4, !dbg !3629, !tbaa !945
  %12 = icmp eq i32 %11, 4, !dbg !3629
  br i1 %12, label %17, label %13, !dbg !3631, !llvm.loop !3632

13:                                               ; preds = %8
  %14 = icmp eq i32 %11, 22, !dbg !3635
  %15 = icmp ugt i64 %10, 2146435072
  %16 = and i1 %15, %14, !dbg !3637
  br i1 %16, label %17, label %21, !dbg !3637

17:                                               ; preds = %13, %8
  %18 = phi i64 [ %10, %8 ], [ 2146435072, %13 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !3616, metadata !DIExpression()), !dbg !3623
  %19 = tail call i64 @read(i32 %0, i8* %1, i64 %18) #27, !dbg !3624
  call void @llvm.dbg.value(metadata i64 %19, metadata !3617, metadata !DIExpression()), !dbg !3625
  %20 = icmp sgt i64 %19, -1, !dbg !3626
  br i1 %20, label %21, label %8, !dbg !3628

21:                                               ; preds = %17, %13, %3
  %22 = phi i64 [ %4, %3 ], [ %9, %13 ], [ %19, %17 ], !dbg !3624
  call void @llvm.dbg.value(metadata i64 %18, metadata !3616, metadata !DIExpression()), !dbg !3623
  ret i64 %22, !dbg !3638
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3639 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3677, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i8* %1, metadata !3678, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i8* %2, metadata !3679, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i8* %3, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i8** %4, metadata !3681, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %5, metadata !3682, metadata !DIExpression()), !dbg !3683
  %7 = icmp eq i8* %1, null, !dbg !3684
  br i1 %7, label %10, label %8, !dbg !3686

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !3687
  br label %12, !dbg !3687

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.110, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !3688
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.111, i64 0, i64 0), i32 5) #27, !dbg !3689
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !3689
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.112, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3690
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.113, i64 0, i64 0), i32 5) #27, !dbg !3691
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.114, i64 0, i64 0)) #27, !dbg !3691
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.112, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3692
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
  ], !dbg !3693

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.115, i64 0, i64 0), i32 5) #27, !dbg !3694
  %21 = load i8*, i8** %4, align 8, !dbg !3694, !tbaa !697
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !3694
  br label %147, !dbg !3696

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.116, i64 0, i64 0), i32 5) #27, !dbg !3697
  %25 = load i8*, i8** %4, align 8, !dbg !3697, !tbaa !697
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3697
  %27 = load i8*, i8** %26, align 8, !dbg !3697, !tbaa !697
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !3697
  br label %147, !dbg !3698

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.117, i64 0, i64 0), i32 5) #27, !dbg !3699
  %31 = load i8*, i8** %4, align 8, !dbg !3699, !tbaa !697
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3699
  %33 = load i8*, i8** %32, align 8, !dbg !3699, !tbaa !697
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3699
  %35 = load i8*, i8** %34, align 8, !dbg !3699, !tbaa !697
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !3699
  br label %147, !dbg !3700

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.118, i64 0, i64 0), i32 5) #27, !dbg !3701
  %39 = load i8*, i8** %4, align 8, !dbg !3701, !tbaa !697
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3701
  %41 = load i8*, i8** %40, align 8, !dbg !3701, !tbaa !697
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3701
  %43 = load i8*, i8** %42, align 8, !dbg !3701, !tbaa !697
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3701
  %45 = load i8*, i8** %44, align 8, !dbg !3701, !tbaa !697
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !3701
  br label %147, !dbg !3702

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.119, i64 0, i64 0), i32 5) #27, !dbg !3703
  %49 = load i8*, i8** %4, align 8, !dbg !3703, !tbaa !697
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3703
  %51 = load i8*, i8** %50, align 8, !dbg !3703, !tbaa !697
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3703
  %53 = load i8*, i8** %52, align 8, !dbg !3703, !tbaa !697
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3703
  %55 = load i8*, i8** %54, align 8, !dbg !3703, !tbaa !697
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3703
  %57 = load i8*, i8** %56, align 8, !dbg !3703, !tbaa !697
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !3703
  br label %147, !dbg !3704

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.120, i64 0, i64 0), i32 5) #27, !dbg !3705
  %61 = load i8*, i8** %4, align 8, !dbg !3705, !tbaa !697
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3705
  %63 = load i8*, i8** %62, align 8, !dbg !3705, !tbaa !697
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3705
  %65 = load i8*, i8** %64, align 8, !dbg !3705, !tbaa !697
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3705
  %67 = load i8*, i8** %66, align 8, !dbg !3705, !tbaa !697
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3705
  %69 = load i8*, i8** %68, align 8, !dbg !3705, !tbaa !697
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3705
  %71 = load i8*, i8** %70, align 8, !dbg !3705, !tbaa !697
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !3705
  br label %147, !dbg !3706

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.121, i64 0, i64 0), i32 5) #27, !dbg !3707
  %75 = load i8*, i8** %4, align 8, !dbg !3707, !tbaa !697
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3707
  %77 = load i8*, i8** %76, align 8, !dbg !3707, !tbaa !697
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3707
  %79 = load i8*, i8** %78, align 8, !dbg !3707, !tbaa !697
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3707
  %81 = load i8*, i8** %80, align 8, !dbg !3707, !tbaa !697
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3707
  %83 = load i8*, i8** %82, align 8, !dbg !3707, !tbaa !697
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3707
  %85 = load i8*, i8** %84, align 8, !dbg !3707, !tbaa !697
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3707
  %87 = load i8*, i8** %86, align 8, !dbg !3707, !tbaa !697
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !3707
  br label %147, !dbg !3708

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.122, i64 0, i64 0), i32 5) #27, !dbg !3709
  %91 = load i8*, i8** %4, align 8, !dbg !3709, !tbaa !697
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3709
  %93 = load i8*, i8** %92, align 8, !dbg !3709, !tbaa !697
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3709
  %95 = load i8*, i8** %94, align 8, !dbg !3709, !tbaa !697
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3709
  %97 = load i8*, i8** %96, align 8, !dbg !3709, !tbaa !697
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3709
  %99 = load i8*, i8** %98, align 8, !dbg !3709, !tbaa !697
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3709
  %101 = load i8*, i8** %100, align 8, !dbg !3709, !tbaa !697
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3709
  %103 = load i8*, i8** %102, align 8, !dbg !3709, !tbaa !697
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3709
  %105 = load i8*, i8** %104, align 8, !dbg !3709, !tbaa !697
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !3709
  br label %147, !dbg !3710

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.123, i64 0, i64 0), i32 5) #27, !dbg !3711
  %109 = load i8*, i8** %4, align 8, !dbg !3711, !tbaa !697
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3711
  %111 = load i8*, i8** %110, align 8, !dbg !3711, !tbaa !697
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3711
  %113 = load i8*, i8** %112, align 8, !dbg !3711, !tbaa !697
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3711
  %115 = load i8*, i8** %114, align 8, !dbg !3711, !tbaa !697
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3711
  %117 = load i8*, i8** %116, align 8, !dbg !3711, !tbaa !697
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3711
  %119 = load i8*, i8** %118, align 8, !dbg !3711, !tbaa !697
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3711
  %121 = load i8*, i8** %120, align 8, !dbg !3711, !tbaa !697
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3711
  %123 = load i8*, i8** %122, align 8, !dbg !3711, !tbaa !697
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3711
  %125 = load i8*, i8** %124, align 8, !dbg !3711, !tbaa !697
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !3711
  br label %147, !dbg !3712

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.124, i64 0, i64 0), i32 5) #27, !dbg !3713
  %129 = load i8*, i8** %4, align 8, !dbg !3713, !tbaa !697
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3713
  %131 = load i8*, i8** %130, align 8, !dbg !3713, !tbaa !697
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3713
  %133 = load i8*, i8** %132, align 8, !dbg !3713, !tbaa !697
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3713
  %135 = load i8*, i8** %134, align 8, !dbg !3713, !tbaa !697
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3713
  %137 = load i8*, i8** %136, align 8, !dbg !3713, !tbaa !697
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3713
  %139 = load i8*, i8** %138, align 8, !dbg !3713, !tbaa !697
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3713
  %141 = load i8*, i8** %140, align 8, !dbg !3713, !tbaa !697
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3713
  %143 = load i8*, i8** %142, align 8, !dbg !3713, !tbaa !697
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3713
  %145 = load i8*, i8** %144, align 8, !dbg !3713, !tbaa !697
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !3713
  br label %147, !dbg !3714

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3715
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3716 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3720, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8* %1, metadata !3721, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8* %2, metadata !3722, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8* %3, metadata !3723, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8** %4, metadata !3724, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i64 0, metadata !3725, metadata !DIExpression()), !dbg !3726
  br label %6, !dbg !3727

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3729
  call void @llvm.dbg.value(metadata i64 %7, metadata !3725, metadata !DIExpression()), !dbg !3726
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3730
  %9 = load i8*, i8** %8, align 8, !dbg !3730, !tbaa !697
  %10 = icmp eq i8* %9, null, !dbg !3732
  %11 = add i64 %7, 1, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %11, metadata !3725, metadata !DIExpression()), !dbg !3726
  br i1 %10, label %12, label %6, !dbg !3732, !llvm.loop !3734

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3736
  ret void, !dbg !3737
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3738 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3749, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %1, metadata !3750, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %2, metadata !3751, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %3, metadata !3752, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3753, metadata !DIExpression()), !dbg !3757
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3758
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3758
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3755, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 0, metadata !3754, metadata !DIExpression()), !dbg !3757
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3754, metadata !DIExpression()), !dbg !3757
  %11 = load i32, i32* %8, align 8, !dbg !3760
  %12 = icmp ult i32 %11, 41, !dbg !3760
  br i1 %12, label %13, label %18, !dbg !3760

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3760
  %15 = zext i32 %11 to i64, !dbg !3760
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3760
  %17 = add nuw nsw i32 %11, 8, !dbg !3760
  store i32 %17, i32* %8, align 8, !dbg !3760
  br label %21, !dbg !3760

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3760
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3760
  store i8* %20, i8** %9, align 8, !dbg !3760
  br label %21, !dbg !3760

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3760
  %25 = load i8*, i8** %24, align 8, !dbg !3760
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3763
  store i8* %25, i8** %26, align 16, !dbg !3764, !tbaa !697
  %27 = icmp eq i8* %25, null, !dbg !3765
  br i1 %27, label %30, label %28, !dbg !3766

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 1, metadata !3754, metadata !DIExpression()), !dbg !3757
  %29 = icmp ult i32 %22, 41, !dbg !3760
  br i1 %29, label %35, label %32, !dbg !3760

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3767
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3768
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3769
  ret void, !dbg !3769

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3760
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3760
  store i8* %34, i8** %9, align 8, !dbg !3760
  br label %40, !dbg !3760

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3760
  %37 = zext i32 %22 to i64, !dbg !3760
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3760
  %39 = add nuw nsw i32 %22, 8, !dbg !3760
  store i32 %39, i32* %8, align 8, !dbg !3760
  br label %40, !dbg !3760

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3760
  %44 = load i8*, i8** %43, align 8, !dbg !3760
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3763
  store i8* %44, i8** %45, align 8, !dbg !3764, !tbaa !697
  %46 = icmp eq i8* %44, null, !dbg !3765
  br i1 %46, label %30, label %47, !dbg !3766

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 2, metadata !3754, metadata !DIExpression()), !dbg !3757
  %48 = icmp ult i32 %41, 41, !dbg !3760
  br i1 %48, label %52, label %49, !dbg !3760

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3760
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3760
  store i8* %51, i8** %9, align 8, !dbg !3760
  br label %57, !dbg !3760

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3760
  %54 = zext i32 %41 to i64, !dbg !3760
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3760
  %56 = add nuw nsw i32 %41, 8, !dbg !3760
  store i32 %56, i32* %8, align 8, !dbg !3760
  br label %57, !dbg !3760

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3760
  %61 = load i8*, i8** %60, align 8, !dbg !3760
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3763
  store i8* %61, i8** %62, align 16, !dbg !3764, !tbaa !697
  %63 = icmp eq i8* %61, null, !dbg !3765
  br i1 %63, label %30, label %64, !dbg !3766

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 3, metadata !3754, metadata !DIExpression()), !dbg !3757
  %65 = icmp ult i32 %58, 41, !dbg !3760
  br i1 %65, label %69, label %66, !dbg !3760

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3760
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3760
  store i8* %68, i8** %9, align 8, !dbg !3760
  br label %74, !dbg !3760

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3760
  %71 = zext i32 %58 to i64, !dbg !3760
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3760
  %73 = add nuw nsw i32 %58, 8, !dbg !3760
  store i32 %73, i32* %8, align 8, !dbg !3760
  br label %74, !dbg !3760

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3760
  %78 = load i8*, i8** %77, align 8, !dbg !3760
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3763
  store i8* %78, i8** %79, align 8, !dbg !3764, !tbaa !697
  %80 = icmp eq i8* %78, null, !dbg !3765
  br i1 %80, label %30, label %81, !dbg !3766

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 4, metadata !3754, metadata !DIExpression()), !dbg !3757
  %82 = icmp ult i32 %75, 41, !dbg !3760
  br i1 %82, label %86, label %83, !dbg !3760

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3760
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3760
  store i8* %85, i8** %9, align 8, !dbg !3760
  br label %91, !dbg !3760

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3760
  %88 = zext i32 %75 to i64, !dbg !3760
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3760
  %90 = add nuw nsw i32 %75, 8, !dbg !3760
  store i32 %90, i32* %8, align 8, !dbg !3760
  br label %91, !dbg !3760

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3760
  %95 = load i8*, i8** %94, align 8, !dbg !3760
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3763
  store i8* %95, i8** %96, align 16, !dbg !3764, !tbaa !697
  %97 = icmp eq i8* %95, null, !dbg !3765
  br i1 %97, label %30, label %98, !dbg !3766

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 5, metadata !3754, metadata !DIExpression()), !dbg !3757
  %99 = icmp ult i32 %92, 41, !dbg !3760
  br i1 %99, label %103, label %100, !dbg !3760

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3760
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3760
  store i8* %102, i8** %9, align 8, !dbg !3760
  br label %108, !dbg !3760

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3760
  %105 = zext i32 %92 to i64, !dbg !3760
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3760
  %107 = add nuw nsw i32 %92, 8, !dbg !3760
  store i32 %107, i32* %8, align 8, !dbg !3760
  br label %108, !dbg !3760

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3760
  %111 = load i8*, i8** %110, align 8, !dbg !3760
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3763
  store i8* %111, i8** %112, align 8, !dbg !3764, !tbaa !697
  %113 = icmp eq i8* %111, null, !dbg !3765
  br i1 %113, label %30, label %114, !dbg !3766

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3754, metadata !DIExpression()), !dbg !3757
  %115 = load i8*, i8** %9, align 8, !dbg !3760
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3760
  store i8* %116, i8** %9, align 8, !dbg !3760
  %117 = bitcast i8* %115 to i8**, !dbg !3760
  %118 = load i8*, i8** %117, align 8, !dbg !3760
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3763
  store i8* %118, i8** %119, align 16, !dbg !3764, !tbaa !697
  %120 = icmp eq i8* %118, null, !dbg !3765
  br i1 %120, label %30, label %121, !dbg !3766

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3754, metadata !DIExpression()), !dbg !3757
  %122 = load i8*, i8** %9, align 8, !dbg !3760
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3760
  store i8* %123, i8** %9, align 8, !dbg !3760
  %124 = bitcast i8* %122 to i8**, !dbg !3760
  %125 = load i8*, i8** %124, align 8, !dbg !3760
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3763
  store i8* %125, i8** %126, align 8, !dbg !3764, !tbaa !697
  %127 = icmp eq i8* %125, null, !dbg !3765
  br i1 %127, label %30, label %128, !dbg !3766

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3754, metadata !DIExpression()), !dbg !3757
  %129 = load i8*, i8** %9, align 8, !dbg !3760
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3760
  store i8* %130, i8** %9, align 8, !dbg !3760
  %131 = bitcast i8* %129 to i8**, !dbg !3760
  %132 = load i8*, i8** %131, align 8, !dbg !3760
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3763
  store i8* %132, i8** %133, align 16, !dbg !3764, !tbaa !697
  %134 = icmp eq i8* %132, null, !dbg !3765
  br i1 %134, label %30, label %135, !dbg !3766

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3754, metadata !DIExpression()), !dbg !3757
  %136 = load i8*, i8** %9, align 8, !dbg !3760
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3760
  store i8* %137, i8** %9, align 8, !dbg !3760
  %138 = bitcast i8* %136 to i8**, !dbg !3760
  %139 = load i8*, i8** %138, align 8, !dbg !3760
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3763
  store i8* %139, i8** %140, align 8, !dbg !3764, !tbaa !697
  %141 = icmp eq i8* %139, null, !dbg !3765
  %142 = select i1 %141, i64 9, i64 10, !dbg !3766
  br label %30, !dbg !3766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3770 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3774, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %1, metadata !3775, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %2, metadata !3776, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %3, metadata !3777, metadata !DIExpression()), !dbg !3784
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3785
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3785
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3778, metadata !DIExpression()), !dbg !3786
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3787
  call void @llvm.va_start(i8* nonnull %6), !dbg !3787
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3788
  call void @llvm.va_end(i8* nonnull %6), !dbg !3789
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3790
  ret void, !dbg !3790
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #23

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3791 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3792, !tbaa !697
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.112, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3792
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.127, i64 0, i64 0), i32 5) #27, !dbg !3793
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.128, i64 0, i64 0)) #27, !dbg !3793
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.129, i64 0, i64 0), i32 5) #27, !dbg !3794
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.130, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.131, i64 0, i64 0)) #27, !dbg !3794
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.132, i64 0, i64 0), i32 5) #27, !dbg !3795
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.133, i64 0, i64 0)) #27, !dbg !3795
  ret void, !dbg !3796
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3797 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3799, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %1, metadata !3800, metadata !DIExpression()), !dbg !3801
  %3 = udiv i64 9223372036854775807, %1, !dbg !3802
  %4 = icmp ult i64 %3, %0, !dbg !3802
  br i1 %4, label %5, label %6, !dbg !3804

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3805
  unreachable, !dbg !3805

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %7, metadata !3807, metadata !DIExpression()) #27, !dbg !3813
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3815
  call void @llvm.dbg.value(metadata i8* %8, metadata !3812, metadata !DIExpression()) #27, !dbg !3813
  %9 = icmp eq i8* %8, null, !dbg !3816
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3818
  br i1 %11, label %12, label %13, !dbg !3818

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3819
  unreachable, !dbg !3819

13:                                               ; preds = %6
  ret i8* %8, !dbg !3820
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3808 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3807, metadata !DIExpression()), !dbg !3821
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3822
  call void @llvm.dbg.value(metadata i8* %2, metadata !3812, metadata !DIExpression()), !dbg !3821
  %3 = icmp eq i8* %2, null, !dbg !3823
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3824
  br i1 %5, label %6, label %7, !dbg !3824

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3825
  unreachable, !dbg !3825

7:                                                ; preds = %1
  ret i8* %2, !dbg !3826
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !3827 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3829, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i64 %1, metadata !3830, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i64 %2, metadata !3831, metadata !DIExpression()), !dbg !3832
  %4 = udiv i64 9223372036854775807, %2, !dbg !3833
  %5 = icmp ult i64 %4, %1, !dbg !3833
  br i1 %5, label %6, label %7, !dbg !3835

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3836
  unreachable, !dbg !3836

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3837
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()) #27, !dbg !3844
  call void @llvm.dbg.value(metadata i64 %8, metadata !3843, metadata !DIExpression()) #27, !dbg !3844
  %9 = icmp eq i64 %8, 0, !dbg !3846
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3848
  br i1 %11, label %12, label %13, !dbg !3848

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3849
  br label %19, !dbg !3851

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3852
  call void @llvm.dbg.value(metadata i8* %14, metadata !3838, metadata !DIExpression()) #27, !dbg !3844
  %15 = icmp eq i8* %14, null, !dbg !3853
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3855
  br i1 %17, label %18, label %19, !dbg !3855

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3856
  unreachable, !dbg !3856

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3844
  ret i8* %20, !dbg !3857
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3839 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 %1, metadata !3843, metadata !DIExpression()), !dbg !3858
  %3 = icmp eq i64 %1, 0, !dbg !3859
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3860
  br i1 %5, label %6, label %7, !dbg !3860

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !3861
  br label %13, !dbg !3862

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !3863
  call void @llvm.dbg.value(metadata i8* %8, metadata !3838, metadata !DIExpression()), !dbg !3858
  %9 = icmp eq i8* %8, null, !dbg !3864
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3865
  br i1 %11, label %12, label %13, !dbg !3865

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3866
  unreachable, !dbg !3866

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3858
  ret i8* %14, !dbg !3867
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !245 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !250, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64* %1, metadata !251, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %2, metadata !252, metadata !DIExpression()), !dbg !3868
  %4 = load i64, i64* %1, align 8, !dbg !3869, !tbaa !1288
  call void @llvm.dbg.value(metadata i64 %4, metadata !253, metadata !DIExpression()), !dbg !3868
  %5 = icmp eq i8* %0, null, !dbg !3870
  br i1 %5, label %6, label %20, !dbg !3872

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3873
  br i1 %7, label %8, label %13, !dbg !3876

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3877
  call void @llvm.dbg.value(metadata i64 %9, metadata !253, metadata !DIExpression()), !dbg !3868
  %10 = icmp ugt i64 %2, 128, !dbg !3879
  %11 = zext i1 %10 to i64, !dbg !3879
  %12 = add nuw nsw i64 %9, %11, !dbg !3880
  call void @llvm.dbg.value(metadata i64 %12, metadata !253, metadata !DIExpression()), !dbg !3868
  br label %13, !dbg !3881

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3868
  call void @llvm.dbg.value(metadata i64 %14, metadata !253, metadata !DIExpression()), !dbg !3868
  %15 = udiv i64 9223372036854775807, %2, !dbg !3882
  %16 = icmp ult i64 %15, %14, !dbg !3882
  br i1 %16, label %19, label %17, !dbg !3884

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !253, metadata !DIExpression()), !dbg !3868
  store i64 %14, i64* %1, align 8, !dbg !3885, !tbaa !1288
  %18 = mul i64 %14, %2, !dbg !3886
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()) #27, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %28, metadata !3843, metadata !DIExpression()) #27, !dbg !3887
  br label %31, !dbg !3889

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3890
  unreachable, !dbg !3890

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3891
  %22 = icmp ugt i64 %21, %4, !dbg !3894
  br i1 %22, label %24, label %23, !dbg !3895

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !3896
  unreachable, !dbg !3896

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3897
  %26 = add nuw i64 %4, 1, !dbg !3898
  %27 = add i64 %26, %25, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %27, metadata !253, metadata !DIExpression()), !dbg !3868
  store i64 %27, i64* %1, align 8, !dbg !3885, !tbaa !1288
  %28 = mul i64 %27, %2, !dbg !3886
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()) #27, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %28, metadata !3843, metadata !DIExpression()) #27, !dbg !3887
  %29 = icmp eq i64 %28, 0, !dbg !3900
  br i1 %29, label %30, label %31, !dbg !3889

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !3901
  br label %38, !dbg !3902

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !3903
  call void @llvm.dbg.value(metadata i8* %33, metadata !3838, metadata !DIExpression()) #27, !dbg !3887
  %34 = icmp eq i8* %33, null, !dbg !3904
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3905
  br i1 %36, label %37, label %38, !dbg !3905

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !3906
  unreachable, !dbg !3906

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3887
  ret i8* %39, !dbg !3907
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !3908 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3910, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %0, metadata !3807, metadata !DIExpression()) #27, !dbg !3912
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i8* %2, metadata !3812, metadata !DIExpression()) #27, !dbg !3912
  %3 = icmp eq i8* %2, null, !dbg !3915
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3916
  br i1 %5, label %6, label %7, !dbg !3916

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3917
  unreachable, !dbg !3917

7:                                                ; preds = %1
  ret i8* %2, !dbg !3918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3919 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i64* %1, metadata !3924, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i8* %0, metadata !250, metadata !DIExpression()) #27, !dbg !3926
  call void @llvm.dbg.value(metadata i64* %1, metadata !251, metadata !DIExpression()) #27, !dbg !3926
  call void @llvm.dbg.value(metadata i64 1, metadata !252, metadata !DIExpression()) #27, !dbg !3926
  %3 = load i64, i64* %1, align 8, !dbg !3928, !tbaa !1288
  call void @llvm.dbg.value(metadata i64 %3, metadata !253, metadata !DIExpression()) #27, !dbg !3926
  %4 = icmp eq i8* %0, null, !dbg !3929
  br i1 %4, label %5, label %10, !dbg !3930

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3931
  br i1 %6, label %17, label %7, !dbg !3932

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !253, metadata !DIExpression()) #27, !dbg !3926
  %8 = icmp slt i64 %3, 0, !dbg !3933
  br i1 %8, label %9, label %17, !dbg !3934

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3935
  unreachable, !dbg !3935

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3936
  br i1 %11, label %13, label %12, !dbg !3937

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3938
  unreachable, !dbg !3938

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3939
  %15 = add nuw nsw i64 %3, 1, !dbg !3940
  %16 = add nuw nsw i64 %15, %14, !dbg !3941
  call void @llvm.dbg.value(metadata i64 %16, metadata !253, metadata !DIExpression()) #27, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()) #27, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %16, metadata !3843, metadata !DIExpression()) #27, !dbg !3942
  br label %17, !dbg !3944

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3945
  store i64 %18, i64* %1, align 8, !dbg !3945, !tbaa !1288
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3946
  call void @llvm.dbg.value(metadata i8* %19, metadata !3838, metadata !DIExpression()) #27, !dbg !3942
  %20 = icmp eq i8* %19, null, !dbg !3947
  br i1 %20, label %21, label %22, !dbg !3948

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3949
  unreachable, !dbg !3949

22:                                               ; preds = %17
  ret i8* %19, !dbg !3950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3951 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3953, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()) #27, !dbg !3960
  call void @llvm.dbg.value(metadata i64 1, metadata !3958, metadata !DIExpression()) #27, !dbg !3960
  %2 = icmp slt i64 %0, 0, !dbg !3962
  br i1 %2, label %6, label %3, !dbg !3964

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %4, metadata !3959, metadata !DIExpression()) #27, !dbg !3960
  %5 = icmp eq i8* %4, null, !dbg !3966
  br i1 %5, label %6, label %7, !dbg !3967

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3968
  unreachable, !dbg !3968

7:                                                ; preds = %3
  ret i8* %4, !dbg !3969
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3956 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %1, metadata !3958, metadata !DIExpression()), !dbg !3970
  %3 = udiv i64 9223372036854775807, %1, !dbg !3971
  %4 = icmp ult i64 %3, %0, !dbg !3971
  br i1 %4, label %8, label %5, !dbg !3972

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3973
  call void @llvm.dbg.value(metadata i8* %6, metadata !3959, metadata !DIExpression()), !dbg !3970
  %7 = icmp eq i8* %6, null, !dbg !3974
  br i1 %7, label %8, label %9, !dbg !3975

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3976
  unreachable, !dbg !3976

9:                                                ; preds = %5
  ret i8* %6, !dbg !3977
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3978 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 %1, metadata !3983, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 %1, metadata !3807, metadata !DIExpression()) #27, !dbg !3985
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3987
  call void @llvm.dbg.value(metadata i8* %3, metadata !3812, metadata !DIExpression()) #27, !dbg !3985
  %4 = icmp eq i8* %3, null, !dbg !3988
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3989
  br i1 %6, label %7, label %8, !dbg !3989

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3990
  unreachable, !dbg !3990

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3991, metadata !DIExpression()) #27, !dbg !3996
  call void @llvm.dbg.value(metadata i8* %0, metadata !3994, metadata !DIExpression()) #27, !dbg !3996
  call void @llvm.dbg.value(metadata i64 %1, metadata !3995, metadata !DIExpression()) #27, !dbg !3996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3998
  ret i8* %3, !dbg !3999
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4000 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()), !dbg !4003
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !4004
  %3 = add i64 %2, 1, !dbg !4005
  call void @llvm.dbg.value(metadata i8* %0, metadata !3982, metadata !DIExpression()) #27, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %3, metadata !3983, metadata !DIExpression()) #27, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %3, metadata !3807, metadata !DIExpression()) #27, !dbg !4008
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %4, metadata !3812, metadata !DIExpression()) #27, !dbg !4008
  %5 = icmp eq i8* %4, null, !dbg !4011
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4012
  br i1 %7, label %8, label %9, !dbg !4012

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !4013
  unreachable, !dbg !4013

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3991, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %0, metadata !3994, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %3, metadata !3995, metadata !DIExpression()) #27, !dbg !4014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !4016
  ret i8* %4, !dbg !4017
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4018 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4019, !tbaa !945
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.144, i64 0, i64 0), i32 5) #27, !dbg !4020
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i8* %2) #27, !dbg !4021
  tail call void @abort() #29, !dbg !4022
  unreachable, !dbg !4022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !4023 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4028, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i32 %1, metadata !4029, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i64 %2, metadata !4030, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i64 %3, metadata !4031, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i8* %4, metadata !4032, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i8* %5, metadata !4033, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i32 %6, metadata !4034, metadata !DIExpression()), !dbg !4038
  %9 = bitcast i64* %8 to i8*, !dbg !4039
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #27, !dbg !4039
  call void @llvm.dbg.value(metadata i64* %8, metadata !4037, metadata !DIExpression(DW_OP_deref)), !dbg !4038
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #27, !dbg !4040
  call void @llvm.dbg.value(metadata i32 %10, metadata !4035, metadata !DIExpression()), !dbg !4038
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4041

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #31, !dbg !4042
  br label %27, !dbg !4041

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4045, !tbaa !1288
  call void @llvm.dbg.value(metadata i64 %14, metadata !4037, metadata !DIExpression()), !dbg !4038
  %15 = icmp ult i64 %14, %2, !dbg !4049
  %16 = icmp ugt i64 %14, %3
  %17 = or i1 %15, %16, !dbg !4050
  br i1 %17, label %18, label %36, !dbg !4050

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4035, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i64 %14, metadata !4037, metadata !DIExpression()), !dbg !4038
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4051
  %20 = tail call i32* @__errno_location() #31, !dbg !4054
  br i1 %19, label %21, label %22, !dbg !4055

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4056, !tbaa !945
  call void @llvm.dbg.value(metadata i32 undef, metadata !4035, metadata !DIExpression()), !dbg !4038
  br label %27, !dbg !4057

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4058, !tbaa !945
  call void @llvm.dbg.value(metadata i32 undef, metadata !4035, metadata !DIExpression()), !dbg !4038
  br label %27, !dbg !4057

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #31, !dbg !4059
  store i32 75, i32* %24, align 4, !dbg !4061, !tbaa !945
  call void @llvm.dbg.value(metadata i32 undef, metadata !4035, metadata !DIExpression()), !dbg !4038
  br label %27, !dbg !4057

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #31, !dbg !4062
  store i32 0, i32* %26, align 4, !dbg !4064, !tbaa !945
  call void @llvm.dbg.value(metadata i32 undef, metadata !4035, metadata !DIExpression()), !dbg !4038
  br label %27, !dbg !4057

27:                                               ; preds = %11, %21, %22, %25, %23
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %26, %25 ], [ %24, %23 ], !dbg !4042
  %29 = icmp eq i32 %6, 0, !dbg !4065
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4065
  %31 = load i32, i32* %28, align 4, !dbg !4042, !tbaa !945
  %32 = icmp eq i32 %31, 22, !dbg !4066
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4042
  %34 = call i8* @quote(i8* %0) #27, !dbg !4067
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i8* %5, i8* %34) #27, !dbg !4068
  %35 = load i64, i64* %8, align 8, !dbg !4069, !tbaa !1288
  br label %36, !dbg !4070

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4069
  call void @llvm.dbg.value(metadata i64 %37, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #27, !dbg !4071
  ret i64 %37, !dbg !4072
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !4073 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4077, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %1, metadata !4078, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %2, metadata !4079, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i8* %3, metadata !4080, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i8* %4, metadata !4081, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 %5, metadata !4082, metadata !DIExpression()), !dbg !4083
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4084
  ret i64 %7, !dbg !4085
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4086 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4092, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8** %1, metadata !4093, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i32 %2, metadata !4094, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64* %3, metadata !4095, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i8* %4, metadata !4096, metadata !DIExpression()), !dbg !4110
  %7 = bitcast i8** %6 to i8*, !dbg !4111
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #27, !dbg !4111
  call void @llvm.dbg.value(metadata i32 0, metadata !4100, metadata !DIExpression()), !dbg !4110
  %8 = icmp ult i32 %2, 37, !dbg !4112
  br i1 %8, label %10, label %9, !dbg !4112

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.151, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.152, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #29, !dbg !4112
  unreachable, !dbg !4112

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4115
  call void @llvm.dbg.value(metadata i8** %25, metadata !4098, metadata !DIExpression()), !dbg !4110
  %12 = tail call i32* @__errno_location() #31, !dbg !4116
  store i32 0, i32* %12, align 4, !dbg !4117, !tbaa !945
  call void @llvm.dbg.value(metadata i8* %0, metadata !4101, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8 undef, metadata !4104, metadata !DIExpression()), !dbg !4118
  %13 = tail call i16** @__ctype_b_loc() #31, !dbg !4110
  %14 = load i16*, i16** %13, align 8, !tbaa !697
  br label %15, !dbg !4119

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4118
  %17 = load i8, i8* %16, align 1, !dbg !4118, !tbaa !842
  call void @llvm.dbg.value(metadata i8 %17, metadata !4104, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8* %16, metadata !4101, metadata !DIExpression()), !dbg !4118
  %18 = zext i8 %17 to i64, !dbg !4120
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4120
  %20 = load i16, i16* %19, align 2, !dbg !4120, !tbaa !2545
  %21 = and i16 %20, 8192, !dbg !4120
  %22 = icmp eq i16 %21, 0, !dbg !4119
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4121
  call void @llvm.dbg.value(metadata i8* %23, metadata !4101, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i8 undef, metadata !4104, metadata !DIExpression()), !dbg !4118
  br i1 %22, label %24, label %15, !dbg !4119, !llvm.loop !4122

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4115
  %26 = icmp eq i8 %17, 45, !dbg !4124
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #27, !dbg !4126
  call void @llvm.dbg.value(metadata i64 %28, metadata !4099, metadata !DIExpression()), !dbg !4110
  %29 = load i8*, i8** %25, align 8, !dbg !4127, !tbaa !697
  %30 = icmp eq i8* %29, %0, !dbg !4129
  br i1 %30, label %31, label %40, !dbg !4130

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4131
  br i1 %32, label %285, label %33, !dbg !4134

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4135, !tbaa !842
  %35 = icmp eq i8 %34, 0, !dbg !4135
  br i1 %35, label %285, label %36, !dbg !4136

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4135
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #28, !dbg !4137
  %39 = icmp eq i8* %38, null, !dbg !4137
  br i1 %39, label %285, label %47, !dbg !4138

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4139, !tbaa !945
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4141

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4100, metadata !DIExpression()), !dbg !4110
  br label %43, !dbg !4142

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4110
  call void @llvm.dbg.value(metadata i32 %44, metadata !4100, metadata !DIExpression()), !dbg !4110
  %45 = icmp eq i8* %4, null, !dbg !4144
  br i1 %45, label %46, label %47, !dbg !4146

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4099, metadata !DIExpression()), !dbg !4110
  store i64 %28, i64* %3, align 8, !dbg !4147, !tbaa !1288
  br label %285, !dbg !4149

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4150, !tbaa !842
  %51 = sext i8 %50 to i32, !dbg !4150
  %52 = icmp eq i8 %50, 0, !dbg !4151
  br i1 %52, label %282, label %53, !dbg !4152

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4105, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 1, metadata !4108, metadata !DIExpression()), !dbg !4153
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #28, !dbg !4154
  %55 = icmp eq i8* %54, null, !dbg !4154
  br i1 %55, label %56, label %58, !dbg !4156

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4099, metadata !DIExpression()), !dbg !4110
  store i64 %49, i64* %3, align 8, !dbg !4157, !tbaa !1288
  %57 = or i32 %48, 2, !dbg !4159
  br label %285, !dbg !4160

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
  ], !dbg !4161

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #28, !dbg !4162
  %61 = icmp eq i8* %60, null, !dbg !4162
  br i1 %61, label %72, label %62, !dbg !4165

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4166
  %64 = load i8, i8* %63, align 1, !dbg !4166, !tbaa !842
  %65 = sext i8 %64 to i32, !dbg !4166
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4167

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4168
  %68 = load i8, i8* %67, align 1, !dbg !4168, !tbaa !842
  %69 = icmp eq i8 %68, 66, !dbg !4171
  %70 = select i1 %69, i64 3, i64 1, !dbg !4172
  br label %72, !dbg !4172

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4105, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 2, metadata !4108, metadata !DIExpression()), !dbg !4153
  br label %72, !dbg !4173

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4108, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 undef, metadata !4105, metadata !DIExpression()), !dbg !4153
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
  ], !dbg !4174

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 7, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 6, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4192
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4192
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !4194
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4194
  %78 = mul i64 %49, %73, !dbg !4196
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4196
  call void @llvm.dbg.value(metadata i1 %77, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 6, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i1 %77, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 6, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4192
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4192
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #27, !dbg !4194
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4194
  %82 = mul i64 %79, %73, !dbg !4196
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4196
  %84 = or i1 %77, %81, !dbg !4197
  call void @llvm.dbg.value(metadata i1 %84, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i1 %84, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4192
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4192
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #27, !dbg !4194
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4194
  %87 = mul i64 %83, %73, !dbg !4196
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4196
  %89 = or i1 %84, %86, !dbg !4197
  call void @llvm.dbg.value(metadata i1 %89, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i1 %89, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4192
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4192
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #27, !dbg !4194
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4194
  %92 = mul i64 %88, %73, !dbg !4196
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4196
  %94 = or i1 %89, %91, !dbg !4197
  call void @llvm.dbg.value(metadata i1 %94, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i1 %94, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4192
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4192
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #27, !dbg !4194
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4194
  %97 = mul i64 %93, %73, !dbg !4196
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4196
  %99 = or i1 %94, %96, !dbg !4197
  call void @llvm.dbg.value(metadata i1 %99, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i1 %99, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4192
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4192
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #27, !dbg !4194
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4194
  %102 = mul i64 %98, %73, !dbg !4196
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4196
  %104 = or i1 %99, %101, !dbg !4197
  call void @llvm.dbg.value(metadata i1 %104, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i1 %104, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression()) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4192
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4192
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #27, !dbg !4194
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4194
  %107 = mul i64 %103, %73, !dbg !4196
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4196
  %109 = or i1 %104, %106, !dbg !4197
  call void @llvm.dbg.value(metadata i1 %109, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4183
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4183
  br label %272, !dbg !4198

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 8, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 7, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4201
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4201
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !4203
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4203
  %113 = mul i64 %49, %73, !dbg !4204
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4204
  call void @llvm.dbg.value(metadata i1 %112, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 7, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %112, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 7, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 6, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4201
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4201
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #27, !dbg !4203
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4203
  %117 = mul i64 %114, %73, !dbg !4204
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4204
  %119 = or i1 %112, %116, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %119, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 6, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %119, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 6, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4201
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4201
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #27, !dbg !4203
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4203
  %122 = mul i64 %118, %73, !dbg !4204
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4204
  %124 = or i1 %119, %121, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %124, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %124, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4201
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4201
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #27, !dbg !4203
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4203
  %127 = mul i64 %123, %73, !dbg !4204
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4204
  %129 = or i1 %124, %126, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %129, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %129, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4201
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4201
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #27, !dbg !4203
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4203
  %132 = mul i64 %128, %73, !dbg !4204
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4204
  %134 = or i1 %129, %131, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %134, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %134, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4201
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4201
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #27, !dbg !4203
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4203
  %137 = mul i64 %133, %73, !dbg !4204
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4204
  %139 = or i1 %134, %136, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %139, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %139, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4201
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4201
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #27, !dbg !4203
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4203
  %142 = mul i64 %138, %73, !dbg !4204
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4204
  %144 = or i1 %139, %141, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %144, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i1 %144, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression()) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4201
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4201
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #27, !dbg !4203
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4203
  %147 = mul i64 %143, %73, !dbg !4204
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4204
  %149 = or i1 %144, %146, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %149, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4199
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4199
  br label %272, !dbg !4198

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4208
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4208
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !4210
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4210
  %153 = mul i64 %49, %73, !dbg !4211
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4211
  call void @llvm.dbg.value(metadata i1 %152, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i1 %152, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4208
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4208
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #27, !dbg !4210
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4210
  %157 = mul i64 %154, %73, !dbg !4211
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4211
  %159 = or i1 %152, %156, !dbg !4212
  call void @llvm.dbg.value(metadata i1 %159, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i1 %159, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4208
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4208
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #27, !dbg !4210
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4210
  %162 = mul i64 %158, %73, !dbg !4211
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4211
  %164 = or i1 %159, %161, !dbg !4212
  call void @llvm.dbg.value(metadata i1 %164, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i1 %164, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4208
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4208
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #27, !dbg !4210
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4210
  %167 = mul i64 %163, %73, !dbg !4211
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4211
  %169 = or i1 %164, %166, !dbg !4212
  call void @llvm.dbg.value(metadata i1 %169, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i1 %169, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression()) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4208
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4208
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #27, !dbg !4210
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4210
  %172 = mul i64 %168, %73, !dbg !4211
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4211
  %174 = or i1 %169, %171, !dbg !4212
  call void @llvm.dbg.value(metadata i1 %174, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4206
  br label %272, !dbg !4198

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 6, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4215
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4215
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !4217
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4217
  %178 = mul i64 %49, %73, !dbg !4218
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4218
  call void @llvm.dbg.value(metadata i1 %177, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i1 %177, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 5, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4215
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4215
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #27, !dbg !4217
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4217
  %182 = mul i64 %179, %73, !dbg !4218
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4218
  %184 = or i1 %177, %181, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %184, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i1 %184, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 4, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4215
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4215
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #27, !dbg !4217
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4217
  %187 = mul i64 %183, %73, !dbg !4218
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4218
  %189 = or i1 %184, %186, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %189, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i1 %189, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4215
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4215
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #27, !dbg !4217
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4217
  %192 = mul i64 %188, %73, !dbg !4218
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4218
  %194 = or i1 %189, %191, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %194, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i1 %194, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4215
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4215
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #27, !dbg !4217
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4217
  %197 = mul i64 %193, %73, !dbg !4218
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4218
  %199 = or i1 %194, %196, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %199, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i1 %199, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression()) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4215
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4215
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #27, !dbg !4217
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4217
  %202 = mul i64 %198, %73, !dbg !4218
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4218
  %204 = or i1 %199, %201, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %204, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4213
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4213
  br label %272, !dbg !4198

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4220
  call void @llvm.dbg.value(metadata i32 512, metadata !4191, metadata !DIExpression()) #27, !dbg !4220
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #27, !dbg !4222
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4222
  %208 = shl i64 %49, 9, !dbg !4223
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4223
  call void @llvm.dbg.value(metadata i1 %207, metadata !4109, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4153
  br label %272, !dbg !4224

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4225
  call void @llvm.dbg.value(metadata i32 1024, metadata !4191, metadata !DIExpression()) #27, !dbg !4225
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #27, !dbg !4227
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4227
  %213 = shl i64 %49, 10, !dbg !4228
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4228
  call void @llvm.dbg.value(metadata i1 %212, metadata !4109, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4153
  br label %272, !dbg !4229

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4180, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 undef, metadata !4181, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4232
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4232
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !4234
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4234
  %218 = mul i64 %49, %73, !dbg !4235
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4235
  call void @llvm.dbg.value(metadata i1 %217, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i1 %217, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4232
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4232
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #27, !dbg !4234
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4234
  %222 = mul i64 %219, %73, !dbg !4235
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4235
  %224 = or i1 %217, %221, !dbg !4236
  call void @llvm.dbg.value(metadata i1 %224, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i1 %224, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression()) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4232
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4232
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #27, !dbg !4234
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4234
  %227 = mul i64 %223, %73, !dbg !4235
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4235
  %229 = or i1 %224, %226, !dbg !4236
  call void @llvm.dbg.value(metadata i1 %229, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4230
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4230
  br label %272, !dbg !4198

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4180, metadata !DIExpression()) #27, !dbg !4237
  call void @llvm.dbg.value(metadata i32 undef, metadata !4181, metadata !DIExpression()) #27, !dbg !4237
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()) #27, !dbg !4237
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4237
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4239
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4239
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !4241
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4241
  %233 = mul i64 %49, %73, !dbg !4242
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4242
  call void @llvm.dbg.value(metadata i1 %232, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4237
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression()) #27, !dbg !4237
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #27, !dbg !4241
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4241
  %237 = mul i64 %234, %73, !dbg !4242
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4242
  %239 = or i1 %232, %236, !dbg !4243
  call void @llvm.dbg.value(metadata i1 %239, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4237
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4237
  br label %272, !dbg !4198

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4180, metadata !DIExpression()) #27, !dbg !4244
  call void @llvm.dbg.value(metadata i32 undef, metadata !4181, metadata !DIExpression()) #27, !dbg !4244
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()) #27, !dbg !4244
  call void @llvm.dbg.value(metadata i32 3, metadata !4182, metadata !DIExpression()) #27, !dbg !4244
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4246
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4246
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !4248
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !4248
  %243 = mul i64 %49, %73, !dbg !4249
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4249
  call void @llvm.dbg.value(metadata i1 %242, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4244
  call void @llvm.dbg.value(metadata i32 2, metadata !4182, metadata !DIExpression()) #27, !dbg !4244
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #27, !dbg !4248
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !4248
  %247 = mul i64 %244, %73, !dbg !4249
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4249
  %249 = or i1 %242, %246, !dbg !4250
  call void @llvm.dbg.value(metadata i1 %249, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4244
  call void @llvm.dbg.value(metadata i32 1, metadata !4182, metadata !DIExpression()) #27, !dbg !4244
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #27, !dbg !4248
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4248
  %252 = mul i64 %248, %73, !dbg !4249
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4249
  %254 = or i1 %249, %251, !dbg !4250
  call void @llvm.dbg.value(metadata i1 %254, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4244
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression()) #27, !dbg !4244
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #27, !dbg !4248
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4248
  %257 = mul i64 %253, %73, !dbg !4249
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4249
  %259 = or i1 %254, %256, !dbg !4250
  call void @llvm.dbg.value(metadata i1 %259, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4244
  call void @llvm.dbg.value(metadata i32 0, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4244
  br label %272, !dbg !4198

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4251
  call void @llvm.dbg.value(metadata i32 2, metadata !4191, metadata !DIExpression()) #27, !dbg !4251
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #27, !dbg !4253
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4253
  %263 = shl i64 %49, 1, !dbg !4254
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4254
  call void @llvm.dbg.value(metadata i1 %262, metadata !4109, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4153
  br label %272, !dbg !4255

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4099, metadata !DIExpression()), !dbg !4110
  store i64 %49, i64* %3, align 8, !dbg !4256, !tbaa !1288
  %266 = or i32 %48, 2, !dbg !4257
  br label %285, !dbg !4258

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4180, metadata !DIExpression()) #27, !dbg !4259
  call void @llvm.dbg.value(metadata i32 undef, metadata !4181, metadata !DIExpression()) #27, !dbg !4259
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()) #27, !dbg !4259
  call void @llvm.dbg.value(metadata i32 undef, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4259
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #27, !dbg !4261
  call void @llvm.dbg.value(metadata i32 undef, metadata !4191, metadata !DIExpression()) #27, !dbg !4261
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !4263
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !4263
  call void @llvm.dbg.value(metadata i32 undef, metadata !4182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !4259
  call void @llvm.dbg.value(metadata i1 %269, metadata !4175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !4259
  %270 = mul i64 %49, %73, !dbg !4264
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !4264
  br label %272, !dbg !4198

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !4110
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4265
  call void @llvm.dbg.value(metadata i32 %275, metadata !4109, metadata !DIExpression()), !dbg !4153
  %276 = or i32 %48, %275, !dbg !4198
  call void @llvm.dbg.value(metadata i32 %276, metadata !4100, metadata !DIExpression()), !dbg !4110
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4266
  store i8* %277, i8** %25, align 8, !dbg !4266, !tbaa !697
  %278 = load i8, i8* %277, align 1, !dbg !4267, !tbaa !842
  %279 = icmp eq i8 %278, 0, !dbg !4267
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4269
  call void @llvm.dbg.value(metadata i32 %281, metadata !4100, metadata !DIExpression()), !dbg !4110
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4270
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4271
  call void @llvm.dbg.value(metadata i32 %284, metadata !4100, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %283, metadata !4099, metadata !DIExpression()), !dbg !4110
  store i64 %283, i64* %3, align 8, !dbg !4272, !tbaa !1288
  br label %285, !dbg !4273

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !4110
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #27, !dbg !4274
  ret i32 %286, !dbg !4274
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !4275 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !4279 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4281, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %1, metadata !4282, metadata !DIExpression()), !dbg !4287
  %3 = icmp eq i64 %0, 0, !dbg !4288
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4289
  br i1 %5, label %11, label %6, !dbg !4289

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4284, metadata !DIExpression()), !dbg !4290
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4291
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4291
  br i1 %8, label %9, label %11, !dbg !4293

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !4294
  store i32 12, i32* %10, align 4, !dbg !4296, !tbaa !945
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4281, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %12, metadata !4282, metadata !DIExpression()), !dbg !4287
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !4297
  call void @llvm.dbg.value(metadata i8* %14, metadata !4283, metadata !DIExpression()), !dbg !4287
  br label %15, !dbg !4298

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4287
  ret i8* %16, !dbg !4299
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4300 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4316, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i8* %1, metadata !4317, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 %2, metadata !4318, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4319, metadata !DIExpression()), !dbg !4325
  %6 = bitcast i32* %5 to i8*, !dbg !4326
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !4326
  %7 = icmp eq i32* %0, null, !dbg !4327
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4329
  call void @llvm.dbg.value(metadata i32* %8, metadata !4316, metadata !DIExpression()), !dbg !4325
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !4330
  call void @llvm.dbg.value(metadata i64 %9, metadata !4320, metadata !DIExpression()), !dbg !4325
  %10 = icmp ugt i64 %9, -3, !dbg !4331
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4332
  br i1 %12, label %13, label %18, !dbg !4332

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !4333
  br i1 %14, label %18, label %15, !dbg !4334

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4335, !tbaa !842
  call void @llvm.dbg.value(metadata i8 %16, metadata !4322, metadata !DIExpression()), !dbg !4336
  %17 = zext i8 %16 to i32, !dbg !4337
  store i32 %17, i32* %8, align 4, !dbg !4338, !tbaa !945
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !4339
  ret i64 %19, !dbg !4339
}

; Function Attrs: nounwind
declare !dbg !4340 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4344 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4382, metadata !DIExpression()), !dbg !4386
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !4387
  call void @llvm.dbg.value(metadata i1 undef, metadata !4383, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4386
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4388, metadata !DIExpression()), !dbg !4392
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4394
  %4 = load i32, i32* %3, align 8, !dbg !4394, !tbaa !4395
  %5 = and i32 %4, 32, !dbg !4397
  %6 = icmp eq i32 %5, 0, !dbg !4397
  call void @llvm.dbg.value(metadata i1 %6, metadata !4384, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4386
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !4398
  %8 = icmp eq i32 %7, 0, !dbg !4399
  call void @llvm.dbg.value(metadata i1 %8, metadata !4385, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4386
  br i1 %6, label %9, label %19, !dbg !4400

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4402
  call void @llvm.dbg.value(metadata i1 %10, metadata !4383, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4386
  %11 = or i1 %10, %8, !dbg !4403
  %12 = xor i1 %8, true, !dbg !4403
  %13 = sext i1 %12 to i32, !dbg !4403
  br i1 %11, label %22, label %14, !dbg !4403

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !4404
  %16 = load i32, i32* %15, align 4, !dbg !4404, !tbaa !945
  %17 = icmp ne i32 %16, 9, !dbg !4405
  %18 = sext i1 %17 to i32, !dbg !4406
  br label %22, !dbg !4406

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4407

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !4409
  store i32 0, i32* %21, align 4, !dbg !4411, !tbaa !945
  br label %22, !dbg !4409

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4386
  ret i32 %23, !dbg !4412
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4413 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4417, metadata !DIExpression()), !dbg !4422
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4423
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4423
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4418, metadata !DIExpression()), !dbg !4424
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !4425
  %5 = icmp eq i32 %4, 0, !dbg !4425
  br i1 %5, label %6, label %13, !dbg !4427

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4428
  %8 = load i16, i16* %7, align 16, !dbg !4428
  %9 = icmp eq i16 %8, 67, !dbg !4428
  br i1 %9, label %13, label %10, !dbg !4429

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i64 6), !dbg !4430
  %12 = icmp ne i32 %11, 0, !dbg !4431
  br label %13, !dbg !4429

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4422
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4432
  ret i1 %14, !dbg !4432
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4433 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !4438
  call void @llvm.dbg.value(metadata i8* %1, metadata !4437, metadata !DIExpression()), !dbg !4439
  %2 = icmp eq i8* %1, null, !dbg !4440
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), i8* %1, !dbg !4442
  call void @llvm.dbg.value(metadata i8* %3, metadata !4437, metadata !DIExpression()), !dbg !4439
  %4 = load i8, i8* %3, align 1, !dbg !4443, !tbaa !842
  %5 = icmp eq i8 %4, 0, !dbg !4447
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.165, i64 0, i64 0), i8* %3, !dbg !4448
  call void @llvm.dbg.value(metadata i8* %6, metadata !4437, metadata !DIExpression()), !dbg !4439
  ret i8* %6, !dbg !4449
}

; Function Attrs: nounwind
declare !dbg !4450 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4453 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4457, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i8* %1, metadata !4458, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %2, metadata !4459, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i32 %0, metadata !4461, metadata !DIExpression()) #27, !dbg !4470
  call void @llvm.dbg.value(metadata i8* %1, metadata !4464, metadata !DIExpression()) #27, !dbg !4470
  call void @llvm.dbg.value(metadata i64 %2, metadata !4465, metadata !DIExpression()) #27, !dbg !4470
  call void @llvm.dbg.value(metadata i32 %0, metadata !4472, metadata !DIExpression()) #27, !dbg !4478
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4480
  call void @llvm.dbg.value(metadata i8* %4, metadata !4477, metadata !DIExpression()) #27, !dbg !4478
  call void @llvm.dbg.value(metadata i8* %4, metadata !4466, metadata !DIExpression()) #27, !dbg !4470
  %5 = icmp eq i8* %4, null, !dbg !4481
  br i1 %5, label %6, label %9, !dbg !4482

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4483
  br i1 %7, label %19, label %8, !dbg !4486

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4487, !tbaa !842
  br label %19, !dbg !4488

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !4489
  call void @llvm.dbg.value(metadata i64 %10, metadata !4467, metadata !DIExpression()) #27, !dbg !4490
  %11 = icmp ult i64 %10, %2, !dbg !4491
  br i1 %11, label %12, label %14, !dbg !4493

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4494
  call void @llvm.dbg.value(metadata i8* %1, metadata !4496, metadata !DIExpression()) #27, !dbg !4501
  call void @llvm.dbg.value(metadata i8* %4, metadata !4499, metadata !DIExpression()) #27, !dbg !4501
  call void @llvm.dbg.value(metadata i64 %13, metadata !4500, metadata !DIExpression()) #27, !dbg !4501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !4503
  br label %19, !dbg !4504

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4505
  br i1 %15, label %19, label %16, !dbg !4508

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4509
  call void @llvm.dbg.value(metadata i8* %1, metadata !4496, metadata !DIExpression()) #27, !dbg !4511
  call void @llvm.dbg.value(metadata i8* %4, metadata !4499, metadata !DIExpression()) #27, !dbg !4511
  call void @llvm.dbg.value(metadata i64 %17, metadata !4500, metadata !DIExpression()) #27, !dbg !4511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !4513
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4514
  store i8 0, i8* %18, align 1, !dbg !4515, !tbaa !842
  br label %19, !dbg !4516

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4517
  ret i32 %20, !dbg !4518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4519 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 %0, metadata !4472, metadata !DIExpression()) #27, !dbg !4523
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4525
  call void @llvm.dbg.value(metadata i8* %2, metadata !4477, metadata !DIExpression()) #27, !dbg !4523
  ret i8* %2, !dbg !4526
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4527 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4565, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i32 0, metadata !4568, metadata !DIExpression()), !dbg !4569
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4570
  call void @llvm.dbg.value(metadata i32 %2, metadata !4567, metadata !DIExpression()), !dbg !4569
  %3 = icmp slt i32 %2, 0, !dbg !4571
  br i1 %3, label %4, label %6, !dbg !4573

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4574
  br label %24, !dbg !4575

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4576
  %8 = icmp eq i32 %7, 0, !dbg !4576
  br i1 %8, label %13, label %9, !dbg !4578

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4579
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !4580
  %12 = icmp eq i64 %11, -1, !dbg !4581
  br i1 %12, label %16, label %13, !dbg !4582

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !4583
  %15 = icmp eq i32 %14, 0, !dbg !4583
  br i1 %15, label %16, label %18, !dbg !4584

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4566, metadata !DIExpression()), !dbg !4569
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4585
  call void @llvm.dbg.value(metadata i32 %21, metadata !4568, metadata !DIExpression()), !dbg !4569
  br label %24, !dbg !4586

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !4587
  %20 = load i32, i32* %19, align 4, !dbg !4587, !tbaa !945
  call void @llvm.dbg.value(metadata i32 %20, metadata !4566, metadata !DIExpression()), !dbg !4569
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4585
  call void @llvm.dbg.value(metadata i32 %21, metadata !4568, metadata !DIExpression()), !dbg !4569
  %22 = icmp eq i32 %20, 0, !dbg !4588
  br i1 %22, label %24, label %23, !dbg !4586

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4590, !tbaa !945
  call void @llvm.dbg.value(metadata i32 -1, metadata !4568, metadata !DIExpression()), !dbg !4569
  br label %24, !dbg !4592

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4569
  ret i32 %25, !dbg !4593
}

; Function Attrs: nofree nounwind
declare !dbg !4594 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4597 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4598 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4636, metadata !DIExpression()), !dbg !4637
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4638
  br i1 %2, label %6, label %3, !dbg !4640

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4641
  %5 = icmp eq i32 %4, 0, !dbg !4641
  br i1 %5, label %6, label %8, !dbg !4642

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4643
  br label %17, !dbg !4644

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4645, metadata !DIExpression()) #27, !dbg !4650
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4652
  %10 = load i32, i32* %9, align 8, !dbg !4652, !tbaa !4395
  %11 = and i32 %10, 256, !dbg !4654
  %12 = icmp eq i32 %11, 0, !dbg !4654
  br i1 %12, label %15, label %13, !dbg !4655

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !4656
  br label %15, !dbg !4656

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4657
  br label %17, !dbg !4658

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4637
  ret i32 %18, !dbg !4659
}

; Function Attrs: nofree nounwind
declare !dbg !4660 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4663 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4701, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 %1, metadata !4702, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i32 %2, metadata !4703, metadata !DIExpression()), !dbg !4707
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4708
  %5 = load i8*, i8** %4, align 8, !dbg !4708, !tbaa !4709
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4710
  %7 = load i8*, i8** %6, align 8, !dbg !4710, !tbaa !4711
  %8 = icmp eq i8* %5, %7, !dbg !4712
  br i1 %8, label %9, label %28, !dbg !4713

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4714
  %11 = load i8*, i8** %10, align 8, !dbg !4714, !tbaa !4715
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4716
  %13 = load i8*, i8** %12, align 8, !dbg !4716, !tbaa !4717
  %14 = icmp eq i8* %11, %13, !dbg !4718
  br i1 %14, label %15, label %28, !dbg !4719

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4720
  %17 = load i8*, i8** %16, align 8, !dbg !4720, !tbaa !4721
  %18 = icmp eq i8* %17, null, !dbg !4722
  br i1 %18, label %19, label %28, !dbg !4723

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4724
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !4725
  call void @llvm.dbg.value(metadata i64 %21, metadata !4704, metadata !DIExpression()), !dbg !4726
  %22 = icmp eq i64 %21, -1, !dbg !4727
  br i1 %22, label %30, label %23, !dbg !4729

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4730
  %25 = load i32, i32* %24, align 8, !dbg !4731, !tbaa !4395
  %26 = and i32 %25, -17, !dbg !4731
  store i32 %26, i32* %24, align 8, !dbg !4731, !tbaa !4395
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4732
  store i64 %21, i64* %27, align 8, !dbg !4733, !tbaa !4734
  br label %30, !dbg !4735

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4736
  br label %30, !dbg !4737

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4707
  ret i32 %31, !dbg !4738
}

; Function Attrs: nofree nounwind
declare !dbg !4739 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #12 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!2, !119, !125, !132, !215, !218, !223, !138, !144, !226, !233, !209, !240, !257, !259, !270, !274, !276, !279, !281, !283, !672, !674, !676, !678}
!llvm.ident = !{!680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680, !680}
!llvm.module.flags = !{!681, !682, !683, !684, !685}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 72, type: !60, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/head.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "header_mode", file: !3, line: 66, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "multiple_files", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "always", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "never", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!14 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!20 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!21 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!22 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!23 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!24 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Copy_fd_status", file: !3, line: 74, baseType: !6, size: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "COPY_FD_OK", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "COPY_FD_READ_ERROR", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "COPY_FD_UNEXPECTED_EOF", value: 2, isUnsigned: true)
!30 = !{!6, !31, !33, !34, !39, !43, !41, !46}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !35, line: 63, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 152, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !45)
!44 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!48, !85, !87, !89, !91, !92, !106}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "default_file_list", scope: !50, file: !3, line: 938, type: !82, isLocal: true, isDefinition: true)
!50 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 918, type: !51, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !55)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !53, !54}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!55 = !{!56, !57, !58, !59, !61, !62, !63, !67, !68, !69, !70, !73, !74, !75, !76}
!56 = !DILocalVariable(name: "argc", arg: 1, scope: !50, file: !3, line: 918, type: !53)
!57 = !DILocalVariable(name: "argv", arg: 2, scope: !50, file: !3, line: 918, type: !54)
!58 = !DILocalVariable(name: "header_mode", scope: !50, file: !3, line: 920, type: !5)
!59 = !DILocalVariable(name: "ok", scope: !50, file: !3, line: 921, type: !60)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DILocalVariable(name: "c", scope: !50, file: !3, line: 922, type: !53)
!62 = !DILocalVariable(name: "i", scope: !50, file: !3, line: 923, type: !43)
!63 = !DILocalVariable(name: "n_units", scope: !50, file: !3, line: 926, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !65, line: 102, baseType: !66)
!65 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !37, line: 73, baseType: !45)
!67 = !DILocalVariable(name: "count_lines", scope: !50, file: !3, line: 930, type: !60)
!68 = !DILocalVariable(name: "elide_from_end", scope: !50, file: !3, line: 934, type: !60)
!69 = !DILocalVariable(name: "file_list", scope: !50, file: !3, line: 939, type: !39)
!70 = !DILocalVariable(name: "a", scope: !71, file: !3, line: 957, type: !31)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 956, column: 5)
!72 = distinct !DILexicalBlock(scope: !50, file: !3, line: 955, column: 7)
!73 = !DILocalVariable(name: "n_string", scope: !71, file: !3, line: 958, type: !31)
!74 = !DILocalVariable(name: "end_n_string", scope: !71, file: !3, line: 959, type: !31)
!75 = !DILocalVariable(name: "multiplier_char", scope: !71, file: !3, line: 960, type: !32)
!76 = !DILocalVariable(name: "umax_buf", scope: !77, file: !3, line: 1077, type: !79)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 1076, column: 5)
!78 = distinct !DILexicalBlock(scope: !50, file: !3, line: 1075, column: 8)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 168, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 21)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 2)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "presume_input_pipe", scope: !2, file: !3, line: 57, type: !60, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "print_headers", scope: !2, file: !3, line: 60, type: !60, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "line_end", scope: !2, file: !3, line: 63, type: !32, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 88, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 2560, elements: !104)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !97, line: 50, size: 256, elements: !98)
!97 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!98 = !{!99, !100, !101, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !97, line: 52, baseType: !41, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !96, file: !97, line: 55, baseType: !53, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !96, file: !97, line: 56, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !97, line: 57, baseType: !53, size: 32, offset: 192)
!104 = !{!105}
!105 = !DISubrange(count: 10)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "first_file", scope: !108, file: !3, line: 170, type: !60, isLocal: true, isDefinition: true)
!108 = distinct !DISubprogram(name: "write_header", scope: !3, file: !3, line: 168, type: !109, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !41}
!111 = !{!112}
!112 = !DILocalVariable(name: "filename", arg: 1, scope: !108, file: !3, line: 168, type: !41)
!113 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!114 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 10, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!115 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!116 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "Version", scope: !119, file: !120, line: 2, type: !41, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !122, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!121 = !{}
!122 = !{!117}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "file_name", scope: !125, file: !126, line: 46, type: !41, isLocal: true, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !127, splitDebugInlining: false, nameTableKind: None)
!126 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!127 = !{!123, !128}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !125, file: !126, line: 56, type: !60, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "exit_failure", scope: !132, file: !133, line: 24, type: !135, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !134, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !{!130}
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "program_name", scope: !138, file: !139, line: 33, type: !41, isLocal: false, isDefinition: true)
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !140, globals: !141, splitDebugInlining: false, nameTableKind: None)
!139 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!140 = !{!33, !31}
!141 = !{!136}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !144, file: !145, line: 85, type: !204, isLocal: false, isDefinition: true)
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !167, globals: !169, splitDebugInlining: false, nameTableKind: None)
!145 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!146 = !{!11, !147, !152}
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !6, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 46, baseType: !6, size: 32, elements: !154)
!153 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!155 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!156 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!157 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!158 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!159 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!160 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!161 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!162 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!163 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!166 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!167 = !{!53, !168, !43, !31}
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !{!142, !170, !174, !186, !188, !193, !200, !202}
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !144, file: !145, line: 101, type: !172, isLocal: false, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 320, elements: !104)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !144, file: !145, line: 1052, type: !176, isLocal: false, isDefinition: true)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !145, line: 65, size: 448, elements: !177)
!177 = !{!178, !179, !180, !184, !185}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !176, file: !145, line: 68, baseType: !11, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !145, line: 71, baseType: !53, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !176, file: !145, line: 75, baseType: !181, size: 256, offset: 64)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !176, file: !145, line: 78, baseType: !41, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !176, file: !145, line: 81, baseType: !41, size: 64, offset: 384)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !144, file: !145, line: 116, type: !176, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "slot0", scope: !144, file: !145, line: 842, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 256)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "slotvec", scope: !144, file: !145, line: 845, type: !195, isLocal: true, isDefinition: true)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !145, line: 834, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !196, file: !145, line: 836, baseType: !43, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !196, file: !145, line: 837, baseType: !31, size: 64, offset: 64)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "nslots", scope: !144, file: !145, line: 843, type: !53, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "slotvec0", scope: !144, file: !145, line: 844, type: !196, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 704, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 11)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !209, file: !210, line: 26, type: !212, isLocal: false, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !211, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!211 = !{!207}
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 47)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !217, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "lib/full-read.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!217 = !{!31, !43}
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !220, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/offtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !222, line: 85, baseType: !36)
!222 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !225, splitDebugInlining: false, nameTableKind: None)
!224 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!225 = !{!64}
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = !{!229}
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !230, line: 40, baseType: !6, size: 32, elements: !231)
!230 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!231 = !{!232}
!232 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !235, retainedTypes: !239, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!235 = !{!236}
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !234, line: 40, baseType: !6, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!239 = !{!33}
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !256, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!242 = !{!243}
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !245, file: !244, line: 186, baseType: !6, size: 32, elements: !254)
!244 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!245 = distinct !DISubprogram(name: "x2nrealloc", scope: !244, file: !244, line: 174, type: !246, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !249)
!246 = !DISubroutineType(types: !247)
!247 = !{!33, !33, !248, !43}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!249 = !{!250, !251, !252, !253}
!250 = !DILocalVariable(name: "p", arg: 1, scope: !245, file: !244, line: 174, type: !33)
!251 = !DILocalVariable(name: "pn", arg: 2, scope: !245, file: !244, line: 174, type: !248)
!252 = !DILocalVariable(name: "s", arg: 3, scope: !245, file: !244, line: 174, type: !43)
!253 = !DILocalVariable(name: "n", scope: !245, file: !244, line: 176, type: !43)
!254 = !{!255}
!255 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!256 = !{!43, !31, !33}
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !261, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!261 = !{!262}
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !263, line: 25, baseType: !6, size: 32, elements: !264)
!263 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!264 = !{!265, !266, !267, !268, !269}
!265 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!266 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!267 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!268 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!269 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !272, retainedTypes: !273, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!272 = !{!262, !152}
!273 = !{!53, !168}
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !239, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !278, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!278 = !{!43}
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !285, retainedTypes: !239, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!285 = !{!286}
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !287, line: 41, baseType: !6, size: 32, elements: !288)
!287 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!289 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!290 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!291 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!292 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!293 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!294 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!295 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!296 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!297 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!298 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!299 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!300 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!301 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!302 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!303 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!304 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!305 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!306 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!307 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!308 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!309 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!310 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!311 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!312 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!313 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!315 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!316 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!317 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!318 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!319 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!320 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!321 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!322 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!323 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!325 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!327 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!328 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!329 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!330 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!331 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!332 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!333 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!334 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!335 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!336 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!337 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!338 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!397 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!400 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!401 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!402 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!403 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!404 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!405 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!406 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!407 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!408 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!409 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!410 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!484 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!557 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!558 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!559 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!560 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!561 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!562 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!563 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!564 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!565 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!566 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!567 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!568 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!569 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!570 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!571 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!573 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!574 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!575 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!576 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!577 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!578 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!604 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!605 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!606 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!607 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!608 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!613 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!614 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!615 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!616 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !239, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !239, splitDebugInlining: false, nameTableKind: None)
!677 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !239, splitDebugInlining: false, nameTableKind: None)
!679 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!680 = !{!"clang version 12.0.1"}
!681 = !{i32 7, !"Dwarf Version", i32 4}
!682 = !{i32 2, !"Debug Info Version", i32 3}
!683 = !{i32 1, !"wchar_size", i32 4}
!684 = !{i32 7, !"PIC Level", i32 2}
!685 = !{i32 7, !"PIE Level", i32 2}
!686 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 104, type: !687, scopeLine: 105, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !53}
!689 = !{!690}
!690 = !DILocalVariable(name: "status", arg: 1, scope: !686, file: !3, line: 104, type: !53)
!691 = !DILocation(line: 0, scope: !686)
!692 = !DILocation(line: 106, column: 14, scope: !693)
!693 = distinct !DILexicalBlock(scope: !686, file: !3, line: 106, column: 7)
!694 = !DILocation(line: 106, column: 7, scope: !686)
!695 = !DILocation(line: 107, column: 5, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !3, line: 107, column: 5)
!697 = !{!698, !698, i64 0}
!698 = !{!"any pointer", !699, i64 0}
!699 = !{!"omnipotent char", !700, i64 0}
!700 = !{!"Simple C/C++ TBAA"}
!701 = !DILocation(line: 110, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !693, file: !3, line: 109, column: 5)
!703 = !DILocation(line: 114, column: 7, scope: !702)
!704 = !DILocation(line: 583, column: 3, scope: !705, inlinedAt: !709)
!705 = distinct !DISubprogram(name: "emit_stdin_note", scope: !706, file: !706, line: 581, type: !707, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!706 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!707 = !DISubroutineType(types: !708)
!708 = !{null}
!709 = distinct !DILocation(line: 119, column: 7, scope: !702)
!710 = !DILocation(line: 590, column: 3, scope: !711, inlinedAt: !712)
!711 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !706, file: !706, line: 588, type: !707, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!712 = distinct !DILocation(line: 120, column: 7, scope: !702)
!713 = !DILocation(line: 122, column: 7, scope: !702)
!714 = !DILocation(line: 130, column: 7, scope: !702)
!715 = !DILocation(line: 134, column: 7, scope: !702)
!716 = !DILocation(line: 137, column: 7, scope: !702)
!717 = !DILocation(line: 138, column: 7, scope: !702)
!718 = !DILocation(line: 139, column: 7, scope: !702)
!719 = !DILocalVariable(name: "program", arg: 1, scope: !720, file: !706, line: 634, type: !41)
!720 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !706, file: !706, line: 634, type: !109, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !721)
!721 = !{!719, !722, !731, !732, !734}
!722 = !DILocalVariable(name: "infomap", scope: !720, file: !706, line: 636, type: !723)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 896, elements: !729)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !720, file: !706, line: 636, size: 128, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !725, file: !706, line: 636, baseType: !41, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !706, line: 636, baseType: !41, size: 64, offset: 64)
!729 = !{!730}
!730 = !DISubrange(count: 7)
!731 = !DILocalVariable(name: "node", scope: !720, file: !706, line: 646, type: !41)
!732 = !DILocalVariable(name: "map_prog", scope: !720, file: !706, line: 647, type: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!734 = !DILocalVariable(name: "lc_messages", scope: !720, file: !706, line: 659, type: !41)
!735 = !DILocation(line: 0, scope: !720, inlinedAt: !736)
!736 = distinct !DILocation(line: 146, column: 7, scope: !702)
!737 = !DILocation(line: 636, column: 3, scope: !720, inlinedAt: !736)
!738 = !DILocation(line: 636, column: 67, scope: !720, inlinedAt: !736)
!739 = !DILocation(line: 647, column: 36, scope: !720, inlinedAt: !736)
!740 = !DILocation(line: 649, column: 3, scope: !720, inlinedAt: !736)
!741 = !DILocation(line: 649, column: 33, scope: !720, inlinedAt: !736)
!742 = !DILocation(line: 650, column: 13, scope: !720, inlinedAt: !736)
!743 = !DILocation(line: 649, column: 20, scope: !720, inlinedAt: !736)
!744 = !{!745, !698, i64 0}
!745 = !{!"infomap", !698, i64 0, !698, i64 8}
!746 = !DILocation(line: 649, column: 10, scope: !720, inlinedAt: !736)
!747 = !DILocation(line: 649, column: 28, scope: !720, inlinedAt: !736)
!748 = distinct !{!748, !740, !742, !749}
!749 = !{!"llvm.loop.mustprogress"}
!750 = !DILocation(line: 652, column: 17, scope: !751, inlinedAt: !736)
!751 = distinct !DILexicalBlock(scope: !720, file: !706, line: 652, column: 7)
!752 = !{!745, !698, i64 8}
!753 = !DILocation(line: 652, column: 7, scope: !751, inlinedAt: !736)
!754 = !DILocation(line: 652, column: 7, scope: !720, inlinedAt: !736)
!755 = !DILocation(line: 655, column: 3, scope: !720, inlinedAt: !736)
!756 = !DILocation(line: 659, column: 29, scope: !720, inlinedAt: !736)
!757 = !DILocation(line: 660, column: 7, scope: !758, inlinedAt: !736)
!758 = distinct !DILexicalBlock(scope: !720, file: !706, line: 660, column: 7)
!759 = !DILocation(line: 660, column: 19, scope: !758, inlinedAt: !736)
!760 = !DILocation(line: 660, column: 22, scope: !758, inlinedAt: !736)
!761 = !DILocation(line: 660, column: 7, scope: !720, inlinedAt: !736)
!762 = !DILocation(line: 666, column: 7, scope: !763, inlinedAt: !736)
!763 = distinct !DILexicalBlock(scope: !758, file: !706, line: 661, column: 5)
!764 = !DILocation(line: 668, column: 5, scope: !763, inlinedAt: !736)
!765 = !DILocation(line: 669, column: 3, scope: !720, inlinedAt: !736)
!766 = !DILocation(line: 671, column: 3, scope: !720, inlinedAt: !736)
!767 = !DILocation(line: 673, column: 1, scope: !720, inlinedAt: !736)
!768 = !DILocation(line: 148, column: 3, scope: !686)
!769 = !DISubprogram(name: "dcgettext", scope: !770, file: !770, line: 51, type: !771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!770 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!771 = !DISubroutineType(types: !772)
!772 = !{!31, !41, !41, !53}
!773 = !DISubprogram(name: "fputs_unlocked", scope: !35, file: !35, line: 667, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!774 = !DISubroutineType(types: !775)
!775 = !{!53, !41, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !778, line: 49, size: 1728, elements: !779)
!778 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !795, !796, !797, !798, !799, !800, !802, !806, !809, !811, !814, !817, !818, !819, !820, !821}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !777, file: !778, line: 51, baseType: !53, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !777, file: !778, line: 54, baseType: !31, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !777, file: !778, line: 55, baseType: !31, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !777, file: !778, line: 56, baseType: !31, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !777, file: !778, line: 57, baseType: !31, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !777, file: !778, line: 58, baseType: !31, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !777, file: !778, line: 59, baseType: !31, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !777, file: !778, line: 60, baseType: !31, size: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !777, file: !778, line: 61, baseType: !31, size: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !777, file: !778, line: 64, baseType: !31, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !777, file: !778, line: 65, baseType: !31, size: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !777, file: !778, line: 66, baseType: !31, size: 64, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !777, file: !778, line: 68, baseType: !793, size: 64, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !778, line: 36, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !777, file: !778, line: 70, baseType: !776, size: 64, offset: 832)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !777, file: !778, line: 72, baseType: !53, size: 32, offset: 896)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !777, file: !778, line: 73, baseType: !53, size: 32, offset: 928)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !777, file: !778, line: 74, baseType: !36, size: 64, offset: 960)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !777, file: !778, line: 77, baseType: !168, size: 16, offset: 1024)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !777, file: !778, line: 78, baseType: !801, size: 8, offset: 1040)
!801 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !777, file: !778, line: 79, baseType: !803, size: 8, offset: 1048)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 1)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !777, file: !778, line: 81, baseType: !807, size: 64, offset: 1088)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !778, line: 43, baseType: null)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !777, file: !778, line: 89, baseType: !810, size: 64, offset: 1152)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 153, baseType: !38)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !777, file: !778, line: 91, baseType: !812, size: 64, offset: 1216)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !778, line: 37, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !777, file: !778, line: 92, baseType: !815, size: 64, offset: 1280)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !778, line: 38, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !777, file: !778, line: 93, baseType: !776, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !777, file: !778, line: 94, baseType: !33, size: 64, offset: 1408)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !777, file: !778, line: 95, baseType: !43, size: 64, offset: 1472)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !777, file: !778, line: 96, baseType: !53, size: 32, offset: 1536)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !777, file: !778, line: 98, baseType: !822, size: 160, offset: 1568)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 20)
!825 = !DISubprogram(name: "setlocale", scope: !826, file: !826, line: 122, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!826 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!827 = !DISubroutineType(types: !828)
!828 = !{!31, !53, !41}
!829 = !DILocation(line: 0, scope: !50)
!830 = !DILocation(line: 942, column: 21, scope: !50)
!831 = !DILocation(line: 942, column: 3, scope: !50)
!832 = !DILocation(line: 943, column: 3, scope: !50)
!833 = !DILocation(line: 944, column: 3, scope: !50)
!834 = !DILocation(line: 945, column: 3, scope: !50)
!835 = !DILocation(line: 947, column: 3, scope: !50)
!836 = !DILocation(line: 949, column: 19, scope: !50)
!837 = !DILocation(line: 951, column: 17, scope: !50)
!838 = !DILocation(line: 953, column: 12, scope: !50)
!839 = !DILocation(line: 955, column: 9, scope: !72)
!840 = !DILocation(line: 955, column: 16, scope: !72)
!841 = !DILocation(line: 955, column: 19, scope: !72)
!842 = !{!699, !699, i64 0}
!843 = !DILocation(line: 955, column: 30, scope: !72)
!844 = !DILocation(line: 955, column: 37, scope: !72)
!845 = !DILocation(line: 955, column: 40, scope: !72)
!846 = !DILocation(line: 955, column: 7, scope: !50)
!847 = !DILocation(line: 0, scope: !71)
!848 = !DILocation(line: 964, column: 10, scope: !71)
!849 = !DILocation(line: 965, column: 14, scope: !71)
!850 = distinct !{!850, !851, !852, !749}
!851 = !DILocation(line: 964, column: 7, scope: !71)
!852 = !DILocation(line: 965, column: 26, scope: !71)
!853 = !DILocation(line: 971, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !71, file: !3, line: 971, column: 7)
!855 = !DILocation(line: 1011, column: 21, scope: !71)
!856 = !DILocalVariable(name: "count_lines", arg: 1, scope: !857, file: !3, line: 910, type: !60)
!857 = distinct !DISubprogram(name: "string_to_integer", scope: !3, file: !3, line: 910, type: !858, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{!64, !60, !41}
!860 = !{!856, !861}
!861 = !DILocalVariable(name: "n_string", arg: 2, scope: !857, file: !3, line: 910, type: !41)
!862 = !DILocation(line: 0, scope: !857, inlinedAt: !863)
!863 = distinct !DILocation(line: 1015, column: 17, scope: !71)
!864 = !DILocation(line: 913, column: 22, scope: !857, inlinedAt: !863)
!865 = !DILocation(line: 973, column: 19, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 972, column: 9)
!867 = distinct !DILexicalBlock(scope: !854, file: !3, line: 971, column: 7)
!868 = !DILocation(line: 973, column: 11, scope: !866)
!869 = !DILocation(line: 985, column: 15, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !3, line: 974, column: 13)
!871 = !DILocation(line: 989, column: 15, scope: !870)
!872 = !DILocation(line: 993, column: 15, scope: !870)
!873 = !DILocation(line: 997, column: 15, scope: !870)
!874 = !DILocation(line: 1000, column: 24, scope: !870)
!875 = !DILocation(line: 1001, column: 15, scope: !870)
!876 = !DILocation(line: 1004, column: 28, scope: !870)
!877 = !DILocation(line: 1004, column: 64, scope: !870)
!878 = !DILocation(line: 1004, column: 15, scope: !870)
!879 = !DILocation(line: 1005, column: 15, scope: !870)
!880 = !DILocation(line: 971, column: 19, scope: !867)
!881 = !DILocation(line: 971, column: 14, scope: !867)
!882 = distinct !{!882, !853, !883, !749}
!883 = !DILocation(line: 1007, column: 9, scope: !854)
!884 = !DILocation(line: 1012, column: 11, scope: !885)
!885 = distinct !DILexicalBlock(scope: !71, file: !3, line: 1012, column: 11)
!886 = !DILocation(line: 1012, column: 11, scope: !71)
!887 = !DILocation(line: 1013, column: 11, scope: !885)
!888 = !DILocation(line: 1013, column: 27, scope: !885)
!889 = !DILocation(line: 1013, column: 9, scope: !885)
!890 = !DILocation(line: 1015, column: 36, scope: !71)
!891 = !DILocation(line: 912, column: 10, scope: !857, inlinedAt: !863)
!892 = !DILocation(line: 1018, column: 17, scope: !71)
!893 = !DILocation(line: 1018, column: 15, scope: !71)
!894 = !DILocation(line: 1020, column: 11, scope: !71)
!895 = !DILocation(line: 1021, column: 5, scope: !71)
!896 = !DILocation(line: 920, column: 20, scope: !50)
!897 = !DILocation(line: 930, column: 8, scope: !50)
!898 = !DILocation(line: 1023, column: 3, scope: !50)
!899 = !DILocation(line: 1023, column: 15, scope: !50)
!900 = distinct !{!900, !898, !901, !749}
!901 = !DILocation(line: 1069, column: 5, scope: !50)
!902 = !DILocation(line: 1029, column: 30, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1027, column: 9)
!904 = distinct !DILexicalBlock(scope: !50, file: !3, line: 1025, column: 5)
!905 = !DILocation(line: 1030, column: 11, scope: !903)
!906 = !DILocation(line: 1034, column: 30, scope: !903)
!907 = !DILocation(line: 1034, column: 29, scope: !903)
!908 = !DILocation(line: 1034, column: 37, scope: !903)
!909 = !DILocation(line: 1035, column: 15, scope: !903)
!910 = !DILocation(line: 1036, column: 13, scope: !911)
!911 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1035, column: 15)
!912 = !DILocation(line: 1037, column: 53, scope: !903)
!913 = !DILocation(line: 0, scope: !857, inlinedAt: !914)
!914 = distinct !DILocation(line: 1037, column: 21, scope: !903)
!915 = !DILocation(line: 914, column: 36, scope: !857, inlinedAt: !914)
!916 = !DILocation(line: 912, column: 10, scope: !857, inlinedAt: !914)
!917 = !DILocation(line: 1038, column: 11, scope: !903)
!918 = !DILocation(line: 1042, column: 30, scope: !903)
!919 = !DILocation(line: 1042, column: 29, scope: !903)
!920 = !DILocation(line: 1042, column: 37, scope: !903)
!921 = !DILocation(line: 1043, column: 15, scope: !903)
!922 = !DILocation(line: 1044, column: 13, scope: !923)
!923 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1043, column: 15)
!924 = !DILocation(line: 1045, column: 53, scope: !903)
!925 = !DILocation(line: 0, scope: !857, inlinedAt: !926)
!926 = distinct !DILocation(line: 1045, column: 21, scope: !903)
!927 = !DILocation(line: 913, column: 36, scope: !857, inlinedAt: !926)
!928 = !DILocation(line: 912, column: 10, scope: !857, inlinedAt: !926)
!929 = !DILocation(line: 1046, column: 11, scope: !903)
!930 = !DILocation(line: 0, scope: !903)
!931 = !DILocation(line: 1054, column: 11, scope: !903)
!932 = !DILocation(line: 1057, column: 20, scope: !903)
!933 = !DILocation(line: 1058, column: 11, scope: !903)
!934 = !DILocation(line: 1060, column: 9, scope: !903)
!935 = !DILocation(line: 1062, column: 9, scope: !903)
!936 = !DILocation(line: 1065, column: 15, scope: !937)
!937 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1065, column: 15)
!938 = !DILocation(line: 1065, column: 15, scope: !903)
!939 = !DILocation(line: 1066, column: 26, scope: !937)
!940 = !DILocation(line: 1066, column: 13, scope: !937)
!941 = !DILocation(line: 1067, column: 11, scope: !903)
!942 = !DILocation(line: 1072, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !50, file: !3, line: 1071, column: 7)
!944 = !DILocation(line: 1072, column: 44, scope: !943)
!945 = !{!946, !946, i64 0}
!946 = !{!"int", !699, i64 0}
!947 = !DILocation(line: 1072, column: 58, scope: !943)
!948 = !DILocation(line: 1072, column: 51, scope: !943)
!949 = !DILocation(line: 1071, column: 7, scope: !50)
!950 = !DILocation(line: 1073, column: 19, scope: !943)
!951 = !DILocation(line: 1073, column: 5, scope: !943)
!952 = !DILocation(line: 1075, column: 10, scope: !78)
!953 = !DILocation(line: 1075, column: 22, scope: !78)
!954 = !DILocation(line: 1075, column: 25, scope: !78)
!955 = !DILocation(line: 1075, column: 40, scope: !78)
!956 = !DILocation(line: 1077, column: 7, scope: !77)
!957 = !DILocation(line: 1077, column: 12, scope: !77)
!958 = !DILocation(line: 1078, column: 7, scope: !77)
!959 = !DILocation(line: 1082, column: 16, scope: !50)
!960 = !DILocation(line: 1082, column: 23, scope: !50)
!961 = !DILocation(line: 1088, column: 15, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 1088, column: 3)
!963 = distinct !DILexicalBlock(scope: !50, file: !3, line: 1088, column: 3)
!964 = !DILocation(line: 1088, column: 3, scope: !963)
!965 = !DILocalVariable(name: "filename", arg: 1, scope: !966, file: !3, line: 870, type: !41)
!966 = distinct !DISubprogram(name: "head_file", scope: !3, file: !3, line: 870, type: !967, scopeLine: 872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{!60, !41, !64, !60, !60}
!969 = !{!965, !970, !971, !972, !973, !974, !975}
!970 = !DILocalVariable(name: "n_units", arg: 2, scope: !966, file: !3, line: 870, type: !64)
!971 = !DILocalVariable(name: "count_lines", arg: 3, scope: !966, file: !3, line: 870, type: !60)
!972 = !DILocalVariable(name: "elide_from_end", arg: 4, scope: !966, file: !3, line: 871, type: !60)
!973 = !DILocalVariable(name: "fd", scope: !966, file: !3, line: 873, type: !53)
!974 = !DILocalVariable(name: "ok", scope: !966, file: !3, line: 874, type: !60)
!975 = !DILocalVariable(name: "is_stdin", scope: !966, file: !3, line: 875, type: !60)
!976 = !DILocation(line: 0, scope: !966, inlinedAt: !977)
!977 = distinct !DILocation(line: 1089, column: 11, scope: !962)
!978 = !DILocation(line: 875, column: 19, scope: !966, inlinedAt: !977)
!979 = !DILocation(line: 877, column: 7, scope: !966, inlinedAt: !977)
!980 = !DILocation(line: 879, column: 23, scope: !981, inlinedAt: !977)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 878, column: 5)
!982 = distinct !DILexicalBlock(scope: !966, file: !3, line: 877, column: 7)
!983 = !DILocation(line: 881, column: 18, scope: !981, inlinedAt: !977)
!984 = !DILocation(line: 883, column: 5, scope: !981, inlinedAt: !977)
!985 = !DILocation(line: 886, column: 12, scope: !986, inlinedAt: !977)
!986 = distinct !DILexicalBlock(scope: !982, file: !3, line: 885, column: 5)
!987 = !DILocation(line: 887, column: 14, scope: !988, inlinedAt: !977)
!988 = distinct !DILexicalBlock(scope: !986, file: !3, line: 887, column: 11)
!989 = !DILocation(line: 887, column: 11, scope: !986, inlinedAt: !977)
!990 = !DILocation(line: 889, column: 21, scope: !991, inlinedAt: !977)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 888, column: 9)
!992 = !DILocation(line: 889, column: 28, scope: !991, inlinedAt: !977)
!993 = !DILocation(line: 889, column: 61, scope: !991, inlinedAt: !977)
!994 = !DILocation(line: 889, column: 11, scope: !991, inlinedAt: !977)
!995 = !DILocation(line: 890, column: 11, scope: !991, inlinedAt: !977)
!996 = !DILocation(line: 0, scope: !982, inlinedAt: !977)
!997 = !DILocalVariable(name: "buffer", scope: !998, file: !3, line: 801, type: !1050)
!998 = distinct !DISubprogram(name: "head_lines", scope: !3, file: !3, line: 799, type: !999, scopeLine: 800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!60, !41, !53, !64}
!1001 = !{!1002, !1003, !1004, !997, !1005, !1007, !1008, !1011}
!1002 = !DILocalVariable(name: "filename", arg: 1, scope: !998, file: !3, line: 799, type: !41)
!1003 = !DILocalVariable(name: "fd", arg: 2, scope: !998, file: !3, line: 799, type: !53)
!1004 = !DILocalVariable(name: "lines_to_write", arg: 3, scope: !998, file: !3, line: 799, type: !64)
!1005 = !DILocalVariable(name: "bytes_read", scope: !1006, file: !3, line: 805, type: !43)
!1006 = distinct !DILexicalBlock(scope: !998, file: !3, line: 804, column: 5)
!1007 = !DILocalVariable(name: "bytes_to_write", scope: !1006, file: !3, line: 806, type: !43)
!1008 = !DILocalVariable(name: "n_bytes_past_EOL", scope: !1009, file: !3, line: 818, type: !34)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 817, column: 11)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 816, column: 13)
!1011 = !DILocalVariable(name: "st", scope: !1012, file: !3, line: 824, type: !1014)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 823, column: 15)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 822, column: 17)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1015, line: 26, size: 1152, elements: !1016)
!1015 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!1016 = !{!1017, !1019, !1021, !1023, !1025, !1027, !1029, !1030, !1031, !1032, !1034, !1036, !1044, !1045, !1046}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1014, file: !1015, line: 28, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !37, line: 145, baseType: !45)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1014, file: !1015, line: 33, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !37, line: 148, baseType: !45)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1014, file: !1015, line: 41, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !37, line: 151, baseType: !45)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1014, file: !1015, line: 42, baseType: !1024, size: 32, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !37, line: 150, baseType: !6)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1014, file: !1015, line: 44, baseType: !1026, size: 32, offset: 224)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !37, line: 146, baseType: !6)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1014, file: !1015, line: 45, baseType: !1028, size: 32, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !37, line: 147, baseType: !6)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1014, file: !1015, line: 47, baseType: !53, size: 32, offset: 288)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1014, file: !1015, line: 49, baseType: !1018, size: 64, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1014, file: !1015, line: 54, baseType: !36, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1014, file: !1015, line: 58, baseType: !1033, size: 64, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !37, line: 175, baseType: !38)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1014, file: !1015, line: 60, baseType: !1035, size: 64, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !37, line: 180, baseType: !38)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1014, file: !1015, line: 71, baseType: !1037, size: 128, offset: 576)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1038, line: 10, size: 128, elements: !1039)
!1038 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1039 = !{!1040, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1037, file: !1038, line: 12, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !37, line: 160, baseType: !38)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1037, file: !1038, line: 16, baseType: !1043, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !37, line: 197, baseType: !38)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1014, file: !1015, line: 72, baseType: !1037, size: 128, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1014, file: !1015, line: 73, baseType: !1037, size: 128, offset: 832)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1014, file: !1015, line: 86, baseType: !1047, size: 192, offset: 960)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 192, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 3)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 65536, elements: !1051)
!1051 = !{!1052}
!1052 = !DISubrange(count: 8192)
!1053 = !DILocation(line: 801, column: 8, scope: !998, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 864, column: 12, scope: !1055, inlinedAt: !1069)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 863, column: 7)
!1056 = distinct !DISubprogram(name: "head", scope: !3, file: !3, line: 836, type: !1057, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!60, !41, !53, !64, !60, !60}
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1068}
!1060 = !DILocalVariable(name: "filename", arg: 1, scope: !1056, file: !3, line: 836, type: !41)
!1061 = !DILocalVariable(name: "fd", arg: 2, scope: !1056, file: !3, line: 836, type: !53)
!1062 = !DILocalVariable(name: "n_units", arg: 3, scope: !1056, file: !3, line: 836, type: !64)
!1063 = !DILocalVariable(name: "count_lines", arg: 4, scope: !1056, file: !3, line: 836, type: !60)
!1064 = !DILocalVariable(name: "elide_from_end", arg: 5, scope: !1056, file: !3, line: 837, type: !60)
!1065 = !DILocalVariable(name: "current_pos", scope: !1066, file: !3, line: 844, type: !34)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 843, column: 5)
!1067 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 842, column: 7)
!1068 = !DILocalVariable(name: "st", scope: !1066, file: !3, line: 845, type: !1014)
!1069 = distinct !DILocation(line: 894, column: 8, scope: !966, inlinedAt: !977)
!1070 = !DILocalVariable(name: "buf", scope: !1071, file: !3, line: 196, type: !1050)
!1071 = distinct !DISubprogram(name: "copy_fd", scope: !3, file: !3, line: 194, type: !1072, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!25, !53, !64}
!1074 = !{!1075, !1076, !1070, !1077, !1079, !1081}
!1075 = !DILocalVariable(name: "src_fd", arg: 1, scope: !1071, file: !3, line: 194, type: !53)
!1076 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !1071, file: !3, line: 194, type: !64)
!1077 = !DILocalVariable(name: "buf_size", scope: !1071, file: !3, line: 197, type: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!1079 = !DILocalVariable(name: "n_to_read", scope: !1080, file: !3, line: 202, type: !43)
!1080 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 201, column: 5)
!1081 = !DILocalVariable(name: "n_read", scope: !1080, file: !3, line: 203, type: !43)
!1082 = !DILocation(line: 196, column: 8, scope: !1071, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 481, column: 33, scope: !1084, inlinedAt: !1101)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 472, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 469, column: 7)
!1086 = distinct !DISubprogram(name: "elide_tail_bytes_file", scope: !3, file: !3, line: 465, type: !1087, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1091)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!60, !41, !53, !64, !1089, !34}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1092 = !DILocalVariable(name: "filename", arg: 1, scope: !1086, file: !3, line: 465, type: !41)
!1093 = !DILocalVariable(name: "fd", arg: 2, scope: !1086, file: !3, line: 465, type: !53)
!1094 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1086, file: !3, line: 465, type: !64)
!1095 = !DILocalVariable(name: "st", arg: 4, scope: !1086, file: !3, line: 466, type: !1089)
!1096 = !DILocalVariable(name: "current_pos", arg: 5, scope: !1086, file: !3, line: 466, type: !34)
!1097 = !DILocalVariable(name: "size", scope: !1086, file: !3, line: 468, type: !34)
!1098 = !DILocalVariable(name: "diff", scope: !1084, file: !3, line: 475, type: !34)
!1099 = !DILocalVariable(name: "bytes_remaining", scope: !1084, file: !3, line: 476, type: !34)
!1100 = !DILocalVariable(name: "err", scope: !1084, file: !3, line: 481, type: !25)
!1101 = distinct !DILocation(line: 861, column: 16, scope: !1102, inlinedAt: !1069)
!1102 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 858, column: 11)
!1103 = !DILocation(line: 196, column: 8, scope: !1071, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 707, column: 25, scope: !1105, inlinedAt: !1130)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 702, column: 17)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 701, column: 19)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 697, column: 13)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 696, column: 15)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 685, column: 9)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 680, column: 5)
!1111 = distinct !DISubprogram(name: "elide_tail_lines_seekable", scope: !3, file: !3, line: 647, type: !1112, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!60, !41, !53, !64, !34, !34}
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1125, !1126, !1129}
!1115 = !DILocalVariable(name: "pretty_filename", arg: 1, scope: !1111, file: !3, line: 647, type: !41)
!1116 = !DILocalVariable(name: "fd", arg: 2, scope: !1111, file: !3, line: 647, type: !53)
!1117 = !DILocalVariable(name: "n_lines", arg: 3, scope: !1111, file: !3, line: 648, type: !64)
!1118 = !DILocalVariable(name: "start_pos", arg: 4, scope: !1111, file: !3, line: 649, type: !34)
!1119 = !DILocalVariable(name: "size", arg: 5, scope: !1111, file: !3, line: 649, type: !34)
!1120 = !DILocalVariable(name: "buffer", scope: !1111, file: !3, line: 651, type: !1050)
!1121 = !DILocalVariable(name: "bytes_read", scope: !1111, file: !3, line: 652, type: !43)
!1122 = !DILocalVariable(name: "pos", scope: !1111, file: !3, line: 653, type: !34)
!1123 = !DILocalVariable(name: "all_lines", scope: !1111, file: !3, line: 673, type: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!1125 = !DILocalVariable(name: "n", scope: !1110, file: !3, line: 683, type: !43)
!1126 = !DILocalVariable(name: "nl", scope: !1127, file: !3, line: 690, type: !41)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 689, column: 13)
!1128 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 686, column: 15)
!1129 = !DILocalVariable(name: "err", scope: !1105, file: !3, line: 703, type: !25)
!1130 = distinct !DILocation(line: 768, column: 18, scope: !1131, inlinedAt: !1141)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 761, column: 5)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 758, column: 7)
!1133 = distinct !DISubprogram(name: "elide_tail_lines_file", scope: !3, file: !3, line: 754, type: !1087, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140}
!1135 = !DILocalVariable(name: "filename", arg: 1, scope: !1133, file: !3, line: 754, type: !41)
!1136 = !DILocalVariable(name: "fd", arg: 2, scope: !1133, file: !3, line: 754, type: !53)
!1137 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1133, file: !3, line: 754, type: !64)
!1138 = !DILocalVariable(name: "st", arg: 4, scope: !1133, file: !3, line: 755, type: !1089)
!1139 = !DILocalVariable(name: "current_pos", arg: 5, scope: !1133, file: !3, line: 755, type: !34)
!1140 = !DILocalVariable(name: "size", scope: !1133, file: !3, line: 757, type: !34)
!1141 = distinct !DILocation(line: 859, column: 16, scope: !1102, inlinedAt: !1069)
!1142 = !DILocation(line: 0, scope: !1056, inlinedAt: !1069)
!1143 = !DILocation(line: 839, column: 7, scope: !1144, inlinedAt: !1069)
!1144 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 839, column: 7)
!1145 = !DILocation(line: 839, column: 7, scope: !1056, inlinedAt: !1069)
!1146 = !DILocation(line: 0, scope: !108, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 840, column: 5, scope: !1144, inlinedAt: !1069)
!1148 = !DILocation(line: 172, column: 3, scope: !108, inlinedAt: !1147)
!1149 = !DILocation(line: 173, column: 14, scope: !108, inlinedAt: !1147)
!1150 = !DILocation(line: 840, column: 5, scope: !1144, inlinedAt: !1069)
!1151 = !DILocation(line: 842, column: 7, scope: !1056, inlinedAt: !1069)
!1152 = !DILocation(line: 0, scope: !1066, inlinedAt: !1069)
!1153 = !DILocation(line: 845, column: 7, scope: !1066, inlinedAt: !1069)
!1154 = !DILocation(line: 845, column: 19, scope: !1066, inlinedAt: !1069)
!1155 = !DILocation(line: 846, column: 11, scope: !1156, inlinedAt: !1069)
!1156 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 846, column: 11)
!1157 = !DILocation(line: 846, column: 27, scope: !1156, inlinedAt: !1069)
!1158 = !DILocation(line: 846, column: 11, scope: !1066, inlinedAt: !1069)
!1159 = !DILocation(line: 848, column: 21, scope: !1160, inlinedAt: !1069)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 847, column: 9)
!1161 = !DILocation(line: 848, column: 28, scope: !1160, inlinedAt: !1069)
!1162 = !DILocation(line: 849, column: 18, scope: !1160, inlinedAt: !1069)
!1163 = !DILocation(line: 848, column: 11, scope: !1160, inlinedAt: !1069)
!1164 = !DILocation(line: 850, column: 11, scope: !1160, inlinedAt: !1069)
!1165 = !DILocation(line: 852, column: 13, scope: !1166, inlinedAt: !1069)
!1166 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 852, column: 11)
!1167 = !DILocation(line: 852, column: 32, scope: !1166, inlinedAt: !1069)
!1168 = !DILocalVariable(name: "sb", arg: 1, scope: !1169, file: !706, line: 705, type: !1089)
!1169 = distinct !DISubprogram(name: "usable_st_size", scope: !706, file: !706, line: 705, type: !1170, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1172)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!60, !1089}
!1172 = !{!1168}
!1173 = !DILocation(line: 0, scope: !1169, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 852, column: 35, scope: !1166, inlinedAt: !1069)
!1175 = !DILocation(line: 707, column: 11, scope: !1169, inlinedAt: !1174)
!1176 = !{!1177, !946, i64 24}
!1177 = !{!"stat", !1178, i64 0, !1178, i64 8, !1178, i64 16, !946, i64 24, !946, i64 28, !946, i64 32, !946, i64 36, !1178, i64 40, !1178, i64 48, !1178, i64 56, !1178, i64 64, !1179, i64 72, !1179, i64 88, !1179, i64 104, !699, i64 120}
!1178 = !{!"long", !699, i64 0}
!1179 = !{!"timespec", !1178, i64 0, !1178, i64 8}
!1180 = !DILocation(line: 707, column: 33, scope: !1169, inlinedAt: !1174)
!1181 = !DILocation(line: 854, column: 25, scope: !1182, inlinedAt: !1069)
!1182 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 853, column: 9)
!1183 = !DILocation(line: 855, column: 27, scope: !1184, inlinedAt: !1069)
!1184 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 855, column: 15)
!1185 = !DILocation(line: 855, column: 15, scope: !1182, inlinedAt: !1069)
!1186 = !DILocation(line: 0, scope: !1102, inlinedAt: !1069)
!1187 = !{!1177, !1178, i64 48}
!1188 = !DILocation(line: 858, column: 11, scope: !1066, inlinedAt: !1069)
!1189 = !DILocation(line: 0, scope: !1133, inlinedAt: !1141)
!1190 = !DILocation(line: 758, column: 26, scope: !1132, inlinedAt: !1141)
!1191 = !DILocation(line: 758, column: 56, scope: !1132, inlinedAt: !1141)
!1192 = !{!1177, !1178, i64 56}
!1193 = !DILocation(line: 758, column: 53, scope: !1132, inlinedAt: !1141)
!1194 = !DILocation(line: 758, column: 7, scope: !1133, inlinedAt: !1141)
!1195 = !DILocalVariable(name: "filename", arg: 1, scope: !1196, file: !3, line: 498, type: !41)
!1196 = distinct !DISubprogram(name: "elide_tail_lines_pipe", scope: !3, file: !3, line: 498, type: !1197, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!60, !41, !53, !64, !34}
!1199 = !{!1195, !1200, !1201, !1202, !1203, !1204, !1214, !1215, !1216, !1217, !1218, !1219, !1222, !1223, !1226, !1227, !1228}
!1200 = !DILocalVariable(name: "fd", arg: 2, scope: !1196, file: !3, line: 498, type: !53)
!1201 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1196, file: !3, line: 498, type: !64)
!1202 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1196, file: !3, line: 499, type: !34)
!1203 = !DILocalVariable(name: "desired_pos", scope: !1196, file: !3, line: 508, type: !64)
!1204 = !DILocalVariable(name: "first", scope: !1196, file: !3, line: 510, type: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBUFFER", scope: !1196, file: !3, line: 509, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", scope: !1196, file: !3, line: 501, size: 65728, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1207, file: !3, line: 503, baseType: !1050, size: 65536)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !1207, file: !3, line: 504, baseType: !43, size: 64, offset: 65536)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !1207, file: !3, line: 505, baseType: !43, size: 64, offset: 65600)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1207, file: !3, line: 506, baseType: !1213, size: 64, offset: 65664)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1214 = !DILocalVariable(name: "last", scope: !1196, file: !3, line: 510, type: !1205)
!1215 = !DILocalVariable(name: "tmp", scope: !1196, file: !3, line: 510, type: !1205)
!1216 = !DILocalVariable(name: "total_lines", scope: !1196, file: !3, line: 511, type: !43)
!1217 = !DILocalVariable(name: "ok", scope: !1196, file: !3, line: 512, type: !60)
!1218 = !DILocalVariable(name: "n_read", scope: !1196, file: !3, line: 513, type: !43)
!1219 = !DILocalVariable(name: "buffer_end", scope: !1220, file: !3, line: 542, type: !41)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 541, column: 7)
!1221 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 524, column: 5)
!1222 = !DILocalVariable(name: "p", scope: !1220, file: !3, line: 543, type: !41)
!1223 = !DILocalVariable(name: "n", scope: !1224, file: !3, line: 609, type: !43)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 608, column: 5)
!1225 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 607, column: 7)
!1226 = !DILocalVariable(name: "buffer_end", scope: !1224, file: !3, line: 610, type: !41)
!1227 = !DILocalVariable(name: "p", scope: !1224, file: !3, line: 611, type: !41)
!1228 = !DILabel(scope: !1196, name: "free_lbuffers", file: !3, line: 622)
!1229 = !DILocation(line: 0, scope: !1196, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 759, column: 12, scope: !1132, inlinedAt: !1141)
!1231 = !DILocation(line: 515, column: 18, scope: !1196, inlinedAt: !1230)
!1232 = !DILocation(line: 516, column: 10, scope: !1196, inlinedAt: !1230)
!1233 = !DILocation(line: 516, column: 17, scope: !1196, inlinedAt: !1230)
!1234 = !DILocation(line: 518, column: 9, scope: !1196, inlinedAt: !1230)
!1235 = !DILocation(line: 525, column: 16, scope: !1221, inlinedAt: !1230)
!1236 = !DILocation(line: 526, column: 23, scope: !1237, inlinedAt: !1230)
!1237 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 526, column: 11)
!1238 = !DILocation(line: 523, column: 3, scope: !1196, inlinedAt: !1230)
!1239 = !DILocation(line: 536, column: 12, scope: !1221, inlinedAt: !1230)
!1240 = !DILocation(line: 536, column: 19, scope: !1221, inlinedAt: !1230)
!1241 = !{!1242, !1178, i64 8192}
!1242 = !{!"linebuffer", !699, i64 0, !1178, i64 8192, !1178, i64 8200, !698, i64 8208}
!1243 = !DILocation(line: 537, column: 12, scope: !1221, inlinedAt: !1230)
!1244 = !DILocation(line: 542, column: 46, scope: !1220, inlinedAt: !1230)
!1245 = !DILocation(line: 0, scope: !1220, inlinedAt: !1230)
!1246 = !DILocation(line: 544, column: 32, scope: !1220, inlinedAt: !1230)
!1247 = !DILocation(line: 538, column: 17, scope: !1221, inlinedAt: !1230)
!1248 = !DILocation(line: 544, column: 53, scope: !1220, inlinedAt: !1230)
!1249 = !DILocation(line: 544, column: 21, scope: !1220, inlinedAt: !1230)
!1250 = !DILocation(line: 544, column: 9, scope: !1220, inlinedAt: !1230)
!1251 = !DILocation(line: 531, column: 23, scope: !1252, inlinedAt: !1230)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 530, column: 9)
!1253 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 529, column: 11)
!1254 = !DILocation(line: 532, column: 11, scope: !1252, inlinedAt: !1230)
!1255 = distinct !{!1255, !1238, !1256}
!1256 = !DILocation(line: 580, column: 5, scope: !1196, inlinedAt: !1230)
!1257 = !DILocation(line: 547, column: 13, scope: !1258, inlinedAt: !1230)
!1258 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 545, column: 11)
!1259 = !DILocation(line: 546, column: 13, scope: !1258, inlinedAt: !1230)
!1260 = !{!1242, !1178, i64 8200}
!1261 = distinct !{!1261, !1250, !1262, !749}
!1262 = !DILocation(line: 548, column: 11, scope: !1220, inlinedAt: !1230)
!1263 = !DILocation(line: 550, column: 27, scope: !1221, inlinedAt: !1230)
!1264 = !DILocation(line: 550, column: 19, scope: !1221, inlinedAt: !1230)
!1265 = !DILocation(line: 555, column: 31, scope: !1266, inlinedAt: !1230)
!1266 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 555, column: 11)
!1267 = !DILocation(line: 555, column: 23, scope: !1266, inlinedAt: !1230)
!1268 = !DILocation(line: 555, column: 38, scope: !1266, inlinedAt: !1230)
!1269 = !DILocation(line: 555, column: 11, scope: !1221, inlinedAt: !1230)
!1270 = !DILocation(line: 557, column: 20, scope: !1271, inlinedAt: !1230)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 556, column: 9)
!1272 = !DILocalVariable(name: "__dest", arg: 1, scope: !1273, file: !1274, line: 26, type: !1277)
!1273 = distinct !DISubprogram(name: "memcpy", scope: !1274, file: !1274, line: 26, type: !1275, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1274 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!33, !1277, !1278, !43}
!1277 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!1278 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1281 = !{!1272, !1282, !1283}
!1282 = !DILocalVariable(name: "__src", arg: 2, scope: !1273, file: !1274, line: 26, type: !1278)
!1283 = !DILocalVariable(name: "__len", arg: 3, scope: !1273, file: !1274, line: 26, type: !43)
!1284 = !DILocation(line: 0, scope: !1273, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 557, column: 11, scope: !1271, inlinedAt: !1230)
!1286 = !DILocation(line: 29, column: 10, scope: !1273, inlinedAt: !1285)
!1287 = !DILocation(line: 558, column: 32, scope: !1271, inlinedAt: !1230)
!1288 = !{!1178, !1178, i64 0}
!1289 = !DILocation(line: 558, column: 24, scope: !1271, inlinedAt: !1230)
!1290 = !DILocation(line: 560, column: 9, scope: !1271, inlinedAt: !1230)
!1291 = !DILocation(line: 568, column: 24, scope: !1292, inlinedAt: !1230)
!1292 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 562, column: 9)
!1293 = !DILocation(line: 568, column: 29, scope: !1292, inlinedAt: !1230)
!1294 = !{!1242, !698, i64 8208}
!1295 = !DILocation(line: 569, column: 46, scope: !1296, inlinedAt: !1230)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 569, column: 15)
!1297 = !DILocation(line: 569, column: 37, scope: !1296, inlinedAt: !1230)
!1298 = !DILocation(line: 569, column: 23, scope: !1296, inlinedAt: !1230)
!1299 = !DILocation(line: 569, column: 15, scope: !1292, inlinedAt: !1230)
!1300 = !DILocation(line: 571, column: 37, scope: !1301, inlinedAt: !1230)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 570, column: 13)
!1302 = !DILocation(line: 571, column: 27, scope: !1301, inlinedAt: !1230)
!1303 = !DILocation(line: 572, column: 30, scope: !1301, inlinedAt: !1230)
!1304 = !DILocation(line: 572, column: 15, scope: !1301, inlinedAt: !1230)
!1305 = !DILocation(line: 574, column: 37, scope: !1301, inlinedAt: !1230)
!1306 = !DILocation(line: 574, column: 27, scope: !1301, inlinedAt: !1230)
!1307 = !DILocation(line: 575, column: 30, scope: !1301, inlinedAt: !1230)
!1308 = !DILocation(line: 576, column: 13, scope: !1301, inlinedAt: !1230)
!1309 = !DILocation(line: 578, column: 19, scope: !1296, inlinedAt: !1230)
!1310 = !DILocation(line: 0, scope: !1221, inlinedAt: !1230)
!1311 = !DILocation(line: 525, column: 31, scope: !1221, inlinedAt: !1230)
!1312 = distinct !{!1312, !1238, !1256}
!1313 = !DILocation(line: 582, column: 3, scope: !1196, inlinedAt: !1230)
!1314 = !DILocation(line: 584, column: 7, scope: !1196, inlinedAt: !1230)
!1315 = !DILocation(line: 586, column: 17, scope: !1316, inlinedAt: !1230)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 585, column: 5)
!1317 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 584, column: 7)
!1318 = !DILocation(line: 586, column: 24, scope: !1316, inlinedAt: !1230)
!1319 = !DILocation(line: 586, column: 47, scope: !1316, inlinedAt: !1230)
!1320 = !DILocation(line: 586, column: 7, scope: !1316, inlinedAt: !1230)
!1321 = !DILocation(line: 588, column: 7, scope: !1316, inlinedAt: !1230)
!1322 = !DILocation(line: 593, column: 13, scope: !1323, inlinedAt: !1230)
!1323 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 593, column: 7)
!1324 = !DILocation(line: 593, column: 7, scope: !1323, inlinedAt: !1230)
!1325 = !DILocation(line: 593, column: 20, scope: !1323, inlinedAt: !1230)
!1326 = !DILocation(line: 593, column: 49, scope: !1323, inlinedAt: !1230)
!1327 = !DILocation(line: 593, column: 23, scope: !1323, inlinedAt: !1230)
!1328 = !DILocation(line: 593, column: 57, scope: !1323, inlinedAt: !1230)
!1329 = !DILocation(line: 593, column: 54, scope: !1323, inlinedAt: !1230)
!1330 = !DILocation(line: 593, column: 7, scope: !1196, inlinedAt: !1230)
!1331 = !DILocation(line: 595, column: 15, scope: !1332, inlinedAt: !1230)
!1332 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 594, column: 5)
!1333 = !DILocation(line: 595, column: 7, scope: !1332, inlinedAt: !1230)
!1334 = !DILocation(line: 596, column: 7, scope: !1332, inlinedAt: !1230)
!1335 = !DILocation(line: 597, column: 5, scope: !1332, inlinedAt: !1230)
!1336 = !DILocation(line: 599, column: 50, scope: !1337, inlinedAt: !1230)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 599, column: 3)
!1338 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 599, column: 3)
!1339 = !DILocation(line: 599, column: 43, scope: !1337, inlinedAt: !1230)
!1340 = !DILocation(line: 599, column: 29, scope: !1337, inlinedAt: !1230)
!1341 = !DILocation(line: 599, column: 3, scope: !1338, inlinedAt: !1230)
!1342 = !DILocation(line: 601, column: 27, scope: !1343, inlinedAt: !1230)
!1343 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 600, column: 5)
!1344 = !DILocation(line: 601, column: 19, scope: !1343, inlinedAt: !1230)
!1345 = !DILocation(line: 602, column: 22, scope: !1343, inlinedAt: !1230)
!1346 = !DILocation(line: 602, column: 7, scope: !1343, inlinedAt: !1230)
!1347 = !DILocation(line: 603, column: 27, scope: !1343, inlinedAt: !1230)
!1348 = !DILocation(line: 603, column: 19, scope: !1343, inlinedAt: !1230)
!1349 = !DILocation(line: 599, column: 69, scope: !1337, inlinedAt: !1230)
!1350 = distinct !{!1350, !1341, !1351, !749}
!1351 = !DILocation(line: 604, column: 5, scope: !1338, inlinedAt: !1230)
!1352 = !DILocation(line: 0, scope: !1338, inlinedAt: !1230)
!1353 = !DILocation(line: 607, column: 15, scope: !1225, inlinedAt: !1230)
!1354 = !DILocation(line: 607, column: 7, scope: !1196, inlinedAt: !1230)
!1355 = !DILocation(line: 609, column: 30, scope: !1224, inlinedAt: !1230)
!1356 = !DILocation(line: 0, scope: !1224, inlinedAt: !1230)
!1357 = !DILocation(line: 610, column: 32, scope: !1224, inlinedAt: !1230)
!1358 = !DILocation(line: 612, column: 14, scope: !1224, inlinedAt: !1230)
!1359 = !DILocation(line: 612, column: 16, scope: !1224, inlinedAt: !1230)
!1360 = !DILocation(line: 610, column: 51, scope: !1224, inlinedAt: !1230)
!1361 = !DILocation(line: 610, column: 44, scope: !1224, inlinedAt: !1230)
!1362 = !DILocation(line: 612, column: 56, scope: !1224, inlinedAt: !1230)
!1363 = !DILocation(line: 612, column: 24, scope: !1224, inlinedAt: !1230)
!1364 = !DILocation(line: 612, column: 7, scope: !1224, inlinedAt: !1230)
!1365 = !DILocation(line: 614, column: 11, scope: !1366, inlinedAt: !1230)
!1366 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 613, column: 9)
!1367 = !DILocation(line: 615, column: 11, scope: !1366, inlinedAt: !1230)
!1368 = !DILocation(line: 616, column: 11, scope: !1366, inlinedAt: !1230)
!1369 = distinct !{!1369, !1364, !1370, !749}
!1370 = !DILocation(line: 617, column: 9, scope: !1224, inlinedAt: !1230)
!1371 = !DILocation(line: 618, column: 24, scope: !1224, inlinedAt: !1230)
!1372 = !DILocation(line: 618, column: 19, scope: !1224, inlinedAt: !1230)
!1373 = !DILocation(line: 619, column: 7, scope: !1224, inlinedAt: !1230)
!1374 = !DILocation(line: 620, column: 5, scope: !1224, inlinedAt: !1230)
!1375 = !DILocation(line: 622, column: 1, scope: !1196, inlinedAt: !1230)
!1376 = !DILocation(line: 623, column: 3, scope: !1196, inlinedAt: !1230)
!1377 = !DILocation(line: 625, column: 20, scope: !1378, inlinedAt: !1230)
!1378 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 624, column: 5)
!1379 = !DILocation(line: 626, column: 13, scope: !1378, inlinedAt: !1230)
!1380 = !DILocation(line: 626, column: 7, scope: !1378, inlinedAt: !1230)
!1381 = distinct !{!1381, !1376, !1382, !749}
!1382 = !DILocation(line: 628, column: 5, scope: !1196, inlinedAt: !1230)
!1383 = !DILocation(line: 630, column: 9, scope: !1384, inlinedAt: !1230)
!1384 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 630, column: 7)
!1385 = !DILocation(line: 630, column: 24, scope: !1384, inlinedAt: !1230)
!1386 = !DILocation(line: 630, column: 27, scope: !1384, inlinedAt: !1230)
!1387 = !DILocation(line: 630, column: 72, scope: !1384, inlinedAt: !1230)
!1388 = !DILocation(line: 630, column: 7, scope: !1196, inlinedAt: !1230)
!1389 = !DILocation(line: 632, column: 10, scope: !1196, inlinedAt: !1230)
!1390 = !DILocation(line: 759, column: 5, scope: !1132, inlinedAt: !1141)
!1391 = !DILocation(line: 767, column: 20, scope: !1131, inlinedAt: !1141)
!1392 = !DILocation(line: 768, column: 15, scope: !1131, inlinedAt: !1141)
!1393 = !DILocation(line: 0, scope: !1111, inlinedAt: !1130)
!1394 = !DILocation(line: 651, column: 3, scope: !1111, inlinedAt: !1130)
!1395 = !DILocation(line: 651, column: 8, scope: !1111, inlinedAt: !1130)
!1396 = !DILocation(line: 657, column: 21, scope: !1111, inlinedAt: !1130)
!1397 = !DILocation(line: 657, column: 34, scope: !1111, inlinedAt: !1130)
!1398 = !DILocation(line: 658, column: 18, scope: !1399, inlinedAt: !1130)
!1399 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 658, column: 7)
!1400 = !DILocation(line: 658, column: 7, scope: !1111, inlinedAt: !1130)
!1401 = !DILocation(line: 662, column: 7, scope: !1111, inlinedAt: !1130)
!1402 = !DILocation(line: 663, column: 7, scope: !1403, inlinedAt: !1130)
!1403 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 663, column: 7)
!1404 = !DILocation(line: 663, column: 51, scope: !1403, inlinedAt: !1130)
!1405 = !DILocation(line: 663, column: 7, scope: !1111, inlinedAt: !1130)
!1406 = !DILocation(line: 665, column: 16, scope: !1111, inlinedAt: !1130)
!1407 = !DILocation(line: 666, column: 18, scope: !1408, inlinedAt: !1130)
!1408 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 666, column: 7)
!1409 = !DILocation(line: 666, column: 7, scope: !1111, inlinedAt: !1130)
!1410 = !DILocation(line: 668, column: 17, scope: !1411, inlinedAt: !1130)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 667, column: 5)
!1412 = !DILocation(line: 668, column: 24, scope: !1411, inlinedAt: !1130)
!1413 = !DILocation(line: 668, column: 47, scope: !1411, inlinedAt: !1130)
!1414 = !DILocation(line: 668, column: 7, scope: !1411, inlinedAt: !1130)
!1415 = !DILocation(line: 669, column: 7, scope: !1411, inlinedAt: !1130)
!1416 = !DILocation(line: 676, column: 15, scope: !1417, inlinedAt: !1130)
!1417 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 676, column: 7)
!1418 = !DILocation(line: 676, column: 50, scope: !1417, inlinedAt: !1130)
!1419 = !DILocation(line: 676, column: 32, scope: !1417, inlinedAt: !1130)
!1420 = !DILocation(line: 676, column: 58, scope: !1417, inlinedAt: !1130)
!1421 = !DILocation(line: 676, column: 55, scope: !1417, inlinedAt: !1130)
!1422 = !DILocation(line: 676, column: 7, scope: !1111, inlinedAt: !1130)
!1423 = !DILocation(line: 684, column: 7, scope: !1110, inlinedAt: !1130)
!1424 = !DILocation(line: 665, column: 14, scope: !1111, inlinedAt: !1130)
!1425 = !DILocation(line: 0, scope: !1110, inlinedAt: !1130)
!1426 = !DILocation(line: 686, column: 15, scope: !1109, inlinedAt: !1130)
!1427 = !DILocation(line: 687, column: 15, scope: !1128, inlinedAt: !1130)
!1428 = !DILocation(line: 687, column: 13, scope: !1128, inlinedAt: !1130)
!1429 = !DILocation(line: 691, column: 20, scope: !1127, inlinedAt: !1130)
!1430 = !DILocation(line: 0, scope: !1127, inlinedAt: !1130)
!1431 = !DILocation(line: 692, column: 22, scope: !1432, inlinedAt: !1130)
!1432 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 692, column: 19)
!1433 = !DILocation(line: 692, column: 19, scope: !1127, inlinedAt: !1130)
!1434 = !DILocation(line: 696, column: 22, scope: !1108, inlinedAt: !1130)
!1435 = !DILocation(line: 696, column: 25, scope: !1108, inlinedAt: !1130)
!1436 = !DILocation(line: 696, column: 15, scope: !1109, inlinedAt: !1130)
!1437 = distinct !{!1437, !1423, !1438, !749}
!1438 = !DILocation(line: 722, column: 9, scope: !1110, inlinedAt: !1130)
!1439 = !DILocation(line: 701, column: 29, scope: !1106, inlinedAt: !1130)
!1440 = !DILocation(line: 701, column: 19, scope: !1107, inlinedAt: !1130)
!1441 = !DILocation(line: 704, column: 23, scope: !1442, inlinedAt: !1130)
!1442 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 704, column: 23)
!1443 = !DILocation(line: 704, column: 73, scope: !1442, inlinedAt: !1130)
!1444 = !DILocation(line: 704, column: 23, scope: !1105, inlinedAt: !1130)
!1445 = !DILocation(line: 707, column: 42, scope: !1105, inlinedAt: !1130)
!1446 = !DILocation(line: 0, scope: !1071, inlinedAt: !1104)
!1447 = !DILocation(line: 196, column: 3, scope: !1071, inlinedAt: !1104)
!1448 = !DILocation(line: 200, column: 12, scope: !1071, inlinedAt: !1104)
!1449 = !DILocation(line: 200, column: 3, scope: !1071, inlinedAt: !1104)
!1450 = !DILocation(line: 202, column: 26, scope: !1080, inlinedAt: !1104)
!1451 = !DILocation(line: 0, scope: !1080, inlinedAt: !1104)
!1452 = !DILocation(line: 203, column: 23, scope: !1080, inlinedAt: !1104)
!1453 = !DILocation(line: 204, column: 18, scope: !1454, inlinedAt: !1104)
!1454 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 204, column: 11)
!1455 = !DILocation(line: 204, column: 11, scope: !1080, inlinedAt: !1104)
!1456 = !DILocation(line: 207, column: 15, scope: !1080, inlinedAt: !1104)
!1457 = !DILocation(line: 209, column: 18, scope: !1458, inlinedAt: !1104)
!1458 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 209, column: 11)
!1459 = !DILocation(line: 209, column: 23, scope: !1458, inlinedAt: !1104)
!1460 = !DILocation(line: 212, column: 7, scope: !1080, inlinedAt: !1104)
!1461 = !DILocation(line: 216, column: 1, scope: !1071, inlinedAt: !1104)
!1462 = !DILocation(line: 0, scope: !1105, inlinedAt: !1130)
!1463 = !DILocation(line: 710, column: 23, scope: !1464, inlinedAt: !1130)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 709, column: 21)
!1465 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 708, column: 23)
!1466 = !DILocation(line: 711, column: 23, scope: !1464, inlinedAt: !1130)
!1467 = !DILocation(line: 717, column: 40, scope: !1107, inlinedAt: !1130)
!1468 = !DILocation(line: 717, column: 15, scope: !1107, inlinedAt: !1130)
!1469 = !DILocation(line: 720, column: 47, scope: !1107, inlinedAt: !1130)
!1470 = !DILocation(line: 720, column: 27, scope: !1107, inlinedAt: !1130)
!1471 = !DILocation(line: 720, column: 24, scope: !1107, inlinedAt: !1130)
!1472 = !DILocation(line: 720, column: 15, scope: !1107, inlinedAt: !1130)
!1473 = !DILocation(line: 725, column: 15, scope: !1474, inlinedAt: !1130)
!1474 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 725, column: 11)
!1475 = !DILocation(line: 725, column: 11, scope: !1110, inlinedAt: !1130)
!1476 = !DILocation(line: 730, column: 11, scope: !1110, inlinedAt: !1130)
!1477 = !DILocation(line: 731, column: 11, scope: !1478, inlinedAt: !1130)
!1478 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 731, column: 11)
!1479 = !DILocation(line: 731, column: 55, scope: !1478, inlinedAt: !1130)
!1480 = !DILocation(line: 731, column: 11, scope: !1110, inlinedAt: !1130)
!1481 = !DILocation(line: 734, column: 20, scope: !1110, inlinedAt: !1130)
!1482 = !DILocation(line: 735, column: 11, scope: !1110, inlinedAt: !1130)
!1483 = !DILocation(line: 737, column: 21, scope: !1484, inlinedAt: !1130)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 736, column: 9)
!1485 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 735, column: 11)
!1486 = !DILocation(line: 737, column: 28, scope: !1484, inlinedAt: !1130)
!1487 = !DILocation(line: 737, column: 51, scope: !1484, inlinedAt: !1130)
!1488 = !DILocation(line: 737, column: 11, scope: !1484, inlinedAt: !1130)
!1489 = !DILocation(line: 738, column: 11, scope: !1484, inlinedAt: !1130)
!1490 = !DILocation(line: 746, column: 1, scope: !1111, inlinedAt: !1130)
!1491 = !DILocation(line: 0, scope: !1086, inlinedAt: !1101)
!1492 = !DILocation(line: 469, column: 26, scope: !1085, inlinedAt: !1101)
!1493 = !DILocation(line: 469, column: 56, scope: !1085, inlinedAt: !1101)
!1494 = !DILocation(line: 469, column: 53, scope: !1085, inlinedAt: !1101)
!1495 = !DILocation(line: 469, column: 7, scope: !1086, inlinedAt: !1101)
!1496 = !DILocalVariable(name: "filename", arg: 1, scope: !1497, file: !3, line: 248, type: !41)
!1497 = distinct !DISubprogram(name: "elide_tail_bytes_pipe", scope: !3, file: !3, line: 248, type: !1197, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1498)
!1498 = !{!1496, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1508, !1511, !1512, !1513, !1514, !1516, !1520, !1521, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1538, !1541, !1542}
!1499 = !DILocalVariable(name: "fd", arg: 2, scope: !1497, file: !3, line: 248, type: !53)
!1500 = !DILocalVariable(name: "n_elide_0", arg: 3, scope: !1497, file: !3, line: 248, type: !64)
!1501 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1497, file: !3, line: 249, type: !34)
!1502 = !DILocalVariable(name: "n_elide", scope: !1497, file: !3, line: 251, type: !43)
!1503 = !DILocalVariable(name: "desired_pos", scope: !1497, file: !3, line: 252, type: !64)
!1504 = !DILocalVariable(name: "ok", scope: !1497, file: !3, line: 253, type: !60)
!1505 = !DILocalVariable(name: "umax_buf", scope: !1506, file: !3, line: 274, type: !79)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 273, column: 5)
!1507 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 272, column: 7)
!1508 = !DILocalVariable(name: "first", scope: !1509, file: !3, line: 292, type: !60)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 291, column: 5)
!1510 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 290, column: 7)
!1511 = !DILocalVariable(name: "eof", scope: !1509, file: !3, line: 293, type: !60)
!1512 = !DILocalVariable(name: "n_to_read", scope: !1509, file: !3, line: 294, type: !43)
!1513 = !DILocalVariable(name: "i", scope: !1509, file: !3, line: 295, type: !60)
!1514 = !DILocalVariable(name: "b", scope: !1509, file: !3, line: 296, type: !1515)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !83)
!1516 = !DILocalVariable(name: "n_read", scope: !1517, file: !3, line: 302, type: !43)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 301, column: 9)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 300, column: 7)
!1519 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 300, column: 7)
!1520 = !DILocalVariable(name: "delta", scope: !1517, file: !3, line: 303, type: !43)
!1521 = !DILocalVariable(name: "eof", scope: !1522, file: !3, line: 353, type: !60)
!1522 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 349, column: 5)
!1523 = !DILocalVariable(name: "n_read", scope: !1522, file: !3, line: 354, type: !43)
!1524 = !DILocalVariable(name: "buffered_enough", scope: !1522, file: !3, line: 355, type: !60)
!1525 = !DILocalVariable(name: "i", scope: !1522, file: !3, line: 356, type: !43)
!1526 = !DILocalVariable(name: "i_next", scope: !1522, file: !3, line: 356, type: !43)
!1527 = !DILocalVariable(name: "b", scope: !1522, file: !3, line: 357, type: !54)
!1528 = !DILocalVariable(name: "rem", scope: !1522, file: !3, line: 359, type: !43)
!1529 = !DILocalVariable(name: "n_elide_round", scope: !1522, file: !3, line: 360, type: !43)
!1530 = !DILocalVariable(name: "n_bufs", scope: !1522, file: !3, line: 361, type: !43)
!1531 = !DILocalVariable(name: "n_alloc", scope: !1522, file: !3, line: 362, type: !43)
!1532 = !DILocalVariable(name: "n_array_alloc", scope: !1522, file: !3, line: 363, type: !43)
!1533 = !DILocalVariable(name: "n_bytes_left_in_b_i", scope: !1534, file: !3, line: 412, type: !43)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 411, column: 13)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 410, column: 15)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 409, column: 9)
!1537 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 408, column: 11)
!1538 = !DILocalVariable(name: "y", scope: !1539, file: !3, line: 438, type: !43)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 425, column: 13)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 424, column: 20)
!1541 = !DILocalVariable(name: "x", scope: !1539, file: !3, line: 439, type: !43)
!1542 = !DILabel(scope: !1522, name: "free_mem", file: !3, line: 445)
!1543 = !DILocation(line: 0, scope: !1497, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 470, column: 12, scope: !1085, inlinedAt: !1101)
!1545 = !DILocation(line: 290, column: 7, scope: !1497, inlinedAt: !1544)
!1546 = !DILocation(line: 0, scope: !1509, inlinedAt: !1544)
!1547 = !DILocation(line: 296, column: 7, scope: !1509, inlinedAt: !1544)
!1548 = !DILocation(line: 296, column: 13, scope: !1509, inlinedAt: !1544)
!1549 = !DILocalVariable(name: "n", arg: 1, scope: !1550, file: !244, line: 99, type: !43)
!1550 = distinct !DISubprogram(name: "xnmalloc", scope: !244, file: !244, line: 99, type: !1551, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!33, !43, !43}
!1553 = !{!1549, !1554}
!1554 = !DILocalVariable(name: "s", arg: 2, scope: !1550, file: !244, line: 99, type: !43)
!1555 = !DILocation(line: 0, scope: !1550, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 297, column: 14, scope: !1509, inlinedAt: !1544)
!1557 = !DILocation(line: 101, column: 7, scope: !1550, inlinedAt: !1556)
!1558 = !DILocation(line: 102, column: 5, scope: !1559, inlinedAt: !1556)
!1559 = distinct !DILexicalBlock(scope: !1550, file: !244, line: 101, column: 7)
!1560 = !DILocation(line: 103, column: 10, scope: !1550, inlinedAt: !1556)
!1561 = !DILocation(line: 297, column: 12, scope: !1509, inlinedAt: !1544)
!1562 = !DILocation(line: 298, column: 19, scope: !1509, inlinedAt: !1544)
!1563 = !DILocation(line: 298, column: 12, scope: !1509, inlinedAt: !1544)
!1564 = !DILocation(line: 300, column: 7, scope: !1519, inlinedAt: !1544)
!1565 = !DILocation(line: 302, column: 42, scope: !1517, inlinedAt: !1544)
!1566 = !DILocation(line: 302, column: 27, scope: !1517, inlinedAt: !1544)
!1567 = !DILocation(line: 0, scope: !1517, inlinedAt: !1544)
!1568 = !DILocation(line: 304, column: 22, scope: !1569, inlinedAt: !1544)
!1569 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 304, column: 15)
!1570 = !DILocation(line: 304, column: 15, scope: !1517, inlinedAt: !1544)
!1571 = !DILocation(line: 306, column: 19, scope: !1572, inlinedAt: !1544)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 306, column: 19)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 305, column: 13)
!1574 = !DILocation(line: 306, column: 25, scope: !1572, inlinedAt: !1544)
!1575 = !DILocation(line: 306, column: 19, scope: !1573, inlinedAt: !1544)
!1576 = !DILocation(line: 314, column: 26, scope: !1577, inlinedAt: !1544)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 314, column: 19)
!1578 = !DILocation(line: 314, column: 19, scope: !1573, inlinedAt: !1544)
!1579 = !DILocation(line: 303, column: 18, scope: !1517, inlinedAt: !1544)
!1580 = !DILocation(line: 332, column: 15, scope: !1517, inlinedAt: !1544)
!1581 = !DILocation(line: 334, column: 38, scope: !1582, inlinedAt: !1544)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 333, column: 13)
!1583 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 332, column: 15)
!1584 = !DILocation(line: 334, column: 27, scope: !1582, inlinedAt: !1544)
!1585 = !DILocation(line: 335, column: 32, scope: !1582, inlinedAt: !1544)
!1586 = !DILocation(line: 335, column: 30, scope: !1582, inlinedAt: !1544)
!1587 = !DILocation(line: 335, column: 36, scope: !1582, inlinedAt: !1544)
!1588 = !DILocation(line: 335, column: 15, scope: !1582, inlinedAt: !1544)
!1589 = !DILocation(line: 336, column: 13, scope: !1582, inlinedAt: !1544)
!1590 = !DILocation(line: 339, column: 23, scope: !1591, inlinedAt: !1544)
!1591 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 339, column: 15)
!1592 = !DILocation(line: 339, column: 15, scope: !1517, inlinedAt: !1544)
!1593 = !DILocation(line: 341, column: 37, scope: !1594, inlinedAt: !1544)
!1594 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 340, column: 13)
!1595 = !DILocation(line: 341, column: 27, scope: !1594, inlinedAt: !1544)
!1596 = !DILocation(line: 342, column: 15, scope: !1594, inlinedAt: !1544)
!1597 = !DILocation(line: 343, column: 13, scope: !1594, inlinedAt: !1544)
!1598 = !DILocation(line: 308, column: 36, scope: !1599, inlinedAt: !1544)
!1599 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 307, column: 17)
!1600 = !DILocation(line: 308, column: 59, scope: !1599, inlinedAt: !1544)
!1601 = !DILocation(line: 308, column: 19, scope: !1599, inlinedAt: !1544)
!1602 = !DILocation(line: 300, column: 35, scope: !1518, inlinedAt: !1544)
!1603 = !DILocation(line: 300, column: 25, scope: !1518, inlinedAt: !1544)
!1604 = distinct !{!1604, !1564, !1605, !749}
!1605 = !DILocation(line: 344, column: 9, scope: !1519, inlinedAt: !1544)
!1606 = !DILocation(line: 346, column: 7, scope: !1509, inlinedAt: !1544)
!1607 = !DILocation(line: 347, column: 5, scope: !1510, inlinedAt: !1544)
!1608 = !DILocation(line: 347, column: 5, scope: !1509, inlinedAt: !1544)
!1609 = !DILocation(line: 366, column: 7, scope: !1610, inlinedAt: !1544)
!1610 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 366, column: 7)
!1611 = !DILocation(line: 0, scope: !1522, inlinedAt: !1544)
!1612 = !DILocation(line: 368, column: 29, scope: !1613, inlinedAt: !1544)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 368, column: 15)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 367, column: 9)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 366, column: 7)
!1616 = !DILocation(line: 368, column: 15, scope: !1614, inlinedAt: !1544)
!1617 = !DILocation(line: 371, column: 33, scope: !1618, inlinedAt: !1544)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 371, column: 19)
!1619 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 369, column: 13)
!1620 = !DILocation(line: 371, column: 19, scope: !1619, inlinedAt: !1544)
!1621 = !DILocation(line: 373, column: 38, scope: !1622, inlinedAt: !1544)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 373, column: 24)
!1623 = !DILocation(line: 373, column: 24, scope: !1618, inlinedAt: !1544)
!1624 = !DILocalVariable(name: "p", arg: 1, scope: !1625, file: !244, line: 112, type: !33)
!1625 = distinct !DISubprogram(name: "xnrealloc", scope: !244, file: !244, line: 112, type: !1626, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1628)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!33, !33, !43, !43}
!1628 = !{!1624, !1629, !1630}
!1629 = !DILocalVariable(name: "n", arg: 2, scope: !1625, file: !244, line: 112, type: !43)
!1630 = !DILocalVariable(name: "s", arg: 3, scope: !1625, file: !244, line: 112, type: !43)
!1631 = !DILocation(line: 0, scope: !1625, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 377, column: 19, scope: !1619, inlinedAt: !1544)
!1633 = !DILocation(line: 114, column: 7, scope: !1634, inlinedAt: !1632)
!1634 = distinct !DILexicalBlock(scope: !1625, file: !244, line: 114, column: 7)
!1635 = !DILocation(line: 114, column: 7, scope: !1625, inlinedAt: !1632)
!1636 = !DILocation(line: 115, column: 5, scope: !1634, inlinedAt: !1632)
!1637 = !DILocation(line: 377, column: 30, scope: !1619, inlinedAt: !1544)
!1638 = !DILocation(line: 116, column: 25, scope: !1625, inlinedAt: !1632)
!1639 = !DILocation(line: 116, column: 10, scope: !1625, inlinedAt: !1632)
!1640 = !DILocation(line: 377, column: 19, scope: !1619, inlinedAt: !1544)
!1641 = !DILocation(line: 378, column: 13, scope: !1619, inlinedAt: !1544)
!1642 = !DILocation(line: 380, column: 17, scope: !1643, inlinedAt: !1544)
!1643 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 380, column: 15)
!1644 = !DILocation(line: 380, column: 15, scope: !1614, inlinedAt: !1544)
!1645 = !DILocation(line: 385, column: 35, scope: !1614, inlinedAt: !1544)
!1646 = !DILocation(line: 382, column: 22, scope: !1647, inlinedAt: !1544)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 381, column: 13)
!1648 = !DILocation(line: 382, column: 15, scope: !1647, inlinedAt: !1544)
!1649 = !DILocation(line: 382, column: 20, scope: !1647, inlinedAt: !1544)
!1650 = !DILocation(line: 383, column: 27, scope: !1647, inlinedAt: !1544)
!1651 = !DILocation(line: 384, column: 13, scope: !1647, inlinedAt: !1544)
!1652 = !DILocation(line: 385, column: 20, scope: !1614, inlinedAt: !1544)
!1653 = !DILocation(line: 386, column: 22, scope: !1654, inlinedAt: !1544)
!1654 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 386, column: 15)
!1655 = !DILocation(line: 386, column: 15, scope: !1614, inlinedAt: !1544)
!1656 = !DILocation(line: 388, column: 19, scope: !1657, inlinedAt: !1544)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 388, column: 19)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 387, column: 13)
!1659 = !DILocation(line: 388, column: 25, scope: !1657, inlinedAt: !1544)
!1660 = !DILocation(line: 388, column: 19, scope: !1658, inlinedAt: !1544)
!1661 = !DILocation(line: 390, column: 36, scope: !1662, inlinedAt: !1544)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 389, column: 17)
!1663 = !DILocation(line: 390, column: 59, scope: !1662, inlinedAt: !1544)
!1664 = !DILocation(line: 390, column: 19, scope: !1662, inlinedAt: !1544)
!1665 = !DILocation(line: 392, column: 19, scope: !1662, inlinedAt: !1544)
!1666 = !DILocation(line: 397, column: 21, scope: !1667, inlinedAt: !1544)
!1667 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 397, column: 15)
!1668 = !DILocation(line: 397, column: 15, scope: !1614, inlinedAt: !1544)
!1669 = !DILocation(line: 400, column: 15, scope: !1670, inlinedAt: !1544)
!1670 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 400, column: 15)
!1671 = !DILocation(line: 400, column: 15, scope: !1614, inlinedAt: !1544)
!1672 = !DILocation(line: 366, column: 66, scope: !1615, inlinedAt: !1544)
!1673 = !DILocation(line: 366, column: 71, scope: !1615, inlinedAt: !1544)
!1674 = !DILocation(line: 366, column: 32, scope: !1615, inlinedAt: !1544)
!1675 = distinct !{!1675, !1609, !1676, !749}
!1676 = !DILocation(line: 405, column: 9, scope: !1610, inlinedAt: !1544)
!1677 = !DILocation(line: 402, column: 27, scope: !1678, inlinedAt: !1544)
!1678 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 401, column: 13)
!1679 = !DILocation(line: 403, column: 30, scope: !1678, inlinedAt: !1544)
!1680 = !DILocation(line: 403, column: 15, scope: !1678, inlinedAt: !1544)
!1681 = distinct !{!1681, !1609, !1676, !749}
!1682 = !DILocation(line: 412, column: 57, scope: !1534, inlinedAt: !1544)
!1683 = !DILocation(line: 0, scope: !1534, inlinedAt: !1544)
!1684 = !DILocation(line: 413, column: 27, scope: !1534, inlinedAt: !1544)
!1685 = !DILocation(line: 414, column: 23, scope: !1686, inlinedAt: !1544)
!1686 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 414, column: 19)
!1687 = !DILocation(line: 0, scope: !1686, inlinedAt: !1544)
!1688 = !DILocation(line: 414, column: 19, scope: !1534, inlinedAt: !1544)
!1689 = !DILocation(line: 416, column: 19, scope: !1690, inlinedAt: !1544)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 415, column: 17)
!1691 = !DILocation(line: 417, column: 17, scope: !1690, inlinedAt: !1544)
!1692 = !DILocation(line: 420, column: 19, scope: !1693, inlinedAt: !1544)
!1693 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 419, column: 17)
!1694 = !DILocation(line: 421, column: 34, scope: !1693, inlinedAt: !1544)
!1695 = !DILocation(line: 421, column: 49, scope: !1693, inlinedAt: !1544)
!1696 = !DILocation(line: 421, column: 19, scope: !1693, inlinedAt: !1544)
!1697 = !DILocation(line: 424, column: 26, scope: !1540, inlinedAt: !1544)
!1698 = !DILocation(line: 424, column: 20, scope: !1535, inlinedAt: !1544)
!1699 = !DILocation(line: 0, scope: !1539, inlinedAt: !1544)
!1700 = !DILocation(line: 439, column: 33, scope: !1539, inlinedAt: !1544)
!1701 = !DILocation(line: 440, column: 27, scope: !1539, inlinedAt: !1544)
!1702 = !DILocation(line: 441, column: 30, scope: !1539, inlinedAt: !1544)
!1703 = !DILocation(line: 441, column: 15, scope: !1539, inlinedAt: !1544)
!1704 = !DILocation(line: 442, column: 13, scope: !1539, inlinedAt: !1544)
!1705 = !DILocation(line: 445, column: 5, scope: !1522, inlinedAt: !1544)
!1706 = !DILocation(line: 446, column: 21, scope: !1707, inlinedAt: !1544)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 446, column: 7)
!1708 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 446, column: 7)
!1709 = !DILocation(line: 446, column: 7, scope: !1708, inlinedAt: !1544)
!1710 = !DILocation(line: 447, column: 15, scope: !1707, inlinedAt: !1544)
!1711 = !DILocation(line: 447, column: 9, scope: !1707, inlinedAt: !1544)
!1712 = !DILocation(line: 446, column: 33, scope: !1707, inlinedAt: !1544)
!1713 = distinct !{!1713, !1709, !1714, !749}
!1714 = !DILocation(line: 447, column: 19, scope: !1708, inlinedAt: !1544)
!1715 = !DILocation(line: 448, column: 13, scope: !1522, inlinedAt: !1544)
!1716 = !DILocation(line: 448, column: 7, scope: !1522, inlinedAt: !1544)
!1717 = !DILocation(line: 0, scope: !1510, inlinedAt: !1544)
!1718 = !DILocation(line: 252, column: 13, scope: !1497, inlinedAt: !1544)
!1719 = !DILocation(line: 451, column: 9, scope: !1720, inlinedAt: !1544)
!1720 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 451, column: 7)
!1721 = !DILocation(line: 451, column: 24, scope: !1720, inlinedAt: !1544)
!1722 = !DILocation(line: 451, column: 27, scope: !1720, inlinedAt: !1544)
!1723 = !DILocation(line: 451, column: 72, scope: !1720, inlinedAt: !1544)
!1724 = !DILocation(line: 451, column: 7, scope: !1497, inlinedAt: !1544)
!1725 = !DILocation(line: 453, column: 10, scope: !1497, inlinedAt: !1544)
!1726 = !DILocation(line: 470, column: 5, scope: !1085, inlinedAt: !1101)
!1727 = !DILocation(line: 475, column: 25, scope: !1084, inlinedAt: !1101)
!1728 = !DILocation(line: 0, scope: !1084, inlinedAt: !1101)
!1729 = !DILocation(line: 476, column: 31, scope: !1084, inlinedAt: !1101)
!1730 = !DILocation(line: 478, column: 27, scope: !1731, inlinedAt: !1101)
!1731 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 478, column: 11)
!1732 = !DILocation(line: 478, column: 11, scope: !1084, inlinedAt: !1101)
!1733 = !DILocation(line: 481, column: 62, scope: !1084, inlinedAt: !1101)
!1734 = !DILocation(line: 0, scope: !1071, inlinedAt: !1083)
!1735 = !DILocation(line: 196, column: 3, scope: !1071, inlinedAt: !1083)
!1736 = !DILocation(line: 200, column: 12, scope: !1071, inlinedAt: !1083)
!1737 = !DILocation(line: 200, column: 3, scope: !1071, inlinedAt: !1083)
!1738 = !DILocation(line: 202, column: 26, scope: !1080, inlinedAt: !1083)
!1739 = !DILocation(line: 0, scope: !1080, inlinedAt: !1083)
!1740 = !DILocation(line: 203, column: 23, scope: !1080, inlinedAt: !1083)
!1741 = !DILocation(line: 204, column: 18, scope: !1454, inlinedAt: !1083)
!1742 = !DILocation(line: 204, column: 11, scope: !1080, inlinedAt: !1083)
!1743 = !DILocation(line: 207, column: 15, scope: !1080, inlinedAt: !1083)
!1744 = !DILocation(line: 209, column: 18, scope: !1458, inlinedAt: !1083)
!1745 = !DILocation(line: 209, column: 23, scope: !1458, inlinedAt: !1083)
!1746 = !DILocation(line: 212, column: 7, scope: !1080, inlinedAt: !1083)
!1747 = !DILocation(line: 216, column: 1, scope: !1071, inlinedAt: !1083)
!1748 = !DILocation(line: 482, column: 11, scope: !1084, inlinedAt: !1101)
!1749 = !DILocation(line: 485, column: 7, scope: !1084, inlinedAt: !1101)
!1750 = !DILocation(line: 486, column: 7, scope: !1084, inlinedAt: !1101)
!1751 = !DILocation(line: 862, column: 5, scope: !1067, inlinedAt: !1069)
!1752 = !DILocation(line: 0, scope: !1055, inlinedAt: !1069)
!1753 = !DILocation(line: 863, column: 7, scope: !1056, inlinedAt: !1069)
!1754 = !DILocation(line: 0, scope: !998, inlinedAt: !1054)
!1755 = !DILocation(line: 803, column: 3, scope: !998, inlinedAt: !1054)
!1756 = !DILocation(line: 805, column: 27, scope: !1006, inlinedAt: !1054)
!1757 = !DILocation(line: 0, scope: !1006, inlinedAt: !1054)
!1758 = !DILocation(line: 808, column: 11, scope: !1006, inlinedAt: !1054)
!1759 = !DILocation(line: 815, column: 7, scope: !1006, inlinedAt: !1054)
!1760 = !DILocation(line: 810, column: 21, scope: !1761, inlinedAt: !1054)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 809, column: 9)
!1762 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 808, column: 11)
!1763 = !DILocation(line: 810, column: 28, scope: !1761, inlinedAt: !1054)
!1764 = !DILocation(line: 810, column: 51, scope: !1761, inlinedAt: !1054)
!1765 = !DILocation(line: 810, column: 11, scope: !1761, inlinedAt: !1054)
!1766 = !DILocation(line: 816, column: 34, scope: !1010, inlinedAt: !1054)
!1767 = !DILocation(line: 816, column: 13, scope: !1010, inlinedAt: !1054)
!1768 = !DILocation(line: 816, column: 38, scope: !1010, inlinedAt: !1054)
!1769 = !DILocation(line: 816, column: 50, scope: !1010, inlinedAt: !1054)
!1770 = !DILocation(line: 816, column: 53, scope: !1010, inlinedAt: !1054)
!1771 = !DILocation(line: 816, column: 70, scope: !1010, inlinedAt: !1054)
!1772 = !DILocation(line: 816, column: 13, scope: !1006, inlinedAt: !1054)
!1773 = !DILocation(line: 818, column: 49, scope: !1009, inlinedAt: !1054)
!1774 = !DILocation(line: 0, scope: !1009, inlinedAt: !1054)
!1775 = !DILocation(line: 822, column: 17, scope: !1013, inlinedAt: !1054)
!1776 = !DILocation(line: 822, column: 57, scope: !1013, inlinedAt: !1054)
!1777 = !DILocation(line: 822, column: 17, scope: !1009, inlinedAt: !1054)
!1778 = !DILocation(line: 824, column: 17, scope: !1012, inlinedAt: !1054)
!1779 = !DILocation(line: 824, column: 29, scope: !1012, inlinedAt: !1054)
!1780 = !DILocation(line: 825, column: 21, scope: !1781, inlinedAt: !1054)
!1781 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 825, column: 21)
!1782 = !DILocation(line: 825, column: 37, scope: !1781, inlinedAt: !1054)
!1783 = !DILocation(line: 825, column: 42, scope: !1781, inlinedAt: !1054)
!1784 = !DILocation(line: 825, column: 45, scope: !1781, inlinedAt: !1054)
!1785 = !DILocation(line: 825, column: 21, scope: !1012, inlinedAt: !1054)
!1786 = !DILocation(line: 826, column: 19, scope: !1781, inlinedAt: !1054)
!1787 = !DILocation(line: 827, column: 15, scope: !1013, inlinedAt: !1054)
!1788 = !DILocation(line: 827, column: 15, scope: !1012, inlinedAt: !1054)
!1789 = !DILocation(line: 815, column: 29, scope: !1006, inlinedAt: !1054)
!1790 = distinct !{!1790, !1759, !1791, !749}
!1791 = !DILocation(line: 829, column: 11, scope: !1006, inlinedAt: !1054)
!1792 = !DILocation(line: 830, column: 7, scope: !1006, inlinedAt: !1054)
!1793 = !DILocation(line: 833, column: 1, scope: !998, inlinedAt: !1054)
!1794 = !DILocation(line: 864, column: 5, scope: !1055, inlinedAt: !1069)
!1795 = !DILocalVariable(name: "filename", arg: 1, scope: !1796, file: !3, line: 774, type: !41)
!1796 = distinct !DISubprogram(name: "head_bytes", scope: !3, file: !3, line: 774, type: !999, scopeLine: 775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1797 = !{!1795, !1798, !1799, !1800, !1801, !1802}
!1798 = !DILocalVariable(name: "fd", arg: 2, scope: !1796, file: !3, line: 774, type: !53)
!1799 = !DILocalVariable(name: "bytes_to_write", arg: 3, scope: !1796, file: !3, line: 774, type: !64)
!1800 = !DILocalVariable(name: "buffer", scope: !1796, file: !3, line: 776, type: !1050)
!1801 = !DILocalVariable(name: "bytes_to_read", scope: !1796, file: !3, line: 777, type: !43)
!1802 = !DILocalVariable(name: "bytes_read", scope: !1803, file: !3, line: 781, type: !43)
!1803 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 780, column: 5)
!1804 = !DILocation(line: 0, scope: !1796, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 866, column: 12, scope: !1055, inlinedAt: !1069)
!1806 = !DILocation(line: 776, column: 8, scope: !1796, inlinedAt: !1805)
!1807 = !DILocation(line: 779, column: 3, scope: !1796, inlinedAt: !1805)
!1808 = !DILocation(line: 782, column: 26, scope: !1809, inlinedAt: !1805)
!1809 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 782, column: 11)
!1810 = !DILocation(line: 782, column: 11, scope: !1803, inlinedAt: !1805)
!1811 = !DILocation(line: 784, column: 20, scope: !1803, inlinedAt: !1805)
!1812 = !DILocation(line: 0, scope: !1803, inlinedAt: !1805)
!1813 = !DILocation(line: 785, column: 11, scope: !1803, inlinedAt: !1805)
!1814 = !DILocation(line: 787, column: 21, scope: !1815, inlinedAt: !1805)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 786, column: 9)
!1816 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 785, column: 11)
!1817 = !DILocation(line: 787, column: 28, scope: !1815, inlinedAt: !1805)
!1818 = !DILocation(line: 787, column: 51, scope: !1815, inlinedAt: !1805)
!1819 = !DILocation(line: 787, column: 11, scope: !1815, inlinedAt: !1805)
!1820 = !DILocation(line: 792, column: 7, scope: !1803, inlinedAt: !1805)
!1821 = !DILocation(line: 793, column: 22, scope: !1803, inlinedAt: !1805)
!1822 = !DILocation(line: 796, column: 1, scope: !1796, inlinedAt: !1805)
!1823 = !DILocation(line: 866, column: 5, scope: !1055, inlinedAt: !1069)
!1824 = !DILocation(line: 895, column: 17, scope: !1825, inlinedAt: !977)
!1825 = distinct !DILexicalBlock(scope: !966, file: !3, line: 895, column: 7)
!1826 = !DILocation(line: 895, column: 20, scope: !1825, inlinedAt: !977)
!1827 = !DILocation(line: 895, column: 31, scope: !1825, inlinedAt: !977)
!1828 = !DILocation(line: 895, column: 7, scope: !966, inlinedAt: !977)
!1829 = !DILocation(line: 897, column: 17, scope: !1830, inlinedAt: !977)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 896, column: 5)
!1831 = !DILocation(line: 897, column: 24, scope: !1830, inlinedAt: !977)
!1832 = !DILocation(line: 897, column: 49, scope: !1830, inlinedAt: !977)
!1833 = !DILocation(line: 897, column: 7, scope: !1830, inlinedAt: !977)
!1834 = !DILocation(line: 898, column: 7, scope: !1830, inlinedAt: !977)
!1835 = !DILocation(line: 1089, column: 8, scope: !962)
!1836 = !DILocation(line: 1088, column: 29, scope: !962)
!1837 = distinct !{!1837, !964, !1838, !749}
!1838 = !DILocation(line: 1089, column: 72, scope: !963)
!1839 = !DILocation(line: 1091, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !50, file: !3, line: 1091, column: 7)
!1841 = !DILocation(line: 1091, column: 23, scope: !1840)
!1842 = !DILocation(line: 1091, column: 26, scope: !1840)
!1843 = !DILocation(line: 1091, column: 47, scope: !1840)
!1844 = !DILocation(line: 1091, column: 7, scope: !50)
!1845 = !DILocation(line: 1092, column: 5, scope: !1840)
!1846 = !DILocation(line: 1095, column: 1, scope: !50)
!1847 = !DISubprogram(name: "bindtextdomain", scope: !770, file: !770, line: 86, type: !1848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!31, !41, !41}
!1850 = !DISubprogram(name: "textdomain", scope: !770, file: !770, line: 82, type: !1851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!31, !41}
!1853 = !DISubprogram(name: "atexit", scope: !1854, file: !1854, line: 595, type: !1855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1854 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!53, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!1858 = !DISubprogram(name: "error", scope: !1859, file: !1859, line: 52, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1859 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !53, !53, !41, null}
!1862 = !DISubprogram(name: "getopt_long", scope: !97, file: !97, line: 66, type: !1863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!53, !53, !1865, !41, !1867, !102}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1868 = !DISubprogram(name: "open", scope: !1869, file: !1869, line: 196, type: !1870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1869 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!53, !41, !53, null}
!1872 = !DISubprogram(name: "fstat", scope: !1873, file: !1873, line: 210, type: !1874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1873 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!53, !53, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1877 = distinct !DISubprogram(name: "elseek", scope: !3, file: !3, line: 224, type: !1878, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!34, !53, !34, !53, !41}
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1886}
!1881 = !DILocalVariable(name: "fd", arg: 1, scope: !1877, file: !3, line: 224, type: !53)
!1882 = !DILocalVariable(name: "offset", arg: 2, scope: !1877, file: !3, line: 224, type: !34)
!1883 = !DILocalVariable(name: "whence", arg: 3, scope: !1877, file: !3, line: 224, type: !53)
!1884 = !DILocalVariable(name: "filename", arg: 4, scope: !1877, file: !3, line: 224, type: !41)
!1885 = !DILocalVariable(name: "new_offset", scope: !1877, file: !3, line: 226, type: !34)
!1886 = !DILocalVariable(name: "buf", scope: !1877, file: !3, line: 227, type: !79)
!1887 = !DILocation(line: 0, scope: !1877)
!1888 = !DILocation(line: 226, column: 22, scope: !1877)
!1889 = !DILocation(line: 227, column: 3, scope: !1877)
!1890 = !DILocation(line: 227, column: 8, scope: !1877)
!1891 = !DILocation(line: 229, column: 18, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 229, column: 7)
!1893 = !DILocation(line: 229, column: 7, scope: !1877)
!1894 = !DILocation(line: 230, column: 15, scope: !1892)
!1895 = !DILocation(line: 231, column: 12, scope: !1892)
!1896 = !DILocation(line: 234, column: 12, scope: !1892)
!1897 = !DILocation(line: 235, column: 12, scope: !1892)
!1898 = !DILocation(line: 230, column: 5, scope: !1892)
!1899 = !DILocation(line: 238, column: 1, scope: !1877)
!1900 = !DILocation(line: 237, column: 3, scope: !1877)
!1901 = distinct !DISubprogram(name: "xwrite_stdout", scope: !3, file: !3, line: 180, type: !1902, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !41, !43}
!1904 = !{!1905, !1906, !1907, !1910, !1914}
!1905 = !DILocalVariable(name: "buffer", arg: 1, scope: !1901, file: !3, line: 180, type: !41)
!1906 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !1901, file: !3, line: 180, type: !43)
!1907 = !DILocalVariable(name: "__ptr", scope: !1908, file: !3, line: 182, type: !41)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 182, column: 22)
!1909 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 182, column: 7)
!1910 = !DILocalVariable(name: "__stream", scope: !1908, file: !3, line: 182, type: !1911)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1913, line: 7, baseType: !777)
!1913 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1914 = !DILocalVariable(name: "__cnt", scope: !1908, file: !3, line: 182, type: !43)
!1915 = !DILocation(line: 0, scope: !1901)
!1916 = !DILocation(line: 182, column: 15, scope: !1909)
!1917 = !DILocation(line: 182, column: 19, scope: !1909)
!1918 = !DILocation(line: 182, column: 22, scope: !1909)
!1919 = !DILocation(line: 182, column: 58, scope: !1909)
!1920 = !DILocation(line: 182, column: 7, scope: !1901)
!1921 = !DILocation(line: 184, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 183, column: 5)
!1923 = !DILocation(line: 185, column: 7, scope: !1922)
!1924 = !DILocation(line: 188, column: 1, scope: !1901)
!1925 = !DISubprogram(name: "memrchr", scope: !1926, file: !1926, line: 117, type: !1927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1926 = !DIFile(filename: "/usr/include/string.h", directory: "")
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!33, !1279, !53, !45}
!1929 = distinct !DISubprogram(name: "diagnose_copy_fd_failure", scope: !3, file: !3, line: 152, type: !1930, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !25, !41}
!1932 = !{!1933, !1934}
!1933 = !DILocalVariable(name: "err", arg: 1, scope: !1929, file: !3, line: 152, type: !25)
!1934 = !DILocalVariable(name: "filename", arg: 2, scope: !1929, file: !3, line: 152, type: !41)
!1935 = !DILocation(line: 0, scope: !1929)
!1936 = !DILocation(line: 154, column: 3, scope: !1929)
!1937 = !DILocation(line: 157, column: 17, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 155, column: 5)
!1939 = !DILocation(line: 157, column: 24, scope: !1938)
!1940 = !DILocation(line: 157, column: 47, scope: !1938)
!1941 = !DILocation(line: 157, column: 7, scope: !1938)
!1942 = !DILocation(line: 158, column: 7, scope: !1938)
!1943 = !DILocation(line: 160, column: 17, scope: !1938)
!1944 = !DILocation(line: 160, column: 24, scope: !1938)
!1945 = !DILocation(line: 160, column: 59, scope: !1938)
!1946 = !DILocation(line: 160, column: 7, scope: !1938)
!1947 = !DILocation(line: 161, column: 7, scope: !1938)
!1948 = !DILocation(line: 163, column: 7, scope: !1938)
!1949 = !DILocation(line: 165, column: 1, scope: !1929)
!1950 = !DISubprogram(name: "lseek", scope: !1951, file: !1951, line: 334, type: !1952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1951 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!38, !53, !38, !53}
!1954 = !DISubprogram(name: "close", scope: !1951, file: !1951, line: 353, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!53, !53}
!1957 = !DISubprogram(name: "fwrite_unlocked", scope: !35, file: !35, line: 680, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!45, !1279, !45, !45, !776}
!1960 = !DISubprogram(name: "clearerr_unlocked", scope: !35, file: !35, line: 770, type: !1961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !776}
!1963 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !126, file: !126, line: 51, type: !109, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1964)
!1964 = !{!1965}
!1965 = !DILocalVariable(name: "file", arg: 1, scope: !1963, file: !126, line: 51, type: !41)
!1966 = !DILocation(line: 0, scope: !1963)
!1967 = !DILocation(line: 53, column: 13, scope: !1963)
!1968 = !DILocation(line: 54, column: 1, scope: !1963)
!1969 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !126, file: !126, line: 88, type: !1970, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !60}
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "ignore", arg: 1, scope: !1969, file: !126, line: 88, type: !60)
!1974 = !DILocation(line: 0, scope: !1969)
!1975 = !DILocation(line: 90, column: 16, scope: !1969)
!1976 = !{!1977, !1977, i64 0}
!1977 = !{!"_Bool", !699, i64 0}
!1978 = !DILocation(line: 91, column: 1, scope: !1969)
!1979 = distinct !DISubprogram(name: "close_stdout", scope: !126, file: !126, line: 117, type: !707, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !1980)
!1980 = !{!1981}
!1981 = !DILocalVariable(name: "write_error", scope: !1982, file: !126, line: 122, type: !41)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !126, line: 121, column: 5)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !126, line: 119, column: 7)
!1984 = !DILocation(line: 119, column: 21, scope: !1983)
!1985 = !DILocation(line: 119, column: 7, scope: !1983)
!1986 = !DILocation(line: 119, column: 29, scope: !1983)
!1987 = !DILocation(line: 120, column: 7, scope: !1983)
!1988 = !DILocation(line: 120, column: 12, scope: !1983)
!1989 = !{i8 0, i8 2}
!1990 = !DILocation(line: 120, column: 25, scope: !1983)
!1991 = !DILocation(line: 120, column: 28, scope: !1983)
!1992 = !DILocation(line: 120, column: 34, scope: !1983)
!1993 = !DILocation(line: 119, column: 7, scope: !1979)
!1994 = !DILocation(line: 122, column: 33, scope: !1982)
!1995 = !DILocation(line: 0, scope: !1982)
!1996 = !DILocation(line: 123, column: 11, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1982, file: !126, line: 123, column: 11)
!1998 = !DILocation(line: 0, scope: !1997)
!1999 = !DILocation(line: 123, column: 11, scope: !1982)
!2000 = !DILocation(line: 124, column: 36, scope: !1997)
!2001 = !DILocation(line: 124, column: 9, scope: !1997)
!2002 = !DILocation(line: 127, column: 9, scope: !1997)
!2003 = !DILocation(line: 129, column: 14, scope: !1982)
!2004 = !DILocation(line: 129, column: 7, scope: !1982)
!2005 = !DILocation(line: 134, column: 42, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1979, file: !126, line: 134, column: 7)
!2007 = !DILocation(line: 134, column: 28, scope: !2006)
!2008 = !DILocation(line: 134, column: 50, scope: !2006)
!2009 = !DILocation(line: 134, column: 7, scope: !1979)
!2010 = !DILocation(line: 135, column: 12, scope: !2006)
!2011 = !DILocation(line: 135, column: 5, scope: !2006)
!2012 = !DILocation(line: 136, column: 1, scope: !1979)
!2013 = distinct !DISubprogram(name: "full_read", scope: !2014, file: !2014, line: 58, type: !2015, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !2017)
!2014 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!43, !53, !33, !43}
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023}
!2018 = !DILocalVariable(name: "fd", arg: 1, scope: !2013, file: !2014, line: 58, type: !53)
!2019 = !DILocalVariable(name: "buf", arg: 2, scope: !2013, file: !2014, line: 58, type: !33)
!2020 = !DILocalVariable(name: "count", arg: 3, scope: !2013, file: !2014, line: 58, type: !43)
!2021 = !DILocalVariable(name: "total", scope: !2013, file: !2014, line: 60, type: !43)
!2022 = !DILocalVariable(name: "ptr", scope: !2013, file: !2014, line: 61, type: !31)
!2023 = !DILocalVariable(name: "n_rw", scope: !2024, file: !2014, line: 65, type: !43)
!2024 = distinct !DILexicalBlock(scope: !2013, file: !2014, line: 64, column: 5)
!2025 = !DILocation(line: 0, scope: !2013)
!2026 = !DILocation(line: 63, column: 16, scope: !2013)
!2027 = !DILocation(line: 63, column: 3, scope: !2013)
!2028 = !DILocation(line: 65, column: 21, scope: !2024)
!2029 = !DILocation(line: 0, scope: !2024)
!2030 = !DILocation(line: 66, column: 11, scope: !2024)
!2031 = !DILocation(line: 70, column: 11, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !2014, line: 69, column: 9)
!2033 = distinct !DILexicalBlock(scope: !2024, file: !2014, line: 68, column: 11)
!2034 = !DILocation(line: 70, column: 17, scope: !2032)
!2035 = !DILocation(line: 71, column: 11, scope: !2032)
!2036 = !DILocation(line: 73, column: 13, scope: !2024)
!2037 = !DILocation(line: 74, column: 11, scope: !2024)
!2038 = !DILocation(line: 75, column: 13, scope: !2024)
!2039 = !DILocation(line: 78, column: 3, scope: !2013)
!2040 = distinct !DISubprogram(name: "offtostr", scope: !2041, file: !2041, line: 36, type: !2042, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2044)
!2041 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!31, !221, !31}
!2044 = !{!2045, !2046, !2047}
!2045 = !DILocalVariable(name: "i", arg: 1, scope: !2040, file: !2041, line: 36, type: !221)
!2046 = !DILocalVariable(name: "buf", arg: 2, scope: !2040, file: !2041, line: 36, type: !31)
!2047 = !DILocalVariable(name: "p", scope: !2040, file: !2041, line: 38, type: !31)
!2048 = !DILocation(line: 0, scope: !2040)
!2049 = !DILocation(line: 38, column: 17, scope: !2040)
!2050 = !DILocation(line: 39, column: 6, scope: !2040)
!2051 = !DILocation(line: 41, column: 9, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2040, file: !2041, line: 41, column: 7)
!2053 = !DILocation(line: 41, column: 7, scope: !2040)
!2054 = !DILocation(line: 44, column: 24, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !2041, line: 42, column: 5)
!2056 = !DILocation(line: 44, column: 16, scope: !2055)
!2057 = !DILocation(line: 44, column: 10, scope: !2055)
!2058 = !DILocation(line: 44, column: 14, scope: !2055)
!2059 = !DILocation(line: 45, column: 17, scope: !2055)
!2060 = !DILocation(line: 45, column: 24, scope: !2055)
!2061 = !DILocation(line: 44, column: 9, scope: !2055)
!2062 = distinct !{!2062, !2063, !2064, !749}
!2063 = !DILocation(line: 43, column: 7, scope: !2055)
!2064 = !DILocation(line: 45, column: 28, scope: !2055)
!2065 = !DILocation(line: 47, column: 8, scope: !2055)
!2066 = !DILocation(line: 47, column: 12, scope: !2055)
!2067 = !DILocation(line: 48, column: 5, scope: !2055)
!2068 = !DILocation(line: 52, column: 24, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2052, file: !2041, line: 50, column: 5)
!2070 = !DILocation(line: 52, column: 16, scope: !2069)
!2071 = !DILocation(line: 52, column: 10, scope: !2069)
!2072 = !DILocation(line: 52, column: 14, scope: !2069)
!2073 = !DILocation(line: 53, column: 17, scope: !2069)
!2074 = !DILocation(line: 53, column: 24, scope: !2069)
!2075 = !DILocation(line: 52, column: 9, scope: !2069)
!2076 = distinct !{!2076, !2077, !2078, !749}
!2077 = !DILocation(line: 51, column: 7, scope: !2069)
!2078 = !DILocation(line: 53, column: 28, scope: !2069)
!2079 = !DILocation(line: 0, scope: !2052)
!2080 = !DILocation(line: 56, column: 3, scope: !2040)
!2081 = distinct !DISubprogram(name: "umaxtostr", scope: !2041, file: !2041, line: 36, type: !2082, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!31, !64, !31}
!2084 = !{!2085, !2086, !2087}
!2085 = !DILocalVariable(name: "i", arg: 1, scope: !2081, file: !2041, line: 36, type: !64)
!2086 = !DILocalVariable(name: "buf", arg: 2, scope: !2081, file: !2041, line: 36, type: !31)
!2087 = !DILocalVariable(name: "p", scope: !2081, file: !2041, line: 38, type: !31)
!2088 = !DILocation(line: 0, scope: !2081)
!2089 = !DILocation(line: 38, column: 17, scope: !2081)
!2090 = !DILocation(line: 39, column: 6, scope: !2081)
!2091 = !DILocation(line: 52, column: 24, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !2041, line: 50, column: 5)
!2093 = distinct !DILexicalBlock(scope: !2081, file: !2041, line: 41, column: 7)
!2094 = !DILocation(line: 52, column: 16, scope: !2092)
!2095 = !DILocation(line: 52, column: 10, scope: !2092)
!2096 = !DILocation(line: 52, column: 14, scope: !2092)
!2097 = !DILocation(line: 53, column: 17, scope: !2092)
!2098 = !DILocation(line: 53, column: 24, scope: !2092)
!2099 = !DILocation(line: 52, column: 9, scope: !2092)
!2100 = distinct !{!2100, !2101, !2102, !749}
!2101 = !DILocation(line: 51, column: 7, scope: !2092)
!2102 = !DILocation(line: 53, column: 28, scope: !2092)
!2103 = !DILocation(line: 56, column: 3, scope: !2081)
!2104 = distinct !DISubprogram(name: "set_program_name", scope: !139, file: !139, line: 39, type: !109, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !138, retainedNodes: !2105)
!2105 = !{!2106, !2107, !2108}
!2106 = !DILocalVariable(name: "argv0", arg: 1, scope: !2104, file: !139, line: 39, type: !41)
!2107 = !DILocalVariable(name: "slash", scope: !2104, file: !139, line: 46, type: !41)
!2108 = !DILocalVariable(name: "base", scope: !2104, file: !139, line: 47, type: !41)
!2109 = !DILocation(line: 0, scope: !2104)
!2110 = !DILocation(line: 51, column: 13, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2104, file: !139, line: 51, column: 7)
!2112 = !DILocation(line: 51, column: 7, scope: !2104)
!2113 = !DILocation(line: 55, column: 14, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !139, line: 52, column: 5)
!2115 = !DILocation(line: 54, column: 7, scope: !2114)
!2116 = !DILocation(line: 56, column: 7, scope: !2114)
!2117 = !DILocation(line: 59, column: 11, scope: !2104)
!2118 = !DILocation(line: 60, column: 17, scope: !2104)
!2119 = !DILocation(line: 60, column: 11, scope: !2104)
!2120 = !DILocation(line: 61, column: 12, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2104, file: !139, line: 61, column: 7)
!2122 = !DILocation(line: 61, column: 20, scope: !2121)
!2123 = !DILocation(line: 61, column: 25, scope: !2121)
!2124 = !DILocation(line: 61, column: 42, scope: !2121)
!2125 = !DILocation(line: 61, column: 28, scope: !2121)
!2126 = !DILocation(line: 61, column: 61, scope: !2121)
!2127 = !DILocation(line: 61, column: 7, scope: !2104)
!2128 = !DILocation(line: 64, column: 11, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !139, line: 64, column: 11)
!2130 = distinct !DILexicalBlock(scope: !2121, file: !139, line: 62, column: 5)
!2131 = !DILocation(line: 64, column: 36, scope: !2129)
!2132 = !DILocation(line: 64, column: 11, scope: !2130)
!2133 = !DILocation(line: 66, column: 24, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !139, line: 65, column: 9)
!2135 = !DILocation(line: 70, column: 41, scope: !2134)
!2136 = !DILocation(line: 72, column: 9, scope: !2134)
!2137 = !DILocation(line: 84, column: 16, scope: !2104)
!2138 = !DILocation(line: 90, column: 27, scope: !2104)
!2139 = !DILocation(line: 92, column: 1, scope: !2104)
!2140 = distinct !DISubprogram(name: "clone_quoting_options", scope: !145, file: !145, line: 122, type: !2141, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2144)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!2143, !2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2144 = !{!2145, !2146, !2147}
!2145 = !DILocalVariable(name: "o", arg: 1, scope: !2140, file: !145, line: 122, type: !2143)
!2146 = !DILocalVariable(name: "e", scope: !2140, file: !145, line: 124, type: !53)
!2147 = !DILocalVariable(name: "p", scope: !2140, file: !145, line: 125, type: !2143)
!2148 = !DILocation(line: 0, scope: !2140)
!2149 = !DILocation(line: 124, column: 11, scope: !2140)
!2150 = !DILocation(line: 125, column: 40, scope: !2140)
!2151 = !DILocation(line: 125, column: 31, scope: !2140)
!2152 = !DILocation(line: 127, column: 9, scope: !2140)
!2153 = !DILocation(line: 128, column: 3, scope: !2140)
!2154 = distinct !DISubprogram(name: "get_quoting_style", scope: !145, file: !145, line: 133, type: !2155, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2159)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!11, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!2159 = !{!2160}
!2160 = !DILocalVariable(name: "o", arg: 1, scope: !2154, file: !145, line: 133, type: !2157)
!2161 = !DILocation(line: 0, scope: !2154)
!2162 = !DILocation(line: 135, column: 11, scope: !2154)
!2163 = !DILocation(line: 135, column: 46, scope: !2154)
!2164 = !{!2165, !699, i64 0}
!2165 = !{!"quoting_options", !699, i64 0, !946, i64 4, !699, i64 8, !698, i64 40, !698, i64 48}
!2166 = !DILocation(line: 135, column: 3, scope: !2154)
!2167 = distinct !DISubprogram(name: "set_quoting_style", scope: !145, file: !145, line: 141, type: !2168, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !2143, !11}
!2170 = !{!2171, !2172}
!2171 = !DILocalVariable(name: "o", arg: 1, scope: !2167, file: !145, line: 141, type: !2143)
!2172 = !DILocalVariable(name: "s", arg: 2, scope: !2167, file: !145, line: 141, type: !11)
!2173 = !DILocation(line: 0, scope: !2167)
!2174 = !DILocation(line: 143, column: 4, scope: !2167)
!2175 = !DILocation(line: 143, column: 39, scope: !2167)
!2176 = !DILocation(line: 143, column: 45, scope: !2167)
!2177 = !DILocation(line: 144, column: 1, scope: !2167)
!2178 = distinct !DISubprogram(name: "set_char_quoting", scope: !145, file: !145, line: 152, type: !2179, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!53, !2143, !32, !53}
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2188, !2189}
!2182 = !DILocalVariable(name: "o", arg: 1, scope: !2178, file: !145, line: 152, type: !2143)
!2183 = !DILocalVariable(name: "c", arg: 2, scope: !2178, file: !145, line: 152, type: !32)
!2184 = !DILocalVariable(name: "i", arg: 3, scope: !2178, file: !145, line: 152, type: !53)
!2185 = !DILocalVariable(name: "uc", scope: !2178, file: !145, line: 154, type: !46)
!2186 = !DILocalVariable(name: "p", scope: !2178, file: !145, line: 155, type: !2187)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2188 = !DILocalVariable(name: "shift", scope: !2178, file: !145, line: 157, type: !53)
!2189 = !DILocalVariable(name: "r", scope: !2178, file: !145, line: 158, type: !53)
!2190 = !DILocation(line: 0, scope: !2178)
!2191 = !DILocation(line: 156, column: 6, scope: !2178)
!2192 = !DILocation(line: 156, column: 62, scope: !2178)
!2193 = !DILocation(line: 156, column: 57, scope: !2178)
!2194 = !DILocation(line: 157, column: 15, scope: !2178)
!2195 = !DILocation(line: 158, column: 12, scope: !2178)
!2196 = !DILocation(line: 158, column: 15, scope: !2178)
!2197 = !DILocation(line: 158, column: 25, scope: !2178)
!2198 = !DILocation(line: 159, column: 13, scope: !2178)
!2199 = !DILocation(line: 159, column: 18, scope: !2178)
!2200 = !DILocation(line: 159, column: 23, scope: !2178)
!2201 = !DILocation(line: 159, column: 6, scope: !2178)
!2202 = !DILocation(line: 160, column: 3, scope: !2178)
!2203 = distinct !DISubprogram(name: "set_quoting_flags", scope: !145, file: !145, line: 168, type: !2204, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!53, !2143, !53}
!2206 = !{!2207, !2208, !2209}
!2207 = !DILocalVariable(name: "o", arg: 1, scope: !2203, file: !145, line: 168, type: !2143)
!2208 = !DILocalVariable(name: "i", arg: 2, scope: !2203, file: !145, line: 168, type: !53)
!2209 = !DILocalVariable(name: "r", scope: !2203, file: !145, line: 170, type: !53)
!2210 = !DILocation(line: 0, scope: !2203)
!2211 = !DILocation(line: 171, column: 8, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2203, file: !145, line: 171, column: 7)
!2213 = !DILocation(line: 171, column: 7, scope: !2203)
!2214 = !DILocation(line: 173, column: 10, scope: !2203)
!2215 = !{!2165, !946, i64 4}
!2216 = !DILocation(line: 174, column: 12, scope: !2203)
!2217 = !DILocation(line: 175, column: 3, scope: !2203)
!2218 = distinct !DISubprogram(name: "set_custom_quoting", scope: !145, file: !145, line: 179, type: !2219, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !2143, !41, !41}
!2221 = !{!2222, !2223, !2224}
!2222 = !DILocalVariable(name: "o", arg: 1, scope: !2218, file: !145, line: 179, type: !2143)
!2223 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2218, file: !145, line: 180, type: !41)
!2224 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2218, file: !145, line: 180, type: !41)
!2225 = !DILocation(line: 0, scope: !2218)
!2226 = !DILocation(line: 182, column: 8, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2218, file: !145, line: 182, column: 7)
!2228 = !DILocation(line: 182, column: 7, scope: !2218)
!2229 = !DILocation(line: 184, column: 6, scope: !2218)
!2230 = !DILocation(line: 184, column: 12, scope: !2218)
!2231 = !DILocation(line: 185, column: 8, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2218, file: !145, line: 185, column: 7)
!2233 = !DILocation(line: 185, column: 19, scope: !2232)
!2234 = !DILocation(line: 186, column: 5, scope: !2232)
!2235 = !DILocation(line: 187, column: 6, scope: !2218)
!2236 = !DILocation(line: 187, column: 17, scope: !2218)
!2237 = !{!2165, !698, i64 40}
!2238 = !DILocation(line: 188, column: 6, scope: !2218)
!2239 = !DILocation(line: 188, column: 18, scope: !2218)
!2240 = !{!2165, !698, i64 48}
!2241 = !DILocation(line: 189, column: 1, scope: !2218)
!2242 = distinct !DISubprogram(name: "quotearg_buffer", scope: !145, file: !145, line: 784, type: !2243, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!43, !31, !43, !41, !43, !2157}
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2246 = !DILocalVariable(name: "buffer", arg: 1, scope: !2242, file: !145, line: 784, type: !31)
!2247 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2242, file: !145, line: 784, type: !43)
!2248 = !DILocalVariable(name: "arg", arg: 3, scope: !2242, file: !145, line: 785, type: !41)
!2249 = !DILocalVariable(name: "argsize", arg: 4, scope: !2242, file: !145, line: 785, type: !43)
!2250 = !DILocalVariable(name: "o", arg: 5, scope: !2242, file: !145, line: 786, type: !2157)
!2251 = !DILocalVariable(name: "p", scope: !2242, file: !145, line: 788, type: !2157)
!2252 = !DILocalVariable(name: "e", scope: !2242, file: !145, line: 789, type: !53)
!2253 = !DILocalVariable(name: "r", scope: !2242, file: !145, line: 790, type: !43)
!2254 = !DILocation(line: 0, scope: !2242)
!2255 = !DILocation(line: 788, column: 37, scope: !2242)
!2256 = !DILocation(line: 789, column: 11, scope: !2242)
!2257 = !DILocation(line: 791, column: 43, scope: !2242)
!2258 = !DILocation(line: 791, column: 53, scope: !2242)
!2259 = !DILocation(line: 791, column: 60, scope: !2242)
!2260 = !DILocation(line: 792, column: 43, scope: !2242)
!2261 = !DILocation(line: 792, column: 58, scope: !2242)
!2262 = !DILocation(line: 790, column: 14, scope: !2242)
!2263 = !DILocation(line: 793, column: 9, scope: !2242)
!2264 = !DILocation(line: 794, column: 3, scope: !2242)
!2265 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !145, file: !145, line: 256, type: !2266, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2270)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!43, !31, !43, !41, !43, !11, !53, !2268, !41, !41}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2295, !2296, !2297, !2298, !2299, !2302, !2303, !2321, !2324, !2325, !2332, !2335, !2336, !2337, !2338, !2339, !2340}
!2271 = !DILocalVariable(name: "buffer", arg: 1, scope: !2265, file: !145, line: 256, type: !31)
!2272 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2265, file: !145, line: 256, type: !43)
!2273 = !DILocalVariable(name: "arg", arg: 3, scope: !2265, file: !145, line: 257, type: !41)
!2274 = !DILocalVariable(name: "argsize", arg: 4, scope: !2265, file: !145, line: 257, type: !43)
!2275 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2265, file: !145, line: 258, type: !11)
!2276 = !DILocalVariable(name: "flags", arg: 6, scope: !2265, file: !145, line: 258, type: !53)
!2277 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2265, file: !145, line: 259, type: !2268)
!2278 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2265, file: !145, line: 260, type: !41)
!2279 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2265, file: !145, line: 261, type: !41)
!2280 = !DILocalVariable(name: "i", scope: !2265, file: !145, line: 263, type: !43)
!2281 = !DILocalVariable(name: "len", scope: !2265, file: !145, line: 264, type: !43)
!2282 = !DILocalVariable(name: "orig_buffersize", scope: !2265, file: !145, line: 265, type: !43)
!2283 = !DILocalVariable(name: "quote_string", scope: !2265, file: !145, line: 266, type: !41)
!2284 = !DILocalVariable(name: "quote_string_len", scope: !2265, file: !145, line: 267, type: !43)
!2285 = !DILocalVariable(name: "backslash_escapes", scope: !2265, file: !145, line: 268, type: !60)
!2286 = !DILocalVariable(name: "unibyte_locale", scope: !2265, file: !145, line: 269, type: !60)
!2287 = !DILocalVariable(name: "elide_outer_quotes", scope: !2265, file: !145, line: 270, type: !60)
!2288 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2265, file: !145, line: 271, type: !60)
!2289 = !DILocalVariable(name: "encountered_single_quote", scope: !2265, file: !145, line: 272, type: !60)
!2290 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2265, file: !145, line: 273, type: !60)
!2291 = !DILocalVariable(name: "c", scope: !2292, file: !145, line: 402, type: !46)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !145, line: 401, column: 5)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !145, line: 400, column: 3)
!2294 = distinct !DILexicalBlock(scope: !2265, file: !145, line: 400, column: 3)
!2295 = !DILocalVariable(name: "esc", scope: !2292, file: !145, line: 403, type: !46)
!2296 = !DILocalVariable(name: "is_right_quote", scope: !2292, file: !145, line: 404, type: !60)
!2297 = !DILocalVariable(name: "escaping", scope: !2292, file: !145, line: 405, type: !60)
!2298 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2292, file: !145, line: 406, type: !60)
!2299 = !DILocalVariable(name: "m", scope: !2300, file: !145, line: 610, type: !43)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 608, column: 11)
!2301 = distinct !DILexicalBlock(scope: !2292, file: !145, line: 426, column: 9)
!2302 = !DILocalVariable(name: "printable", scope: !2300, file: !145, line: 612, type: !60)
!2303 = !DILocalVariable(name: "mbstate", scope: !2304, file: !145, line: 621, type: !2306)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !145, line: 620, column: 15)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !145, line: 614, column: 17)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2307, line: 6, baseType: !2308)
!2307 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2309, line: 21, baseType: !2310)
!2309 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2309, line: 13, size: 64, elements: !2311)
!2311 = !{!2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2310, file: !2309, line: 15, baseType: !53, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2310, file: !2309, line: 20, baseType: !2314, size: 32, offset: 32)
!2314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2310, file: !2309, line: 16, size: 32, elements: !2315)
!2315 = !{!2316, !2317}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2314, file: !2309, line: 18, baseType: !6, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2314, file: !2309, line: 19, baseType: !2318, size: 32)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !2319)
!2319 = !{!2320}
!2320 = !DISubrange(count: 4)
!2321 = !DILocalVariable(name: "w", scope: !2322, file: !145, line: 631, type: !2323)
!2322 = distinct !DILexicalBlock(scope: !2304, file: !145, line: 630, column: 19)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !44, line: 74, baseType: !53)
!2324 = !DILocalVariable(name: "bytes", scope: !2322, file: !145, line: 632, type: !43)
!2325 = !DILocalVariable(name: "j", scope: !2326, file: !145, line: 657, type: !43)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !145, line: 656, column: 27)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !145, line: 654, column: 29)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !145, line: 649, column: 23)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !145, line: 641, column: 30)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !145, line: 636, column: 30)
!2331 = distinct !DILexicalBlock(scope: !2322, file: !145, line: 634, column: 25)
!2332 = !DILocalVariable(name: "ilim", scope: !2333, file: !145, line: 684, type: !43)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !145, line: 681, column: 15)
!2334 = distinct !DILexicalBlock(scope: !2300, file: !145, line: 680, column: 17)
!2335 = !DILabel(scope: !2265, name: "process_input", file: !145, line: 314)
!2336 = !DILabel(scope: !2301, name: "c_and_shell_escape", file: !145, line: 512)
!2337 = !DILabel(scope: !2301, name: "c_escape", file: !145, line: 517)
!2338 = !DILabel(scope: !2292, name: "store_escape", file: !145, line: 719)
!2339 = !DILabel(scope: !2292, name: "store_c", file: !145, line: 722)
!2340 = !DILabel(scope: !2265, name: "force_outer_quoting_style", file: !145, line: 763)
!2341 = !DILocation(line: 0, scope: !2265)
!2342 = !DILocation(line: 269, column: 25, scope: !2265)
!2343 = !DILocation(line: 269, column: 36, scope: !2265)
!2344 = !DILocation(line: 270, column: 8, scope: !2265)
!2345 = !DILocation(line: 273, column: 3, scope: !2265)
!2346 = !DILocation(line: 265, column: 10, scope: !2265)
!2347 = !DILocation(line: 266, column: 15, scope: !2265)
!2348 = !DILocation(line: 267, column: 10, scope: !2265)
!2349 = !DILocation(line: 268, column: 8, scope: !2265)
!2350 = !DILocation(line: 271, column: 8, scope: !2265)
!2351 = !DILocation(line: 272, column: 8, scope: !2265)
!2352 = !DILocation(line: 273, column: 8, scope: !2265)
!2353 = !DILocation(line: 314, column: 2, scope: !2265)
!2354 = !DILocation(line: 316, column: 3, scope: !2265)
!2355 = !DILocation(line: 323, column: 11, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2265, file: !145, line: 317, column: 5)
!2357 = !DILocation(line: 323, column: 12, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2356, file: !145, line: 323, column: 11)
!2359 = !DILocation(line: 324, column: 9, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !145, line: 324, column: 9)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !145, line: 324, column: 9)
!2362 = !DILocation(line: 324, column: 9, scope: !2361)
!2363 = !DILocation(line: 362, column: 26, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !145, line: 340, column: 11)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !145, line: 339, column: 13)
!2366 = distinct !DILexicalBlock(scope: !2356, file: !145, line: 338, column: 7)
!2367 = !DILocation(line: 363, column: 27, scope: !2364)
!2368 = !DILocation(line: 364, column: 11, scope: !2364)
!2369 = !DILocation(line: 365, column: 14, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !145, line: 365, column: 13)
!2371 = !DILocation(line: 365, column: 13, scope: !2366)
!2372 = !DILocation(line: 366, column: 43, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !145, line: 366, column: 11)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !145, line: 366, column: 11)
!2375 = !DILocation(line: 366, column: 11, scope: !2374)
!2376 = !DILocation(line: 367, column: 13, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !145, line: 367, column: 13)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !145, line: 367, column: 13)
!2379 = !DILocation(line: 367, column: 13, scope: !2378)
!2380 = !DILocation(line: 366, column: 70, scope: !2373)
!2381 = distinct !{!2381, !2375, !2382, !749}
!2382 = !DILocation(line: 367, column: 13, scope: !2374)
!2383 = !DILocation(line: 264, column: 10, scope: !2265)
!2384 = !DILocation(line: 370, column: 28, scope: !2366)
!2385 = !DILocation(line: 372, column: 7, scope: !2356)
!2386 = !DILocation(line: 376, column: 7, scope: !2356)
!2387 = !DILocation(line: 379, column: 7, scope: !2356)
!2388 = !DILocation(line: 381, column: 12, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2356, file: !145, line: 381, column: 11)
!2390 = !DILocation(line: 381, column: 11, scope: !2356)
!2391 = !DILocation(line: 386, column: 12, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2356, file: !145, line: 386, column: 11)
!2393 = !DILocation(line: 386, column: 11, scope: !2356)
!2394 = !DILocation(line: 387, column: 9, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !145, line: 387, column: 9)
!2396 = distinct !DILexicalBlock(scope: !2392, file: !145, line: 387, column: 9)
!2397 = !DILocation(line: 387, column: 9, scope: !2396)
!2398 = !DILocation(line: 394, column: 7, scope: !2356)
!2399 = !DILocation(line: 397, column: 7, scope: !2356)
!2400 = !DILocation(line: 400, column: 8, scope: !2294)
!2401 = !DILocation(line: 0, scope: !2294)
!2402 = !DILocation(line: 400, column: 27, scope: !2293)
!2403 = !DILocation(line: 400, column: 19, scope: !2293)
!2404 = !DILocation(line: 400, column: 41, scope: !2293)
!2405 = !DILocation(line: 400, column: 48, scope: !2293)
!2406 = !DILocation(line: 400, column: 3, scope: !2294)
!2407 = !DILocation(line: 400, column: 60, scope: !2293)
!2408 = !DILocation(line: 0, scope: !2292)
!2409 = !DILocation(line: 409, column: 11, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2292, file: !145, line: 408, column: 11)
!2411 = !DILocation(line: 411, column: 17, scope: !2410)
!2412 = !DILocation(line: 412, column: 39, scope: !2410)
!2413 = !DILocation(line: 416, column: 32, scope: !2410)
!2414 = !DILocation(line: 412, column: 19, scope: !2410)
!2415 = !DILocation(line: 412, column: 15, scope: !2410)
!2416 = !DILocation(line: 417, column: 11, scope: !2410)
!2417 = !DILocation(line: 417, column: 26, scope: !2410)
!2418 = !DILocation(line: 417, column: 14, scope: !2410)
!2419 = !DILocation(line: 417, column: 63, scope: !2410)
!2420 = !DILocation(line: 408, column: 11, scope: !2292)
!2421 = !DILocation(line: 424, column: 11, scope: !2292)
!2422 = !DILocation(line: 425, column: 7, scope: !2292)
!2423 = !DILocation(line: 428, column: 15, scope: !2301)
!2424 = !DILocation(line: 430, column: 15, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !145, line: 430, column: 15)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !145, line: 429, column: 13)
!2427 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 428, column: 15)
!2428 = !DILocation(line: 430, column: 15, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !145, line: 430, column: 15)
!2430 = !DILocation(line: 430, column: 15, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !145, line: 430, column: 15)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !145, line: 430, column: 15)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !145, line: 430, column: 15)
!2434 = !DILocation(line: 430, column: 15, scope: !2432)
!2435 = !DILocation(line: 430, column: 15, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !145, line: 430, column: 15)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !145, line: 430, column: 15)
!2438 = !DILocation(line: 430, column: 15, scope: !2437)
!2439 = !DILocation(line: 430, column: 15, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !145, line: 430, column: 15)
!2441 = distinct !DILexicalBlock(scope: !2433, file: !145, line: 430, column: 15)
!2442 = !DILocation(line: 430, column: 15, scope: !2441)
!2443 = !DILocation(line: 430, column: 15, scope: !2433)
!2444 = !DILocation(line: 430, column: 15, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !145, line: 430, column: 15)
!2446 = distinct !DILexicalBlock(scope: !2425, file: !145, line: 430, column: 15)
!2447 = !DILocation(line: 430, column: 15, scope: !2446)
!2448 = !DILocation(line: 438, column: 19, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2426, file: !145, line: 437, column: 19)
!2450 = !DILocation(line: 438, column: 48, scope: !2449)
!2451 = !DILocation(line: 438, column: 59, scope: !2449)
!2452 = !DILocation(line: 440, column: 19, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !145, line: 440, column: 19)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !145, line: 440, column: 19)
!2455 = distinct !DILexicalBlock(scope: !2449, file: !145, line: 439, column: 17)
!2456 = !DILocation(line: 440, column: 19, scope: !2454)
!2457 = !DILocation(line: 441, column: 19, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !145, line: 441, column: 19)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !145, line: 441, column: 19)
!2460 = !DILocation(line: 441, column: 19, scope: !2459)
!2461 = !DILocation(line: 442, column: 17, scope: !2455)
!2462 = !DILocation(line: 449, column: 20, scope: !2427)
!2463 = !DILocation(line: 454, column: 11, scope: !2301)
!2464 = !DILocation(line: 457, column: 19, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 455, column: 13)
!2466 = !DILocation(line: 463, column: 19, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2465, file: !145, line: 462, column: 19)
!2468 = !DILocation(line: 463, column: 47, scope: !2467)
!2469 = !DILocation(line: 463, column: 41, scope: !2467)
!2470 = !DILocation(line: 463, column: 52, scope: !2467)
!2471 = !DILocation(line: 462, column: 19, scope: !2465)
!2472 = !DILocation(line: 464, column: 25, scope: !2467)
!2473 = !DILocation(line: 464, column: 17, scope: !2467)
!2474 = !DILocation(line: 471, column: 25, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2467, file: !145, line: 465, column: 19)
!2476 = !DILocation(line: 475, column: 21, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !145, line: 475, column: 21)
!2478 = distinct !DILexicalBlock(scope: !2475, file: !145, line: 475, column: 21)
!2479 = !DILocation(line: 475, column: 21, scope: !2478)
!2480 = !DILocation(line: 476, column: 21, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !145, line: 476, column: 21)
!2482 = distinct !DILexicalBlock(scope: !2475, file: !145, line: 476, column: 21)
!2483 = !DILocation(line: 476, column: 21, scope: !2482)
!2484 = !DILocation(line: 477, column: 21, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !145, line: 477, column: 21)
!2486 = distinct !DILexicalBlock(scope: !2475, file: !145, line: 477, column: 21)
!2487 = !DILocation(line: 477, column: 21, scope: !2486)
!2488 = !DILocation(line: 478, column: 21, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !145, line: 478, column: 21)
!2490 = distinct !DILexicalBlock(scope: !2475, file: !145, line: 478, column: 21)
!2491 = !DILocation(line: 478, column: 21, scope: !2490)
!2492 = !DILocation(line: 479, column: 21, scope: !2475)
!2493 = !DILocation(line: 492, column: 31, scope: !2301)
!2494 = !DILocation(line: 493, column: 31, scope: !2301)
!2495 = !DILocation(line: 495, column: 31, scope: !2301)
!2496 = !DILocation(line: 496, column: 31, scope: !2301)
!2497 = !DILocation(line: 497, column: 31, scope: !2301)
!2498 = !DILocation(line: 500, column: 15, scope: !2301)
!2499 = !DILocation(line: 502, column: 19, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !145, line: 501, column: 13)
!2501 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 500, column: 15)
!2502 = !DILocation(line: 509, column: 33, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 509, column: 15)
!2504 = !DILocation(line: 0, scope: !2301)
!2505 = !DILocation(line: 512, column: 9, scope: !2301)
!2506 = !DILocation(line: 514, column: 15, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 513, column: 15)
!2508 = !DILocation(line: 517, column: 9, scope: !2301)
!2509 = !DILocation(line: 518, column: 15, scope: !2301)
!2510 = !DILocation(line: 526, column: 15, scope: !2301)
!2511 = !DILocation(line: 526, column: 40, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 526, column: 15)
!2513 = !DILocation(line: 526, column: 47, scope: !2512)
!2514 = !DILocation(line: 526, column: 18, scope: !2512)
!2515 = !DILocation(line: 530, column: 17, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 530, column: 15)
!2517 = !DILocation(line: 530, column: 15, scope: !2301)
!2518 = !DILocation(line: 535, column: 11, scope: !2301)
!2519 = !DILocation(line: 549, column: 15, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 548, column: 15)
!2521 = !DILocation(line: 556, column: 15, scope: !2301)
!2522 = !DILocation(line: 558, column: 19, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !145, line: 557, column: 13)
!2524 = distinct !DILexicalBlock(scope: !2301, file: !145, line: 556, column: 15)
!2525 = !DILocation(line: 561, column: 19, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2523, file: !145, line: 561, column: 19)
!2527 = !DILocation(line: 561, column: 30, scope: !2526)
!2528 = !DILocation(line: 570, column: 15, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !145, line: 570, column: 15)
!2530 = distinct !DILexicalBlock(scope: !2523, file: !145, line: 570, column: 15)
!2531 = !DILocation(line: 570, column: 15, scope: !2530)
!2532 = !DILocation(line: 571, column: 15, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !145, line: 571, column: 15)
!2534 = distinct !DILexicalBlock(scope: !2523, file: !145, line: 571, column: 15)
!2535 = !DILocation(line: 571, column: 15, scope: !2534)
!2536 = !DILocation(line: 572, column: 15, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !145, line: 572, column: 15)
!2538 = distinct !DILexicalBlock(scope: !2523, file: !145, line: 572, column: 15)
!2539 = !DILocation(line: 572, column: 15, scope: !2538)
!2540 = !DILocation(line: 574, column: 13, scope: !2523)
!2541 = !DILocation(line: 614, column: 17, scope: !2300)
!2542 = !DILocation(line: 0, scope: !2300)
!2543 = !DILocation(line: 617, column: 29, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2305, file: !145, line: 615, column: 15)
!2545 = !{!2546, !2546, i64 0}
!2546 = !{!"short", !699, i64 0}
!2547 = !DILocation(line: 617, column: 27, scope: !2544)
!2548 = !DILocation(line: 678, column: 40, scope: !2300)
!2549 = !DILocation(line: 680, column: 23, scope: !2334)
!2550 = !DILocation(line: 621, column: 17, scope: !2304)
!2551 = !DILocation(line: 621, column: 27, scope: !2304)
!2552 = !DILocalVariable(name: "__dest", arg: 1, scope: !2553, file: !1274, line: 57, type: !33)
!2553 = distinct !DISubprogram(name: "memset", scope: !1274, file: !1274, line: 57, type: !2554, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!33, !33, !53, !43}
!2556 = !{!2552, !2557, !2558}
!2557 = !DILocalVariable(name: "__ch", arg: 2, scope: !2553, file: !1274, line: 57, type: !53)
!2558 = !DILocalVariable(name: "__len", arg: 3, scope: !2553, file: !1274, line: 57, type: !43)
!2559 = !DILocation(line: 0, scope: !2553, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 622, column: 17, scope: !2304)
!2561 = !DILocation(line: 59, column: 10, scope: !2553, inlinedAt: !2560)
!2562 = !DILocation(line: 626, column: 29, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2304, file: !145, line: 626, column: 21)
!2564 = !DILocation(line: 626, column: 21, scope: !2304)
!2565 = !DILocation(line: 627, column: 29, scope: !2563)
!2566 = !DILocation(line: 627, column: 19, scope: !2563)
!2567 = !DILocation(line: 629, column: 17, scope: !2304)
!2568 = !DILocation(line: 624, column: 19, scope: !2304)
!2569 = !DILocation(line: 625, column: 27, scope: !2304)
!2570 = !DILocation(line: 631, column: 21, scope: !2322)
!2571 = !DILocation(line: 632, column: 56, scope: !2322)
!2572 = !DILocation(line: 632, column: 50, scope: !2322)
!2573 = !DILocation(line: 633, column: 53, scope: !2322)
!2574 = !DILocation(line: 0, scope: !2322)
!2575 = !DILocation(line: 632, column: 36, scope: !2322)
!2576 = !DILocation(line: 634, column: 25, scope: !2322)
!2577 = !DILocation(line: 644, column: 38, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2329, file: !145, line: 642, column: 23)
!2579 = !DILocation(line: 644, column: 48, scope: !2578)
!2580 = !DILocation(line: 644, column: 25, scope: !2578)
!2581 = !DILocation(line: 644, column: 51, scope: !2578)
!2582 = !DILocation(line: 645, column: 28, scope: !2578)
!2583 = !DILocation(line: 644, column: 34, scope: !2578)
!2584 = distinct !{!2584, !2580, !2582, !749}
!2585 = !DILocation(line: 655, column: 29, scope: !2327)
!2586 = !DILocation(line: 0, scope: !2326)
!2587 = !DILocation(line: 659, column: 49, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !145, line: 658, column: 29)
!2589 = distinct !DILexicalBlock(scope: !2326, file: !145, line: 658, column: 29)
!2590 = !DILocation(line: 659, column: 39, scope: !2588)
!2591 = !DILocation(line: 659, column: 31, scope: !2588)
!2592 = !DILocation(line: 658, column: 53, scope: !2588)
!2593 = !DILocation(line: 658, column: 43, scope: !2588)
!2594 = !DILocation(line: 658, column: 29, scope: !2589)
!2595 = distinct !{!2595, !2594, !2596, !749}
!2596 = !DILocation(line: 667, column: 33, scope: !2589)
!2597 = !DILocation(line: 674, column: 19, scope: !2304)
!2598 = !DILocation(line: 670, column: 41, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2328, file: !145, line: 670, column: 29)
!2600 = !DILocation(line: 670, column: 31, scope: !2599)
!2601 = !DILocation(line: 670, column: 29, scope: !2328)
!2602 = !DILocation(line: 672, column: 27, scope: !2328)
!2603 = !DILocation(line: 675, column: 26, scope: !2304)
!2604 = !DILocation(line: 675, column: 24, scope: !2304)
!2605 = !DILocation(line: 674, column: 19, scope: !2322)
!2606 = distinct !{!2606, !2567, !2607, !749}
!2607 = !DILocation(line: 675, column: 44, scope: !2304)
!2608 = !DILocation(line: 676, column: 15, scope: !2305)
!2609 = !DILocation(line: 680, column: 19, scope: !2334)
!2610 = !DILocation(line: 680, column: 45, scope: !2334)
!2611 = !DILocation(line: 684, column: 33, scope: !2333)
!2612 = !DILocation(line: 0, scope: !2333)
!2613 = !DILocation(line: 686, column: 17, scope: !2333)
!2614 = !DILocation(line: 405, column: 12, scope: !2292)
!2615 = !DILocation(line: 688, column: 43, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !145, line: 688, column: 25)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !145, line: 687, column: 19)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !145, line: 686, column: 17)
!2619 = distinct !DILexicalBlock(scope: !2333, file: !145, line: 686, column: 17)
!2620 = !DILocation(line: 690, column: 25, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !145, line: 690, column: 25)
!2622 = distinct !DILexicalBlock(scope: !2616, file: !145, line: 689, column: 23)
!2623 = !DILocation(line: 690, column: 25, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2621, file: !145, line: 690, column: 25)
!2625 = !DILocation(line: 690, column: 25, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !145, line: 690, column: 25)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !145, line: 690, column: 25)
!2628 = distinct !DILexicalBlock(scope: !2624, file: !145, line: 690, column: 25)
!2629 = !DILocation(line: 690, column: 25, scope: !2627)
!2630 = !DILocation(line: 690, column: 25, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !145, line: 690, column: 25)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !145, line: 690, column: 25)
!2633 = !DILocation(line: 690, column: 25, scope: !2632)
!2634 = !DILocation(line: 690, column: 25, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !145, line: 690, column: 25)
!2636 = distinct !DILexicalBlock(scope: !2628, file: !145, line: 690, column: 25)
!2637 = !DILocation(line: 690, column: 25, scope: !2636)
!2638 = !DILocation(line: 690, column: 25, scope: !2628)
!2639 = !DILocation(line: 690, column: 25, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !145, line: 690, column: 25)
!2641 = distinct !DILexicalBlock(scope: !2621, file: !145, line: 690, column: 25)
!2642 = !DILocation(line: 690, column: 25, scope: !2641)
!2643 = !DILocation(line: 691, column: 25, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !145, line: 691, column: 25)
!2645 = distinct !DILexicalBlock(scope: !2622, file: !145, line: 691, column: 25)
!2646 = !DILocation(line: 691, column: 25, scope: !2645)
!2647 = !DILocation(line: 692, column: 25, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !145, line: 692, column: 25)
!2649 = distinct !DILexicalBlock(scope: !2622, file: !145, line: 692, column: 25)
!2650 = !DILocation(line: 692, column: 25, scope: !2649)
!2651 = !DILocation(line: 693, column: 38, scope: !2622)
!2652 = !DILocation(line: 693, column: 33, scope: !2622)
!2653 = !DILocation(line: 694, column: 23, scope: !2622)
!2654 = !DILocation(line: 695, column: 30, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2616, file: !145, line: 695, column: 30)
!2656 = !DILocation(line: 695, column: 30, scope: !2616)
!2657 = !DILocation(line: 697, column: 25, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !145, line: 697, column: 25)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !145, line: 697, column: 25)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !145, line: 696, column: 23)
!2661 = !DILocation(line: 697, column: 25, scope: !2659)
!2662 = !DILocation(line: 699, column: 23, scope: !2660)
!2663 = !DILocation(line: 700, column: 35, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2617, file: !145, line: 700, column: 25)
!2665 = !DILocation(line: 700, column: 30, scope: !2664)
!2666 = !DILocation(line: 700, column: 25, scope: !2617)
!2667 = !DILocation(line: 702, column: 21, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !145, line: 702, column: 21)
!2669 = distinct !DILexicalBlock(scope: !2617, file: !145, line: 702, column: 21)
!2670 = !DILocation(line: 702, column: 21, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !145, line: 702, column: 21)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !145, line: 702, column: 21)
!2673 = distinct !DILexicalBlock(scope: !2668, file: !145, line: 702, column: 21)
!2674 = !DILocation(line: 702, column: 21, scope: !2672)
!2675 = !DILocation(line: 702, column: 21, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !145, line: 702, column: 21)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !145, line: 702, column: 21)
!2678 = !DILocation(line: 702, column: 21, scope: !2677)
!2679 = !DILocation(line: 702, column: 21, scope: !2673)
!2680 = !DILocation(line: 0, scope: !2617)
!2681 = !DILocation(line: 703, column: 21, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !145, line: 703, column: 21)
!2683 = distinct !DILexicalBlock(scope: !2617, file: !145, line: 703, column: 21)
!2684 = !DILocation(line: 703, column: 21, scope: !2683)
!2685 = !DILocation(line: 704, column: 25, scope: !2617)
!2686 = !DILocation(line: 686, column: 17, scope: !2618)
!2687 = distinct !{!2687, !2688, !2689}
!2688 = !DILocation(line: 686, column: 17, scope: !2619)
!2689 = !DILocation(line: 705, column: 19, scope: !2619)
!2690 = !DILocation(line: 416, column: 30, scope: !2410)
!2691 = !DILocation(line: 712, column: 34, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2292, file: !145, line: 712, column: 11)
!2693 = !DILocation(line: 715, column: 35, scope: !2692)
!2694 = !DILocation(line: 715, column: 17, scope: !2692)
!2695 = !DILocation(line: 715, column: 47, scope: !2692)
!2696 = !DILocation(line: 715, column: 65, scope: !2692)
!2697 = !DILocation(line: 716, column: 11, scope: !2692)
!2698 = !DILocation(line: 712, column: 11, scope: !2292)
!2699 = !DILocation(line: 400, column: 10, scope: !2294)
!2700 = !DILocation(line: 719, column: 5, scope: !2292)
!2701 = !DILocation(line: 720, column: 7, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2292, file: !145, line: 720, column: 7)
!2703 = !DILocation(line: 720, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2702, file: !145, line: 720, column: 7)
!2705 = !DILocation(line: 720, column: 7, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !145, line: 720, column: 7)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !145, line: 720, column: 7)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !145, line: 720, column: 7)
!2709 = !DILocation(line: 720, column: 7, scope: !2707)
!2710 = !DILocation(line: 720, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !145, line: 720, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !145, line: 720, column: 7)
!2713 = !DILocation(line: 720, column: 7, scope: !2712)
!2714 = !DILocation(line: 720, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !145, line: 720, column: 7)
!2716 = distinct !DILexicalBlock(scope: !2708, file: !145, line: 720, column: 7)
!2717 = !DILocation(line: 720, column: 7, scope: !2716)
!2718 = !DILocation(line: 720, column: 7, scope: !2708)
!2719 = !DILocation(line: 720, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !145, line: 720, column: 7)
!2721 = distinct !DILexicalBlock(scope: !2702, file: !145, line: 720, column: 7)
!2722 = !DILocation(line: 720, column: 7, scope: !2721)
!2723 = !DILocation(line: 722, column: 5, scope: !2292)
!2724 = !DILocation(line: 723, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !145, line: 723, column: 7)
!2726 = distinct !DILexicalBlock(scope: !2292, file: !145, line: 723, column: 7)
!2727 = !DILocation(line: 424, column: 9, scope: !2292)
!2728 = !DILocation(line: 723, column: 7, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !145, line: 723, column: 7)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !145, line: 723, column: 7)
!2731 = distinct !DILexicalBlock(scope: !2725, file: !145, line: 723, column: 7)
!2732 = !DILocation(line: 723, column: 7, scope: !2730)
!2733 = !DILocation(line: 723, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !145, line: 723, column: 7)
!2735 = distinct !DILexicalBlock(scope: !2731, file: !145, line: 723, column: 7)
!2736 = !DILocation(line: 723, column: 7, scope: !2735)
!2737 = !DILocation(line: 723, column: 7, scope: !2731)
!2738 = !DILocation(line: 724, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !145, line: 724, column: 7)
!2740 = distinct !DILexicalBlock(scope: !2292, file: !145, line: 724, column: 7)
!2741 = !DILocation(line: 724, column: 7, scope: !2740)
!2742 = !DILocation(line: 726, column: 13, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2292, file: !145, line: 726, column: 11)
!2744 = !DILocation(line: 726, column: 11, scope: !2292)
!2745 = !DILocation(line: 728, column: 5, scope: !2293)
!2746 = !DILocation(line: 400, column: 75, scope: !2293)
!2747 = !DILocation(line: 400, column: 3, scope: !2293)
!2748 = distinct !{!2748, !2406, !2749, !749}
!2749 = !DILocation(line: 728, column: 5, scope: !2294)
!2750 = !DILocation(line: 730, column: 11, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2265, file: !145, line: 730, column: 7)
!2752 = !DILocation(line: 730, column: 16, scope: !2751)
!2753 = !DILocation(line: 738, column: 51, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2265, file: !145, line: 738, column: 7)
!2755 = !DILocation(line: 741, column: 11, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !145, line: 741, column: 11)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !145, line: 740, column: 5)
!2758 = !DILocation(line: 741, column: 11, scope: !2757)
!2759 = !DILocation(line: 742, column: 16, scope: !2756)
!2760 = !DILocation(line: 742, column: 9, scope: !2756)
!2761 = !DILocation(line: 746, column: 18, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2756, file: !145, line: 746, column: 16)
!2763 = !DILocation(line: 746, column: 29, scope: !2762)
!2764 = !DILocation(line: 755, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2265, file: !145, line: 755, column: 7)
!2766 = !DILocation(line: 755, column: 20, scope: !2765)
!2767 = !DILocation(line: 756, column: 12, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !145, line: 756, column: 5)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !145, line: 756, column: 5)
!2770 = !DILocation(line: 756, column: 5, scope: !2769)
!2771 = !DILocation(line: 757, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !145, line: 757, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2768, file: !145, line: 757, column: 7)
!2774 = !DILocation(line: 757, column: 7, scope: !2773)
!2775 = !DILocation(line: 756, column: 39, scope: !2768)
!2776 = distinct !{!2776, !2770, !2777, !749}
!2777 = !DILocation(line: 757, column: 7, scope: !2769)
!2778 = !DILocation(line: 759, column: 11, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2265, file: !145, line: 759, column: 7)
!2780 = !DILocation(line: 759, column: 7, scope: !2265)
!2781 = !DILocation(line: 760, column: 5, scope: !2779)
!2782 = !DILocation(line: 760, column: 17, scope: !2779)
!2783 = !DILocation(line: 763, column: 2, scope: !2265)
!2784 = !DILocation(line: 766, column: 51, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2265, file: !145, line: 766, column: 7)
!2786 = !DILocation(line: 766, column: 21, scope: !2785)
!2787 = !DILocation(line: 770, column: 42, scope: !2265)
!2788 = !DILocation(line: 768, column: 10, scope: !2265)
!2789 = !DILocation(line: 768, column: 3, scope: !2265)
!2790 = !DILocation(line: 772, column: 1, scope: !2265)
!2791 = distinct !DISubprogram(name: "gettext_quote", scope: !145, file: !145, line: 207, type: !2792, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!41, !41, !11}
!2794 = !{!2795, !2796, !2797, !2798}
!2795 = !DILocalVariable(name: "msgid", arg: 1, scope: !2791, file: !145, line: 207, type: !41)
!2796 = !DILocalVariable(name: "s", arg: 2, scope: !2791, file: !145, line: 207, type: !11)
!2797 = !DILocalVariable(name: "translation", scope: !2791, file: !145, line: 209, type: !41)
!2798 = !DILocalVariable(name: "locale_code", scope: !2791, file: !145, line: 210, type: !41)
!2799 = !DILocation(line: 0, scope: !2791)
!2800 = !DILocation(line: 209, column: 29, scope: !2791)
!2801 = !DILocation(line: 212, column: 19, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2791, file: !145, line: 212, column: 7)
!2803 = !DILocation(line: 212, column: 7, scope: !2791)
!2804 = !DILocation(line: 233, column: 17, scope: !2791)
!2805 = !DILocalVariable(name: "s1", arg: 1, scope: !2806, file: !2807, line: 160, type: !41)
!2806 = distinct !DISubprogram(name: "strcaseeq0", scope: !2807, file: !2807, line: 160, type: !2808, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2810)
!2807 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!53, !41, !41, !32, !32, !32, !32, !32, !32, !32, !32, !32}
!2810 = !{!2805, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2811 = !DILocalVariable(name: "s2", arg: 2, scope: !2806, file: !2807, line: 160, type: !41)
!2812 = !DILocalVariable(name: "s20", arg: 3, scope: !2806, file: !2807, line: 160, type: !32)
!2813 = !DILocalVariable(name: "s21", arg: 4, scope: !2806, file: !2807, line: 160, type: !32)
!2814 = !DILocalVariable(name: "s22", arg: 5, scope: !2806, file: !2807, line: 160, type: !32)
!2815 = !DILocalVariable(name: "s23", arg: 6, scope: !2806, file: !2807, line: 160, type: !32)
!2816 = !DILocalVariable(name: "s24", arg: 7, scope: !2806, file: !2807, line: 160, type: !32)
!2817 = !DILocalVariable(name: "s25", arg: 8, scope: !2806, file: !2807, line: 160, type: !32)
!2818 = !DILocalVariable(name: "s26", arg: 9, scope: !2806, file: !2807, line: 160, type: !32)
!2819 = !DILocalVariable(name: "s27", arg: 10, scope: !2806, file: !2807, line: 160, type: !32)
!2820 = !DILocalVariable(name: "s28", arg: 11, scope: !2806, file: !2807, line: 160, type: !32)
!2821 = !DILocation(line: 0, scope: !2806, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 234, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2791, file: !145, line: 234, column: 7)
!2824 = !DILocation(line: 162, column: 7, scope: !2825, inlinedAt: !2822)
!2825 = distinct !DILexicalBlock(scope: !2806, file: !2807, line: 162, column: 7)
!2826 = !DILocalVariable(name: "s1", arg: 1, scope: !2827, file: !2807, line: 146, type: !41)
!2827 = distinct !DISubprogram(name: "strcaseeq1", scope: !2807, file: !2807, line: 146, type: !2828, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!53, !41, !41, !32, !32, !32, !32, !32, !32, !32, !32}
!2830 = !{!2826, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2831 = !DILocalVariable(name: "s2", arg: 2, scope: !2827, file: !2807, line: 146, type: !41)
!2832 = !DILocalVariable(name: "s21", arg: 3, scope: !2827, file: !2807, line: 146, type: !32)
!2833 = !DILocalVariable(name: "s22", arg: 4, scope: !2827, file: !2807, line: 146, type: !32)
!2834 = !DILocalVariable(name: "s23", arg: 5, scope: !2827, file: !2807, line: 146, type: !32)
!2835 = !DILocalVariable(name: "s24", arg: 6, scope: !2827, file: !2807, line: 146, type: !32)
!2836 = !DILocalVariable(name: "s25", arg: 7, scope: !2827, file: !2807, line: 146, type: !32)
!2837 = !DILocalVariable(name: "s26", arg: 8, scope: !2827, file: !2807, line: 146, type: !32)
!2838 = !DILocalVariable(name: "s27", arg: 9, scope: !2827, file: !2807, line: 146, type: !32)
!2839 = !DILocalVariable(name: "s28", arg: 10, scope: !2827, file: !2807, line: 146, type: !32)
!2840 = !DILocation(line: 0, scope: !2827, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 167, column: 16, scope: !2842, inlinedAt: !2822)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !2807, line: 164, column: 11)
!2843 = distinct !DILexicalBlock(scope: !2825, file: !2807, line: 163, column: 5)
!2844 = !DILocation(line: 148, column: 7, scope: !2845, inlinedAt: !2841)
!2845 = distinct !DILexicalBlock(scope: !2827, file: !2807, line: 148, column: 7)
!2846 = !DILocalVariable(name: "s1", arg: 1, scope: !2847, file: !2807, line: 132, type: !41)
!2847 = distinct !DISubprogram(name: "strcaseeq2", scope: !2807, file: !2807, line: 132, type: !2848, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!53, !41, !41, !32, !32, !32, !32, !32, !32, !32}
!2850 = !{!2846, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!2851 = !DILocalVariable(name: "s2", arg: 2, scope: !2847, file: !2807, line: 132, type: !41)
!2852 = !DILocalVariable(name: "s22", arg: 3, scope: !2847, file: !2807, line: 132, type: !32)
!2853 = !DILocalVariable(name: "s23", arg: 4, scope: !2847, file: !2807, line: 132, type: !32)
!2854 = !DILocalVariable(name: "s24", arg: 5, scope: !2847, file: !2807, line: 132, type: !32)
!2855 = !DILocalVariable(name: "s25", arg: 6, scope: !2847, file: !2807, line: 132, type: !32)
!2856 = !DILocalVariable(name: "s26", arg: 7, scope: !2847, file: !2807, line: 132, type: !32)
!2857 = !DILocalVariable(name: "s27", arg: 8, scope: !2847, file: !2807, line: 132, type: !32)
!2858 = !DILocalVariable(name: "s28", arg: 9, scope: !2847, file: !2807, line: 132, type: !32)
!2859 = !DILocation(line: 0, scope: !2847, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 153, column: 16, scope: !2861, inlinedAt: !2841)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !2807, line: 150, column: 11)
!2862 = distinct !DILexicalBlock(scope: !2845, file: !2807, line: 149, column: 5)
!2863 = !DILocation(line: 134, column: 7, scope: !2864, inlinedAt: !2860)
!2864 = distinct !DILexicalBlock(scope: !2847, file: !2807, line: 134, column: 7)
!2865 = !DILocalVariable(name: "s1", arg: 1, scope: !2866, file: !2807, line: 118, type: !41)
!2866 = distinct !DISubprogram(name: "strcaseeq3", scope: !2807, file: !2807, line: 118, type: !2867, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!53, !41, !41, !32, !32, !32, !32, !32, !32}
!2869 = !{!2865, !2870, !2871, !2872, !2873, !2874, !2875, !2876}
!2870 = !DILocalVariable(name: "s2", arg: 2, scope: !2866, file: !2807, line: 118, type: !41)
!2871 = !DILocalVariable(name: "s23", arg: 3, scope: !2866, file: !2807, line: 118, type: !32)
!2872 = !DILocalVariable(name: "s24", arg: 4, scope: !2866, file: !2807, line: 118, type: !32)
!2873 = !DILocalVariable(name: "s25", arg: 5, scope: !2866, file: !2807, line: 118, type: !32)
!2874 = !DILocalVariable(name: "s26", arg: 6, scope: !2866, file: !2807, line: 118, type: !32)
!2875 = !DILocalVariable(name: "s27", arg: 7, scope: !2866, file: !2807, line: 118, type: !32)
!2876 = !DILocalVariable(name: "s28", arg: 8, scope: !2866, file: !2807, line: 118, type: !32)
!2877 = !DILocation(line: 0, scope: !2866, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 139, column: 16, scope: !2879, inlinedAt: !2860)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !2807, line: 136, column: 11)
!2880 = distinct !DILexicalBlock(scope: !2864, file: !2807, line: 135, column: 5)
!2881 = !DILocation(line: 120, column: 7, scope: !2882, inlinedAt: !2878)
!2882 = distinct !DILexicalBlock(scope: !2866, file: !2807, line: 120, column: 7)
!2883 = !DILocation(line: 120, column: 7, scope: !2866, inlinedAt: !2878)
!2884 = !DILocalVariable(name: "s1", arg: 1, scope: !2885, file: !2807, line: 104, type: !41)
!2885 = distinct !DISubprogram(name: "strcaseeq4", scope: !2807, file: !2807, line: 104, type: !2886, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!53, !41, !41, !32, !32, !32, !32, !32}
!2888 = !{!2884, !2889, !2890, !2891, !2892, !2893, !2894}
!2889 = !DILocalVariable(name: "s2", arg: 2, scope: !2885, file: !2807, line: 104, type: !41)
!2890 = !DILocalVariable(name: "s24", arg: 3, scope: !2885, file: !2807, line: 104, type: !32)
!2891 = !DILocalVariable(name: "s25", arg: 4, scope: !2885, file: !2807, line: 104, type: !32)
!2892 = !DILocalVariable(name: "s26", arg: 5, scope: !2885, file: !2807, line: 104, type: !32)
!2893 = !DILocalVariable(name: "s27", arg: 6, scope: !2885, file: !2807, line: 104, type: !32)
!2894 = !DILocalVariable(name: "s28", arg: 7, scope: !2885, file: !2807, line: 104, type: !32)
!2895 = !DILocation(line: 0, scope: !2885, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 125, column: 16, scope: !2897, inlinedAt: !2878)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !2807, line: 122, column: 11)
!2898 = distinct !DILexicalBlock(scope: !2882, file: !2807, line: 121, column: 5)
!2899 = !DILocation(line: 106, column: 7, scope: !2900, inlinedAt: !2896)
!2900 = distinct !DILexicalBlock(scope: !2885, file: !2807, line: 106, column: 7)
!2901 = !DILocation(line: 106, column: 7, scope: !2885, inlinedAt: !2896)
!2902 = !DILocalVariable(name: "s1", arg: 1, scope: !2903, file: !2807, line: 90, type: !41)
!2903 = distinct !DISubprogram(name: "strcaseeq5", scope: !2807, file: !2807, line: 90, type: !2904, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!53, !41, !41, !32, !32, !32, !32}
!2906 = !{!2902, !2907, !2908, !2909, !2910, !2911}
!2907 = !DILocalVariable(name: "s2", arg: 2, scope: !2903, file: !2807, line: 90, type: !41)
!2908 = !DILocalVariable(name: "s25", arg: 3, scope: !2903, file: !2807, line: 90, type: !32)
!2909 = !DILocalVariable(name: "s26", arg: 4, scope: !2903, file: !2807, line: 90, type: !32)
!2910 = !DILocalVariable(name: "s27", arg: 5, scope: !2903, file: !2807, line: 90, type: !32)
!2911 = !DILocalVariable(name: "s28", arg: 6, scope: !2903, file: !2807, line: 90, type: !32)
!2912 = !DILocation(line: 0, scope: !2903, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 111, column: 16, scope: !2914, inlinedAt: !2896)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !2807, line: 108, column: 11)
!2915 = distinct !DILexicalBlock(scope: !2900, file: !2807, line: 107, column: 5)
!2916 = !DILocation(line: 92, column: 7, scope: !2917, inlinedAt: !2913)
!2917 = distinct !DILexicalBlock(scope: !2903, file: !2807, line: 92, column: 7)
!2918 = !DILocation(line: 92, column: 7, scope: !2903, inlinedAt: !2913)
!2919 = !DILocation(line: 235, column: 12, scope: !2823)
!2920 = !DILocation(line: 235, column: 21, scope: !2823)
!2921 = !DILocation(line: 235, column: 5, scope: !2823)
!2922 = !DILocation(line: 0, scope: !2827, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 167, column: 16, scope: !2842, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 236, column: 7, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2791, file: !145, line: 236, column: 7)
!2926 = !DILocation(line: 148, column: 7, scope: !2845, inlinedAt: !2923)
!2927 = !DILocation(line: 0, scope: !2847, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 153, column: 16, scope: !2861, inlinedAt: !2923)
!2929 = !DILocation(line: 134, column: 7, scope: !2864, inlinedAt: !2928)
!2930 = !DILocation(line: 134, column: 7, scope: !2847, inlinedAt: !2928)
!2931 = !DILocation(line: 0, scope: !2866, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 139, column: 16, scope: !2879, inlinedAt: !2928)
!2933 = !DILocation(line: 120, column: 7, scope: !2882, inlinedAt: !2932)
!2934 = !DILocation(line: 120, column: 7, scope: !2866, inlinedAt: !2932)
!2935 = !DILocation(line: 0, scope: !2885, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 125, column: 16, scope: !2897, inlinedAt: !2932)
!2937 = !DILocation(line: 106, column: 7, scope: !2900, inlinedAt: !2936)
!2938 = !DILocation(line: 106, column: 7, scope: !2885, inlinedAt: !2936)
!2939 = !DILocation(line: 0, scope: !2903, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 111, column: 16, scope: !2914, inlinedAt: !2936)
!2941 = !DILocation(line: 92, column: 7, scope: !2917, inlinedAt: !2940)
!2942 = !DILocation(line: 92, column: 7, scope: !2903, inlinedAt: !2940)
!2943 = !DILocalVariable(name: "s1", arg: 1, scope: !2944, file: !2807, line: 76, type: !41)
!2944 = distinct !DISubprogram(name: "strcaseeq6", scope: !2807, file: !2807, line: 76, type: !2945, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!53, !41, !41, !32, !32, !32}
!2947 = !{!2943, !2948, !2949, !2950, !2951}
!2948 = !DILocalVariable(name: "s2", arg: 2, scope: !2944, file: !2807, line: 76, type: !41)
!2949 = !DILocalVariable(name: "s26", arg: 3, scope: !2944, file: !2807, line: 76, type: !32)
!2950 = !DILocalVariable(name: "s27", arg: 4, scope: !2944, file: !2807, line: 76, type: !32)
!2951 = !DILocalVariable(name: "s28", arg: 5, scope: !2944, file: !2807, line: 76, type: !32)
!2952 = !DILocation(line: 0, scope: !2944, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 97, column: 16, scope: !2954, inlinedAt: !2940)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !2807, line: 94, column: 11)
!2955 = distinct !DILexicalBlock(scope: !2917, file: !2807, line: 93, column: 5)
!2956 = !DILocation(line: 78, column: 7, scope: !2957, inlinedAt: !2953)
!2957 = distinct !DILexicalBlock(scope: !2944, file: !2807, line: 78, column: 7)
!2958 = !DILocation(line: 78, column: 7, scope: !2944, inlinedAt: !2953)
!2959 = !DILocalVariable(name: "s1", arg: 1, scope: !2960, file: !2807, line: 62, type: !41)
!2960 = distinct !DISubprogram(name: "strcaseeq7", scope: !2807, file: !2807, line: 62, type: !2961, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!53, !41, !41, !32, !32}
!2963 = !{!2959, !2964, !2965, !2966}
!2964 = !DILocalVariable(name: "s2", arg: 2, scope: !2960, file: !2807, line: 62, type: !41)
!2965 = !DILocalVariable(name: "s27", arg: 3, scope: !2960, file: !2807, line: 62, type: !32)
!2966 = !DILocalVariable(name: "s28", arg: 4, scope: !2960, file: !2807, line: 62, type: !32)
!2967 = !DILocation(line: 0, scope: !2960, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 83, column: 16, scope: !2969, inlinedAt: !2953)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !2807, line: 80, column: 11)
!2970 = distinct !DILexicalBlock(scope: !2957, file: !2807, line: 79, column: 5)
!2971 = !DILocation(line: 64, column: 7, scope: !2972, inlinedAt: !2968)
!2972 = distinct !DILexicalBlock(scope: !2960, file: !2807, line: 64, column: 7)
!2973 = !DILocation(line: 236, column: 7, scope: !2791)
!2974 = !DILocation(line: 237, column: 12, scope: !2925)
!2975 = !DILocation(line: 237, column: 21, scope: !2925)
!2976 = !DILocation(line: 237, column: 5, scope: !2925)
!2977 = !DILocation(line: 239, column: 13, scope: !2791)
!2978 = !DILocation(line: 239, column: 11, scope: !2791)
!2979 = !DILocation(line: 239, column: 3, scope: !2791)
!2980 = !DILocation(line: 240, column: 1, scope: !2791)
!2981 = !DISubprogram(name: "iswprint", scope: !2982, file: !2982, line: 120, type: !2983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!2982 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!53, !6}
!2985 = !DISubprogram(name: "mbsinit", scope: !2986, file: !2986, line: 292, type: !2987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!2986 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!53, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2310)
!2991 = distinct !DISubprogram(name: "quotearg_alloc", scope: !145, file: !145, line: 799, type: !2992, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!31, !41, !43, !2157}
!2994 = !{!2995, !2996, !2997}
!2995 = !DILocalVariable(name: "arg", arg: 1, scope: !2991, file: !145, line: 799, type: !41)
!2996 = !DILocalVariable(name: "argsize", arg: 2, scope: !2991, file: !145, line: 799, type: !43)
!2997 = !DILocalVariable(name: "o", arg: 3, scope: !2991, file: !145, line: 800, type: !2157)
!2998 = !DILocation(line: 0, scope: !2991)
!2999 = !DILocalVariable(name: "arg", arg: 1, scope: !3000, file: !145, line: 812, type: !41)
!3000 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !145, file: !145, line: 812, type: !3001, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!31, !41, !43, !248, !2157}
!3003 = !{!2999, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011}
!3004 = !DILocalVariable(name: "argsize", arg: 2, scope: !3000, file: !145, line: 812, type: !43)
!3005 = !DILocalVariable(name: "size", arg: 3, scope: !3000, file: !145, line: 812, type: !248)
!3006 = !DILocalVariable(name: "o", arg: 4, scope: !3000, file: !145, line: 813, type: !2157)
!3007 = !DILocalVariable(name: "p", scope: !3000, file: !145, line: 815, type: !2157)
!3008 = !DILocalVariable(name: "e", scope: !3000, file: !145, line: 816, type: !53)
!3009 = !DILocalVariable(name: "flags", scope: !3000, file: !145, line: 818, type: !53)
!3010 = !DILocalVariable(name: "bufsize", scope: !3000, file: !145, line: 819, type: !43)
!3011 = !DILocalVariable(name: "buf", scope: !3000, file: !145, line: 823, type: !31)
!3012 = !DILocation(line: 0, scope: !3000, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 802, column: 10, scope: !2991)
!3014 = !DILocation(line: 815, column: 37, scope: !3000, inlinedAt: !3013)
!3015 = !DILocation(line: 816, column: 11, scope: !3000, inlinedAt: !3013)
!3016 = !DILocation(line: 818, column: 18, scope: !3000, inlinedAt: !3013)
!3017 = !DILocation(line: 818, column: 24, scope: !3000, inlinedAt: !3013)
!3018 = !DILocation(line: 819, column: 69, scope: !3000, inlinedAt: !3013)
!3019 = !DILocation(line: 820, column: 53, scope: !3000, inlinedAt: !3013)
!3020 = !DILocation(line: 821, column: 49, scope: !3000, inlinedAt: !3013)
!3021 = !DILocation(line: 822, column: 49, scope: !3000, inlinedAt: !3013)
!3022 = !DILocation(line: 819, column: 20, scope: !3000, inlinedAt: !3013)
!3023 = !DILocation(line: 822, column: 62, scope: !3000, inlinedAt: !3013)
!3024 = !DILocalVariable(name: "n", arg: 1, scope: !3025, file: !244, line: 216, type: !43)
!3025 = distinct !DISubprogram(name: "xcharalloc", scope: !244, file: !244, line: 216, type: !3026, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3027)
!3026 = !DISubroutineType(types: !217)
!3027 = !{!3024}
!3028 = !DILocation(line: 0, scope: !3025, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 823, column: 15, scope: !3000, inlinedAt: !3013)
!3030 = !DILocation(line: 218, column: 10, scope: !3025, inlinedAt: !3029)
!3031 = !DILocation(line: 824, column: 60, scope: !3000, inlinedAt: !3013)
!3032 = !DILocation(line: 826, column: 32, scope: !3000, inlinedAt: !3013)
!3033 = !DILocation(line: 826, column: 47, scope: !3000, inlinedAt: !3013)
!3034 = !DILocation(line: 824, column: 3, scope: !3000, inlinedAt: !3013)
!3035 = !DILocation(line: 827, column: 9, scope: !3000, inlinedAt: !3013)
!3036 = !DILocation(line: 802, column: 3, scope: !2991)
!3037 = !DILocation(line: 0, scope: !3000)
!3038 = !DILocation(line: 815, column: 37, scope: !3000)
!3039 = !DILocation(line: 816, column: 11, scope: !3000)
!3040 = !DILocation(line: 818, column: 18, scope: !3000)
!3041 = !DILocation(line: 818, column: 27, scope: !3000)
!3042 = !DILocation(line: 818, column: 24, scope: !3000)
!3043 = !DILocation(line: 819, column: 69, scope: !3000)
!3044 = !DILocation(line: 820, column: 53, scope: !3000)
!3045 = !DILocation(line: 821, column: 49, scope: !3000)
!3046 = !DILocation(line: 822, column: 49, scope: !3000)
!3047 = !DILocation(line: 819, column: 20, scope: !3000)
!3048 = !DILocation(line: 822, column: 62, scope: !3000)
!3049 = !DILocation(line: 0, scope: !3025, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 823, column: 15, scope: !3000)
!3051 = !DILocation(line: 218, column: 10, scope: !3025, inlinedAt: !3050)
!3052 = !DILocation(line: 824, column: 60, scope: !3000)
!3053 = !DILocation(line: 826, column: 32, scope: !3000)
!3054 = !DILocation(line: 826, column: 47, scope: !3000)
!3055 = !DILocation(line: 824, column: 3, scope: !3000)
!3056 = !DILocation(line: 827, column: 9, scope: !3000)
!3057 = !DILocation(line: 828, column: 7, scope: !3000)
!3058 = !DILocation(line: 829, column: 11, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3000, file: !145, line: 828, column: 7)
!3060 = !DILocation(line: 829, column: 5, scope: !3059)
!3061 = !DILocation(line: 830, column: 3, scope: !3000)
!3062 = distinct !DISubprogram(name: "quotearg_free", scope: !145, file: !145, line: 848, type: !707, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3063)
!3063 = !{!3064, !3065}
!3064 = !DILocalVariable(name: "sv", scope: !3062, file: !145, line: 850, type: !195)
!3065 = !DILocalVariable(name: "i", scope: !3062, file: !145, line: 851, type: !53)
!3066 = !DILocation(line: 850, column: 24, scope: !3062)
!3067 = !DILocation(line: 0, scope: !3062)
!3068 = !DILocation(line: 852, column: 19, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !145, line: 852, column: 3)
!3070 = distinct !DILexicalBlock(scope: !3062, file: !145, line: 852, column: 3)
!3071 = !DILocation(line: 852, column: 17, scope: !3069)
!3072 = !DILocation(line: 852, column: 3, scope: !3070)
!3073 = !DILocation(line: 853, column: 17, scope: !3069)
!3074 = !{!3075, !698, i64 8}
!3075 = !{!"slotvec", !1178, i64 0, !698, i64 8}
!3076 = !DILocation(line: 853, column: 5, scope: !3069)
!3077 = !DILocation(line: 852, column: 28, scope: !3069)
!3078 = distinct !{!3078, !3072, !3079, !749}
!3079 = !DILocation(line: 853, column: 20, scope: !3070)
!3080 = !DILocation(line: 854, column: 13, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3062, file: !145, line: 854, column: 7)
!3082 = !DILocation(line: 854, column: 17, scope: !3081)
!3083 = !DILocation(line: 854, column: 7, scope: !3062)
!3084 = !DILocation(line: 856, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3081, file: !145, line: 855, column: 5)
!3086 = !DILocation(line: 857, column: 21, scope: !3085)
!3087 = !{!3075, !1178, i64 0}
!3088 = !DILocation(line: 858, column: 20, scope: !3085)
!3089 = !DILocation(line: 859, column: 5, scope: !3085)
!3090 = !DILocation(line: 860, column: 10, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3062, file: !145, line: 860, column: 7)
!3092 = !DILocation(line: 860, column: 7, scope: !3062)
!3093 = !DILocation(line: 862, column: 13, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3091, file: !145, line: 861, column: 5)
!3095 = !DILocation(line: 862, column: 7, scope: !3094)
!3096 = !DILocation(line: 863, column: 15, scope: !3094)
!3097 = !DILocation(line: 864, column: 5, scope: !3094)
!3098 = !DILocation(line: 865, column: 10, scope: !3062)
!3099 = !DILocation(line: 866, column: 1, scope: !3062)
!3100 = distinct !DISubprogram(name: "quotearg_n", scope: !145, file: !145, line: 931, type: !827, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3101)
!3101 = !{!3102, !3103}
!3102 = !DILocalVariable(name: "n", arg: 1, scope: !3100, file: !145, line: 931, type: !53)
!3103 = !DILocalVariable(name: "arg", arg: 2, scope: !3100, file: !145, line: 931, type: !41)
!3104 = !DILocation(line: 0, scope: !3100)
!3105 = !DILocation(line: 933, column: 10, scope: !3100)
!3106 = !DILocation(line: 933, column: 3, scope: !3100)
!3107 = distinct !DISubprogram(name: "quotearg_n_options", scope: !145, file: !145, line: 877, type: !3108, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!31, !53, !41, !43, !2157}
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3120, !3121, !3123, !3124, !3125}
!3111 = !DILocalVariable(name: "n", arg: 1, scope: !3107, file: !145, line: 877, type: !53)
!3112 = !DILocalVariable(name: "arg", arg: 2, scope: !3107, file: !145, line: 877, type: !41)
!3113 = !DILocalVariable(name: "argsize", arg: 3, scope: !3107, file: !145, line: 877, type: !43)
!3114 = !DILocalVariable(name: "options", arg: 4, scope: !3107, file: !145, line: 878, type: !2157)
!3115 = !DILocalVariable(name: "e", scope: !3107, file: !145, line: 880, type: !53)
!3116 = !DILocalVariable(name: "sv", scope: !3107, file: !145, line: 882, type: !195)
!3117 = !DILocalVariable(name: "preallocated", scope: !3118, file: !145, line: 889, type: !60)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !145, line: 888, column: 5)
!3119 = distinct !DILexicalBlock(scope: !3107, file: !145, line: 887, column: 7)
!3120 = !DILocalVariable(name: "nmax", scope: !3118, file: !145, line: 890, type: !53)
!3121 = !DILocalVariable(name: "size", scope: !3122, file: !145, line: 903, type: !43)
!3122 = distinct !DILexicalBlock(scope: !3107, file: !145, line: 902, column: 3)
!3123 = !DILocalVariable(name: "val", scope: !3122, file: !145, line: 904, type: !31)
!3124 = !DILocalVariable(name: "flags", scope: !3122, file: !145, line: 906, type: !53)
!3125 = !DILocalVariable(name: "qsize", scope: !3122, file: !145, line: 907, type: !43)
!3126 = !DILocation(line: 0, scope: !3107)
!3127 = !DILocation(line: 880, column: 11, scope: !3107)
!3128 = !DILocation(line: 882, column: 24, scope: !3107)
!3129 = !DILocation(line: 884, column: 9, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3107, file: !145, line: 884, column: 7)
!3131 = !DILocation(line: 884, column: 7, scope: !3107)
!3132 = !DILocation(line: 885, column: 5, scope: !3130)
!3133 = !DILocation(line: 887, column: 7, scope: !3119)
!3134 = !DILocation(line: 887, column: 14, scope: !3119)
!3135 = !DILocation(line: 887, column: 7, scope: !3107)
!3136 = !DILocation(line: 889, column: 31, scope: !3118)
!3137 = !DILocation(line: 0, scope: !3118)
!3138 = !DILocation(line: 892, column: 16, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3118, file: !145, line: 892, column: 11)
!3140 = !DILocation(line: 892, column: 11, scope: !3118)
!3141 = !DILocation(line: 893, column: 9, scope: !3139)
!3142 = !DILocation(line: 895, column: 32, scope: !3118)
!3143 = !DILocation(line: 895, column: 61, scope: !3118)
!3144 = !DILocation(line: 895, column: 66, scope: !3118)
!3145 = !DILocation(line: 895, column: 22, scope: !3118)
!3146 = !DILocation(line: 895, column: 15, scope: !3118)
!3147 = !DILocation(line: 896, column: 11, scope: !3118)
!3148 = !DILocation(line: 897, column: 15, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3118, file: !145, line: 896, column: 11)
!3150 = !{i64 0, i64 8, !1288, i64 8, i64 8, !697}
!3151 = !DILocation(line: 897, column: 9, scope: !3149)
!3152 = !DILocation(line: 898, column: 20, scope: !3118)
!3153 = !DILocation(line: 898, column: 18, scope: !3118)
!3154 = !DILocation(line: 898, column: 15, scope: !3118)
!3155 = !DILocation(line: 898, column: 38, scope: !3118)
!3156 = !DILocation(line: 898, column: 31, scope: !3118)
!3157 = !DILocation(line: 898, column: 48, scope: !3118)
!3158 = !DILocation(line: 0, scope: !2553, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 898, column: 7, scope: !3118)
!3160 = !DILocation(line: 59, column: 10, scope: !2553, inlinedAt: !3159)
!3161 = !DILocation(line: 899, column: 14, scope: !3118)
!3162 = !DILocation(line: 900, column: 5, scope: !3118)
!3163 = !DILocation(line: 903, column: 19, scope: !3122)
!3164 = !DILocation(line: 903, column: 25, scope: !3122)
!3165 = !DILocation(line: 0, scope: !3122)
!3166 = !DILocation(line: 904, column: 23, scope: !3122)
!3167 = !DILocation(line: 906, column: 26, scope: !3122)
!3168 = !DILocation(line: 906, column: 32, scope: !3122)
!3169 = !DILocation(line: 908, column: 55, scope: !3122)
!3170 = !DILocation(line: 909, column: 46, scope: !3122)
!3171 = !DILocation(line: 910, column: 55, scope: !3122)
!3172 = !DILocation(line: 911, column: 55, scope: !3122)
!3173 = !DILocation(line: 907, column: 20, scope: !3122)
!3174 = !DILocation(line: 913, column: 14, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3122, file: !145, line: 913, column: 9)
!3176 = !DILocation(line: 913, column: 9, scope: !3122)
!3177 = !DILocation(line: 915, column: 35, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3175, file: !145, line: 914, column: 7)
!3179 = !DILocation(line: 915, column: 20, scope: !3178)
!3180 = !DILocation(line: 916, column: 17, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !145, line: 916, column: 13)
!3182 = !DILocation(line: 916, column: 13, scope: !3178)
!3183 = !DILocation(line: 917, column: 11, scope: !3181)
!3184 = !DILocation(line: 0, scope: !3025, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 918, column: 27, scope: !3178)
!3186 = !DILocation(line: 218, column: 10, scope: !3025, inlinedAt: !3185)
!3187 = !DILocation(line: 918, column: 19, scope: !3178)
!3188 = !DILocation(line: 919, column: 69, scope: !3178)
!3189 = !DILocation(line: 921, column: 44, scope: !3178)
!3190 = !DILocation(line: 922, column: 44, scope: !3178)
!3191 = !DILocation(line: 919, column: 9, scope: !3178)
!3192 = !DILocation(line: 923, column: 7, scope: !3178)
!3193 = !DILocation(line: 925, column: 11, scope: !3122)
!3194 = !DILocation(line: 926, column: 5, scope: !3122)
!3195 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !145, file: !145, line: 937, type: !3196, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3198)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!31, !53, !41, !43}
!3198 = !{!3199, !3200, !3201}
!3199 = !DILocalVariable(name: "n", arg: 1, scope: !3195, file: !145, line: 937, type: !53)
!3200 = !DILocalVariable(name: "arg", arg: 2, scope: !3195, file: !145, line: 937, type: !41)
!3201 = !DILocalVariable(name: "argsize", arg: 3, scope: !3195, file: !145, line: 937, type: !43)
!3202 = !DILocation(line: 0, scope: !3195)
!3203 = !DILocation(line: 939, column: 10, scope: !3195)
!3204 = !DILocation(line: 939, column: 3, scope: !3195)
!3205 = distinct !DISubprogram(name: "quotearg", scope: !145, file: !145, line: 943, type: !1851, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3206)
!3206 = !{!3207}
!3207 = !DILocalVariable(name: "arg", arg: 1, scope: !3205, file: !145, line: 943, type: !41)
!3208 = !DILocation(line: 0, scope: !3205)
!3209 = !DILocation(line: 0, scope: !3100, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 945, column: 10, scope: !3205)
!3211 = !DILocation(line: 933, column: 10, scope: !3100, inlinedAt: !3210)
!3212 = !DILocation(line: 945, column: 3, scope: !3205)
!3213 = distinct !DISubprogram(name: "quotearg_mem", scope: !145, file: !145, line: 949, type: !3214, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!31, !41, !43}
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "arg", arg: 1, scope: !3213, file: !145, line: 949, type: !41)
!3218 = !DILocalVariable(name: "argsize", arg: 2, scope: !3213, file: !145, line: 949, type: !43)
!3219 = !DILocation(line: 0, scope: !3213)
!3220 = !DILocation(line: 0, scope: !3195, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 951, column: 10, scope: !3213)
!3222 = !DILocation(line: 939, column: 10, scope: !3195, inlinedAt: !3221)
!3223 = !DILocation(line: 951, column: 3, scope: !3213)
!3224 = distinct !DISubprogram(name: "quotearg_n_style", scope: !145, file: !145, line: 955, type: !3225, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!31, !53, !11, !41}
!3227 = !{!3228, !3229, !3230, !3231}
!3228 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !145, line: 955, type: !53)
!3229 = !DILocalVariable(name: "s", arg: 2, scope: !3224, file: !145, line: 955, type: !11)
!3230 = !DILocalVariable(name: "arg", arg: 3, scope: !3224, file: !145, line: 955, type: !41)
!3231 = !DILocalVariable(name: "o", scope: !3224, file: !145, line: 957, type: !2158)
!3232 = !DILocation(line: 0, scope: !3224)
!3233 = !DILocation(line: 957, column: 3, scope: !3224)
!3234 = !DILocation(line: 957, column: 32, scope: !3224)
!3235 = !{!3236}
!3236 = distinct !{!3236, !3237, !"quoting_options_from_style: argument 0"}
!3237 = distinct !{!3237, !"quoting_options_from_style"}
!3238 = !DILocation(line: 957, column: 36, scope: !3224)
!3239 = !DILocalVariable(name: "style", arg: 1, scope: !3240, file: !145, line: 193, type: !11)
!3240 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !145, file: !145, line: 193, type: !3241, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!176, !11}
!3243 = !{!3239, !3244}
!3244 = !DILocalVariable(name: "o", scope: !3240, file: !145, line: 195, type: !176)
!3245 = !DILocation(line: 0, scope: !3240, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 957, column: 36, scope: !3224)
!3247 = !DILocation(line: 195, column: 26, scope: !3240, inlinedAt: !3246)
!3248 = !DILocation(line: 196, column: 13, scope: !3249, inlinedAt: !3246)
!3249 = distinct !DILexicalBlock(scope: !3240, file: !145, line: 196, column: 7)
!3250 = !DILocation(line: 196, column: 7, scope: !3240, inlinedAt: !3246)
!3251 = !DILocation(line: 197, column: 5, scope: !3249, inlinedAt: !3246)
!3252 = !DILocation(line: 198, column: 5, scope: !3240, inlinedAt: !3246)
!3253 = !DILocation(line: 198, column: 11, scope: !3240, inlinedAt: !3246)
!3254 = !DILocation(line: 958, column: 10, scope: !3224)
!3255 = !DILocation(line: 959, column: 1, scope: !3224)
!3256 = !DILocation(line: 958, column: 3, scope: !3224)
!3257 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !145, file: !145, line: 962, type: !3258, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!31, !53, !11, !41, !43}
!3260 = !{!3261, !3262, !3263, !3264, !3265}
!3261 = !DILocalVariable(name: "n", arg: 1, scope: !3257, file: !145, line: 962, type: !53)
!3262 = !DILocalVariable(name: "s", arg: 2, scope: !3257, file: !145, line: 962, type: !11)
!3263 = !DILocalVariable(name: "arg", arg: 3, scope: !3257, file: !145, line: 963, type: !41)
!3264 = !DILocalVariable(name: "argsize", arg: 4, scope: !3257, file: !145, line: 963, type: !43)
!3265 = !DILocalVariable(name: "o", scope: !3257, file: !145, line: 965, type: !2158)
!3266 = !DILocation(line: 0, scope: !3257)
!3267 = !DILocation(line: 965, column: 3, scope: !3257)
!3268 = !DILocation(line: 965, column: 32, scope: !3257)
!3269 = !{!3270}
!3270 = distinct !{!3270, !3271, !"quoting_options_from_style: argument 0"}
!3271 = distinct !{!3271, !"quoting_options_from_style"}
!3272 = !DILocation(line: 965, column: 36, scope: !3257)
!3273 = !DILocation(line: 0, scope: !3240, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 965, column: 36, scope: !3257)
!3275 = !DILocation(line: 195, column: 26, scope: !3240, inlinedAt: !3274)
!3276 = !DILocation(line: 196, column: 13, scope: !3249, inlinedAt: !3274)
!3277 = !DILocation(line: 196, column: 7, scope: !3240, inlinedAt: !3274)
!3278 = !DILocation(line: 197, column: 5, scope: !3249, inlinedAt: !3274)
!3279 = !DILocation(line: 198, column: 5, scope: !3240, inlinedAt: !3274)
!3280 = !DILocation(line: 198, column: 11, scope: !3240, inlinedAt: !3274)
!3281 = !DILocation(line: 966, column: 10, scope: !3257)
!3282 = !DILocation(line: 967, column: 1, scope: !3257)
!3283 = !DILocation(line: 966, column: 3, scope: !3257)
!3284 = distinct !DISubprogram(name: "quotearg_style", scope: !145, file: !145, line: 970, type: !3285, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!31, !11, !41}
!3287 = !{!3288, !3289}
!3288 = !DILocalVariable(name: "s", arg: 1, scope: !3284, file: !145, line: 970, type: !11)
!3289 = !DILocalVariable(name: "arg", arg: 2, scope: !3284, file: !145, line: 970, type: !41)
!3290 = !DILocation(line: 0, scope: !3284)
!3291 = !DILocation(line: 0, scope: !3224, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 972, column: 10, scope: !3284)
!3293 = !DILocation(line: 957, column: 3, scope: !3224, inlinedAt: !3292)
!3294 = !DILocation(line: 957, column: 32, scope: !3224, inlinedAt: !3292)
!3295 = !{!3296}
!3296 = distinct !{!3296, !3297, !"quoting_options_from_style: argument 0"}
!3297 = distinct !{!3297, !"quoting_options_from_style"}
!3298 = !DILocation(line: 957, column: 36, scope: !3224, inlinedAt: !3292)
!3299 = !DILocation(line: 0, scope: !3240, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 957, column: 36, scope: !3224, inlinedAt: !3292)
!3301 = !DILocation(line: 195, column: 26, scope: !3240, inlinedAt: !3300)
!3302 = !DILocation(line: 196, column: 13, scope: !3249, inlinedAt: !3300)
!3303 = !DILocation(line: 196, column: 7, scope: !3240, inlinedAt: !3300)
!3304 = !DILocation(line: 197, column: 5, scope: !3249, inlinedAt: !3300)
!3305 = !DILocation(line: 198, column: 5, scope: !3240, inlinedAt: !3300)
!3306 = !DILocation(line: 198, column: 11, scope: !3240, inlinedAt: !3300)
!3307 = !DILocation(line: 958, column: 10, scope: !3224, inlinedAt: !3292)
!3308 = !DILocation(line: 959, column: 1, scope: !3224, inlinedAt: !3292)
!3309 = !DILocation(line: 972, column: 3, scope: !3284)
!3310 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !145, file: !145, line: 976, type: !3311, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!31, !11, !41, !43}
!3313 = !{!3314, !3315, !3316}
!3314 = !DILocalVariable(name: "s", arg: 1, scope: !3310, file: !145, line: 976, type: !11)
!3315 = !DILocalVariable(name: "arg", arg: 2, scope: !3310, file: !145, line: 976, type: !41)
!3316 = !DILocalVariable(name: "argsize", arg: 3, scope: !3310, file: !145, line: 976, type: !43)
!3317 = !DILocation(line: 0, scope: !3310)
!3318 = !DILocation(line: 0, scope: !3257, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 978, column: 10, scope: !3310)
!3320 = !DILocation(line: 965, column: 3, scope: !3257, inlinedAt: !3319)
!3321 = !DILocation(line: 965, column: 32, scope: !3257, inlinedAt: !3319)
!3322 = !{!3323}
!3323 = distinct !{!3323, !3324, !"quoting_options_from_style: argument 0"}
!3324 = distinct !{!3324, !"quoting_options_from_style"}
!3325 = !DILocation(line: 965, column: 36, scope: !3257, inlinedAt: !3319)
!3326 = !DILocation(line: 0, scope: !3240, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 965, column: 36, scope: !3257, inlinedAt: !3319)
!3328 = !DILocation(line: 195, column: 26, scope: !3240, inlinedAt: !3327)
!3329 = !DILocation(line: 196, column: 13, scope: !3249, inlinedAt: !3327)
!3330 = !DILocation(line: 196, column: 7, scope: !3240, inlinedAt: !3327)
!3331 = !DILocation(line: 197, column: 5, scope: !3249, inlinedAt: !3327)
!3332 = !DILocation(line: 198, column: 5, scope: !3240, inlinedAt: !3327)
!3333 = !DILocation(line: 198, column: 11, scope: !3240, inlinedAt: !3327)
!3334 = !DILocation(line: 966, column: 10, scope: !3257, inlinedAt: !3319)
!3335 = !DILocation(line: 967, column: 1, scope: !3257, inlinedAt: !3319)
!3336 = !DILocation(line: 978, column: 3, scope: !3310)
!3337 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !145, file: !145, line: 982, type: !3338, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!31, !41, !43, !32}
!3340 = !{!3341, !3342, !3343, !3344}
!3341 = !DILocalVariable(name: "arg", arg: 1, scope: !3337, file: !145, line: 982, type: !41)
!3342 = !DILocalVariable(name: "argsize", arg: 2, scope: !3337, file: !145, line: 982, type: !43)
!3343 = !DILocalVariable(name: "ch", arg: 3, scope: !3337, file: !145, line: 982, type: !32)
!3344 = !DILocalVariable(name: "options", scope: !3337, file: !145, line: 984, type: !176)
!3345 = !DILocation(line: 0, scope: !3337)
!3346 = !DILocation(line: 984, column: 3, scope: !3337)
!3347 = !DILocation(line: 984, column: 26, scope: !3337)
!3348 = !DILocation(line: 985, column: 13, scope: !3337)
!3349 = !{i64 0, i64 4, !842, i64 4, i64 4, !945, i64 8, i64 32, !842, i64 40, i64 8, !697, i64 48, i64 8, !697}
!3350 = !DILocation(line: 0, scope: !2178, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 986, column: 3, scope: !3337)
!3352 = !DILocation(line: 156, column: 62, scope: !2178, inlinedAt: !3351)
!3353 = !DILocation(line: 156, column: 57, scope: !2178, inlinedAt: !3351)
!3354 = !DILocation(line: 157, column: 15, scope: !2178, inlinedAt: !3351)
!3355 = !DILocation(line: 158, column: 12, scope: !2178, inlinedAt: !3351)
!3356 = !DILocation(line: 158, column: 15, scope: !2178, inlinedAt: !3351)
!3357 = !DILocation(line: 158, column: 25, scope: !2178, inlinedAt: !3351)
!3358 = !DILocation(line: 159, column: 18, scope: !2178, inlinedAt: !3351)
!3359 = !DILocation(line: 159, column: 23, scope: !2178, inlinedAt: !3351)
!3360 = !DILocation(line: 159, column: 6, scope: !2178, inlinedAt: !3351)
!3361 = !DILocation(line: 987, column: 10, scope: !3337)
!3362 = !DILocation(line: 988, column: 1, scope: !3337)
!3363 = !DILocation(line: 987, column: 3, scope: !3337)
!3364 = distinct !DISubprogram(name: "quotearg_char", scope: !145, file: !145, line: 991, type: !3365, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!31, !41, !32}
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "arg", arg: 1, scope: !3364, file: !145, line: 991, type: !41)
!3369 = !DILocalVariable(name: "ch", arg: 2, scope: !3364, file: !145, line: 991, type: !32)
!3370 = !DILocation(line: 0, scope: !3364)
!3371 = !DILocation(line: 0, scope: !3337, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 993, column: 10, scope: !3364)
!3373 = !DILocation(line: 984, column: 3, scope: !3337, inlinedAt: !3372)
!3374 = !DILocation(line: 984, column: 26, scope: !3337, inlinedAt: !3372)
!3375 = !DILocation(line: 985, column: 13, scope: !3337, inlinedAt: !3372)
!3376 = !DILocation(line: 0, scope: !2178, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 986, column: 3, scope: !3337, inlinedAt: !3372)
!3378 = !DILocation(line: 156, column: 62, scope: !2178, inlinedAt: !3377)
!3379 = !DILocation(line: 156, column: 57, scope: !2178, inlinedAt: !3377)
!3380 = !DILocation(line: 157, column: 15, scope: !2178, inlinedAt: !3377)
!3381 = !DILocation(line: 158, column: 12, scope: !2178, inlinedAt: !3377)
!3382 = !DILocation(line: 158, column: 15, scope: !2178, inlinedAt: !3377)
!3383 = !DILocation(line: 158, column: 25, scope: !2178, inlinedAt: !3377)
!3384 = !DILocation(line: 159, column: 18, scope: !2178, inlinedAt: !3377)
!3385 = !DILocation(line: 159, column: 23, scope: !2178, inlinedAt: !3377)
!3386 = !DILocation(line: 159, column: 6, scope: !2178, inlinedAt: !3377)
!3387 = !DILocation(line: 987, column: 10, scope: !3337, inlinedAt: !3372)
!3388 = !DILocation(line: 988, column: 1, scope: !3337, inlinedAt: !3372)
!3389 = !DILocation(line: 993, column: 3, scope: !3364)
!3390 = distinct !DISubprogram(name: "quotearg_colon", scope: !145, file: !145, line: 997, type: !1851, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3391)
!3391 = !{!3392}
!3392 = !DILocalVariable(name: "arg", arg: 1, scope: !3390, file: !145, line: 997, type: !41)
!3393 = !DILocation(line: 0, scope: !3390)
!3394 = !DILocation(line: 0, scope: !3364, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 999, column: 10, scope: !3390)
!3396 = !DILocation(line: 0, scope: !3337, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 993, column: 10, scope: !3364, inlinedAt: !3395)
!3398 = !DILocation(line: 984, column: 3, scope: !3337, inlinedAt: !3397)
!3399 = !DILocation(line: 984, column: 26, scope: !3337, inlinedAt: !3397)
!3400 = !DILocation(line: 985, column: 13, scope: !3337, inlinedAt: !3397)
!3401 = !DILocation(line: 0, scope: !2178, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 986, column: 3, scope: !3337, inlinedAt: !3397)
!3403 = !DILocation(line: 156, column: 57, scope: !2178, inlinedAt: !3402)
!3404 = !DILocation(line: 158, column: 12, scope: !2178, inlinedAt: !3402)
!3405 = !DILocation(line: 159, column: 6, scope: !2178, inlinedAt: !3402)
!3406 = !DILocation(line: 987, column: 10, scope: !3337, inlinedAt: !3397)
!3407 = !DILocation(line: 988, column: 1, scope: !3337, inlinedAt: !3397)
!3408 = !DILocation(line: 999, column: 3, scope: !3390)
!3409 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !145, file: !145, line: 1003, type: !3214, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3410)
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "arg", arg: 1, scope: !3409, file: !145, line: 1003, type: !41)
!3412 = !DILocalVariable(name: "argsize", arg: 2, scope: !3409, file: !145, line: 1003, type: !43)
!3413 = !DILocation(line: 0, scope: !3409)
!3414 = !DILocation(line: 0, scope: !3337, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 1005, column: 10, scope: !3409)
!3416 = !DILocation(line: 984, column: 3, scope: !3337, inlinedAt: !3415)
!3417 = !DILocation(line: 984, column: 26, scope: !3337, inlinedAt: !3415)
!3418 = !DILocation(line: 985, column: 13, scope: !3337, inlinedAt: !3415)
!3419 = !DILocation(line: 0, scope: !2178, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 986, column: 3, scope: !3337, inlinedAt: !3415)
!3421 = !DILocation(line: 156, column: 57, scope: !2178, inlinedAt: !3420)
!3422 = !DILocation(line: 158, column: 12, scope: !2178, inlinedAt: !3420)
!3423 = !DILocation(line: 159, column: 6, scope: !2178, inlinedAt: !3420)
!3424 = !DILocation(line: 987, column: 10, scope: !3337, inlinedAt: !3415)
!3425 = !DILocation(line: 988, column: 1, scope: !3337, inlinedAt: !3415)
!3426 = !DILocation(line: 1005, column: 3, scope: !3409)
!3427 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !145, file: !145, line: 1009, type: !3225, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3428)
!3428 = !{!3429, !3430, !3431, !3432}
!3429 = !DILocalVariable(name: "n", arg: 1, scope: !3427, file: !145, line: 1009, type: !53)
!3430 = !DILocalVariable(name: "s", arg: 2, scope: !3427, file: !145, line: 1009, type: !11)
!3431 = !DILocalVariable(name: "arg", arg: 3, scope: !3427, file: !145, line: 1009, type: !41)
!3432 = !DILocalVariable(name: "options", scope: !3427, file: !145, line: 1011, type: !176)
!3433 = !DILocation(line: 195, column: 26, scope: !3240, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 1012, column: 13, scope: !3427)
!3435 = !DILocation(line: 0, scope: !3427)
!3436 = !DILocation(line: 1011, column: 3, scope: !3427)
!3437 = !DILocation(line: 1011, column: 26, scope: !3427)
!3438 = !DILocation(line: 1012, column: 13, scope: !3427)
!3439 = !{!3440}
!3440 = distinct !{!3440, !3441, !"quoting_options_from_style: argument 0"}
!3441 = distinct !{!3441, !"quoting_options_from_style"}
!3442 = !DILocation(line: 0, scope: !3240, inlinedAt: !3434)
!3443 = !DILocation(line: 196, column: 13, scope: !3249, inlinedAt: !3434)
!3444 = !DILocation(line: 196, column: 7, scope: !3240, inlinedAt: !3434)
!3445 = !DILocation(line: 197, column: 5, scope: !3249, inlinedAt: !3434)
!3446 = !{i64 0, i64 4, !945, i64 4, i64 32, !842, i64 36, i64 8, !697, i64 44, i64 8, !697}
!3447 = !DILocation(line: 0, scope: !2178, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 1013, column: 3, scope: !3427)
!3449 = !DILocation(line: 156, column: 57, scope: !2178, inlinedAt: !3448)
!3450 = !DILocation(line: 158, column: 12, scope: !2178, inlinedAt: !3448)
!3451 = !DILocation(line: 159, column: 6, scope: !2178, inlinedAt: !3448)
!3452 = !DILocation(line: 1014, column: 10, scope: !3427)
!3453 = !DILocation(line: 1015, column: 1, scope: !3427)
!3454 = !DILocation(line: 1014, column: 3, scope: !3427)
!3455 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !145, file: !145, line: 1018, type: !3456, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!31, !53, !41, !41, !41}
!3458 = !{!3459, !3460, !3461, !3462}
!3459 = !DILocalVariable(name: "n", arg: 1, scope: !3455, file: !145, line: 1018, type: !53)
!3460 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3455, file: !145, line: 1018, type: !41)
!3461 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3455, file: !145, line: 1019, type: !41)
!3462 = !DILocalVariable(name: "arg", arg: 4, scope: !3455, file: !145, line: 1019, type: !41)
!3463 = !DILocation(line: 0, scope: !3455)
!3464 = !DILocalVariable(name: "n", arg: 1, scope: !3465, file: !145, line: 1026, type: !53)
!3465 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !145, file: !145, line: 1026, type: !3466, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!31, !53, !41, !41, !41, !43}
!3468 = !{!3464, !3469, !3470, !3471, !3472, !3473}
!3469 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3465, file: !145, line: 1026, type: !41)
!3470 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3465, file: !145, line: 1027, type: !41)
!3471 = !DILocalVariable(name: "arg", arg: 4, scope: !3465, file: !145, line: 1028, type: !41)
!3472 = !DILocalVariable(name: "argsize", arg: 5, scope: !3465, file: !145, line: 1028, type: !43)
!3473 = !DILocalVariable(name: "o", scope: !3465, file: !145, line: 1030, type: !176)
!3474 = !DILocation(line: 0, scope: !3465, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 1021, column: 10, scope: !3455)
!3476 = !DILocation(line: 1030, column: 3, scope: !3465, inlinedAt: !3475)
!3477 = !DILocation(line: 1030, column: 26, scope: !3465, inlinedAt: !3475)
!3478 = !DILocation(line: 1030, column: 30, scope: !3465, inlinedAt: !3475)
!3479 = !DILocation(line: 0, scope: !2218, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 1031, column: 3, scope: !3465, inlinedAt: !3475)
!3481 = !DILocation(line: 184, column: 6, scope: !2218, inlinedAt: !3480)
!3482 = !DILocation(line: 184, column: 12, scope: !2218, inlinedAt: !3480)
!3483 = !DILocation(line: 185, column: 8, scope: !2232, inlinedAt: !3480)
!3484 = !DILocation(line: 185, column: 19, scope: !2232, inlinedAt: !3480)
!3485 = !DILocation(line: 186, column: 5, scope: !2232, inlinedAt: !3480)
!3486 = !DILocation(line: 187, column: 6, scope: !2218, inlinedAt: !3480)
!3487 = !DILocation(line: 187, column: 17, scope: !2218, inlinedAt: !3480)
!3488 = !DILocation(line: 188, column: 6, scope: !2218, inlinedAt: !3480)
!3489 = !DILocation(line: 188, column: 18, scope: !2218, inlinedAt: !3480)
!3490 = !DILocation(line: 1032, column: 10, scope: !3465, inlinedAt: !3475)
!3491 = !DILocation(line: 1033, column: 1, scope: !3465, inlinedAt: !3475)
!3492 = !DILocation(line: 1021, column: 3, scope: !3455)
!3493 = !DILocation(line: 0, scope: !3465)
!3494 = !DILocation(line: 1030, column: 3, scope: !3465)
!3495 = !DILocation(line: 1030, column: 26, scope: !3465)
!3496 = !DILocation(line: 1030, column: 30, scope: !3465)
!3497 = !DILocation(line: 0, scope: !2218, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 1031, column: 3, scope: !3465)
!3499 = !DILocation(line: 184, column: 6, scope: !2218, inlinedAt: !3498)
!3500 = !DILocation(line: 184, column: 12, scope: !2218, inlinedAt: !3498)
!3501 = !DILocation(line: 185, column: 8, scope: !2232, inlinedAt: !3498)
!3502 = !DILocation(line: 185, column: 19, scope: !2232, inlinedAt: !3498)
!3503 = !DILocation(line: 186, column: 5, scope: !2232, inlinedAt: !3498)
!3504 = !DILocation(line: 187, column: 6, scope: !2218, inlinedAt: !3498)
!3505 = !DILocation(line: 187, column: 17, scope: !2218, inlinedAt: !3498)
!3506 = !DILocation(line: 188, column: 6, scope: !2218, inlinedAt: !3498)
!3507 = !DILocation(line: 188, column: 18, scope: !2218, inlinedAt: !3498)
!3508 = !DILocation(line: 1032, column: 10, scope: !3465)
!3509 = !DILocation(line: 1033, column: 1, scope: !3465)
!3510 = !DILocation(line: 1032, column: 3, scope: !3465)
!3511 = distinct !DISubprogram(name: "quotearg_custom", scope: !145, file: !145, line: 1036, type: !3512, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!31, !41, !41, !41}
!3514 = !{!3515, !3516, !3517}
!3515 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3511, file: !145, line: 1036, type: !41)
!3516 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3511, file: !145, line: 1036, type: !41)
!3517 = !DILocalVariable(name: "arg", arg: 3, scope: !3511, file: !145, line: 1037, type: !41)
!3518 = !DILocation(line: 0, scope: !3511)
!3519 = !DILocation(line: 0, scope: !3455, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 1039, column: 10, scope: !3511)
!3521 = !DILocation(line: 0, scope: !3465, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 1021, column: 10, scope: !3455, inlinedAt: !3520)
!3523 = !DILocation(line: 1030, column: 3, scope: !3465, inlinedAt: !3522)
!3524 = !DILocation(line: 1030, column: 26, scope: !3465, inlinedAt: !3522)
!3525 = !DILocation(line: 1030, column: 30, scope: !3465, inlinedAt: !3522)
!3526 = !DILocation(line: 0, scope: !2218, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 1031, column: 3, scope: !3465, inlinedAt: !3522)
!3528 = !DILocation(line: 184, column: 6, scope: !2218, inlinedAt: !3527)
!3529 = !DILocation(line: 184, column: 12, scope: !2218, inlinedAt: !3527)
!3530 = !DILocation(line: 185, column: 8, scope: !2232, inlinedAt: !3527)
!3531 = !DILocation(line: 185, column: 19, scope: !2232, inlinedAt: !3527)
!3532 = !DILocation(line: 186, column: 5, scope: !2232, inlinedAt: !3527)
!3533 = !DILocation(line: 187, column: 6, scope: !2218, inlinedAt: !3527)
!3534 = !DILocation(line: 187, column: 17, scope: !2218, inlinedAt: !3527)
!3535 = !DILocation(line: 188, column: 6, scope: !2218, inlinedAt: !3527)
!3536 = !DILocation(line: 188, column: 18, scope: !2218, inlinedAt: !3527)
!3537 = !DILocation(line: 1032, column: 10, scope: !3465, inlinedAt: !3522)
!3538 = !DILocation(line: 1033, column: 1, scope: !3465, inlinedAt: !3522)
!3539 = !DILocation(line: 1039, column: 3, scope: !3511)
!3540 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !145, file: !145, line: 1043, type: !3541, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!31, !41, !41, !41, !43}
!3543 = !{!3544, !3545, !3546, !3547}
!3544 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3540, file: !145, line: 1043, type: !41)
!3545 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3540, file: !145, line: 1043, type: !41)
!3546 = !DILocalVariable(name: "arg", arg: 3, scope: !3540, file: !145, line: 1044, type: !41)
!3547 = !DILocalVariable(name: "argsize", arg: 4, scope: !3540, file: !145, line: 1044, type: !43)
!3548 = !DILocation(line: 0, scope: !3540)
!3549 = !DILocation(line: 0, scope: !3465, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 1046, column: 10, scope: !3540)
!3551 = !DILocation(line: 1030, column: 3, scope: !3465, inlinedAt: !3550)
!3552 = !DILocation(line: 1030, column: 26, scope: !3465, inlinedAt: !3550)
!3553 = !DILocation(line: 1030, column: 30, scope: !3465, inlinedAt: !3550)
!3554 = !DILocation(line: 0, scope: !2218, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 1031, column: 3, scope: !3465, inlinedAt: !3550)
!3556 = !DILocation(line: 184, column: 6, scope: !2218, inlinedAt: !3555)
!3557 = !DILocation(line: 184, column: 12, scope: !2218, inlinedAt: !3555)
!3558 = !DILocation(line: 185, column: 8, scope: !2232, inlinedAt: !3555)
!3559 = !DILocation(line: 185, column: 19, scope: !2232, inlinedAt: !3555)
!3560 = !DILocation(line: 186, column: 5, scope: !2232, inlinedAt: !3555)
!3561 = !DILocation(line: 187, column: 6, scope: !2218, inlinedAt: !3555)
!3562 = !DILocation(line: 187, column: 17, scope: !2218, inlinedAt: !3555)
!3563 = !DILocation(line: 188, column: 6, scope: !2218, inlinedAt: !3555)
!3564 = !DILocation(line: 188, column: 18, scope: !2218, inlinedAt: !3555)
!3565 = !DILocation(line: 1032, column: 10, scope: !3465, inlinedAt: !3550)
!3566 = !DILocation(line: 1033, column: 1, scope: !3465, inlinedAt: !3550)
!3567 = !DILocation(line: 1046, column: 3, scope: !3540)
!3568 = distinct !DISubprogram(name: "quote_n_mem", scope: !145, file: !145, line: 1061, type: !3569, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3571)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!41, !53, !41, !43}
!3571 = !{!3572, !3573, !3574}
!3572 = !DILocalVariable(name: "n", arg: 1, scope: !3568, file: !145, line: 1061, type: !53)
!3573 = !DILocalVariable(name: "arg", arg: 2, scope: !3568, file: !145, line: 1061, type: !41)
!3574 = !DILocalVariable(name: "argsize", arg: 3, scope: !3568, file: !145, line: 1061, type: !43)
!3575 = !DILocation(line: 0, scope: !3568)
!3576 = !DILocation(line: 1063, column: 10, scope: !3568)
!3577 = !DILocation(line: 1063, column: 3, scope: !3568)
!3578 = distinct !DISubprogram(name: "quote_mem", scope: !145, file: !145, line: 1067, type: !3579, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!41, !41, !43}
!3581 = !{!3582, !3583}
!3582 = !DILocalVariable(name: "arg", arg: 1, scope: !3578, file: !145, line: 1067, type: !41)
!3583 = !DILocalVariable(name: "argsize", arg: 2, scope: !3578, file: !145, line: 1067, type: !43)
!3584 = !DILocation(line: 0, scope: !3578)
!3585 = !DILocation(line: 0, scope: !3568, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 1069, column: 10, scope: !3578)
!3587 = !DILocation(line: 1063, column: 10, scope: !3568, inlinedAt: !3586)
!3588 = !DILocation(line: 1069, column: 3, scope: !3578)
!3589 = distinct !DISubprogram(name: "quote_n", scope: !145, file: !145, line: 1073, type: !3590, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!41, !53, !41}
!3592 = !{!3593, !3594}
!3593 = !DILocalVariable(name: "n", arg: 1, scope: !3589, file: !145, line: 1073, type: !53)
!3594 = !DILocalVariable(name: "arg", arg: 2, scope: !3589, file: !145, line: 1073, type: !41)
!3595 = !DILocation(line: 0, scope: !3589)
!3596 = !DILocation(line: 0, scope: !3568, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 1075, column: 10, scope: !3589)
!3598 = !DILocation(line: 1063, column: 10, scope: !3568, inlinedAt: !3597)
!3599 = !DILocation(line: 1075, column: 3, scope: !3589)
!3600 = distinct !DISubprogram(name: "quote", scope: !145, file: !145, line: 1079, type: !3601, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!41, !41}
!3603 = !{!3604}
!3604 = !DILocalVariable(name: "arg", arg: 1, scope: !3600, file: !145, line: 1079, type: !41)
!3605 = !DILocation(line: 0, scope: !3600)
!3606 = !DILocation(line: 0, scope: !3589, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 1081, column: 10, scope: !3600)
!3608 = !DILocation(line: 0, scope: !3568, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 1075, column: 10, scope: !3589, inlinedAt: !3607)
!3610 = !DILocation(line: 1063, column: 10, scope: !3568, inlinedAt: !3609)
!3611 = !DILocation(line: 1081, column: 3, scope: !3600)
!3612 = distinct !DISubprogram(name: "safe_read", scope: !227, file: !227, line: 56, type: !2015, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !3613)
!3613 = !{!3614, !3615, !3616, !3617}
!3614 = !DILocalVariable(name: "fd", arg: 1, scope: !3612, file: !227, line: 56, type: !53)
!3615 = !DILocalVariable(name: "buf", arg: 2, scope: !3612, file: !227, line: 56, type: !33)
!3616 = !DILocalVariable(name: "count", arg: 3, scope: !3612, file: !227, line: 56, type: !43)
!3617 = !DILocalVariable(name: "result", scope: !3618, file: !227, line: 60, type: !3621)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !227, line: 59, column: 5)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !227, line: 58, column: 3)
!3620 = distinct !DILexicalBlock(scope: !3612, file: !227, line: 58, column: 3)
!3621 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !222, line: 108, baseType: !3622)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !37, line: 194, baseType: !38)
!3623 = !DILocation(line: 0, scope: !3612)
!3624 = !DILocation(line: 60, column: 24, scope: !3618)
!3625 = !DILocation(line: 0, scope: !3618)
!3626 = !DILocation(line: 62, column: 13, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3618, file: !227, line: 62, column: 11)
!3628 = !DILocation(line: 62, column: 11, scope: !3618)
!3629 = !DILocation(line: 64, column: 16, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3627, file: !227, line: 64, column: 16)
!3631 = !DILocation(line: 64, column: 16, scope: !3627)
!3632 = distinct !{!3632, !3633, !3634}
!3633 = !DILocation(line: 58, column: 3, scope: !3620)
!3634 = !DILocation(line: 70, column: 5, scope: !3620)
!3635 = !DILocation(line: 66, column: 22, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3630, file: !227, line: 66, column: 16)
!3637 = !DILocation(line: 66, column: 32, scope: !3636)
!3638 = !DILocation(line: 71, column: 1, scope: !3612)
!3639 = distinct !DISubprogram(name: "version_etc_arn", scope: !234, file: !234, line: 61, type: !3640, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !3676)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3642, !41, !41, !41, !39, !43}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1913, line: 7, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !778, line: 49, size: 1728, elements: !3645)
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3644, file: !778, line: 51, baseType: !53, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3644, file: !778, line: 54, baseType: !31, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3644, file: !778, line: 55, baseType: !31, size: 64, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3644, file: !778, line: 56, baseType: !31, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3644, file: !778, line: 57, baseType: !31, size: 64, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3644, file: !778, line: 58, baseType: !31, size: 64, offset: 320)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3644, file: !778, line: 59, baseType: !31, size: 64, offset: 384)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3644, file: !778, line: 60, baseType: !31, size: 64, offset: 448)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3644, file: !778, line: 61, baseType: !31, size: 64, offset: 512)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3644, file: !778, line: 64, baseType: !31, size: 64, offset: 576)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3644, file: !778, line: 65, baseType: !31, size: 64, offset: 640)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3644, file: !778, line: 66, baseType: !31, size: 64, offset: 704)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3644, file: !778, line: 68, baseType: !793, size: 64, offset: 768)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3644, file: !778, line: 70, baseType: !3660, size: 64, offset: 832)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3644, file: !778, line: 72, baseType: !53, size: 32, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3644, file: !778, line: 73, baseType: !53, size: 32, offset: 928)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3644, file: !778, line: 74, baseType: !36, size: 64, offset: 960)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3644, file: !778, line: 77, baseType: !168, size: 16, offset: 1024)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3644, file: !778, line: 78, baseType: !801, size: 8, offset: 1040)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3644, file: !778, line: 79, baseType: !803, size: 8, offset: 1048)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3644, file: !778, line: 81, baseType: !807, size: 64, offset: 1088)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3644, file: !778, line: 89, baseType: !810, size: 64, offset: 1152)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3644, file: !778, line: 91, baseType: !812, size: 64, offset: 1216)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3644, file: !778, line: 92, baseType: !815, size: 64, offset: 1280)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3644, file: !778, line: 93, baseType: !3660, size: 64, offset: 1344)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3644, file: !778, line: 94, baseType: !33, size: 64, offset: 1408)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3644, file: !778, line: 95, baseType: !43, size: 64, offset: 1472)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3644, file: !778, line: 96, baseType: !53, size: 32, offset: 1536)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3644, file: !778, line: 98, baseType: !822, size: 160, offset: 1568)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682}
!3677 = !DILocalVariable(name: "stream", arg: 1, scope: !3639, file: !234, line: 61, type: !3642)
!3678 = !DILocalVariable(name: "command_name", arg: 2, scope: !3639, file: !234, line: 62, type: !41)
!3679 = !DILocalVariable(name: "package", arg: 3, scope: !3639, file: !234, line: 62, type: !41)
!3680 = !DILocalVariable(name: "version", arg: 4, scope: !3639, file: !234, line: 63, type: !41)
!3681 = !DILocalVariable(name: "authors", arg: 5, scope: !3639, file: !234, line: 64, type: !39)
!3682 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3639, file: !234, line: 64, type: !43)
!3683 = !DILocation(line: 0, scope: !3639)
!3684 = !DILocation(line: 66, column: 7, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3639, file: !234, line: 66, column: 7)
!3686 = !DILocation(line: 66, column: 7, scope: !3639)
!3687 = !DILocation(line: 67, column: 5, scope: !3685)
!3688 = !DILocation(line: 69, column: 5, scope: !3685)
!3689 = !DILocation(line: 83, column: 3, scope: !3639)
!3690 = !DILocation(line: 85, column: 3, scope: !3639)
!3691 = !DILocation(line: 88, column: 3, scope: !3639)
!3692 = !DILocation(line: 95, column: 3, scope: !3639)
!3693 = !DILocation(line: 97, column: 3, scope: !3639)
!3694 = !DILocation(line: 105, column: 7, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3639, file: !234, line: 98, column: 5)
!3696 = !DILocation(line: 106, column: 7, scope: !3695)
!3697 = !DILocation(line: 109, column: 7, scope: !3695)
!3698 = !DILocation(line: 110, column: 7, scope: !3695)
!3699 = !DILocation(line: 113, column: 7, scope: !3695)
!3700 = !DILocation(line: 115, column: 7, scope: !3695)
!3701 = !DILocation(line: 120, column: 7, scope: !3695)
!3702 = !DILocation(line: 122, column: 7, scope: !3695)
!3703 = !DILocation(line: 127, column: 7, scope: !3695)
!3704 = !DILocation(line: 129, column: 7, scope: !3695)
!3705 = !DILocation(line: 134, column: 7, scope: !3695)
!3706 = !DILocation(line: 137, column: 7, scope: !3695)
!3707 = !DILocation(line: 142, column: 7, scope: !3695)
!3708 = !DILocation(line: 145, column: 7, scope: !3695)
!3709 = !DILocation(line: 150, column: 7, scope: !3695)
!3710 = !DILocation(line: 154, column: 7, scope: !3695)
!3711 = !DILocation(line: 159, column: 7, scope: !3695)
!3712 = !DILocation(line: 163, column: 7, scope: !3695)
!3713 = !DILocation(line: 170, column: 7, scope: !3695)
!3714 = !DILocation(line: 174, column: 7, scope: !3695)
!3715 = !DILocation(line: 176, column: 1, scope: !3639)
!3716 = distinct !DISubprogram(name: "version_etc_ar", scope: !234, file: !234, line: 183, type: !3717, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !3642, !41, !41, !41, !39}
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725}
!3720 = !DILocalVariable(name: "stream", arg: 1, scope: !3716, file: !234, line: 183, type: !3642)
!3721 = !DILocalVariable(name: "command_name", arg: 2, scope: !3716, file: !234, line: 184, type: !41)
!3722 = !DILocalVariable(name: "package", arg: 3, scope: !3716, file: !234, line: 184, type: !41)
!3723 = !DILocalVariable(name: "version", arg: 4, scope: !3716, file: !234, line: 185, type: !41)
!3724 = !DILocalVariable(name: "authors", arg: 5, scope: !3716, file: !234, line: 185, type: !39)
!3725 = !DILocalVariable(name: "n_authors", scope: !3716, file: !234, line: 187, type: !43)
!3726 = !DILocation(line: 0, scope: !3716)
!3727 = !DILocation(line: 189, column: 8, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3716, file: !234, line: 189, column: 3)
!3729 = !DILocation(line: 0, scope: !3728)
!3730 = !DILocation(line: 189, column: 23, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !234, line: 189, column: 3)
!3732 = !DILocation(line: 189, column: 3, scope: !3728)
!3733 = !DILocation(line: 189, column: 52, scope: !3731)
!3734 = distinct !{!3734, !3732, !3735, !749}
!3735 = !DILocation(line: 190, column: 5, scope: !3728)
!3736 = !DILocation(line: 191, column: 3, scope: !3716)
!3737 = !DILocation(line: 192, column: 1, scope: !3716)
!3738 = distinct !DISubprogram(name: "version_etc_va", scope: !234, file: !234, line: 199, type: !3739, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !3748)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{null, !3642, !41, !41, !41, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3743)
!3743 = !{!3744, !3745, !3746, !3747}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3742, file: !234, line: 192, baseType: !6, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3742, file: !234, line: 192, baseType: !6, size: 32, offset: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3742, file: !234, line: 192, baseType: !33, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3742, file: !234, line: 192, baseType: !33, size: 64, offset: 128)
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755}
!3749 = !DILocalVariable(name: "stream", arg: 1, scope: !3738, file: !234, line: 199, type: !3642)
!3750 = !DILocalVariable(name: "command_name", arg: 2, scope: !3738, file: !234, line: 200, type: !41)
!3751 = !DILocalVariable(name: "package", arg: 3, scope: !3738, file: !234, line: 200, type: !41)
!3752 = !DILocalVariable(name: "version", arg: 4, scope: !3738, file: !234, line: 201, type: !41)
!3753 = !DILocalVariable(name: "authors", arg: 5, scope: !3738, file: !234, line: 201, type: !3741)
!3754 = !DILocalVariable(name: "n_authors", scope: !3738, file: !234, line: 203, type: !43)
!3755 = !DILocalVariable(name: "authtab", scope: !3738, file: !234, line: 204, type: !3756)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !104)
!3757 = !DILocation(line: 0, scope: !3738)
!3758 = !DILocation(line: 204, column: 3, scope: !3738)
!3759 = !DILocation(line: 204, column: 15, scope: !3738)
!3760 = !DILocation(line: 208, column: 35, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !234, line: 206, column: 3)
!3762 = distinct !DILexicalBlock(scope: !3738, file: !234, line: 206, column: 3)
!3763 = !DILocation(line: 208, column: 14, scope: !3761)
!3764 = !DILocation(line: 208, column: 33, scope: !3761)
!3765 = !DILocation(line: 208, column: 67, scope: !3761)
!3766 = !DILocation(line: 206, column: 3, scope: !3762)
!3767 = !DILocation(line: 0, scope: !3762)
!3768 = !DILocation(line: 211, column: 3, scope: !3738)
!3769 = !DILocation(line: 213, column: 1, scope: !3738)
!3770 = distinct !DISubprogram(name: "version_etc", scope: !234, file: !234, line: 230, type: !3771, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3642, !41, !41, !41, null}
!3773 = !{!3774, !3775, !3776, !3777, !3778}
!3774 = !DILocalVariable(name: "stream", arg: 1, scope: !3770, file: !234, line: 230, type: !3642)
!3775 = !DILocalVariable(name: "command_name", arg: 2, scope: !3770, file: !234, line: 231, type: !41)
!3776 = !DILocalVariable(name: "package", arg: 3, scope: !3770, file: !234, line: 231, type: !41)
!3777 = !DILocalVariable(name: "version", arg: 4, scope: !3770, file: !234, line: 232, type: !41)
!3778 = !DILocalVariable(name: "authors", scope: !3770, file: !234, line: 234, type: !3779)
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !35, line: 52, baseType: !3780)
!3780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3781, line: 32, baseType: !3782)
!3781 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !234, baseType: !3783)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3742, size: 192, elements: !804)
!3784 = !DILocation(line: 0, scope: !3770)
!3785 = !DILocation(line: 234, column: 3, scope: !3770)
!3786 = !DILocation(line: 234, column: 11, scope: !3770)
!3787 = !DILocation(line: 236, column: 3, scope: !3770)
!3788 = !DILocation(line: 237, column: 3, scope: !3770)
!3789 = !DILocation(line: 238, column: 3, scope: !3770)
!3790 = !DILocation(line: 239, column: 1, scope: !3770)
!3791 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !234, file: !234, line: 242, type: !707, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !121)
!3792 = !DILocation(line: 244, column: 3, scope: !3791)
!3793 = !DILocation(line: 249, column: 3, scope: !3791)
!3794 = !DILocation(line: 255, column: 3, scope: !3791)
!3795 = !DILocation(line: 260, column: 3, scope: !3791)
!3796 = !DILocation(line: 262, column: 1, scope: !3791)
!3797 = distinct !DISubprogram(name: "xnmalloc", scope: !244, file: !244, line: 99, type: !1551, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3798)
!3798 = !{!3799, !3800}
!3799 = !DILocalVariable(name: "n", arg: 1, scope: !3797, file: !244, line: 99, type: !43)
!3800 = !DILocalVariable(name: "s", arg: 2, scope: !3797, file: !244, line: 99, type: !43)
!3801 = !DILocation(line: 0, scope: !3797)
!3802 = !DILocation(line: 101, column: 7, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3797, file: !244, line: 101, column: 7)
!3804 = !DILocation(line: 101, column: 7, scope: !3797)
!3805 = !DILocation(line: 102, column: 5, scope: !3803)
!3806 = !DILocation(line: 103, column: 21, scope: !3797)
!3807 = !DILocalVariable(name: "n", arg: 1, scope: !3808, file: !241, line: 39, type: !43)
!3808 = distinct !DISubprogram(name: "xmalloc", scope: !241, file: !241, line: 39, type: !3809, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!33, !43}
!3811 = !{!3807, !3812}
!3812 = !DILocalVariable(name: "p", scope: !3808, file: !241, line: 41, type: !33)
!3813 = !DILocation(line: 0, scope: !3808, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 103, column: 10, scope: !3797)
!3815 = !DILocation(line: 41, column: 13, scope: !3808, inlinedAt: !3814)
!3816 = !DILocation(line: 42, column: 8, scope: !3817, inlinedAt: !3814)
!3817 = distinct !DILexicalBlock(scope: !3808, file: !241, line: 42, column: 7)
!3818 = !DILocation(line: 42, column: 10, scope: !3817, inlinedAt: !3814)
!3819 = !DILocation(line: 43, column: 5, scope: !3817, inlinedAt: !3814)
!3820 = !DILocation(line: 103, column: 3, scope: !3797)
!3821 = !DILocation(line: 0, scope: !3808)
!3822 = !DILocation(line: 41, column: 13, scope: !3808)
!3823 = !DILocation(line: 42, column: 8, scope: !3817)
!3824 = !DILocation(line: 42, column: 10, scope: !3817)
!3825 = !DILocation(line: 43, column: 5, scope: !3817)
!3826 = !DILocation(line: 44, column: 3, scope: !3808)
!3827 = distinct !DISubprogram(name: "xnrealloc", scope: !244, file: !244, line: 112, type: !1626, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3828)
!3828 = !{!3829, !3830, !3831}
!3829 = !DILocalVariable(name: "p", arg: 1, scope: !3827, file: !244, line: 112, type: !33)
!3830 = !DILocalVariable(name: "n", arg: 2, scope: !3827, file: !244, line: 112, type: !43)
!3831 = !DILocalVariable(name: "s", arg: 3, scope: !3827, file: !244, line: 112, type: !43)
!3832 = !DILocation(line: 0, scope: !3827)
!3833 = !DILocation(line: 114, column: 7, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3827, file: !244, line: 114, column: 7)
!3835 = !DILocation(line: 114, column: 7, scope: !3827)
!3836 = !DILocation(line: 115, column: 5, scope: !3834)
!3837 = !DILocation(line: 116, column: 25, scope: !3827)
!3838 = !DILocalVariable(name: "p", arg: 1, scope: !3839, file: !241, line: 51, type: !33)
!3839 = distinct !DISubprogram(name: "xrealloc", scope: !241, file: !241, line: 51, type: !3840, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!33, !33, !43}
!3842 = !{!3838, !3843}
!3843 = !DILocalVariable(name: "n", arg: 2, scope: !3839, file: !241, line: 51, type: !43)
!3844 = !DILocation(line: 0, scope: !3839, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 116, column: 10, scope: !3827)
!3846 = !DILocation(line: 53, column: 8, scope: !3847, inlinedAt: !3845)
!3847 = distinct !DILexicalBlock(scope: !3839, file: !241, line: 53, column: 7)
!3848 = !DILocation(line: 53, column: 10, scope: !3847, inlinedAt: !3845)
!3849 = !DILocation(line: 57, column: 7, scope: !3850, inlinedAt: !3845)
!3850 = distinct !DILexicalBlock(scope: !3847, file: !241, line: 54, column: 5)
!3851 = !DILocation(line: 58, column: 7, scope: !3850, inlinedAt: !3845)
!3852 = !DILocation(line: 61, column: 7, scope: !3839, inlinedAt: !3845)
!3853 = !DILocation(line: 62, column: 8, scope: !3854, inlinedAt: !3845)
!3854 = distinct !DILexicalBlock(scope: !3839, file: !241, line: 62, column: 7)
!3855 = !DILocation(line: 62, column: 10, scope: !3854, inlinedAt: !3845)
!3856 = !DILocation(line: 63, column: 5, scope: !3854, inlinedAt: !3845)
!3857 = !DILocation(line: 116, column: 3, scope: !3827)
!3858 = !DILocation(line: 0, scope: !3839)
!3859 = !DILocation(line: 53, column: 8, scope: !3847)
!3860 = !DILocation(line: 53, column: 10, scope: !3847)
!3861 = !DILocation(line: 57, column: 7, scope: !3850)
!3862 = !DILocation(line: 58, column: 7, scope: !3850)
!3863 = !DILocation(line: 61, column: 7, scope: !3839)
!3864 = !DILocation(line: 62, column: 8, scope: !3854)
!3865 = !DILocation(line: 62, column: 10, scope: !3854)
!3866 = !DILocation(line: 63, column: 5, scope: !3854)
!3867 = !DILocation(line: 65, column: 1, scope: !3839)
!3868 = !DILocation(line: 0, scope: !245)
!3869 = !DILocation(line: 176, column: 14, scope: !245)
!3870 = !DILocation(line: 178, column: 9, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !245, file: !244, line: 178, column: 7)
!3872 = !DILocation(line: 178, column: 7, scope: !245)
!3873 = !DILocation(line: 180, column: 13, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !244, line: 180, column: 11)
!3875 = distinct !DILexicalBlock(scope: !3871, file: !244, line: 179, column: 5)
!3876 = !DILocation(line: 180, column: 11, scope: !3875)
!3877 = !DILocation(line: 188, column: 30, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3874, file: !244, line: 181, column: 9)
!3879 = !DILocation(line: 189, column: 16, scope: !3878)
!3880 = !DILocation(line: 189, column: 13, scope: !3878)
!3881 = !DILocation(line: 190, column: 9, scope: !3878)
!3882 = !DILocation(line: 191, column: 11, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3875, file: !244, line: 191, column: 11)
!3884 = !DILocation(line: 191, column: 11, scope: !3875)
!3885 = !DILocation(line: 206, column: 7, scope: !245)
!3886 = !DILocation(line: 207, column: 25, scope: !245)
!3887 = !DILocation(line: 0, scope: !3839, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 207, column: 10, scope: !245)
!3889 = !DILocation(line: 53, column: 10, scope: !3847, inlinedAt: !3888)
!3890 = !DILocation(line: 192, column: 9, scope: !3883)
!3891 = !DILocation(line: 200, column: 69, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !244, line: 200, column: 11)
!3893 = distinct !DILexicalBlock(scope: !3871, file: !244, line: 195, column: 5)
!3894 = !DILocation(line: 201, column: 11, scope: !3892)
!3895 = !DILocation(line: 200, column: 11, scope: !3893)
!3896 = !DILocation(line: 202, column: 9, scope: !3892)
!3897 = !DILocation(line: 203, column: 14, scope: !3893)
!3898 = !DILocation(line: 203, column: 18, scope: !3893)
!3899 = !DILocation(line: 203, column: 9, scope: !3893)
!3900 = !DILocation(line: 53, column: 8, scope: !3847, inlinedAt: !3888)
!3901 = !DILocation(line: 57, column: 7, scope: !3850, inlinedAt: !3888)
!3902 = !DILocation(line: 58, column: 7, scope: !3850, inlinedAt: !3888)
!3903 = !DILocation(line: 61, column: 7, scope: !3839, inlinedAt: !3888)
!3904 = !DILocation(line: 62, column: 8, scope: !3854, inlinedAt: !3888)
!3905 = !DILocation(line: 62, column: 10, scope: !3854, inlinedAt: !3888)
!3906 = !DILocation(line: 63, column: 5, scope: !3854, inlinedAt: !3888)
!3907 = !DILocation(line: 207, column: 3, scope: !245)
!3908 = distinct !DISubprogram(name: "xcharalloc", scope: !244, file: !244, line: 216, type: !3026, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3909)
!3909 = !{!3910}
!3910 = !DILocalVariable(name: "n", arg: 1, scope: !3908, file: !244, line: 216, type: !43)
!3911 = !DILocation(line: 0, scope: !3908)
!3912 = !DILocation(line: 0, scope: !3808, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 218, column: 10, scope: !3908)
!3914 = !DILocation(line: 41, column: 13, scope: !3808, inlinedAt: !3913)
!3915 = !DILocation(line: 42, column: 8, scope: !3817, inlinedAt: !3913)
!3916 = !DILocation(line: 42, column: 10, scope: !3817, inlinedAt: !3913)
!3917 = !DILocation(line: 43, column: 5, scope: !3817, inlinedAt: !3913)
!3918 = !DILocation(line: 218, column: 3, scope: !3908)
!3919 = distinct !DISubprogram(name: "x2realloc", scope: !241, file: !241, line: 74, type: !3920, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!33, !33, !248}
!3922 = !{!3923, !3924}
!3923 = !DILocalVariable(name: "p", arg: 1, scope: !3919, file: !241, line: 74, type: !33)
!3924 = !DILocalVariable(name: "pn", arg: 2, scope: !3919, file: !241, line: 74, type: !248)
!3925 = !DILocation(line: 0, scope: !3919)
!3926 = !DILocation(line: 0, scope: !245, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 76, column: 10, scope: !3919)
!3928 = !DILocation(line: 176, column: 14, scope: !245, inlinedAt: !3927)
!3929 = !DILocation(line: 178, column: 9, scope: !3871, inlinedAt: !3927)
!3930 = !DILocation(line: 178, column: 7, scope: !245, inlinedAt: !3927)
!3931 = !DILocation(line: 180, column: 13, scope: !3874, inlinedAt: !3927)
!3932 = !DILocation(line: 180, column: 11, scope: !3875, inlinedAt: !3927)
!3933 = !DILocation(line: 191, column: 11, scope: !3883, inlinedAt: !3927)
!3934 = !DILocation(line: 191, column: 11, scope: !3875, inlinedAt: !3927)
!3935 = !DILocation(line: 192, column: 9, scope: !3883, inlinedAt: !3927)
!3936 = !DILocation(line: 201, column: 11, scope: !3892, inlinedAt: !3927)
!3937 = !DILocation(line: 200, column: 11, scope: !3893, inlinedAt: !3927)
!3938 = !DILocation(line: 202, column: 9, scope: !3892, inlinedAt: !3927)
!3939 = !DILocation(line: 203, column: 14, scope: !3893, inlinedAt: !3927)
!3940 = !DILocation(line: 203, column: 18, scope: !3893, inlinedAt: !3927)
!3941 = !DILocation(line: 203, column: 9, scope: !3893, inlinedAt: !3927)
!3942 = !DILocation(line: 0, scope: !3839, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 207, column: 10, scope: !245, inlinedAt: !3927)
!3944 = !DILocation(line: 53, column: 10, scope: !3847, inlinedAt: !3943)
!3945 = !DILocation(line: 206, column: 7, scope: !245, inlinedAt: !3927)
!3946 = !DILocation(line: 61, column: 7, scope: !3839, inlinedAt: !3943)
!3947 = !DILocation(line: 62, column: 8, scope: !3854, inlinedAt: !3943)
!3948 = !DILocation(line: 62, column: 10, scope: !3854, inlinedAt: !3943)
!3949 = !DILocation(line: 63, column: 5, scope: !3854, inlinedAt: !3943)
!3950 = !DILocation(line: 76, column: 3, scope: !3919)
!3951 = distinct !DISubprogram(name: "xzalloc", scope: !241, file: !241, line: 84, type: !3809, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3952)
!3952 = !{!3953}
!3953 = !DILocalVariable(name: "n", arg: 1, scope: !3951, file: !241, line: 84, type: !43)
!3954 = !DILocation(line: 0, scope: !3951)
!3955 = !DILocalVariable(name: "n", arg: 1, scope: !3956, file: !241, line: 93, type: !43)
!3956 = distinct !DISubprogram(name: "xcalloc", scope: !241, file: !241, line: 93, type: !1551, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3957)
!3957 = !{!3955, !3958, !3959}
!3958 = !DILocalVariable(name: "s", arg: 2, scope: !3956, file: !241, line: 93, type: !43)
!3959 = !DILocalVariable(name: "p", scope: !3956, file: !241, line: 95, type: !33)
!3960 = !DILocation(line: 0, scope: !3956, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 86, column: 10, scope: !3951)
!3962 = !DILocation(line: 100, column: 7, scope: !3963, inlinedAt: !3961)
!3963 = distinct !DILexicalBlock(scope: !3956, file: !241, line: 100, column: 7)
!3964 = !DILocation(line: 101, column: 7, scope: !3963, inlinedAt: !3961)
!3965 = !DILocation(line: 101, column: 18, scope: !3963, inlinedAt: !3961)
!3966 = !DILocation(line: 101, column: 16, scope: !3963, inlinedAt: !3961)
!3967 = !DILocation(line: 100, column: 7, scope: !3956, inlinedAt: !3961)
!3968 = !DILocation(line: 102, column: 5, scope: !3963, inlinedAt: !3961)
!3969 = !DILocation(line: 86, column: 3, scope: !3951)
!3970 = !DILocation(line: 0, scope: !3956)
!3971 = !DILocation(line: 100, column: 7, scope: !3963)
!3972 = !DILocation(line: 101, column: 7, scope: !3963)
!3973 = !DILocation(line: 101, column: 18, scope: !3963)
!3974 = !DILocation(line: 101, column: 16, scope: !3963)
!3975 = !DILocation(line: 100, column: 7, scope: !3956)
!3976 = !DILocation(line: 102, column: 5, scope: !3963)
!3977 = !DILocation(line: 103, column: 3, scope: !3956)
!3978 = distinct !DISubprogram(name: "xmemdup", scope: !241, file: !241, line: 111, type: !3979, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!33, !1279, !43}
!3981 = !{!3982, !3983}
!3982 = !DILocalVariable(name: "p", arg: 1, scope: !3978, file: !241, line: 111, type: !1279)
!3983 = !DILocalVariable(name: "s", arg: 2, scope: !3978, file: !241, line: 111, type: !43)
!3984 = !DILocation(line: 0, scope: !3978)
!3985 = !DILocation(line: 0, scope: !3808, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 113, column: 18, scope: !3978)
!3987 = !DILocation(line: 41, column: 13, scope: !3808, inlinedAt: !3986)
!3988 = !DILocation(line: 42, column: 8, scope: !3817, inlinedAt: !3986)
!3989 = !DILocation(line: 42, column: 10, scope: !3817, inlinedAt: !3986)
!3990 = !DILocation(line: 43, column: 5, scope: !3817, inlinedAt: !3986)
!3991 = !DILocalVariable(name: "__dest", arg: 1, scope: !3992, file: !1274, line: 26, type: !1277)
!3992 = distinct !DISubprogram(name: "memcpy", scope: !1274, file: !1274, line: 26, type: !1275, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !3993)
!3993 = !{!3991, !3994, !3995}
!3994 = !DILocalVariable(name: "__src", arg: 2, scope: !3992, file: !1274, line: 26, type: !1278)
!3995 = !DILocalVariable(name: "__len", arg: 3, scope: !3992, file: !1274, line: 26, type: !43)
!3996 = !DILocation(line: 0, scope: !3992, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 113, column: 10, scope: !3978)
!3998 = !DILocation(line: 29, column: 10, scope: !3992, inlinedAt: !3997)
!3999 = !DILocation(line: 113, column: 3, scope: !3978)
!4000 = distinct !DISubprogram(name: "xstrdup", scope: !241, file: !241, line: 119, type: !1851, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !4001)
!4001 = !{!4002}
!4002 = !DILocalVariable(name: "string", arg: 1, scope: !4000, file: !241, line: 119, type: !41)
!4003 = !DILocation(line: 0, scope: !4000)
!4004 = !DILocation(line: 121, column: 27, scope: !4000)
!4005 = !DILocation(line: 121, column: 43, scope: !4000)
!4006 = !DILocation(line: 0, scope: !3978, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 121, column: 10, scope: !4000)
!4008 = !DILocation(line: 0, scope: !3808, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 113, column: 18, scope: !3978, inlinedAt: !4007)
!4010 = !DILocation(line: 41, column: 13, scope: !3808, inlinedAt: !4009)
!4011 = !DILocation(line: 42, column: 8, scope: !3817, inlinedAt: !4009)
!4012 = !DILocation(line: 42, column: 10, scope: !3817, inlinedAt: !4009)
!4013 = !DILocation(line: 43, column: 5, scope: !3817, inlinedAt: !4009)
!4014 = !DILocation(line: 0, scope: !3992, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 113, column: 10, scope: !3978, inlinedAt: !4007)
!4016 = !DILocation(line: 29, column: 10, scope: !3992, inlinedAt: !4015)
!4017 = !DILocation(line: 121, column: 3, scope: !4000)
!4018 = distinct !DISubprogram(name: "xalloc_die", scope: !258, file: !258, line: 32, type: !707, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !121)
!4019 = !DILocation(line: 34, column: 10, scope: !4018)
!4020 = !DILocation(line: 34, column: 33, scope: !4018)
!4021 = !DILocation(line: 34, column: 3, scope: !4018)
!4022 = !DILocation(line: 40, column: 3, scope: !4018)
!4023 = distinct !DISubprogram(name: "xnumtoumax", scope: !4024, file: !4024, line: 36, type: !4025, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !4027)
!4024 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!64, !41, !53, !64, !64, !41, !41, !53}
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4037}
!4028 = !DILocalVariable(name: "n_str", arg: 1, scope: !4023, file: !4024, line: 36, type: !41)
!4029 = !DILocalVariable(name: "base", arg: 2, scope: !4023, file: !4024, line: 36, type: !53)
!4030 = !DILocalVariable(name: "min", arg: 3, scope: !4023, file: !4024, line: 36, type: !64)
!4031 = !DILocalVariable(name: "max", arg: 4, scope: !4023, file: !4024, line: 36, type: !64)
!4032 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4023, file: !4024, line: 37, type: !41)
!4033 = !DILocalVariable(name: "err", arg: 6, scope: !4023, file: !4024, line: 37, type: !41)
!4034 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4023, file: !4024, line: 37, type: !53)
!4035 = !DILocalVariable(name: "s_err", scope: !4023, file: !4024, line: 39, type: !4036)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !263, line: 38, baseType: !262)
!4037 = !DILocalVariable(name: "tnum", scope: !4023, file: !4024, line: 41, type: !64)
!4038 = !DILocation(line: 0, scope: !4023)
!4039 = !DILocation(line: 41, column: 3, scope: !4023)
!4040 = !DILocation(line: 42, column: 11, scope: !4023)
!4041 = !DILocation(line: 44, column: 7, scope: !4023)
!4042 = !DILocation(line: 69, column: 50, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !4024, line: 67, column: 5)
!4044 = distinct !DILexicalBlock(scope: !4023, file: !4024, line: 66, column: 7)
!4045 = !DILocation(line: 46, column: 11, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !4024, line: 46, column: 11)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !4024, line: 45, column: 5)
!4048 = distinct !DILexicalBlock(scope: !4023, file: !4024, line: 44, column: 7)
!4049 = !DILocation(line: 46, column: 16, scope: !4046)
!4050 = !DILocation(line: 46, column: 22, scope: !4046)
!4051 = !DILocation(line: 51, column: 20, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !4024, line: 51, column: 15)
!4053 = distinct !DILexicalBlock(scope: !4046, file: !4024, line: 47, column: 9)
!4054 = !DILocation(line: 0, scope: !4052)
!4055 = !DILocation(line: 51, column: 15, scope: !4053)
!4056 = !DILocation(line: 52, column: 19, scope: !4052)
!4057 = !DILocation(line: 66, column: 7, scope: !4023)
!4058 = !DILocation(line: 58, column: 19, scope: !4052)
!4059 = !DILocation(line: 62, column: 5, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4048, file: !4024, line: 61, column: 12)
!4061 = !DILocation(line: 62, column: 11, scope: !4060)
!4062 = !DILocation(line: 64, column: 5, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4060, file: !4024, line: 63, column: 12)
!4064 = !DILocation(line: 64, column: 11, scope: !4063)
!4065 = !DILocation(line: 69, column: 14, scope: !4043)
!4066 = !DILocation(line: 69, column: 56, scope: !4043)
!4067 = !DILocation(line: 70, column: 29, scope: !4043)
!4068 = !DILocation(line: 69, column: 7, scope: !4043)
!4069 = !DILocation(line: 73, column: 10, scope: !4023)
!4070 = !DILocation(line: 71, column: 5, scope: !4043)
!4071 = !DILocation(line: 74, column: 1, scope: !4023)
!4072 = !DILocation(line: 73, column: 3, scope: !4023)
!4073 = distinct !DISubprogram(name: "xdectoumax", scope: !4024, file: !4024, line: 82, type: !4074, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !4076)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!64, !41, !64, !64, !41, !41, !53}
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4082}
!4077 = !DILocalVariable(name: "n_str", arg: 1, scope: !4073, file: !4024, line: 82, type: !41)
!4078 = !DILocalVariable(name: "min", arg: 2, scope: !4073, file: !4024, line: 82, type: !64)
!4079 = !DILocalVariable(name: "max", arg: 3, scope: !4073, file: !4024, line: 82, type: !64)
!4080 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4073, file: !4024, line: 83, type: !41)
!4081 = !DILocalVariable(name: "err", arg: 5, scope: !4073, file: !4024, line: 83, type: !41)
!4082 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4073, file: !4024, line: 83, type: !53)
!4083 = !DILocation(line: 0, scope: !4073)
!4084 = !DILocation(line: 85, column: 10, scope: !4073)
!4085 = !DILocation(line: 85, column: 3, scope: !4073)
!4086 = distinct !DISubprogram(name: "xstrtoumax", scope: !4087, file: !4087, line: 76, type: !4088, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !4091)
!4087 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!4036, !41, !54, !53, !4090, !41}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4104, !4105, !4108, !4109}
!4092 = !DILocalVariable(name: "s", arg: 1, scope: !4086, file: !4087, line: 76, type: !41)
!4093 = !DILocalVariable(name: "ptr", arg: 2, scope: !4086, file: !4087, line: 76, type: !54)
!4094 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4086, file: !4087, line: 76, type: !53)
!4095 = !DILocalVariable(name: "val", arg: 4, scope: !4086, file: !4087, line: 77, type: !4090)
!4096 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4086, file: !4087, line: 77, type: !41)
!4097 = !DILocalVariable(name: "t_ptr", scope: !4086, file: !4087, line: 79, type: !31)
!4098 = !DILocalVariable(name: "p", scope: !4086, file: !4087, line: 80, type: !54)
!4099 = !DILocalVariable(name: "tmp", scope: !4086, file: !4087, line: 81, type: !64)
!4100 = !DILocalVariable(name: "err", scope: !4086, file: !4087, line: 82, type: !4036)
!4101 = !DILocalVariable(name: "q", scope: !4102, file: !4087, line: 92, type: !41)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !4087, line: 91, column: 5)
!4103 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 90, column: 7)
!4104 = !DILocalVariable(name: "ch", scope: !4102, file: !4087, line: 93, type: !46)
!4105 = !DILocalVariable(name: "base", scope: !4106, file: !4087, line: 129, type: !53)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !4087, line: 128, column: 5)
!4107 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 127, column: 7)
!4108 = !DILocalVariable(name: "suffixes", scope: !4106, file: !4087, line: 130, type: !53)
!4109 = !DILocalVariable(name: "overflow", scope: !4106, file: !4087, line: 131, type: !4036)
!4110 = !DILocation(line: 0, scope: !4086)
!4111 = !DILocation(line: 79, column: 3, scope: !4086)
!4112 = !DILocation(line: 84, column: 3, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !4087, line: 84, column: 3)
!4114 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 84, column: 3)
!4115 = !DILocation(line: 86, column: 8, scope: !4086)
!4116 = !DILocation(line: 88, column: 3, scope: !4086)
!4117 = !DILocation(line: 88, column: 9, scope: !4086)
!4118 = !DILocation(line: 0, scope: !4102)
!4119 = !DILocation(line: 94, column: 7, scope: !4102)
!4120 = !DILocation(line: 94, column: 14, scope: !4102)
!4121 = !DILocation(line: 95, column: 15, scope: !4102)
!4122 = distinct !{!4122, !4119, !4123, !749}
!4123 = !DILocation(line: 95, column: 17, scope: !4102)
!4124 = !DILocation(line: 96, column: 14, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4102, file: !4087, line: 96, column: 11)
!4126 = !DILocation(line: 100, column: 9, scope: !4086)
!4127 = !DILocation(line: 102, column: 7, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 102, column: 7)
!4129 = !DILocation(line: 102, column: 10, scope: !4128)
!4130 = !DILocation(line: 102, column: 7, scope: !4086)
!4131 = !DILocation(line: 106, column: 11, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !4087, line: 106, column: 11)
!4133 = distinct !DILexicalBlock(scope: !4128, file: !4087, line: 103, column: 5)
!4134 = !DILocation(line: 106, column: 26, scope: !4132)
!4135 = !DILocation(line: 106, column: 29, scope: !4132)
!4136 = !DILocation(line: 106, column: 33, scope: !4132)
!4137 = !DILocation(line: 106, column: 36, scope: !4132)
!4138 = !DILocation(line: 106, column: 11, scope: !4133)
!4139 = !DILocation(line: 111, column: 12, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4128, file: !4087, line: 111, column: 12)
!4141 = !DILocation(line: 111, column: 12, scope: !4128)
!4142 = !DILocation(line: 116, column: 5, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4140, file: !4087, line: 112, column: 5)
!4144 = !DILocation(line: 121, column: 8, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4086, file: !4087, line: 121, column: 7)
!4146 = !DILocation(line: 121, column: 7, scope: !4086)
!4147 = !DILocation(line: 123, column: 12, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4145, file: !4087, line: 122, column: 5)
!4149 = !DILocation(line: 124, column: 7, scope: !4148)
!4150 = !DILocation(line: 127, column: 7, scope: !4107)
!4151 = !DILocation(line: 127, column: 11, scope: !4107)
!4152 = !DILocation(line: 127, column: 7, scope: !4086)
!4153 = !DILocation(line: 0, scope: !4106)
!4154 = !DILocation(line: 133, column: 12, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4106, file: !4087, line: 133, column: 11)
!4156 = !DILocation(line: 133, column: 11, scope: !4106)
!4157 = !DILocation(line: 135, column: 16, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4155, file: !4087, line: 134, column: 9)
!4159 = !DILocation(line: 136, column: 22, scope: !4158)
!4160 = !DILocation(line: 136, column: 11, scope: !4158)
!4161 = !DILocation(line: 139, column: 7, scope: !4106)
!4162 = !DILocation(line: 151, column: 15, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !4087, line: 151, column: 15)
!4164 = distinct !DILexicalBlock(scope: !4106, file: !4087, line: 140, column: 9)
!4165 = !DILocation(line: 151, column: 15, scope: !4164)
!4166 = !DILocation(line: 152, column: 21, scope: !4163)
!4167 = !DILocation(line: 152, column: 13, scope: !4163)
!4168 = !DILocation(line: 155, column: 21, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !4087, line: 155, column: 21)
!4170 = distinct !DILexicalBlock(scope: !4163, file: !4087, line: 153, column: 15)
!4171 = !DILocation(line: 155, column: 29, scope: !4169)
!4172 = !DILocation(line: 155, column: 21, scope: !4170)
!4173 = !DILocation(line: 163, column: 17, scope: !4170)
!4174 = !DILocation(line: 167, column: 7, scope: !4106)
!4175 = !DILocalVariable(name: "err", scope: !4176, file: !4087, line: 67, type: !4036)
!4176 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4087, file: !4087, line: 65, type: !4177, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !4179)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!4036, !4090, !53, !53}
!4179 = !{!4180, !4181, !4182, !4175}
!4180 = !DILocalVariable(name: "x", arg: 1, scope: !4176, file: !4087, line: 65, type: !4090)
!4181 = !DILocalVariable(name: "base", arg: 2, scope: !4176, file: !4087, line: 65, type: !53)
!4182 = !DILocalVariable(name: "power", arg: 3, scope: !4176, file: !4087, line: 65, type: !53)
!4183 = !DILocation(line: 0, scope: !4176, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 221, column: 22, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4106, file: !4087, line: 168, column: 9)
!4186 = !DILocalVariable(name: "x", arg: 1, scope: !4187, file: !4087, line: 48, type: !4090)
!4187 = distinct !DISubprogram(name: "bkm_scale", scope: !4087, file: !4087, line: 48, type: !4188, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !4190)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!4036, !4090, !53}
!4190 = !{!4186, !4191}
!4191 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4187, file: !4087, line: 48, type: !53)
!4192 = !DILocation(line: 0, scope: !4187, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 69, column: 12, scope: !4176, inlinedAt: !4184)
!4194 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4193)
!4195 = distinct !DILexicalBlock(scope: !4187, file: !4087, line: 55, column: 7)
!4196 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4193)
!4197 = !DILocation(line: 69, column: 9, scope: !4176, inlinedAt: !4184)
!4198 = !DILocation(line: 229, column: 11, scope: !4106)
!4199 = !DILocation(line: 0, scope: !4176, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 217, column: 22, scope: !4185)
!4201 = !DILocation(line: 0, scope: !4187, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 69, column: 12, scope: !4176, inlinedAt: !4200)
!4203 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4202)
!4204 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4202)
!4205 = !DILocation(line: 69, column: 9, scope: !4176, inlinedAt: !4200)
!4206 = !DILocation(line: 0, scope: !4176, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 204, column: 22, scope: !4185)
!4208 = !DILocation(line: 0, scope: !4187, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 69, column: 12, scope: !4176, inlinedAt: !4207)
!4210 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4209)
!4211 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4209)
!4212 = !DILocation(line: 69, column: 9, scope: !4176, inlinedAt: !4207)
!4213 = !DILocation(line: 0, scope: !4176, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 185, column: 22, scope: !4185)
!4215 = !DILocation(line: 0, scope: !4187, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 69, column: 12, scope: !4176, inlinedAt: !4214)
!4217 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4216)
!4218 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4216)
!4219 = !DILocation(line: 69, column: 9, scope: !4176, inlinedAt: !4214)
!4220 = !DILocation(line: 0, scope: !4187, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 170, column: 22, scope: !4185)
!4222 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4221)
!4223 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4221)
!4224 = !DILocation(line: 171, column: 11, scope: !4185)
!4225 = !DILocation(line: 0, scope: !4187, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 177, column: 22, scope: !4185)
!4227 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4226)
!4228 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4226)
!4229 = !DILocation(line: 178, column: 11, scope: !4185)
!4230 = !DILocation(line: 0, scope: !4176, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 190, column: 22, scope: !4185)
!4232 = !DILocation(line: 0, scope: !4187, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 69, column: 12, scope: !4176, inlinedAt: !4231)
!4234 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4233)
!4235 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4233)
!4236 = !DILocation(line: 69, column: 9, scope: !4176, inlinedAt: !4231)
!4237 = !DILocation(line: 0, scope: !4176, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 200, column: 22, scope: !4185)
!4239 = !DILocation(line: 0, scope: !4187, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 69, column: 12, scope: !4176, inlinedAt: !4238)
!4241 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4240)
!4242 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4240)
!4243 = !DILocation(line: 69, column: 9, scope: !4176, inlinedAt: !4238)
!4244 = !DILocation(line: 0, scope: !4176, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 209, column: 22, scope: !4185)
!4246 = !DILocation(line: 0, scope: !4187, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 69, column: 12, scope: !4176, inlinedAt: !4245)
!4248 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4247)
!4249 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4247)
!4250 = !DILocation(line: 69, column: 9, scope: !4176, inlinedAt: !4245)
!4251 = !DILocation(line: 0, scope: !4187, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 213, column: 22, scope: !4185)
!4253 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4252)
!4254 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4252)
!4255 = !DILocation(line: 214, column: 11, scope: !4185)
!4256 = !DILocation(line: 225, column: 16, scope: !4185)
!4257 = !DILocation(line: 226, column: 22, scope: !4185)
!4258 = !DILocation(line: 226, column: 11, scope: !4185)
!4259 = !DILocation(line: 0, scope: !4176, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 195, column: 22, scope: !4185)
!4261 = !DILocation(line: 0, scope: !4187, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 69, column: 12, scope: !4176, inlinedAt: !4260)
!4263 = !DILocation(line: 55, column: 39, scope: !4195, inlinedAt: !4262)
!4264 = !DILocation(line: 55, column: 7, scope: !4187, inlinedAt: !4262)
!4265 = !DILocation(line: 0, scope: !4185)
!4266 = !DILocation(line: 230, column: 10, scope: !4106)
!4267 = !DILocation(line: 231, column: 11, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4106, file: !4087, line: 231, column: 11)
!4269 = !DILocation(line: 231, column: 11, scope: !4106)
!4270 = !DILocation(line: 107, column: 13, scope: !4132)
!4271 = !DILocation(line: 82, column: 16, scope: !4086)
!4272 = !DILocation(line: 235, column: 8, scope: !4086)
!4273 = !DILocation(line: 236, column: 3, scope: !4086)
!4274 = !DILocation(line: 237, column: 1, scope: !4086)
!4275 = !DISubprogram(name: "strtoumax", scope: !4276, file: !4276, line: 301, type: !4277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!4276 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!45, !41, !54, !53}
!4279 = distinct !DISubprogram(name: "rpl_calloc", scope: !275, file: !275, line: 42, type: !1551, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !274, retainedNodes: !4280)
!4280 = !{!4281, !4282, !4283, !4284}
!4281 = !DILocalVariable(name: "n", arg: 1, scope: !4279, file: !275, line: 42, type: !43)
!4282 = !DILocalVariable(name: "s", arg: 2, scope: !4279, file: !275, line: 42, type: !43)
!4283 = !DILocalVariable(name: "result", scope: !4279, file: !275, line: 44, type: !33)
!4284 = !DILocalVariable(name: "bytes", scope: !4285, file: !275, line: 56, type: !43)
!4285 = distinct !DILexicalBlock(scope: !4286, file: !275, line: 53, column: 5)
!4286 = distinct !DILexicalBlock(scope: !4279, file: !275, line: 47, column: 7)
!4287 = !DILocation(line: 0, scope: !4279)
!4288 = !DILocation(line: 47, column: 9, scope: !4286)
!4289 = !DILocation(line: 47, column: 14, scope: !4286)
!4290 = !DILocation(line: 0, scope: !4285)
!4291 = !DILocation(line: 57, column: 21, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4285, file: !275, line: 57, column: 11)
!4293 = !DILocation(line: 57, column: 11, scope: !4285)
!4294 = !DILocation(line: 59, column: 11, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4292, file: !275, line: 58, column: 9)
!4296 = !DILocation(line: 59, column: 17, scope: !4295)
!4297 = !DILocation(line: 65, column: 12, scope: !4279)
!4298 = !DILocation(line: 72, column: 3, scope: !4279)
!4299 = !DILocation(line: 73, column: 1, scope: !4279)
!4300 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !277, file: !277, line: 86, type: !4301, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !4315)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!43, !4303, !41, !43, !4304}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2307, line: 6, baseType: !4306)
!4306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2309, line: 21, baseType: !4307)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2309, line: 13, size: 64, elements: !4308)
!4308 = !{!4309, !4310}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4307, file: !2309, line: 15, baseType: !53, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4307, file: !2309, line: 20, baseType: !4311, size: 32, offset: 32)
!4311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4307, file: !2309, line: 16, size: 32, elements: !4312)
!4312 = !{!4313, !4314}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4311, file: !2309, line: 18, baseType: !6, size: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4311, file: !2309, line: 19, baseType: !2318, size: 32)
!4315 = !{!4316, !4317, !4318, !4319, !4320, !4321, !4322}
!4316 = !DILocalVariable(name: "pwc", arg: 1, scope: !4300, file: !277, line: 86, type: !4303)
!4317 = !DILocalVariable(name: "s", arg: 2, scope: !4300, file: !277, line: 86, type: !41)
!4318 = !DILocalVariable(name: "n", arg: 3, scope: !4300, file: !277, line: 86, type: !43)
!4319 = !DILocalVariable(name: "ps", arg: 4, scope: !4300, file: !277, line: 86, type: !4304)
!4320 = !DILocalVariable(name: "ret", scope: !4300, file: !277, line: 88, type: !43)
!4321 = !DILocalVariable(name: "wc", scope: !4300, file: !277, line: 89, type: !2323)
!4322 = !DILocalVariable(name: "uc", scope: !4323, file: !277, line: 156, type: !46)
!4323 = distinct !DILexicalBlock(scope: !4324, file: !277, line: 155, column: 5)
!4324 = distinct !DILexicalBlock(scope: !4300, file: !277, line: 154, column: 7)
!4325 = !DILocation(line: 0, scope: !4300)
!4326 = !DILocation(line: 89, column: 3, scope: !4300)
!4327 = !DILocation(line: 105, column: 9, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4300, file: !277, line: 105, column: 7)
!4329 = !DILocation(line: 105, column: 7, scope: !4300)
!4330 = !DILocation(line: 145, column: 9, scope: !4300)
!4331 = !DILocation(line: 154, column: 19, scope: !4324)
!4332 = !DILocation(line: 154, column: 26, scope: !4324)
!4333 = !DILocation(line: 154, column: 41, scope: !4324)
!4334 = !DILocation(line: 154, column: 7, scope: !4300)
!4335 = !DILocation(line: 156, column: 26, scope: !4323)
!4336 = !DILocation(line: 0, scope: !4323)
!4337 = !DILocation(line: 157, column: 14, scope: !4323)
!4338 = !DILocation(line: 157, column: 12, scope: !4323)
!4339 = !DILocation(line: 163, column: 1, scope: !4300)
!4340 = !DISubprogram(name: "mbrtowc", scope: !2986, file: !2986, line: 296, type: !4341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!45, !102, !41, !45, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4344 = distinct !DISubprogram(name: "close_stream", scope: !280, file: !280, line: 56, type: !4345, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !4381)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!53, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1913, line: 7, baseType: !4349)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !778, line: 49, size: 1728, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4349, file: !778, line: 51, baseType: !53, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4349, file: !778, line: 54, baseType: !31, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4349, file: !778, line: 55, baseType: !31, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4349, file: !778, line: 56, baseType: !31, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4349, file: !778, line: 57, baseType: !31, size: 64, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4349, file: !778, line: 58, baseType: !31, size: 64, offset: 320)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4349, file: !778, line: 59, baseType: !31, size: 64, offset: 384)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4349, file: !778, line: 60, baseType: !31, size: 64, offset: 448)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4349, file: !778, line: 61, baseType: !31, size: 64, offset: 512)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4349, file: !778, line: 64, baseType: !31, size: 64, offset: 576)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4349, file: !778, line: 65, baseType: !31, size: 64, offset: 640)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4349, file: !778, line: 66, baseType: !31, size: 64, offset: 704)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4349, file: !778, line: 68, baseType: !793, size: 64, offset: 768)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4349, file: !778, line: 70, baseType: !4365, size: 64, offset: 832)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4349, file: !778, line: 72, baseType: !53, size: 32, offset: 896)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4349, file: !778, line: 73, baseType: !53, size: 32, offset: 928)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4349, file: !778, line: 74, baseType: !36, size: 64, offset: 960)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4349, file: !778, line: 77, baseType: !168, size: 16, offset: 1024)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4349, file: !778, line: 78, baseType: !801, size: 8, offset: 1040)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4349, file: !778, line: 79, baseType: !803, size: 8, offset: 1048)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4349, file: !778, line: 81, baseType: !807, size: 64, offset: 1088)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4349, file: !778, line: 89, baseType: !810, size: 64, offset: 1152)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4349, file: !778, line: 91, baseType: !812, size: 64, offset: 1216)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4349, file: !778, line: 92, baseType: !815, size: 64, offset: 1280)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4349, file: !778, line: 93, baseType: !4365, size: 64, offset: 1344)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4349, file: !778, line: 94, baseType: !33, size: 64, offset: 1408)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4349, file: !778, line: 95, baseType: !43, size: 64, offset: 1472)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4349, file: !778, line: 96, baseType: !53, size: 32, offset: 1536)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4349, file: !778, line: 98, baseType: !822, size: 160, offset: 1568)
!4381 = !{!4382, !4383, !4384, !4385}
!4382 = !DILocalVariable(name: "stream", arg: 1, scope: !4344, file: !280, line: 56, type: !4347)
!4383 = !DILocalVariable(name: "some_pending", scope: !4344, file: !280, line: 58, type: !1124)
!4384 = !DILocalVariable(name: "prev_fail", scope: !4344, file: !280, line: 59, type: !1124)
!4385 = !DILocalVariable(name: "fclose_fail", scope: !4344, file: !280, line: 60, type: !1124)
!4386 = !DILocation(line: 0, scope: !4344)
!4387 = !DILocation(line: 58, column: 30, scope: !4344)
!4388 = !DILocalVariable(name: "__stream", arg: 1, scope: !4389, file: !4390, line: 135, type: !4347)
!4389 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4390, file: !4390, line: 135, type: !4345, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !4391)
!4390 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4391 = !{!4388}
!4392 = !DILocation(line: 0, scope: !4389, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 59, column: 27, scope: !4344)
!4394 = !DILocation(line: 137, column: 10, scope: !4389, inlinedAt: !4393)
!4395 = !{!4396, !946, i64 0}
!4396 = !{!"_IO_FILE", !946, i64 0, !698, i64 8, !698, i64 16, !698, i64 24, !698, i64 32, !698, i64 40, !698, i64 48, !698, i64 56, !698, i64 64, !698, i64 72, !698, i64 80, !698, i64 88, !698, i64 96, !698, i64 104, !946, i64 112, !946, i64 116, !1178, i64 120, !2546, i64 128, !699, i64 130, !699, i64 131, !698, i64 136, !1178, i64 144, !698, i64 152, !698, i64 160, !698, i64 168, !698, i64 176, !1178, i64 184, !946, i64 192, !699, i64 196}
!4397 = !DILocation(line: 59, column: 43, scope: !4344)
!4398 = !DILocation(line: 60, column: 29, scope: !4344)
!4399 = !DILocation(line: 60, column: 45, scope: !4344)
!4400 = !DILocation(line: 70, column: 17, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4344, file: !280, line: 70, column: 7)
!4402 = !DILocation(line: 58, column: 50, scope: !4344)
!4403 = !DILocation(line: 70, column: 33, scope: !4401)
!4404 = !DILocation(line: 70, column: 53, scope: !4401)
!4405 = !DILocation(line: 70, column: 59, scope: !4401)
!4406 = !DILocation(line: 70, column: 7, scope: !4344)
!4407 = !DILocation(line: 72, column: 11, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4401, file: !280, line: 71, column: 5)
!4409 = !DILocation(line: 73, column: 9, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4408, file: !280, line: 72, column: 11)
!4411 = !DILocation(line: 73, column: 15, scope: !4410)
!4412 = !DILocation(line: 78, column: 1, scope: !4344)
!4413 = distinct !DISubprogram(name: "hard_locale", scope: !282, file: !282, line: 27, type: !4414, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !281, retainedNodes: !4416)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!60, !53}
!4416 = !{!4417, !4418}
!4417 = !DILocalVariable(name: "category", arg: 1, scope: !4413, file: !282, line: 27, type: !53)
!4418 = !DILocalVariable(name: "locale", scope: !4413, file: !282, line: 29, type: !4419)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2056, elements: !4420)
!4420 = !{!4421}
!4421 = !DISubrange(count: 257)
!4422 = !DILocation(line: 0, scope: !4413)
!4423 = !DILocation(line: 29, column: 3, scope: !4413)
!4424 = !DILocation(line: 29, column: 8, scope: !4413)
!4425 = !DILocation(line: 31, column: 7, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4413, file: !282, line: 31, column: 7)
!4427 = !DILocation(line: 31, column: 7, scope: !4413)
!4428 = !DILocation(line: 34, column: 12, scope: !4413)
!4429 = !DILocation(line: 34, column: 38, scope: !4413)
!4430 = !DILocation(line: 34, column: 41, scope: !4413)
!4431 = !DILocation(line: 34, column: 66, scope: !4413)
!4432 = !DILocation(line: 35, column: 1, scope: !4413)
!4433 = distinct !DISubprogram(name: "locale_charset", scope: !284, file: !284, line: 831, type: !4434, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!41}
!4436 = !{!4437}
!4437 = !DILocalVariable(name: "codeset", scope: !4433, file: !284, line: 833, type: !41)
!4438 = !DILocation(line: 847, column: 13, scope: !4433)
!4439 = !DILocation(line: 0, scope: !4433)
!4440 = !DILocation(line: 911, column: 15, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4433, file: !284, line: 911, column: 7)
!4442 = !DILocation(line: 911, column: 7, scope: !4433)
!4443 = !DILocation(line: 1070, column: 13, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !284, line: 1070, column: 13)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !284, line: 1060, column: 7)
!4446 = distinct !DILexicalBlock(scope: !4433, file: !284, line: 1019, column: 3)
!4447 = !DILocation(line: 1070, column: 24, scope: !4444)
!4448 = !DILocation(line: 1070, column: 13, scope: !4445)
!4449 = !DILocation(line: 1158, column: 3, scope: !4433)
!4450 = !DISubprogram(name: "nl_langinfo", scope: !287, file: !287, line: 661, type: !4451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!31, !53}
!4453 = distinct !DISubprogram(name: "setlocale_null_r", scope: !673, file: !673, line: 269, type: !4454, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !4456)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!53, !53, !31, !43}
!4456 = !{!4457, !4458, !4459}
!4457 = !DILocalVariable(name: "category", arg: 1, scope: !4453, file: !673, line: 269, type: !53)
!4458 = !DILocalVariable(name: "buf", arg: 2, scope: !4453, file: !673, line: 269, type: !31)
!4459 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4453, file: !673, line: 269, type: !43)
!4460 = !DILocation(line: 0, scope: !4453)
!4461 = !DILocalVariable(name: "category", arg: 1, scope: !4462, file: !673, line: 91, type: !53)
!4462 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !673, file: !673, line: 91, type: !4454, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !4463)
!4463 = !{!4461, !4464, !4465, !4466, !4467}
!4464 = !DILocalVariable(name: "buf", arg: 2, scope: !4462, file: !673, line: 91, type: !31)
!4465 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4462, file: !673, line: 91, type: !43)
!4466 = !DILocalVariable(name: "result", scope: !4462, file: !673, line: 140, type: !41)
!4467 = !DILocalVariable(name: "length", scope: !4468, file: !673, line: 154, type: !43)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !673, line: 153, column: 5)
!4469 = distinct !DILexicalBlock(scope: !4462, file: !673, line: 142, column: 7)
!4470 = !DILocation(line: 0, scope: !4462, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 274, column: 10, scope: !4453)
!4472 = !DILocalVariable(name: "category", arg: 1, scope: !4473, file: !673, line: 60, type: !53)
!4473 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !673, file: !673, line: 60, type: !4474, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!41, !53}
!4476 = !{!4472, !4477}
!4477 = !DILocalVariable(name: "result", scope: !4473, file: !673, line: 62, type: !41)
!4478 = !DILocation(line: 0, scope: !4473, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 140, column: 24, scope: !4462, inlinedAt: !4471)
!4480 = !DILocation(line: 62, column: 24, scope: !4473, inlinedAt: !4479)
!4481 = !DILocation(line: 142, column: 14, scope: !4469, inlinedAt: !4471)
!4482 = !DILocation(line: 142, column: 7, scope: !4462, inlinedAt: !4471)
!4483 = !DILocation(line: 145, column: 19, scope: !4484, inlinedAt: !4471)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !673, line: 145, column: 11)
!4485 = distinct !DILexicalBlock(scope: !4469, file: !673, line: 143, column: 5)
!4486 = !DILocation(line: 145, column: 11, scope: !4485, inlinedAt: !4471)
!4487 = !DILocation(line: 149, column: 16, scope: !4484, inlinedAt: !4471)
!4488 = !DILocation(line: 149, column: 9, scope: !4484, inlinedAt: !4471)
!4489 = !DILocation(line: 154, column: 23, scope: !4468, inlinedAt: !4471)
!4490 = !DILocation(line: 0, scope: !4468, inlinedAt: !4471)
!4491 = !DILocation(line: 155, column: 18, scope: !4492, inlinedAt: !4471)
!4492 = distinct !DILexicalBlock(scope: !4468, file: !673, line: 155, column: 11)
!4493 = !DILocation(line: 155, column: 11, scope: !4468, inlinedAt: !4471)
!4494 = !DILocation(line: 157, column: 39, scope: !4495, inlinedAt: !4471)
!4495 = distinct !DILexicalBlock(scope: !4492, file: !673, line: 156, column: 9)
!4496 = !DILocalVariable(name: "__dest", arg: 1, scope: !4497, file: !1274, line: 26, type: !1277)
!4497 = distinct !DISubprogram(name: "memcpy", scope: !1274, file: !1274, line: 26, type: !1275, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !4498)
!4498 = !{!4496, !4499, !4500}
!4499 = !DILocalVariable(name: "__src", arg: 2, scope: !4497, file: !1274, line: 26, type: !1278)
!4500 = !DILocalVariable(name: "__len", arg: 3, scope: !4497, file: !1274, line: 26, type: !43)
!4501 = !DILocation(line: 0, scope: !4497, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 157, column: 11, scope: !4495, inlinedAt: !4471)
!4503 = !DILocation(line: 29, column: 10, scope: !4497, inlinedAt: !4502)
!4504 = !DILocation(line: 158, column: 11, scope: !4495, inlinedAt: !4471)
!4505 = !DILocation(line: 162, column: 23, scope: !4506, inlinedAt: !4471)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !673, line: 162, column: 15)
!4507 = distinct !DILexicalBlock(scope: !4492, file: !673, line: 161, column: 9)
!4508 = !DILocation(line: 162, column: 15, scope: !4507, inlinedAt: !4471)
!4509 = !DILocation(line: 167, column: 44, scope: !4510, inlinedAt: !4471)
!4510 = distinct !DILexicalBlock(scope: !4506, file: !673, line: 163, column: 13)
!4511 = !DILocation(line: 0, scope: !4497, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 167, column: 15, scope: !4510, inlinedAt: !4471)
!4513 = !DILocation(line: 29, column: 10, scope: !4497, inlinedAt: !4512)
!4514 = !DILocation(line: 168, column: 15, scope: !4510, inlinedAt: !4471)
!4515 = !DILocation(line: 168, column: 32, scope: !4510, inlinedAt: !4471)
!4516 = !DILocation(line: 169, column: 13, scope: !4510, inlinedAt: !4471)
!4517 = !DILocation(line: 0, scope: !4469, inlinedAt: !4471)
!4518 = !DILocation(line: 274, column: 3, scope: !4453)
!4519 = distinct !DISubprogram(name: "setlocale_null", scope: !673, file: !673, line: 301, type: !4474, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !4520)
!4520 = !{!4521}
!4521 = !DILocalVariable(name: "category", arg: 1, scope: !4519, file: !673, line: 301, type: !53)
!4522 = !DILocation(line: 0, scope: !4519)
!4523 = !DILocation(line: 0, scope: !4473, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 304, column: 10, scope: !4519)
!4525 = !DILocation(line: 62, column: 24, scope: !4473, inlinedAt: !4524)
!4526 = !DILocation(line: 304, column: 3, scope: !4519)
!4527 = distinct !DISubprogram(name: "rpl_fclose", scope: !675, file: !675, line: 58, type: !4528, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !4564)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!53, !4530}
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1913, line: 7, baseType: !4532)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !778, line: 49, size: 1728, elements: !4533)
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4532, file: !778, line: 51, baseType: !53, size: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4532, file: !778, line: 54, baseType: !31, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4532, file: !778, line: 55, baseType: !31, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4532, file: !778, line: 56, baseType: !31, size: 64, offset: 192)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4532, file: !778, line: 57, baseType: !31, size: 64, offset: 256)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4532, file: !778, line: 58, baseType: !31, size: 64, offset: 320)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4532, file: !778, line: 59, baseType: !31, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4532, file: !778, line: 60, baseType: !31, size: 64, offset: 448)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4532, file: !778, line: 61, baseType: !31, size: 64, offset: 512)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4532, file: !778, line: 64, baseType: !31, size: 64, offset: 576)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4532, file: !778, line: 65, baseType: !31, size: 64, offset: 640)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4532, file: !778, line: 66, baseType: !31, size: 64, offset: 704)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4532, file: !778, line: 68, baseType: !793, size: 64, offset: 768)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4532, file: !778, line: 70, baseType: !4548, size: 64, offset: 832)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4532, file: !778, line: 72, baseType: !53, size: 32, offset: 896)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4532, file: !778, line: 73, baseType: !53, size: 32, offset: 928)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4532, file: !778, line: 74, baseType: !36, size: 64, offset: 960)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4532, file: !778, line: 77, baseType: !168, size: 16, offset: 1024)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4532, file: !778, line: 78, baseType: !801, size: 8, offset: 1040)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4532, file: !778, line: 79, baseType: !803, size: 8, offset: 1048)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4532, file: !778, line: 81, baseType: !807, size: 64, offset: 1088)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4532, file: !778, line: 89, baseType: !810, size: 64, offset: 1152)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4532, file: !778, line: 91, baseType: !812, size: 64, offset: 1216)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4532, file: !778, line: 92, baseType: !815, size: 64, offset: 1280)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4532, file: !778, line: 93, baseType: !4548, size: 64, offset: 1344)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4532, file: !778, line: 94, baseType: !33, size: 64, offset: 1408)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4532, file: !778, line: 95, baseType: !43, size: 64, offset: 1472)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4532, file: !778, line: 96, baseType: !53, size: 32, offset: 1536)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4532, file: !778, line: 98, baseType: !822, size: 160, offset: 1568)
!4564 = !{!4565, !4566, !4567, !4568}
!4565 = !DILocalVariable(name: "fp", arg: 1, scope: !4527, file: !675, line: 58, type: !4530)
!4566 = !DILocalVariable(name: "saved_errno", scope: !4527, file: !675, line: 60, type: !53)
!4567 = !DILocalVariable(name: "fd", scope: !4527, file: !675, line: 61, type: !53)
!4568 = !DILocalVariable(name: "result", scope: !4527, file: !675, line: 62, type: !53)
!4569 = !DILocation(line: 0, scope: !4527)
!4570 = !DILocation(line: 65, column: 8, scope: !4527)
!4571 = !DILocation(line: 66, column: 10, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4527, file: !675, line: 66, column: 7)
!4573 = !DILocation(line: 66, column: 7, scope: !4527)
!4574 = !DILocation(line: 67, column: 12, scope: !4572)
!4575 = !DILocation(line: 67, column: 5, scope: !4572)
!4576 = !DILocation(line: 72, column: 9, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4527, file: !675, line: 72, column: 7)
!4578 = !DILocation(line: 72, column: 23, scope: !4577)
!4579 = !DILocation(line: 72, column: 33, scope: !4577)
!4580 = !DILocation(line: 72, column: 26, scope: !4577)
!4581 = !DILocation(line: 72, column: 59, scope: !4577)
!4582 = !DILocation(line: 73, column: 7, scope: !4577)
!4583 = !DILocation(line: 73, column: 10, scope: !4577)
!4584 = !DILocation(line: 72, column: 7, scope: !4527)
!4585 = !DILocation(line: 100, column: 12, scope: !4527)
!4586 = !DILocation(line: 105, column: 7, scope: !4527)
!4587 = !DILocation(line: 74, column: 19, scope: !4577)
!4588 = !DILocation(line: 105, column: 19, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4527, file: !675, line: 105, column: 7)
!4590 = !DILocation(line: 107, column: 13, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4589, file: !675, line: 106, column: 5)
!4592 = !DILocation(line: 109, column: 5, scope: !4591)
!4593 = !DILocation(line: 112, column: 1, scope: !4527)
!4594 = !DISubprogram(name: "fileno", scope: !35, file: !35, line: 785, type: !4595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!53, !4548}
!4597 = !DISubprogram(name: "fclose", scope: !35, file: !35, line: 213, type: !4595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!4598 = distinct !DISubprogram(name: "rpl_fflush", scope: !677, file: !677, line: 129, type: !4599, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !4635)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!53, !4601}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1913, line: 7, baseType: !4603)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !778, line: 49, size: 1728, elements: !4604)
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4603, file: !778, line: 51, baseType: !53, size: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4603, file: !778, line: 54, baseType: !31, size: 64, offset: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4603, file: !778, line: 55, baseType: !31, size: 64, offset: 128)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4603, file: !778, line: 56, baseType: !31, size: 64, offset: 192)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4603, file: !778, line: 57, baseType: !31, size: 64, offset: 256)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4603, file: !778, line: 58, baseType: !31, size: 64, offset: 320)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4603, file: !778, line: 59, baseType: !31, size: 64, offset: 384)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4603, file: !778, line: 60, baseType: !31, size: 64, offset: 448)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4603, file: !778, line: 61, baseType: !31, size: 64, offset: 512)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4603, file: !778, line: 64, baseType: !31, size: 64, offset: 576)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4603, file: !778, line: 65, baseType: !31, size: 64, offset: 640)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4603, file: !778, line: 66, baseType: !31, size: 64, offset: 704)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4603, file: !778, line: 68, baseType: !793, size: 64, offset: 768)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4603, file: !778, line: 70, baseType: !4619, size: 64, offset: 832)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4603, file: !778, line: 72, baseType: !53, size: 32, offset: 896)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4603, file: !778, line: 73, baseType: !53, size: 32, offset: 928)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4603, file: !778, line: 74, baseType: !36, size: 64, offset: 960)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4603, file: !778, line: 77, baseType: !168, size: 16, offset: 1024)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4603, file: !778, line: 78, baseType: !801, size: 8, offset: 1040)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4603, file: !778, line: 79, baseType: !803, size: 8, offset: 1048)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4603, file: !778, line: 81, baseType: !807, size: 64, offset: 1088)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4603, file: !778, line: 89, baseType: !810, size: 64, offset: 1152)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4603, file: !778, line: 91, baseType: !812, size: 64, offset: 1216)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4603, file: !778, line: 92, baseType: !815, size: 64, offset: 1280)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4603, file: !778, line: 93, baseType: !4619, size: 64, offset: 1344)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4603, file: !778, line: 94, baseType: !33, size: 64, offset: 1408)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4603, file: !778, line: 95, baseType: !43, size: 64, offset: 1472)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4603, file: !778, line: 96, baseType: !53, size: 32, offset: 1536)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4603, file: !778, line: 98, baseType: !822, size: 160, offset: 1568)
!4635 = !{!4636}
!4636 = !DILocalVariable(name: "stream", arg: 1, scope: !4598, file: !677, line: 129, type: !4601)
!4637 = !DILocation(line: 0, scope: !4598)
!4638 = !DILocation(line: 150, column: 14, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4598, file: !677, line: 150, column: 7)
!4640 = !DILocation(line: 150, column: 22, scope: !4639)
!4641 = !DILocation(line: 150, column: 27, scope: !4639)
!4642 = !DILocation(line: 150, column: 7, scope: !4598)
!4643 = !DILocation(line: 151, column: 12, scope: !4639)
!4644 = !DILocation(line: 151, column: 5, scope: !4639)
!4645 = !DILocalVariable(name: "fp", arg: 1, scope: !4646, file: !677, line: 41, type: !4601)
!4646 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !677, file: !677, line: 41, type: !4647, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !4649)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !4601}
!4649 = !{!4645}
!4650 = !DILocation(line: 0, scope: !4646, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 156, column: 3, scope: !4598)
!4652 = !DILocation(line: 43, column: 11, scope: !4653, inlinedAt: !4651)
!4653 = distinct !DILexicalBlock(scope: !4646, file: !677, line: 43, column: 7)
!4654 = !DILocation(line: 43, column: 18, scope: !4653, inlinedAt: !4651)
!4655 = !DILocation(line: 43, column: 7, scope: !4646, inlinedAt: !4651)
!4656 = !DILocation(line: 45, column: 5, scope: !4653, inlinedAt: !4651)
!4657 = !DILocation(line: 158, column: 10, scope: !4598)
!4658 = !DILocation(line: 158, column: 3, scope: !4598)
!4659 = !DILocation(line: 235, column: 1, scope: !4598)
!4660 = !DISubprogram(name: "fflush", scope: !35, file: !35, line: 218, type: !4661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!53, !4619}
!4663 = distinct !DISubprogram(name: "rpl_fseeko", scope: !679, file: !679, line: 28, type: !4664, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !4700)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!53, !4666, !34, !53}
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1913, line: 7, baseType: !4668)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !778, line: 49, size: 1728, elements: !4669)
!4669 = !{!4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4668, file: !778, line: 51, baseType: !53, size: 32)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4668, file: !778, line: 54, baseType: !31, size: 64, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4668, file: !778, line: 55, baseType: !31, size: 64, offset: 128)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4668, file: !778, line: 56, baseType: !31, size: 64, offset: 192)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4668, file: !778, line: 57, baseType: !31, size: 64, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4668, file: !778, line: 58, baseType: !31, size: 64, offset: 320)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4668, file: !778, line: 59, baseType: !31, size: 64, offset: 384)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4668, file: !778, line: 60, baseType: !31, size: 64, offset: 448)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4668, file: !778, line: 61, baseType: !31, size: 64, offset: 512)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4668, file: !778, line: 64, baseType: !31, size: 64, offset: 576)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4668, file: !778, line: 65, baseType: !31, size: 64, offset: 640)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4668, file: !778, line: 66, baseType: !31, size: 64, offset: 704)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4668, file: !778, line: 68, baseType: !793, size: 64, offset: 768)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4668, file: !778, line: 70, baseType: !4684, size: 64, offset: 832)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4668, file: !778, line: 72, baseType: !53, size: 32, offset: 896)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4668, file: !778, line: 73, baseType: !53, size: 32, offset: 928)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4668, file: !778, line: 74, baseType: !36, size: 64, offset: 960)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4668, file: !778, line: 77, baseType: !168, size: 16, offset: 1024)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4668, file: !778, line: 78, baseType: !801, size: 8, offset: 1040)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4668, file: !778, line: 79, baseType: !803, size: 8, offset: 1048)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4668, file: !778, line: 81, baseType: !807, size: 64, offset: 1088)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4668, file: !778, line: 89, baseType: !810, size: 64, offset: 1152)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4668, file: !778, line: 91, baseType: !812, size: 64, offset: 1216)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4668, file: !778, line: 92, baseType: !815, size: 64, offset: 1280)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4668, file: !778, line: 93, baseType: !4684, size: 64, offset: 1344)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4668, file: !778, line: 94, baseType: !33, size: 64, offset: 1408)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4668, file: !778, line: 95, baseType: !43, size: 64, offset: 1472)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4668, file: !778, line: 96, baseType: !53, size: 32, offset: 1536)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4668, file: !778, line: 98, baseType: !822, size: 160, offset: 1568)
!4700 = !{!4701, !4702, !4703, !4704}
!4701 = !DILocalVariable(name: "fp", arg: 1, scope: !4663, file: !679, line: 28, type: !4666)
!4702 = !DILocalVariable(name: "offset", arg: 2, scope: !4663, file: !679, line: 28, type: !34)
!4703 = !DILocalVariable(name: "whence", arg: 3, scope: !4663, file: !679, line: 28, type: !53)
!4704 = !DILocalVariable(name: "pos", scope: !4705, file: !679, line: 117, type: !34)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !679, line: 113, column: 5)
!4706 = distinct !DILexicalBlock(scope: !4663, file: !679, line: 52, column: 7)
!4707 = !DILocation(line: 0, scope: !4663)
!4708 = !DILocation(line: 52, column: 11, scope: !4706)
!4709 = !{!4396, !698, i64 16}
!4710 = !DILocation(line: 52, column: 31, scope: !4706)
!4711 = !{!4396, !698, i64 8}
!4712 = !DILocation(line: 52, column: 24, scope: !4706)
!4713 = !DILocation(line: 53, column: 7, scope: !4706)
!4714 = !DILocation(line: 53, column: 14, scope: !4706)
!4715 = !{!4396, !698, i64 40}
!4716 = !DILocation(line: 53, column: 35, scope: !4706)
!4717 = !{!4396, !698, i64 32}
!4718 = !DILocation(line: 53, column: 28, scope: !4706)
!4719 = !DILocation(line: 54, column: 7, scope: !4706)
!4720 = !DILocation(line: 54, column: 14, scope: !4706)
!4721 = !{!4396, !698, i64 72}
!4722 = !DILocation(line: 54, column: 28, scope: !4706)
!4723 = !DILocation(line: 52, column: 7, scope: !4663)
!4724 = !DILocation(line: 117, column: 26, scope: !4705)
!4725 = !DILocation(line: 117, column: 19, scope: !4705)
!4726 = !DILocation(line: 0, scope: !4705)
!4727 = !DILocation(line: 118, column: 15, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4705, file: !679, line: 118, column: 11)
!4729 = !DILocation(line: 118, column: 11, scope: !4705)
!4730 = !DILocation(line: 129, column: 11, scope: !4705)
!4731 = !DILocation(line: 129, column: 18, scope: !4705)
!4732 = !DILocation(line: 130, column: 11, scope: !4705)
!4733 = !DILocation(line: 130, column: 19, scope: !4705)
!4734 = !{!4396, !1178, i64 144}
!4735 = !DILocation(line: 161, column: 7, scope: !4705)
!4736 = !DILocation(line: 163, column: 10, scope: !4663)
!4737 = !DILocation(line: 163, column: 3, scope: !4663)
!4738 = !DILocation(line: 164, column: 1, scope: !4663)
!4739 = !DISubprogram(name: "fseeko", scope: !35, file: !35, line: 712, type: !4740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!53, !4684, !38, !53}
