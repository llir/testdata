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
@print_headers = internal unnamed_addr global i1 false, align 1, !dbg !265
@line_end = internal unnamed_addr global i1 false, align 1, !dbg !266
@.str.14 = private unnamed_addr constant [30 x i8] c"invalid trailing option -- %c\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"invalid number of bytes\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"invalid number of lines\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"bkKmMGTPEZY0\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"c:n:qvz0123456789\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !255
@presume_input_pipe = internal unnamed_addr global i1 false, align 1, !dbg !267
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@main.default_file_list = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16, !dbg !212
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@write_header.first_file = internal unnamed_addr global i1 false, align 1, !dbg !268
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !269
@.str.61 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !274
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !317
@.str.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.65 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.66 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !319
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !325
@.str.79 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 16, !dbg !366
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !450
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !454
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !456
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.93 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.95 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.96 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.97 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.98 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !463
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !470
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !458
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !472
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !477
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
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1180 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1185, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %0, metadata !1184, metadata !DIExpression()), !dbg !1206
  %3 = icmp eq i32 %0, 0, !dbg !1207
  br i1 %3, label %9, label %4, !dbg !1208

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1209, !tbaa !1211
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1209
  %7 = load i8*, i8** @program_name, align 8, !dbg !1209, !tbaa !1211
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1209
  br label %74, !dbg !1209

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1215
  %11 = load i8*, i8** @program_name, align 8, !dbg !1215, !tbaa !1211
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1215
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1216
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 10) #20, !dbg !1216
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i32 5) #20, !dbg !1217
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1217, !tbaa !1211
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #20, !dbg !1217
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0), i32 5) #20, !dbg !1220
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1220, !tbaa !1211
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #20, !dbg !1220
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([398 x i8], [398 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1223
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i32 10) #20, !dbg !1223
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1224
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1224, !tbaa !1211
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24), !dbg !1224
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1225
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1225, !tbaa !1211
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27), !dbg !1225
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1226
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1226, !tbaa !1211
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30), !dbg !1226
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #20, !dbg !1227
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1227, !tbaa !1211
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33), !dbg !1227
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.8, i64 0, i64 0), i32 5) #20, !dbg !1228
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1228, !tbaa !1211
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36), !dbg !1228
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), metadata !1189, metadata !DIExpression()) #20, !dbg !1229
  %38 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1230
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %38) #20, !dbg !1230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %38, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1202
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), metadata !1190, metadata !DIExpression()) #20, !dbg !1229
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1191, metadata !DIExpression()) #20, !dbg !1229
  %39 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !1191, metadata !DIExpression()) #20, !dbg !1229
  br label %40, !dbg !1232

40:                                               ; preds = %45, %9
  %41 = phi i8* [ %48, %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), %9 ]
  %42 = phi %struct.infomap* [ %46, %45 ], [ %39, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1191, metadata !DIExpression()) #20, !dbg !1229
  %43 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %41) #22, !dbg !1233
  %44 = icmp eq i32 %43, 0, !dbg !1233
  br i1 %44, label %50, label %45, !dbg !1232

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 1, !dbg !1234
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !1191, metadata !DIExpression()) #20, !dbg !1229
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 0, !dbg !1235
  %48 = load i8*, i8** %47, align 8, !dbg !1235, !tbaa !1236
  %49 = icmp eq i8* %48, null, !dbg !1238
  br i1 %49, label %50, label %40, !dbg !1239, !llvm.loop !1240

50:                                               ; preds = %45, %40
  %51 = phi %struct.infomap* [ %46, %45 ], [ %42, %40 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %51, metadata !1191, metadata !DIExpression()) #20, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.infomap* %51, metadata !1191, metadata !DIExpression()) #20, !dbg !1229
  %52 = getelementptr inbounds %struct.infomap, %struct.infomap* %51, i64 0, i32 1, !dbg !1241
  %53 = load i8*, i8** %52, align 8, !dbg !1241, !tbaa !1243
  %54 = icmp eq i8* %53, null, !dbg !1244
  %55 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %53, !dbg !1245
  call void @llvm.dbg.value(metadata i8* %55, metadata !1190, metadata !DIExpression()) #20, !dbg !1229
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #20, !dbg !1246
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0)) #20, !dbg !1246
  %58 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %58, metadata !1198, metadata !DIExpression()) #20, !dbg !1229
  %59 = icmp eq i8* %58, null, !dbg !1248
  br i1 %59, label %67, label %60, !dbg !1250

60:                                               ; preds = %50
  %61 = tail call i32 @strncmp(i8* nonnull %58, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 3) #22, !dbg !1251
  %62 = icmp eq i32 %61, 0, !dbg !1251
  br i1 %62, label %67, label %63, !dbg !1252

63:                                               ; preds = %60
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.34, i64 0, i64 0), i32 5) #20, !dbg !1253
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1253, !tbaa !1211
  %66 = tail call i32 @fputs_unlocked(i8* %64, %struct._IO_FILE* %65) #20, !dbg !1253
  br label %67, !dbg !1255

67:                                               ; preds = %50, %60, %63
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 5) #20, !dbg !1256
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #20, !dbg !1256
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 5) #20, !dbg !1257
  %71 = icmp eq i8* %55, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), !dbg !1257
  %72 = select i1 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1257
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* %55, i8* %72) #20, !dbg !1257
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %38) #20, !dbg !1258
  br label %74

74:                                               ; preds = %67, %4
  tail call void @exit(i32 %0) #23, !dbg !1259
  unreachable, !dbg !1259
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !31 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !41 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !106 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !214 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1260, metadata !DIExpression()), !dbg !1316
  %4 = alloca [2 x i8*], align 16
  call void @llvm.dbg.declare(metadata [2 x i8*]* %4, metadata !1347, metadata !DIExpression()), !dbg !1396
  %5 = alloca [8192 x i8], align 16
  call void @llvm.dbg.declare(metadata [8192 x i8]* %5, metadata !1417, metadata !DIExpression()), !dbg !1442
  %6 = alloca [8192 x i8], align 16
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1273, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1456, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1456, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1472, metadata !DIExpression()), !dbg !1481
  %7 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !1331, metadata !DIExpression()), !dbg !1483
  %8 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !219, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8** %1, metadata !220, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 1, metadata !222, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 10, metadata !226, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 1, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 0, metadata !231, metadata !DIExpression()), !dbg !1484
  %9 = load i8*, i8** %1, align 8, !dbg !1485, !tbaa !1211
  tail call void @set_program_name(i8* %9) #20, !dbg !1486
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #20, !dbg !1487
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #20, !dbg !1488
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #20, !dbg !1489
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1490
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1491
  store i1 false, i1* @print_headers, align 1, !dbg !1492
  store i1 true, i1* @line_end, align 1, !dbg !1493
  %14 = icmp sgt i32 %0, 1, !dbg !1494
  br i1 %14, label %15, label %77, !dbg !1495

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1496
  %17 = load i8*, i8** %16, align 8, !dbg !1496, !tbaa !1211
  %18 = load i8, i8* %17, align 1, !dbg !1496, !tbaa !1497
  %19 = icmp eq i8 %18, 45, !dbg !1498
  br i1 %19, label %20, label %77, !dbg !1499

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1500
  %22 = load i8, i8* %21, align 1, !dbg !1500, !tbaa !1497
  %23 = sext i8 %22 to i32, !dbg !1500
  %24 = add nsw i32 %23, -48, !dbg !1500
  %25 = icmp ult i32 %24, 10, !dbg !1500
  br i1 %25, label %26, label %77, !dbg !1501

26:                                               ; preds = %20, %26
  %27 = phi i8* [ %28, %26 ], [ %21, %20 ], !dbg !1502
  call void @llvm.dbg.value(metadata i8* %27, metadata !233, metadata !DIExpression()), !dbg !1502
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1503
  call void @llvm.dbg.value(metadata i8* %28, metadata !233, metadata !DIExpression()), !dbg !1502
  %29 = load i8, i8* %28, align 1, !dbg !1504, !tbaa !1497
  %30 = sext i8 %29 to i32, !dbg !1504
  %31 = add nsw i32 %30, -48, !dbg !1504
  %32 = icmp ult i32 %31, 10, !dbg !1504
  br i1 %32, label %26, label %33, !dbg !1503, !llvm.loop !1505

33:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %27, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %27, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %27, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %27, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %27, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %27, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8 0, metadata !238, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %28, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8 1, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !1484
  %34 = icmp eq i8 %29, 0, !dbg !1508
  br i1 %34, label %35, label %36, !dbg !1508

35:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 %53, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %54, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %55, metadata !238, metadata !DIExpression()), !dbg !1502
  store i8 0, i8* %28, align 1, !dbg !1510, !tbaa !1497
  call void @llvm.dbg.value(metadata i1 %65, metadata !1511, metadata !DIExpression()) #20, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %21, metadata !1516, metadata !DIExpression()) #20, !dbg !1517
  br label %67, !dbg !1519

36:                                               ; preds = %33, %52
  %37 = phi i8 [ %55, %52 ], [ 0, %33 ]
  %38 = phi i8* [ %56, %52 ], [ %28, %33 ]
  %39 = phi i8 [ %54, %52 ], [ 1, %33 ]
  %40 = phi i32 [ %53, %52 ], [ 0, %33 ]
  %41 = phi i8 [ %57, %52 ], [ %29, %33 ]
  call void @llvm.dbg.value(metadata i8 %37, metadata !238, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %38, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8 %39, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %40, metadata !221, metadata !DIExpression()), !dbg !1484
  %42 = sext i8 %41 to i32, !dbg !1520
  switch i32 %42, label %48 [
    i32 99, label %52
    i32 98, label %43
    i32 107, label %43
    i32 109, label %43
    i32 108, label %44
    i32 113, label %45
    i32 118, label %46
    i32 122, label %47
  ], !dbg !1523

43:                                               ; preds = %36, %36, %36
  call void @llvm.dbg.value(metadata i8 0, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %41, metadata !238, metadata !DIExpression()), !dbg !1502
  br label %52, !dbg !1524

44:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !230, metadata !DIExpression()), !dbg !1484
  br label %52, !dbg !1526

45:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 2, metadata !221, metadata !DIExpression()), !dbg !1484
  br label %52, !dbg !1527

46:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 1, metadata !221, metadata !DIExpression()), !dbg !1484
  br label %52, !dbg !1528

47:                                               ; preds = %36
  store i1 false, i1* @line_end, align 1, !dbg !1529
  br label %52, !dbg !1530

48:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %38, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %38, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %38, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %38, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %38, metadata !233, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %38, metadata !233, metadata !DIExpression()), !dbg !1502
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #20, !dbg !1531
  %50 = load i8, i8* %38, align 1, !dbg !1532, !tbaa !1497
  %51 = sext i8 %50 to i32, !dbg !1532
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49, i32 %51) #20, !dbg !1533
  tail call void @usage(i32 1) #24, !dbg !1534
  unreachable, !dbg !1534

52:                                               ; preds = %36, %43, %44, %45, %46, %47
  %53 = phi i32 [ %40, %47 ], [ 1, %46 ], [ 2, %45 ], [ %40, %44 ], [ %40, %43 ], [ %40, %36 ], !dbg !1484
  %54 = phi i8 [ %39, %47 ], [ %39, %46 ], [ %39, %45 ], [ 1, %44 ], [ 0, %43 ], [ 0, %36 ], !dbg !1484
  %55 = phi i8 [ %37, %47 ], [ %37, %46 ], [ %37, %45 ], [ %37, %44 ], [ %41, %43 ], [ 0, %36 ], !dbg !1502
  call void @llvm.dbg.value(metadata i8 %55, metadata !238, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8 %54, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %53, metadata !221, metadata !DIExpression()), !dbg !1484
  %56 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1535
  call void @llvm.dbg.value(metadata i8* %56, metadata !233, metadata !DIExpression()), !dbg !1502
  %57 = load i8, i8* %56, align 1, !dbg !1536, !tbaa !1497
  %58 = icmp eq i8 %57, 0, !dbg !1508
  br i1 %58, label %59, label %36, !dbg !1508, !llvm.loop !1537

59:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i32 %53, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %54, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %55, metadata !238, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %53, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %54, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %55, metadata !238, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %53, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %54, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %55, metadata !238, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %53, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %54, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %55, metadata !238, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %53, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %54, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %55, metadata !238, metadata !DIExpression()), !dbg !1502
  store i8 %55, i8* %28, align 1, !dbg !1510, !tbaa !1497
  %60 = icmp eq i8 %55, 0, !dbg !1539
  br i1 %60, label %63, label %61, !dbg !1541

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !1542
  call void @llvm.dbg.value(metadata i8* %62, metadata !237, metadata !DIExpression()), !dbg !1502
  store i8 0, i8* %62, align 1, !dbg !1543, !tbaa !1497
  br label %63, !dbg !1544

63:                                               ; preds = %59, %61
  %64 = and i8 %54, 1, !dbg !1545
  %65 = icmp eq i8 %64, 0, !dbg !1545
  call void @llvm.dbg.value(metadata i1 %65, metadata !1511, metadata !DIExpression()) #20, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %21, metadata !1516, metadata !DIExpression()) #20, !dbg !1517
  %66 = select i1 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), !dbg !1519
  br label %67, !dbg !1519

67:                                               ; preds = %63, %35
  %68 = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), %35 ], [ %66, %63 ]
  %69 = phi i32 [ 0, %35 ], [ %53, %63 ]
  %70 = phi i8 [ 1, %35 ], [ %54, %63 ]
  %71 = tail call i8* @dcgettext(i8* null, i8* %68, i32 5) #20, !dbg !1517
  %72 = tail call i64 @xdectoumax(i8* nonnull %21, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %71, i32 0) #20, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %72, metadata !226, metadata !DIExpression()), !dbg !1484
  %73 = bitcast i8** %1 to i64*, !dbg !1547
  %74 = load i64, i64* %73, align 8, !dbg !1547, !tbaa !1211
  %75 = bitcast i8** %16 to i64*, !dbg !1548
  store i64 %74, i64* %75, align 8, !dbg !1548, !tbaa !1211
  call void @llvm.dbg.value(metadata i8** %16, metadata !220, metadata !DIExpression()), !dbg !1484
  %76 = add nsw i32 %0, -1, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %76, metadata !219, metadata !DIExpression()), !dbg !1484
  br label %77, !dbg !1550

77:                                               ; preds = %67, %20, %15, %2
  %78 = phi i32 [ %69, %67 ], [ 0, %20 ], [ 0, %15 ], [ 0, %2 ], !dbg !1551
  %79 = phi i8** [ %16, %67 ], [ %1, %20 ], [ %1, %15 ], [ %1, %2 ]
  %80 = phi i64 [ %72, %67 ], [ 10, %20 ], [ 10, %15 ], [ 10, %2 ], !dbg !1484
  %81 = phi i8 [ %70, %67 ], [ 1, %20 ], [ 1, %15 ], [ 1, %2 ], !dbg !1552
  %82 = phi i32 [ %76, %67 ], [ %0, %20 ], [ %0, %15 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %82, metadata !219, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %81, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %80, metadata !226, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8** %79, metadata !220, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %78, metadata !221, metadata !DIExpression()), !dbg !1484
  br label %83, !dbg !1553

83:                                               ; preds = %121, %77
  %84 = phi i32 [ %78, %77 ], [ %122, %121 ]
  %85 = phi i64 [ %80, %77 ], [ %89, %121 ]
  %86 = phi i8 [ %81, %77 ], [ %90, %121 ]
  %87 = phi i8 [ 0, %77 ], [ %91, %121 ]
  br label %88, !dbg !1553

88:                                               ; preds = %115, %83
  %89 = phi i64 [ %85, %83 ], [ %116, %115 ]
  %90 = phi i8 [ %86, %83 ], [ %117, %115 ]
  %91 = phi i8 [ %87, %83 ], [ %119, %115 ]
  br label %92, !dbg !1553

92:                                               ; preds = %124, %88
  call void @llvm.dbg.value(metadata i8 %91, metadata !231, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %90, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %89, metadata !226, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %84, metadata !221, metadata !DIExpression()), !dbg !1484
  %93 = tail call i32 @getopt_long(i32 %82, i8** %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #20, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %93, metadata !224, metadata !DIExpression()), !dbg !1484
  switch i32 %93, label %129 [
    i32 -1, label %135
    i32 128, label %94
    i32 99, label %95
    i32 110, label %105
    i32 113, label %121
    i32 118, label %120
    i32 122, label %123
    i32 -130, label %125
    i32 -131, label %126
  ], !dbg !1553, !llvm.loop !1555

94:                                               ; preds = %92
  store i1 true, i1* @presume_input_pipe, align 1, !dbg !1557
  br label %124, !dbg !1560

95:                                               ; preds = %92
  call void @llvm.dbg.value(metadata i8 0, metadata !230, metadata !DIExpression()), !dbg !1484
  %96 = load i8*, i8** @optarg, align 8, !dbg !1561, !tbaa !1211
  %97 = load i8, i8* %96, align 1, !dbg !1562, !tbaa !1497
  %98 = icmp eq i8 %97, 45, !dbg !1563
  call void @llvm.dbg.value(metadata i1 %98, metadata !231, metadata !DIExpression()), !dbg !1484
  br i1 %98, label %99, label %101, !dbg !1564

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !1565
  store i8* %100, i8** @optarg, align 8, !dbg !1565, !tbaa !1211
  br label %101, !dbg !1565

101:                                              ; preds = %99, %95
  %102 = phi i8* [ %100, %99 ], [ %96, %95 ], !dbg !1567
  call void @llvm.dbg.value(metadata i1 false, metadata !1511, metadata !DIExpression()) #20, !dbg !1568
  call void @llvm.dbg.value(metadata i8* %102, metadata !1516, metadata !DIExpression()) #20, !dbg !1568
  %103 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 5) #20, !dbg !1570
  %104 = tail call i64 @xdectoumax(i8* %102, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %103, i32 0) #20, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %104, metadata !226, metadata !DIExpression()), !dbg !1484
  br label %115, !dbg !1572

105:                                              ; preds = %92
  call void @llvm.dbg.value(metadata i8 1, metadata !230, metadata !DIExpression()), !dbg !1484
  %106 = load i8*, i8** @optarg, align 8, !dbg !1573, !tbaa !1211
  %107 = load i8, i8* %106, align 1, !dbg !1574, !tbaa !1497
  %108 = icmp eq i8 %107, 45, !dbg !1575
  call void @llvm.dbg.value(metadata i1 %108, metadata !231, metadata !DIExpression()), !dbg !1484
  br i1 %108, label %109, label %111, !dbg !1576

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1577
  store i8* %110, i8** @optarg, align 8, !dbg !1577, !tbaa !1211
  br label %111, !dbg !1577

111:                                              ; preds = %109, %105
  %112 = phi i8* [ %110, %109 ], [ %106, %105 ], !dbg !1579
  call void @llvm.dbg.value(metadata i1 true, metadata !1511, metadata !DIExpression()) #20, !dbg !1580
  call void @llvm.dbg.value(metadata i8* %112, metadata !1516, metadata !DIExpression()) #20, !dbg !1580
  %113 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 5) #20, !dbg !1582
  %114 = tail call i64 @xdectoumax(i8* %112, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %113, i32 0) #20, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %114, metadata !226, metadata !DIExpression()), !dbg !1484
  br label %115, !dbg !1584

115:                                              ; preds = %111, %101
  %116 = phi i64 [ %104, %101 ], [ %114, %111 ]
  %117 = phi i8 [ 0, %101 ], [ 1, %111 ]
  %118 = phi i1 [ %98, %101 ], [ %108, %111 ]
  %119 = zext i1 %118 to i8, !dbg !1585
  br label %88, !dbg !1553, !llvm.loop !1555

120:                                              ; preds = %92
  call void @llvm.dbg.value(metadata i32 1, metadata !221, metadata !DIExpression()), !dbg !1484
  br label %121, !dbg !1586

121:                                              ; preds = %92, %120
  %122 = phi i32 [ 1, %120 ], [ 2, %92 ]
  br label %83, !dbg !1553, !llvm.loop !1555

123:                                              ; preds = %92
  store i1 false, i1* @line_end, align 1, !dbg !1587
  br label %124, !dbg !1588

124:                                              ; preds = %123, %94
  br label %92, !dbg !1484, !llvm.loop !1555

125:                                              ; preds = %92
  tail call void @usage(i32 0) #24, !dbg !1589
  unreachable, !dbg !1589

126:                                              ; preds = %92
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1590, !tbaa !1211
  %128 = load i8*, i8** @Version, align 8, !dbg !1590, !tbaa !1211
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* null) #20, !dbg !1590
  tail call void @exit(i32 0) #23, !dbg !1590
  unreachable, !dbg !1590

129:                                              ; preds = %92
  %130 = add i32 %93, -48, !dbg !1591
  %131 = icmp ult i32 %130, 10, !dbg !1591
  br i1 %131, label %132, label %134, !dbg !1593

132:                                              ; preds = %129
  %133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #20, !dbg !1594
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %133, i32 %93) #20, !dbg !1595
  br label %134, !dbg !1595

134:                                              ; preds = %132, %129
  tail call void @usage(i32 1) #24, !dbg !1596
  unreachable, !dbg !1596

135:                                              ; preds = %92
  call void @llvm.dbg.value(metadata i32 %84, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %89, metadata !226, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %90, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %91, metadata !231, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %84, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %89, metadata !226, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %90, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %91, metadata !231, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %84, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %89, metadata !226, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %90, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %91, metadata !231, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %84, metadata !221, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %89, metadata !226, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %90, metadata !230, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 %91, metadata !231, metadata !DIExpression()), !dbg !1484
  switch i32 %84, label %141 [
    i32 1, label %140
    i32 0, label %136
  ], !dbg !1597

136:                                              ; preds = %135
  %137 = load i32, i32* @optind, align 4, !dbg !1599, !tbaa !1600
  %138 = add nsw i32 %82, -1, !dbg !1602
  %139 = icmp slt i32 %137, %138, !dbg !1603
  br i1 %139, label %140, label %141, !dbg !1604

140:                                              ; preds = %135, %136
  store i1 true, i1* @print_headers, align 1, !dbg !1605
  br label %141, !dbg !1606

141:                                              ; preds = %135, %140, %136
  %142 = and i8 %90, 1, !dbg !1607
  %143 = icmp ne i8 %142, 0, !dbg !1607
  br i1 %143, label %153, label %144, !dbg !1608

144:                                              ; preds = %141
  %145 = icmp ne i8 %91, 0, !dbg !1609
  %146 = icmp slt i64 %89, 0, !dbg !1610
  %147 = and i1 %146, %145, !dbg !1611
  br i1 %147, label %148, label %153, !dbg !1611

148:                                              ; preds = %144
  %149 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1612
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %149) #20, !dbg !1612
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !239, metadata !DIExpression()), !dbg !1613
  %150 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 5) #20, !dbg !1614
  %151 = call i8* @umaxtostr(i64 %89, i8* nonnull %149) #20, !dbg !1614
  %152 = call i8* @quote(i8* %151) #20, !dbg !1614
  call void (i32, i32, i8*, ...) @error(i32 1, i32 75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %150, i8* %152) #20, !dbg !1614
  unreachable, !dbg !1614

153:                                              ; preds = %144, %141
  %154 = load i32, i32* @optind, align 4, !dbg !1615, !tbaa !1600
  %155 = icmp slt i32 %154, %82, !dbg !1616
  %156 = sext i32 %154 to i64, !dbg !1615
  %157 = getelementptr inbounds i8*, i8** %79, i64 %156, !dbg !1615
  %158 = select i1 %155, i8** %157, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.default_file_list, i64 0, i64 0), !dbg !1615
  call void @llvm.dbg.value(metadata i8** %158, metadata !232, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 undef, metadata !222, metadata !DIExpression()), !dbg !1484
  %159 = load i8*, i8** %158, align 8, !dbg !1617, !tbaa !1211
  %160 = icmp eq i8* %159, null, !dbg !1618
  br i1 %160, label %829, label %161, !dbg !1618

161:                                              ; preds = %153
  %162 = icmp eq i8 %91, 0, !dbg !1619
  %163 = bitcast %struct.stat* %7 to i8*, !dbg !1620
  %164 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 3, !dbg !1621
  %165 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 8, !dbg !1629
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 9, !dbg !1630
  %167 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0, !dbg !1631
  %168 = add i64 %89, 8192, !dbg !1632
  %169 = icmp ult i64 %89, 1048577, !dbg !1633
  %170 = and i64 %89, 8191, !dbg !1634
  %171 = sub nuw nsw i64 8192, %170, !dbg !1634
  %172 = add i64 %171, %89, !dbg !1634
  %173 = lshr i64 %172, 13, !dbg !1634
  %174 = add nuw nsw i64 %173, 1, !dbg !1634
  %175 = lshr i64 %174, 1, !dbg !1635
  %176 = icmp ult i64 %174, 16, !dbg !1643
  %177 = select i1 %176, i64 %174, i64 16, !dbg !1643
  %178 = icmp eq i64 %171, 0, !dbg !1644
  %179 = bitcast [2 x i8*]* %4 to i8*, !dbg !1645
  %180 = icmp ugt i64 %168, 4611686018427387903, !dbg !1646
  %181 = shl nuw nsw i64 %168, 1, !dbg !1655
  %182 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0, !dbg !1645
  %183 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1, !dbg !1645
  %184 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0, !dbg !1656
  %185 = icmp ne i64 %89, 0, !dbg !1656
  %186 = ptrtoint [8192 x i8]* %5 to i64, !dbg !1657
  %187 = icmp eq i64 %89, 0, !dbg !1658
  %188 = bitcast %struct.stat* %3 to i8*, !dbg !1693
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !1694
  br label %190, !dbg !1618

190:                                              ; preds = %161, %819
  %191 = phi i8* [ %159, %161 ], [ %824, %819 ]
  %192 = phi i64 [ 0, %161 ], [ %822, %819 ]
  %193 = phi i1 [ true, %161 ], [ %821, %819 ]
  call void @llvm.dbg.value(metadata i64 %192, metadata !225, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %191, metadata !1337, metadata !DIExpression()) #20, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %89, metadata !1338, metadata !DIExpression()) #20, !dbg !1696
  call void @llvm.dbg.value(metadata i1 %143, metadata !1339, metadata !DIExpression()) #20, !dbg !1696
  call void @llvm.dbg.value(metadata i1 %162, metadata !1340, metadata !DIExpression()) #20, !dbg !1696
  %194 = call i32 @strcmp(i8* nonnull dereferenceable(1) %191, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #22, !dbg !1697
  %195 = icmp eq i32 %194, 0, !dbg !1697
  call void @llvm.dbg.value(metadata i1 %195, metadata !1343, metadata !DIExpression()) #20, !dbg !1696
  br i1 %195, label %196, label %198, !dbg !1698

196:                                              ; preds = %190
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1699
  call void @llvm.dbg.value(metadata i32 0, metadata !1341, metadata !DIExpression()) #20, !dbg !1696
  %197 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i32 5) #20, !dbg !1702
  call void @llvm.dbg.value(metadata i8* %197, metadata !1337, metadata !DIExpression()) #20, !dbg !1696
  br label %206, !dbg !1703

198:                                              ; preds = %190
  %199 = call i32 (i8*, i32, ...) @open(i8* nonnull %191, i32 0) #20, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %199, metadata !1341, metadata !DIExpression()) #20, !dbg !1696
  %200 = icmp slt i32 %199, 0, !dbg !1706
  br i1 %200, label %201, label %206, !dbg !1708

201:                                              ; preds = %198
  %202 = tail call i32* @__errno_location() #25, !dbg !1709
  %203 = load i32, i32* %202, align 4, !dbg !1709, !tbaa !1600
  %204 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 5) #20, !dbg !1711
  %205 = call i8* @quotearg_style(i32 4, i8* nonnull %191) #20, !dbg !1712
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %203, i8* %204, i8* %205) #20, !dbg !1713
  br label %819, !dbg !1714

206:                                              ; preds = %198, %196
  %207 = phi i32 [ 0, %196 ], [ %199, %198 ], !dbg !1715
  %208 = phi i8* [ %197, %196 ], [ %191, %198 ]
  call void @llvm.dbg.value(metadata i8* %208, metadata !1337, metadata !DIExpression()) #20, !dbg !1696
  call void @llvm.dbg.value(metadata i32 %207, metadata !1341, metadata !DIExpression()) #20, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %208, metadata !1323, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i32 %207, metadata !1324, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %89, metadata !1325, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i1 %143, metadata !1326, metadata !DIExpression()) #20, !dbg !1716
  call void @llvm.dbg.value(metadata i1 %162, metadata !1327, metadata !DIExpression()) #20, !dbg !1716
  %209 = load i1, i1* @print_headers, align 1, !dbg !1717
  br i1 %209, label %210, label %214, !dbg !1719

210:                                              ; preds = %206
  call void @llvm.dbg.value(metadata i8* %208, metadata !264, metadata !DIExpression()) #20, !dbg !1720
  %211 = load i1, i1* @write_header.first_file, align 1, !dbg !1722
  %212 = select i1 %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1722
  %213 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* %212, i8* %208) #20, !dbg !1722
  store i1 true, i1* @write_header.first_file, align 1, !dbg !1723
  br label %214, !dbg !1724

214:                                              ; preds = %210, %206
  br i1 %162, label %746, label %215, !dbg !1725

215:                                              ; preds = %214
  call void @llvm.dbg.value(metadata i64 -1, metadata !1328, metadata !DIExpression()) #20, !dbg !1620
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %163) #20, !dbg !1726
  call void @llvm.dbg.value(metadata i32 %207, metadata !1727, metadata !DIExpression()) #20, !dbg !1735
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1734, metadata !DIExpression()) #20, !dbg !1735
  %216 = call i32 @__fxstat(i32 1, i32 %207, %struct.stat* nonnull %7) #20, !dbg !1738
  %217 = icmp eq i32 %216, 0, !dbg !1739
  br i1 %217, label %223, label %218, !dbg !1740

218:                                              ; preds = %215
  %219 = tail call i32* @__errno_location() #25, !dbg !1741
  %220 = load i32, i32* %219, align 4, !dbg !1741, !tbaa !1600
  %221 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #20, !dbg !1743
  %222 = call i8* @quotearg_style(i32 4, i8* %208) #20, !dbg !1744
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %220, i8* %221, i8* %222) #20, !dbg !1745
  br label %744, !dbg !1746

223:                                              ; preds = %215
  %224 = load i1, i1* @presume_input_pipe, align 1, !dbg !1747
  br i1 %224, label %234, label %225, !dbg !1748

225:                                              ; preds = %223
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1626, metadata !DIExpression()) #20, !dbg !1621
  %226 = load i32, i32* %164, align 8, !dbg !1749, !tbaa !1750
  %227 = trunc i32 %226 to i16, !dbg !1754
  %228 = and i16 %227, -4096, !dbg !1754
  switch i16 %228, label %234 [
    i16 -32768, label %229
    i16 -24576, label %229
  ], !dbg !1754

229:                                              ; preds = %225, %225
  %230 = call fastcc i64 @elseek(i32 %207, i64 0, i32 1, i8* %208) #20, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %230, metadata !1328, metadata !DIExpression()) #20, !dbg !1620
  %231 = icmp slt i64 %230, 0, !dbg !1757
  br i1 %231, label %744, label %232, !dbg !1759

232:                                              ; preds = %229
  %233 = load i1, i1* @presume_input_pipe, align 1, !dbg !1629
  br label %234, !dbg !1759

234:                                              ; preds = %232, %225, %223
  %235 = phi i1 [ true, %223 ], [ %233, %232 ], [ false, %225 ], !dbg !1629
  %236 = phi i64 [ -1, %223 ], [ %230, %232 ], [ -1, %225 ], !dbg !1620
  call void @llvm.dbg.value(metadata i64 %236, metadata !1328, metadata !DIExpression()) #20, !dbg !1620
  %237 = load i64, i64* %165, align 8, !dbg !1629, !tbaa !1760
  %238 = icmp slt i64 %236, 0, !dbg !1629
  %239 = or i1 %235, %238, !dbg !1629
  br i1 %143, label %240, label %546, !dbg !1761

240:                                              ; preds = %234
  call void @llvm.dbg.value(metadata i8* %208, metadata !1448, metadata !DIExpression()) #20, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %207, metadata !1449, metadata !DIExpression()) #20, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %89, metadata !1450, metadata !DIExpression()) #20, !dbg !1762
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1451, metadata !DIExpression()) #20, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %236, metadata !1452, metadata !DIExpression()) #20, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %237, metadata !1453, metadata !DIExpression()) #20, !dbg !1762
  br i1 %239, label %248, label %241, !dbg !1763

241:                                              ; preds = %240
  %242 = load i64, i64* %166, align 8, !dbg !1764, !tbaa !1765
  %243 = icmp sgt i64 %242, 0, !dbg !1764
  %244 = icmp ult i64 %242, 2305843009213693953, !dbg !1764
  %245 = and i1 %243, %244, !dbg !1764
  %246 = select i1 %245, i64 %242, i64 512, !dbg !1764
  %247 = icmp sgt i64 %237, %246, !dbg !1766
  br i1 %247, label %447, label %248, !dbg !1767

248:                                              ; preds = %241, %240
  call void @llvm.dbg.value(metadata i8* %208, metadata !1663, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %207, metadata !1664, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %89, metadata !1665, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %236, metadata !1666, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %236, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, metadata !1681, metadata !DIExpression()) #20, !dbg !1768
  %249 = call noalias i8* @xmalloc(i64 8216) #20, !dbg !1769
  %250 = bitcast i8* %249 to %struct.linebuffer*, !dbg !1769
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1678, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1668, metadata !DIExpression()) #20, !dbg !1768
  %251 = getelementptr inbounds i8, i8* %249, i64 8192, !dbg !1770
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %251, i8 0, i64 24, i1 false) #20, !dbg !1771
  %252 = call noalias i8* @xmalloc(i64 8216) #20, !dbg !1772
  call void @llvm.dbg.value(metadata i8* %252, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %236, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1668, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1678, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  %253 = call i64 @safe_read(i32 %207, i8* %252, i64 8192) #20, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %253, metadata !1682, metadata !DIExpression()) #20, !dbg !1768
  %254 = add i64 %253, 1, !dbg !1774
  %255 = icmp ult i64 %254, 2, !dbg !1774
  br i1 %255, label %337, label %256, !dbg !1774

256:                                              ; preds = %248
  call void @llvm.dbg.value(metadata i8* %252, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  br i1 %187, label %278, label %257, !dbg !1774

257:                                              ; preds = %256
  %258 = bitcast i8* %252 to %struct.linebuffer*, !dbg !1772
  call void @llvm.dbg.value(metadata %struct.linebuffer* %258, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  br label %259, !dbg !1776

259:                                              ; preds = %327, %257
  %260 = phi i64 [ %334, %327 ], [ %253, %257 ]
  %261 = phi i8* [ %333, %327 ], [ %252, %257 ]
  %262 = phi i64 [ %332, %327 ], [ %236, %257 ]
  %263 = phi %struct.linebuffer* [ %331, %327 ], [ %250, %257 ]
  %264 = phi %struct.linebuffer* [ %330, %327 ], [ %250, %257 ]
  %265 = phi i64 [ %329, %327 ], [ 0, %257 ]
  %266 = phi %struct.linebuffer* [ %328, %327 ], [ %258, %257 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, metadata !1668, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %264, metadata !1678, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %265, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %266, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %262, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  %267 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %266, i64 0, i32 1, !dbg !1777
  store i64 %260, i64* %267, align 8, !dbg !1778, !tbaa !1779
  %268 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %266, i64 0, i32 2, !dbg !1781
  %269 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %266, i64 0, i32 0, i64 %260, !dbg !1782
  call void @llvm.dbg.value(metadata i8* %269, metadata !1683, metadata !DIExpression()) #20, !dbg !1783
  call void @llvm.dbg.value(metadata i8* %261, metadata !1685, metadata !DIExpression()) #20, !dbg !1783
  %270 = bitcast i64* %268 to i8*, !dbg !1784
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %270, i8 0, i64 16, i1 false) #20, !dbg !1785
  %271 = load i1, i1* @line_end, align 1, !dbg !1784
  %272 = select i1 %271, i32 10, i32 0, !dbg !1784
  %273 = ptrtoint i8* %269 to i64, !dbg !1786
  %274 = ptrtoint i8* %261 to i64, !dbg !1786
  %275 = sub i64 %273, %274, !dbg !1786
  %276 = call i8* @memchr(i8* nonnull %261, i32 %272, i64 %275) #22, !dbg !1787
  call void @llvm.dbg.value(metadata i8* %276, metadata !1685, metadata !DIExpression()) #20, !dbg !1783
  %277 = icmp eq i8* %276, null, !dbg !1788
  br i1 %277, label %294, label %285, !dbg !1788

278:                                              ; preds = %256, %278
  %279 = phi i64 [ %282, %278 ], [ %253, %256 ]
  %280 = phi i64 [ %281, %278 ], [ %236, %256 ]
  call void @llvm.dbg.value(metadata i64 %280, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  %281 = add i64 %280, %279, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %281, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  call fastcc void @xwrite_stdout(i8* %252, i64 %279) #20, !dbg !1791
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1668, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %250, metadata !1678, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %266, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  %282 = call i64 @safe_read(i32 %207, i8* %252, i64 8192) #20, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %282, metadata !1682, metadata !DIExpression()) #20, !dbg !1768
  %283 = add i64 %282, 1, !dbg !1774
  %284 = icmp ult i64 %283, 2, !dbg !1774
  br i1 %284, label %337, label %278, !dbg !1774, !llvm.loop !1792

285:                                              ; preds = %259, %285
  %286 = phi i64 [ %289, %285 ], [ 0, %259 ], !dbg !1794
  %287 = phi i8* [ %292, %285 ], [ %276, %259 ]
  %288 = getelementptr inbounds i8, i8* %287, i64 1, !dbg !1796
  call void @llvm.dbg.value(metadata i8* %288, metadata !1685, metadata !DIExpression()) #20, !dbg !1783
  %289 = add i64 %286, 1, !dbg !1794
  store i64 %289, i64* %268, align 8, !dbg !1794, !tbaa !1797
  %290 = ptrtoint i8* %288 to i64, !dbg !1786
  %291 = sub i64 %273, %290, !dbg !1786
  %292 = call i8* @memchr(i8* nonnull %288, i32 %272, i64 %291) #22, !dbg !1787
  call void @llvm.dbg.value(metadata i8* %292, metadata !1685, metadata !DIExpression()) #20, !dbg !1783
  %293 = icmp eq i8* %292, null, !dbg !1788
  br i1 %293, label %294, label %285, !dbg !1788, !llvm.loop !1798

294:                                              ; preds = %285, %259
  %295 = phi i64 [ 0, %259 ], [ %289, %285 ], !dbg !1800
  %296 = add i64 %295, %265, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %296, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  %297 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %264, i64 0, i32 1, !dbg !1802
  %298 = load i64, i64* %297, align 8, !dbg !1802, !tbaa !1779
  %299 = add i64 %298, %260, !dbg !1804
  %300 = icmp ult i64 %299, 8192, !dbg !1805
  br i1 %300, label %301, label %309, !dbg !1806

301:                                              ; preds = %294
  %302 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %264, i64 0, i32 0, i64 %298, !dbg !1807
  call void @llvm.dbg.value(metadata i8* %302, metadata !1809, metadata !DIExpression()) #20, !dbg !1819
  call void @llvm.dbg.value(metadata i8* %261, metadata !1817, metadata !DIExpression()) #20, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %260, metadata !1818, metadata !DIExpression()) #20, !dbg !1819
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %302, i8* nonnull align 1 %261, i64 %260, i1 false) #20, !dbg !1821
  %303 = bitcast i64* %267 to <2 x i64>*, !dbg !1822
  %304 = load <2 x i64>, <2 x i64>* %303, align 8, !dbg !1822, !tbaa !1823
  %305 = bitcast i64* %297 to <2 x i64>*, !dbg !1824
  %306 = load <2 x i64>, <2 x i64>* %305, align 8, !dbg !1824, !tbaa !1823
  %307 = add <2 x i64> %306, %304, !dbg !1824
  %308 = bitcast i64* %297 to <2 x i64>*, !dbg !1824
  store <2 x i64> %307, <2 x i64>* %308, align 8, !dbg !1824, !tbaa !1823
  br label %327, !dbg !1825

309:                                              ; preds = %294
  %310 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %264, i64 0, i32 3, !dbg !1826
  store %struct.linebuffer* %266, %struct.linebuffer** %310, align 8, !dbg !1828, !tbaa !1829
  call void @llvm.dbg.value(metadata %struct.linebuffer* %266, metadata !1678, metadata !DIExpression()) #20, !dbg !1768
  %311 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 2, !dbg !1830
  %312 = load i64, i64* %311, align 8, !dbg !1830, !tbaa !1797
  %313 = sub i64 %296, %312, !dbg !1832
  %314 = icmp ugt i64 %313, %89, !dbg !1833
  br i1 %314, label %315, label %324, !dbg !1834

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 1, !dbg !1835
  %317 = load i64, i64* %316, align 8, !dbg !1835, !tbaa !1779
  %318 = add i64 %317, %262, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %318, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  %319 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 0, i64 0, !dbg !1838
  call fastcc void @xwrite_stdout(i8* %319, i64 %317) #20, !dbg !1839
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  %320 = load i64, i64* %311, align 8, !dbg !1840, !tbaa !1797
  %321 = sub i64 %296, %320, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %321, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  %322 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 3, !dbg !1842
  %323 = load %struct.linebuffer*, %struct.linebuffer** %322, align 8, !dbg !1842, !tbaa !1829
  call void @llvm.dbg.value(metadata %struct.linebuffer* %323, metadata !1668, metadata !DIExpression()) #20, !dbg !1768
  br label %327, !dbg !1843

324:                                              ; preds = %309
  %325 = call noalias i8* @xmalloc(i64 8216) #20, !dbg !1844
  %326 = bitcast i8* %325 to %struct.linebuffer*, !dbg !1844
  call void @llvm.dbg.value(metadata %struct.linebuffer* %326, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  br label %327

327:                                              ; preds = %324, %315, %301
  %328 = phi %struct.linebuffer* [ %266, %301 ], [ %263, %315 ], [ %326, %324 ], !dbg !1768
  %329 = phi i64 [ %296, %301 ], [ %321, %315 ], [ %296, %324 ], !dbg !1845
  %330 = phi %struct.linebuffer* [ %264, %301 ], [ %266, %315 ], [ %266, %324 ], !dbg !1768
  %331 = phi %struct.linebuffer* [ %263, %301 ], [ %323, %315 ], [ %263, %324 ], !dbg !1768
  %332 = phi i64 [ %262, %301 ], [ %318, %315 ], [ %262, %324 ], !dbg !1768
  call void @llvm.dbg.value(metadata i64 %332, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %331, metadata !1668, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %330, metadata !1678, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %329, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %328, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  %333 = getelementptr %struct.linebuffer, %struct.linebuffer* %328, i64 0, i32 0, i64 0, !dbg !1846
  %334 = call i64 @safe_read(i32 %207, i8* %333, i64 8192) #20, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %334, metadata !1682, metadata !DIExpression()) #20, !dbg !1768
  %335 = add i64 %334, 1, !dbg !1774
  %336 = icmp ult i64 %335, 2, !dbg !1774
  br i1 %336, label %337, label %259, !dbg !1774, !llvm.loop !1847

337:                                              ; preds = %327, %278, %248
  %338 = phi i64 [ 0, %248 ], [ 0, %278 ], [ %329, %327 ]
  %339 = phi %struct.linebuffer* [ %250, %248 ], [ %250, %278 ], [ %330, %327 ]
  %340 = phi %struct.linebuffer* [ %250, %248 ], [ %250, %278 ], [ %331, %327 ]
  %341 = phi i64 [ %236, %248 ], [ %281, %278 ], [ %332, %327 ], !dbg !1768
  %342 = phi i8* [ %252, %248 ], [ %252, %278 ], [ %333, %327 ], !dbg !1846
  %343 = phi i64 [ %253, %248 ], [ %282, %278 ], [ %334, %327 ], !dbg !1773
  call void @llvm.dbg.value(metadata i64 %341, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  %344 = icmp eq i64 %343, -1, !dbg !1848
  call void @free(i8* %342) #20, !dbg !1849
  br i1 %344, label %345, label %350, !dbg !1850

345:                                              ; preds = %337
  %346 = tail call i32* @__errno_location() #25, !dbg !1851
  %347 = load i32, i32* %346, align 4, !dbg !1851, !tbaa !1600
  %348 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #20, !dbg !1854
  %349 = call i8* @quotearg_style(i32 4, i8* %208) #20, !dbg !1855
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %347, i8* %348, i8* %349) #20, !dbg !1856
  call void @llvm.dbg.value(metadata i8 0, metadata !1681, metadata !DIExpression()) #20, !dbg !1768
  br label %427, !dbg !1857

350:                                              ; preds = %337
  %351 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %339, i64 0, i32 1, !dbg !1858
  %352 = load i64, i64* %351, align 8, !dbg !1858, !tbaa !1779
  %353 = icmp eq i64 %352, 0, !dbg !1860
  br i1 %353, label %367, label %354, !dbg !1861

354:                                              ; preds = %350
  %355 = add i64 %352, -1, !dbg !1862
  %356 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %339, i64 0, i32 0, i64 %355, !dbg !1863
  %357 = load i8, i8* %356, align 1, !dbg !1863, !tbaa !1497
  %358 = sext i8 %357 to i32, !dbg !1863
  %359 = load i1, i1* @line_end, align 1, !dbg !1864
  %360 = select i1 %359, i32 10, i32 0, !dbg !1864
  %361 = icmp eq i32 %360, %358, !dbg !1865
  br i1 %361, label %367, label %362, !dbg !1866

362:                                              ; preds = %354
  %363 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %339, i64 0, i32 2, !dbg !1867
  %364 = load i64, i64* %363, align 8, !dbg !1869, !tbaa !1797
  %365 = add i64 %364, 1, !dbg !1869
  store i64 %365, i64* %363, align 8, !dbg !1869, !tbaa !1797
  %366 = add i64 %338, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %366, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  br label %367, !dbg !1871

367:                                              ; preds = %362, %354, %350
  %368 = phi i64 [ %366, %362 ], [ %338, %354 ], [ %338, %350 ], !dbg !1768
  call void @llvm.dbg.value(metadata i64 %368, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %340, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %341, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  %369 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %340, i64 0, i32 2, !dbg !1872
  %370 = load i64, i64* %369, align 8, !dbg !1872, !tbaa !1797
  %371 = sub i64 %368, %370, !dbg !1875
  %372 = icmp ugt i64 %371, %89, !dbg !1876
  br i1 %372, label %373, label %390, !dbg !1877

373:                                              ; preds = %367, %373
  %374 = phi i64* [ %386, %373 ], [ %369, %367 ]
  %375 = phi i64 [ %380, %373 ], [ %341, %367 ]
  %376 = phi i64 [ %383, %373 ], [ %368, %367 ]
  %377 = phi %struct.linebuffer* [ %385, %373 ], [ %340, %367 ]
  call void @llvm.dbg.value(metadata i64 %375, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %376, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.linebuffer* %377, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  %378 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %377, i64 0, i32 1, !dbg !1878
  %379 = load i64, i64* %378, align 8, !dbg !1878, !tbaa !1779
  %380 = add i64 %379, %375, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %380, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  %381 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %377, i64 0, i32 0, i64 0, !dbg !1881
  call fastcc void @xwrite_stdout(i8* %381, i64 %379) #20, !dbg !1882
  %382 = load i64, i64* %374, align 8, !dbg !1883, !tbaa !1797
  %383 = sub i64 %376, %382, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %383, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  %384 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %377, i64 0, i32 3, !dbg !1885
  %385 = load %struct.linebuffer*, %struct.linebuffer** %384, align 8, !dbg !1885, !tbaa !1829
  call void @llvm.dbg.value(metadata %struct.linebuffer* %385, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  %386 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %385, i64 0, i32 2, !dbg !1872
  %387 = load i64, i64* %386, align 8, !dbg !1872, !tbaa !1797
  %388 = sub i64 %383, %387, !dbg !1875
  %389 = icmp ugt i64 %388, %89, !dbg !1876
  br i1 %389, label %373, label %390, !dbg !1877, !llvm.loop !1886

390:                                              ; preds = %373, %367
  %391 = phi i64 [ %370, %367 ], [ %387, %373 ]
  %392 = phi %struct.linebuffer* [ %340, %367 ], [ %385, %373 ], !dbg !1888
  %393 = phi i64 [ %368, %367 ], [ %383, %373 ], !dbg !1768
  %394 = phi i64 [ %341, %367 ], [ %380, %373 ], !dbg !1768
  %395 = phi i64* [ %369, %367 ], [ %386, %373 ], !dbg !1872
  call void @llvm.dbg.value(metadata %struct.linebuffer* %392, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %393, metadata !1680, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %394, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  %396 = icmp ugt i64 %393, %89, !dbg !1889
  br i1 %396, label %397, label %427, !dbg !1890

397:                                              ; preds = %390
  %398 = sub i64 %393, %89, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %398, metadata !1686, metadata !DIExpression()) #20, !dbg !1892
  %399 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %392, i64 0, i32 0, i64 0, !dbg !1893
  call void @llvm.dbg.value(metadata i8* undef, metadata !1689, metadata !DIExpression()) #20, !dbg !1892
  call void @llvm.dbg.value(metadata i8* %399, metadata !1690, metadata !DIExpression()) #20, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %398, metadata !1686, metadata !DIExpression()) #20, !dbg !1892
  %400 = icmp eq i64 %398, 0, !dbg !1894
  br i1 %400, label %421, label %401, !dbg !1895

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %392, i64 0, i32 1, !dbg !1896
  %403 = load i64, i64* %402, align 8, !dbg !1896, !tbaa !1779
  %404 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %392, i64 0, i32 0, i64 %403, !dbg !1897
  call void @llvm.dbg.value(metadata i8* %404, metadata !1689, metadata !DIExpression()) #20, !dbg !1892
  %405 = load i1, i1* @line_end, align 1, !dbg !1892
  %406 = select i1 %405, i32 10, i32 0, !dbg !1892
  %407 = ptrtoint i8* %404 to i64, !dbg !1892
  br label %408, !dbg !1895

408:                                              ; preds = %416, %401
  %409 = phi i64 [ %391, %401 ], [ %418, %416 ]
  %410 = phi i8* [ %399, %401 ], [ %417, %416 ]
  %411 = phi i64 [ %398, %401 ], [ %419, %416 ]
  call void @llvm.dbg.value(metadata i8* %410, metadata !1690, metadata !DIExpression()) #20, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %411, metadata !1686, metadata !DIExpression()) #20, !dbg !1892
  %412 = ptrtoint i8* %410 to i64, !dbg !1898
  %413 = sub i64 %407, %412, !dbg !1898
  %414 = call i8* @memchr(i8* nonnull %410, i32 %406, i64 %413) #22, !dbg !1899
  call void @llvm.dbg.value(metadata i8* %414, metadata !1690, metadata !DIExpression()) #20, !dbg !1892
  %415 = icmp eq i8* %414, null, !dbg !1895
  call void @llvm.dbg.value(metadata i8* %414, metadata !1690, metadata !DIExpression()) #20, !dbg !1892
  br i1 %415, label %421, label %416, !dbg !1900

416:                                              ; preds = %408
  %417 = getelementptr inbounds i8, i8* %414, i64 1, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %417, metadata !1690, metadata !DIExpression()) #20, !dbg !1892
  %418 = add i64 %409, 1, !dbg !1903
  store i64 %418, i64* %395, align 8, !dbg !1903, !tbaa !1797
  %419 = add i64 %411, -1, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %419, metadata !1686, metadata !DIExpression()) #20, !dbg !1892
  %420 = icmp eq i64 %419, 0, !dbg !1894
  br i1 %420, label %421, label %408, !dbg !1895, !llvm.loop !1905

421:                                              ; preds = %416, %408, %397
  %422 = phi i8* [ %399, %397 ], [ null, %408 ], [ %417, %416 ]
  %423 = ptrtoint i8* %422 to i64, !dbg !1907
  %424 = ptrtoint %struct.linebuffer* %392 to i64, !dbg !1907
  %425 = sub i64 %423, %424, !dbg !1907
  %426 = add i64 %425, %394, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %426, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  call fastcc void @xwrite_stdout(i8* %399, i64 %425) #20, !dbg !1909
  br label %427, !dbg !1910

427:                                              ; preds = %421, %390, %345
  %428 = phi i8 [ 0, %345 ], [ 1, %421 ], [ 1, %390 ], !dbg !1768
  %429 = phi i64 [ %341, %345 ], [ %426, %421 ], [ %394, %390 ], !dbg !1768
  call void @llvm.dbg.value(metadata i64 %429, metadata !1667, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.value(metadata i8 %428, metadata !1681, metadata !DIExpression()) #20, !dbg !1768
  call void @llvm.dbg.label(metadata !1691) #20, !dbg !1911
  call void @llvm.dbg.value(metadata %struct.linebuffer* %340, metadata !1668, metadata !DIExpression()) #20, !dbg !1768
  %430 = icmp eq %struct.linebuffer* %340, null, !dbg !1912
  br i1 %430, label %437, label %431, !dbg !1912

431:                                              ; preds = %427, %431
  %432 = phi %struct.linebuffer* [ %434, %431 ], [ %340, %427 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %432, metadata !1668, metadata !DIExpression()) #20, !dbg !1768
  %433 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %432, i64 0, i32 3, !dbg !1913
  %434 = load %struct.linebuffer*, %struct.linebuffer** %433, align 8, !dbg !1913, !tbaa !1829
  call void @llvm.dbg.value(metadata %struct.linebuffer* %434, metadata !1679, metadata !DIExpression()) #20, !dbg !1768
  %435 = getelementptr %struct.linebuffer, %struct.linebuffer* %432, i64 0, i32 0, i64 0, !dbg !1915
  call void @free(i8* %435) #20, !dbg !1916
  call void @llvm.dbg.value(metadata %struct.linebuffer* %434, metadata !1668, metadata !DIExpression()) #20, !dbg !1768
  %436 = icmp eq %struct.linebuffer* %434, null, !dbg !1912
  br i1 %436, label %437, label %431, !dbg !1912, !llvm.loop !1917

437:                                              ; preds = %431, %427
  %438 = icmp sgt i64 %236, -1, !dbg !1919
  br i1 %438, label %439, label %443, !dbg !1921

439:                                              ; preds = %437
  %440 = call fastcc i64 @elseek(i32 %207, i64 %429, i32 0, i8* %208) #20, !dbg !1922
  %441 = icmp slt i64 %440, 0, !dbg !1923
  %442 = select i1 %441, i8 0, i8 %428, !dbg !1924
  br label %443, !dbg !1924

443:                                              ; preds = %439, %437
  %444 = phi i8 [ %428, %437 ], [ %442, %439 ], !dbg !1768
  call void @llvm.dbg.value(metadata i8 %444, metadata !1681, metadata !DIExpression()) #20, !dbg !1768
  %445 = and i8 %444, 1, !dbg !1925
  %446 = icmp ne i8 %445, 0, !dbg !1925
  br label %744, !dbg !1926

447:                                              ; preds = %241
  %448 = icmp sgt i64 %237, %236, !dbg !1927
  br i1 %448, label %449, label %744, !dbg !1928

449:                                              ; preds = %447
  call void @llvm.dbg.value(metadata i8* %208, metadata !1422, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i32 %207, metadata !1423, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %89, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %236, metadata !1425, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %237, metadata !1426, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %184) #20, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %237, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  %450 = sub nsw i64 %237, %236, !dbg !1930
  %451 = srem i64 %450, 8192, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %451, metadata !1427, metadata !DIExpression()) #20, !dbg !1656
  %452 = icmp eq i64 %451, 0, !dbg !1932
  %453 = select i1 %452, i64 8192, i64 %451, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %453, metadata !1427, metadata !DIExpression()) #20, !dbg !1656
  %454 = sub i64 %237, %453, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %454, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  %455 = call fastcc i64 @elseek(i32 %207, i64 %454, i32 0, i8* %208) #20, !dbg !1936
  %456 = icmp slt i64 %455, 0, !dbg !1938
  br i1 %456, label %544, label %457, !dbg !1939

457:                                              ; preds = %449
  %458 = call i64 @safe_read(i32 %207, i8* nonnull %184, i64 %453) #20, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %458, metadata !1427, metadata !DIExpression()) #20, !dbg !1656
  %459 = icmp eq i64 %458, -1, !dbg !1941
  br i1 %459, label %460, label %465, !dbg !1943

460:                                              ; preds = %457
  %461 = tail call i32* @__errno_location() #25, !dbg !1944
  %462 = load i32, i32* %461, align 4, !dbg !1944, !tbaa !1600
  %463 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #20, !dbg !1946
  %464 = call i8* @quotearg_style(i32 4, i8* %208) #20, !dbg !1947
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %462, i8* %463, i8* %464) #20, !dbg !1948
  br label %544, !dbg !1949

465:                                              ; preds = %457
  call void @llvm.dbg.value(metadata i1 %185, metadata !1429, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)) #20, !dbg !1656
  %466 = icmp ne i64 %458, 0, !dbg !1950
  %467 = and i1 %185, %466, !dbg !1952
  br i1 %467, label %468, label %478, !dbg !1952

468:                                              ; preds = %465
  %469 = add i64 %458, -1, !dbg !1953
  %470 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %469, !dbg !1954
  %471 = load i8, i8* %470, align 1, !dbg !1954, !tbaa !1497
  %472 = sext i8 %471 to i32, !dbg !1954
  %473 = load i1, i1* @line_end, align 1, !dbg !1955
  %474 = select i1 %473, i32 10, i32 0, !dbg !1955
  %475 = icmp ne i32 %474, %472, !dbg !1956
  %476 = sext i1 %475 to i64, !dbg !1957
  %477 = add i64 %89, %476, !dbg !1957
  br label %478, !dbg !1957

478:                                              ; preds = %468, %465
  %479 = phi i64 [ %89, %465 ], [ %477, %468 ]
  br label %480, !dbg !1958

480:                                              ; preds = %478, %537
  %481 = phi i64 [ %534, %537 ], [ %454, %478 ], !dbg !1935
  %482 = phi i64 [ %538, %537 ], [ %458, %478 ], !dbg !1959
  %483 = phi i64 [ %488, %537 ], [ %479, %478 ], !dbg !1656
  call void @llvm.dbg.value(metadata i64 %483, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %482, metadata !1427, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %482, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  %484 = load i1, i1* @line_end, align 1, !dbg !1657
  %485 = select i1 %484, i32 10, i32 0, !dbg !1657
  br label %486, !dbg !1958

486:                                              ; preds = %498, %480
  %487 = phi i64 [ %482, %480 ], [ %499, %498 ], !dbg !1960
  %488 = phi i64 [ %483, %480 ], [ %500, %498 ], !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %487, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  %489 = icmp eq i64 %487, 0, !dbg !1958
  br i1 %489, label %531, label %490, !dbg !1958

490:                                              ; preds = %486
  br i1 %185, label %493, label %491, !dbg !1961

491:                                              ; preds = %490
  %492 = add i64 %487, -1, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %492, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  br label %498, !dbg !1963

493:                                              ; preds = %490
  %494 = call i8* @memrchr(i8* nonnull %184, i32 %485, i64 %487) #22, !dbg !1964
  call void @llvm.dbg.value(metadata i8* %494, metadata !1433, metadata !DIExpression()) #20, !dbg !1657
  %495 = icmp eq i8* %494, null, !dbg !1965
  %496 = ptrtoint i8* %494 to i64, !dbg !1967
  %497 = sub i64 %496, %186, !dbg !1967
  br i1 %495, label %531, label %498

498:                                              ; preds = %493, %491
  %499 = phi i64 [ %492, %491 ], [ %497, %493 ], !dbg !1960
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  %500 = add i64 %488, -1, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %500, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  %501 = icmp eq i64 %488, 0, !dbg !1969
  br i1 %501, label %502, label %486, !dbg !1970, !llvm.loop !1971

502:                                              ; preds = %498
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %481, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %499, metadata !1431, metadata !DIExpression()) #20, !dbg !1960
  %503 = icmp sgt i64 %481, %236, !dbg !1973
  br i1 %503, label %504, label %526, !dbg !1974

504:                                              ; preds = %502
  %505 = call fastcc i64 @elseek(i32 %207, i64 %236, i32 0, i8* %208) #20, !dbg !1975
  %506 = icmp slt i64 %505, 0, !dbg !1977
  br i1 %506, label %544, label %507, !dbg !1978

507:                                              ; preds = %504
  %508 = sub nsw i64 %481, %236, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %207, metadata !1461, metadata !DIExpression()) #20, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %508, metadata !1462, metadata !DIExpression()) #20, !dbg !1980
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %167) #20, !dbg !1981
  call void @llvm.dbg.value(metadata i64 8192, metadata !1463, metadata !DIExpression()) #20, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %508, metadata !1462, metadata !DIExpression()) #20, !dbg !1980
  %509 = icmp eq i64 %508, 0, !dbg !1982
  br i1 %509, label %525, label %510, !dbg !1983

510:                                              ; preds = %507, %521
  %511 = phi i64 [ %517, %521 ], [ %508, %507 ]
  call void @llvm.dbg.value(metadata i64 %511, metadata !1462, metadata !DIExpression()) #20, !dbg !1980
  %512 = icmp ult i64 %511, 8192, !dbg !1984
  %513 = select i1 %512, i64 %511, i64 8192, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %513, metadata !1465, metadata !DIExpression()) #20, !dbg !1985
  %514 = call i64 @safe_read(i32 %207, i8* nonnull %167, i64 %513) #20, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %514, metadata !1467, metadata !DIExpression()) #20, !dbg !1985
  %515 = icmp eq i64 %514, -1, !dbg !1987
  br i1 %515, label %523, label %516, !dbg !1989

516:                                              ; preds = %510
  %517 = sub i64 %511, %514, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %517, metadata !1462, metadata !DIExpression()) #20, !dbg !1980
  %518 = icmp eq i64 %514, 0, !dbg !1991
  %519 = icmp ne i64 %517, 0, !dbg !1993
  %520 = and i1 %518, %519, !dbg !1994
  br i1 %520, label %523, label %521, !dbg !1994

521:                                              ; preds = %516
  call fastcc void @xwrite_stdout(i8* nonnull %167, i64 %514) #20, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %517, metadata !1462, metadata !DIExpression()) #20, !dbg !1980
  %522 = icmp eq i64 %517, 0, !dbg !1982
  br i1 %522, label %525, label %510, !dbg !1983

523:                                              ; preds = %516, %510
  %524 = phi i32 [ 2, %516 ], [ 1, %510 ], !dbg !1980
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %167) #20, !dbg !1996
  call void @llvm.dbg.value(metadata i32 %524, metadata !1437, metadata !DIExpression()) #20, !dbg !1997
  call fastcc void @diagnose_copy_fd_failure(i32 %524, i8* %208) #20, !dbg !1998
  br label %544, !dbg !2001

525:                                              ; preds = %521, %507
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %167) #20, !dbg !1996
  br label %526

526:                                              ; preds = %525, %502
  %527 = add i64 %499, 1, !dbg !2002
  call fastcc void @xwrite_stdout(i8* nonnull %184, i64 %527) #20, !dbg !2003
  %528 = add i64 %527, %481, !dbg !2004
  %529 = call fastcc i64 @elseek(i32 %207, i64 %528, i32 0, i8* %208) #20, !dbg !2005
  %530 = icmp sgt i64 %529, -1, !dbg !2006
  br label %544, !dbg !2007

531:                                              ; preds = %493, %486
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %488, metadata !1424, metadata !DIExpression()) #20, !dbg !1656
  %532 = icmp eq i64 %481, %236, !dbg !2008
  br i1 %532, label %544, label %533, !dbg !2010

533:                                              ; preds = %531
  %534 = add nsw i64 %481, -8192, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %534, metadata !1428, metadata !DIExpression()) #20, !dbg !1656
  %535 = call fastcc i64 @elseek(i32 %207, i64 %534, i32 0, i8* %208) #20, !dbg !2012
  %536 = icmp slt i64 %535, 0, !dbg !2014
  br i1 %536, label %544, label %537, !dbg !2015

537:                                              ; preds = %533
  %538 = call i64 @safe_read(i32 %207, i8* nonnull %184, i64 8192) #20, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %538, metadata !1427, metadata !DIExpression()) #20, !dbg !1656
  switch i64 %538, label %480 [
    i64 -1, label %539
    i64 0, label %544
  ], !dbg !2017

539:                                              ; preds = %537
  %540 = tail call i32* @__errno_location() #25, !dbg !2018
  %541 = load i32, i32* %540, align 4, !dbg !2018, !tbaa !1600
  %542 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #20, !dbg !2021
  %543 = call i8* @quotearg_style(i32 4, i8* %208) #20, !dbg !2022
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %541, i8* %542, i8* %543) #20, !dbg !2023
  br label %544, !dbg !2024

544:                                              ; preds = %537, %533, %531, %539, %526, %523, %504, %460, %449
  %545 = phi i1 [ false, %460 ], [ false, %449 ], [ false, %539 ], [ %530, %526 ], [ false, %523 ], [ false, %504 ], [ true, %531 ], [ false, %533 ], [ true, %537 ], !dbg !1656
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %184) #20, !dbg !2025
  br label %744, !dbg !1928

546:                                              ; preds = %234
  call void @llvm.dbg.value(metadata i8* %208, metadata !1405, metadata !DIExpression()) #20, !dbg !2026
  call void @llvm.dbg.value(metadata i32 %207, metadata !1406, metadata !DIExpression()) #20, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %89, metadata !1407, metadata !DIExpression()) #20, !dbg !2026
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !1408, metadata !DIExpression()) #20, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %236, metadata !1409, metadata !DIExpression()) #20, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %237, metadata !1410, metadata !DIExpression()) #20, !dbg !2026
  br i1 %239, label %554, label %547, !dbg !2027

547:                                              ; preds = %546
  %548 = load i64, i64* %166, align 8, !dbg !2028, !tbaa !1765
  %549 = icmp sgt i64 %548, 0, !dbg !2028
  %550 = icmp ult i64 %548, 2305843009213693953, !dbg !2028
  %551 = and i1 %549, %550, !dbg !2028
  %552 = select i1 %551, i64 %548, i64 512, !dbg !2028
  %553 = icmp sgt i64 %237, %552, !dbg !2029
  br i1 %553, label %720, label %554, !dbg !2030

554:                                              ; preds = %547, %546
  call void @llvm.dbg.value(metadata i8* %208, metadata !1354, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %207, metadata !1355, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %89, metadata !1356, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %236, metadata !1357, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %89, metadata !1358, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %236, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 1, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  br i1 %169, label %555, label %611, !dbg !2032

555:                                              ; preds = %554
  call void @llvm.dbg.value(metadata i8 1, metadata !1364, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i8 0, metadata !1365, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %168, metadata !1366, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %179) #20, !dbg !2033
  call void @llvm.dbg.value(metadata i64 2, metadata !1652, metadata !DIExpression()) #20, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %168, metadata !1653, metadata !DIExpression()) #20, !dbg !1655
  br i1 %180, label %556, label %557, !dbg !2034

556:                                              ; preds = %555
  call void @xalloc_die() #23, !dbg !2035
  unreachable, !dbg !2035

557:                                              ; preds = %555
  %558 = call noalias i8* @xmalloc(i64 %181) #20, !dbg !2036
  store i8* %558, i8** %182, align 16, !dbg !2037, !tbaa !1211
  %559 = getelementptr inbounds i8, i8* %558, i64 %168, !dbg !2038
  store i8* %559, i8** %183, align 8, !dbg !2039, !tbaa !1211
  call void @llvm.dbg.value(metadata i8 0, metadata !1367, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %236, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 1, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 1, metadata !1364, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i8 0, metadata !1365, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i8 undef, metadata !1367, metadata !DIExpression()) #20, !dbg !1645
  br label %560, !dbg !2040

560:                                              ; preds = %604, %557
  %561 = phi i8* [ %558, %557 ], [ %607, %604 ], !dbg !2041
  %562 = phi i64 [ %236, %557 ], [ %600, %604 ]
  %563 = phi i8 [ 1, %557 ], [ 0, %604 ]
  %564 = phi i8 [ 0, %557 ], [ %580, %604 ]
  %565 = phi i1 [ false, %557 ], [ %601, %604 ]
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 %563, metadata !1364, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i8 %564, metadata !1365, metadata !DIExpression()) #20, !dbg !1645
  %566 = call i64 @full_read(i32 %207, i8* %561, i64 %168) #20, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %566, metadata !1368, metadata !DIExpression()) #20, !dbg !2043
  call void @llvm.dbg.value(metadata i64 0, metadata !1372, metadata !DIExpression()) #20, !dbg !2043
  %567 = icmp ult i64 %566, %168, !dbg !2044
  br i1 %567, label %568, label %578, !dbg !2046

568:                                              ; preds = %560
  %569 = tail call i32* @__errno_location() #25, !dbg !2047
  %570 = load i32, i32* %569, align 4, !dbg !2047, !tbaa !1600
  %571 = icmp eq i32 %570, 0, !dbg !2050
  br i1 %571, label %572, label %596, !dbg !2051

572:                                              ; preds = %568
  %573 = icmp ule i64 %566, %89, !dbg !2052
  %574 = icmp eq i8 %563, 0, !dbg !2054
  %575 = and i1 %574, %573, !dbg !2057
  %576 = sub i64 %89, %566, !dbg !2057
  %577 = select i1 %575, i64 %576, i64 0, !dbg !2057
  br label %578, !dbg !2057

578:                                              ; preds = %572, %560
  %579 = phi i64 [ 0, %560 ], [ %577, %572 ], !dbg !2058
  %580 = phi i8 [ %564, %560 ], [ 1, %572 ], !dbg !1645
  call void @llvm.dbg.value(metadata i8 %580, metadata !1365, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %579, metadata !1372, metadata !DIExpression()) #20, !dbg !2043
  %581 = icmp eq i8 %563, 0, !dbg !2059
  br i1 %581, label %582, label %590, !dbg !2061

582:                                              ; preds = %578
  %583 = sub i64 %89, %579, !dbg !2062
  %584 = add i64 %583, %562, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %584, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  %585 = xor i1 %565, true, !dbg !2065
  %586 = zext i1 %585 to i64, !dbg !2066
  %587 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %586, !dbg !2066
  %588 = load i8*, i8** %587, align 8, !dbg !2066, !tbaa !1211
  %589 = getelementptr inbounds i8, i8* %588, i64 8192, !dbg !2067
  call fastcc void @xwrite_stdout(i8* nonnull %589, i64 %583) #20, !dbg !2068
  br label %590, !dbg !2069

590:                                              ; preds = %582, %578
  %591 = phi i64 [ %562, %578 ], [ %584, %582 ], !dbg !2031
  call void @llvm.dbg.value(metadata i64 %591, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !1364, metadata !DIExpression()) #20, !dbg !1645
  %592 = icmp ugt i64 %566, %89, !dbg !2070
  br i1 %592, label %593, label %599, !dbg !2072

593:                                              ; preds = %590
  %594 = sub i64 %566, %89, !dbg !2073
  %595 = add i64 %591, %594, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %595, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call fastcc void @xwrite_stdout(i8* %561, i64 %594) #20, !dbg !2076
  br label %599, !dbg !2077

596:                                              ; preds = %568
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  %597 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #20, !dbg !2078
  %598 = call i8* @quotearg_style(i32 4, i8* %208) #20, !dbg !2080
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %570, i8* %597, i8* %598) #20, !dbg !2081
  call void @llvm.dbg.value(metadata i8 0, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %562, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 undef, metadata !1364, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i8 undef, metadata !1365, metadata !DIExpression()) #20, !dbg !1645
  br label %608

599:                                              ; preds = %593, %590
  %600 = phi i64 [ %591, %590 ], [ %595, %593 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 undef, metadata !1364, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i8 undef, metadata !1365, metadata !DIExpression()) #20, !dbg !1645
  %601 = xor i1 %565, true, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %600, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 1, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !1364, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i8 %580, metadata !1365, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i8 undef, metadata !1367, metadata !DIExpression()) #20, !dbg !1645
  %602 = and i8 %580, 1, !dbg !2083
  %603 = icmp eq i8 %602, 0, !dbg !2083
  br i1 %603, label %604, label %608, !dbg !2040, !llvm.loop !2084

604:                                              ; preds = %599
  %605 = zext i1 %601 to i64, !dbg !2043
  %606 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %605, !dbg !2043
  %607 = load i8*, i8** %606, align 8, !dbg !2041, !tbaa !1211
  br label %560, !dbg !2040

608:                                              ; preds = %599, %596
  %609 = phi i64 [ %562, %596 ], [ %600, %599 ]
  %610 = phi i8 [ 0, %596 ], [ 1, %599 ], !dbg !2031
  call void @llvm.dbg.value(metadata i64 %609, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 %610, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  call void @free(i8* %558) #20, !dbg !2086
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %179) #20, !dbg !2087
  br label %708, !dbg !2088

611:                                              ; preds = %554, %669
  %612 = phi i64 [ %670, %669 ], [ %236, %554 ]
  %613 = phi i64 [ %637, %669 ], [ 0, %554 ]
  %614 = phi i64 [ %649, %669 ], [ 0, %554 ]
  %615 = phi i8** [ %636, %669 ], [ null, %554 ]
  %616 = phi i64 [ %672, %669 ], [ 1, %554 ]
  %617 = phi i64 [ %616, %669 ], [ 0, %554 ]
  %618 = phi i8 [ %662, %669 ], [ 0, %554 ]
  %619 = phi i8 [ %660, %669 ], [ 0, %554 ]
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %613, metadata !1384, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %614, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %615, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %617, metadata !1377, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8 %618, metadata !1376, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8 %619, metadata !1373, metadata !DIExpression()) #20, !dbg !1634
  %620 = icmp eq i64 %613, %617, !dbg !2089
  br i1 %620, label %621, label %635, !dbg !2090

621:                                              ; preds = %611
  %622 = icmp eq i64 %613, 0, !dbg !2091
  br i1 %622, label %629, label %623, !dbg !2092

623:                                              ; preds = %621
  %624 = icmp ugt i64 %613, %175, !dbg !2093
  %625 = shl i64 %613, 1, !dbg !2094
  %626 = select i1 %624, i64 %174, i64 %625, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %626, metadata !1384, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %615, metadata !2096, metadata !DIExpression()) #20, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %626, metadata !2101, metadata !DIExpression()) #20, !dbg !2103
  call void @llvm.dbg.value(metadata i64 8, metadata !2102, metadata !DIExpression()) #20, !dbg !2103
  %627 = icmp ugt i64 %626, 1152921504606846975, !dbg !2105
  br i1 %627, label %628, label %629, !dbg !2107

628:                                              ; preds = %623
  call void @xalloc_die() #23, !dbg !2108
  unreachable, !dbg !2108

629:                                              ; preds = %623, %621
  %630 = phi i64 [ %626, %623 ], [ %177, %621 ]
  %631 = bitcast i8** %615 to i8*, !dbg !2109
  %632 = shl i64 %630, 3, !dbg !2110
  %633 = call i8* @xrealloc(i8* %631, i64 %632) #20, !dbg !2111
  %634 = bitcast i8* %633 to i8**, !dbg !2112
  call void @llvm.dbg.value(metadata i8** %634, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  br label %635, !dbg !2113

635:                                              ; preds = %629, %611
  %636 = phi i8** [ %634, %629 ], [ %615, %611 ], !dbg !1634
  %637 = phi i64 [ %630, %629 ], [ %613, %611 ], !dbg !1634
  call void @llvm.dbg.value(metadata i64 %637, metadata !1384, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  %638 = and i8 %618, 1, !dbg !2114
  %639 = icmp eq i8 %638, 0, !dbg !2114
  br i1 %639, label %643, label %640, !dbg !2116

640:                                              ; preds = %635
  %641 = getelementptr inbounds i8*, i8** %636, i64 %617, !dbg !2117
  %642 = load i8*, i8** %641, align 8, !dbg !2118, !tbaa !1211
  br label %647, !dbg !2116

643:                                              ; preds = %635
  %644 = call noalias i8* @xmalloc(i64 8192) #20, !dbg !2119
  %645 = getelementptr inbounds i8*, i8** %636, i64 %617, !dbg !2121
  store i8* %644, i8** %645, align 8, !dbg !2122, !tbaa !1211
  %646 = add nuw nsw i64 %617, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %646, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  br label %647, !dbg !2124

647:                                              ; preds = %643, %640
  %648 = phi i8* [ %642, %640 ], [ %644, %643 ], !dbg !2118
  %649 = phi i64 [ %614, %640 ], [ %646, %643 ], !dbg !1634
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  %650 = call i64 @full_read(i32 %207, i8* %648, i64 8192) #20, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %650, metadata !1375, metadata !DIExpression()) #20, !dbg !1634
  %651 = icmp ult i64 %650, 8192, !dbg !2126
  br i1 %651, label %652, label %659, !dbg !2128

652:                                              ; preds = %647
  %653 = tail call i32* @__errno_location() #25, !dbg !2129
  %654 = load i32, i32* %653, align 4, !dbg !2129, !tbaa !1600
  %655 = icmp eq i32 %654, 0, !dbg !2132
  br i1 %655, label %659, label %656, !dbg !2133

656:                                              ; preds = %652
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %612, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  %657 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #20, !dbg !2134
  %658 = call i8* @quotearg_style(i32 4, i8* %208) #20, !dbg !2136
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %654, i8* %657, i8* %658) #20, !dbg !2137
  call void @llvm.dbg.value(metadata i8 0, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  br label %696, !dbg !2138

659:                                              ; preds = %652, %647
  %660 = phi i8 [ %619, %647 ], [ 1, %652 ], !dbg !1634
  call void @llvm.dbg.value(metadata i8 %660, metadata !1373, metadata !DIExpression()) #20, !dbg !1634
  %661 = icmp eq i64 %617, %173, !dbg !2139
  %662 = select i1 %661, i8 1, i8 %618, !dbg !2141
  call void @llvm.dbg.value(metadata i8 %662, metadata !1376, metadata !DIExpression()) #20, !dbg !1634
  %663 = and i8 %662, 1, !dbg !2142
  %664 = icmp eq i8 %663, 0, !dbg !2142
  br i1 %664, label %669, label %665, !dbg !2144

665:                                              ; preds = %659
  %666 = add i64 %650, %612, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %666, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  %667 = getelementptr inbounds i8*, i8** %636, i64 %616, !dbg !2147
  %668 = load i8*, i8** %667, align 8, !dbg !2147, !tbaa !1211
  call fastcc void @xwrite_stdout(i8* %668, i64 %650) #20, !dbg !2148
  br label %669, !dbg !2149

669:                                              ; preds = %665, %659
  %670 = phi i64 [ %666, %665 ], [ %612, %659 ], !dbg !2031
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %616, metadata !1377, metadata !DIExpression()) #20, !dbg !1634
  %671 = add nuw nsw i64 %616, 1, !dbg !2150
  %672 = urem i64 %671, %174, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %637, metadata !1384, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %672, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8 %662, metadata !1376, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %650, metadata !1375, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8 %660, metadata !1373, metadata !DIExpression()) #20, !dbg !1634
  %673 = and i8 %660, 1, !dbg !2152
  %674 = icmp eq i8 %673, 0, !dbg !2152
  br i1 %674, label %611, label %675, !dbg !2153, !llvm.loop !2154

675:                                              ; preds = %669
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %650, metadata !1375, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8 %662, metadata !1376, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %616, metadata !1377, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %672, metadata !1378, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %670, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  br i1 %178, label %696, label %676, !dbg !2156

676:                                              ; preds = %675
  br i1 %664, label %689, label %677, !dbg !2157

677:                                              ; preds = %676
  %678 = sub i64 8192, %650, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %678, metadata !1385, metadata !DIExpression()) #20, !dbg !2159
  %679 = add i64 %670, %171, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %679, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  %680 = icmp ult i64 %171, %678, !dbg !2161
  %681 = getelementptr inbounds i8*, i8** %636, i64 %616, !dbg !2163
  %682 = load i8*, i8** %681, align 8, !dbg !2163, !tbaa !1211
  %683 = getelementptr inbounds i8, i8* %682, i64 %650, !dbg !2163
  br i1 %680, label %684, label %685, !dbg !2164

684:                                              ; preds = %677
  call fastcc void @xwrite_stdout(i8* %683, i64 %171) #20, !dbg !2165
  br label %696, !dbg !2167

685:                                              ; preds = %677
  call fastcc void @xwrite_stdout(i8* %683, i64 %678) #20, !dbg !2168
  %686 = getelementptr inbounds i8*, i8** %636, i64 %672, !dbg !2170
  %687 = load i8*, i8** %686, align 8, !dbg !2170, !tbaa !1211
  %688 = sub i64 %171, %678, !dbg !2171
  call fastcc void @xwrite_stdout(i8* %687, i64 %688) #20, !dbg !2172
  br label %696

689:                                              ; preds = %676
  %690 = icmp eq i64 %616, %173, !dbg !2173
  br i1 %690, label %691, label %696, !dbg !2174

691:                                              ; preds = %689
  call void @llvm.dbg.value(metadata i64 %170, metadata !1390, metadata !DIExpression()) #20, !dbg !2175
  %692 = sub i64 %650, %170, !dbg !2176
  call void @llvm.dbg.value(metadata i64 %692, metadata !1393, metadata !DIExpression()) #20, !dbg !2175
  %693 = add i64 %670, %692, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %693, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  %694 = getelementptr inbounds i8*, i8** %636, i64 %672, !dbg !2178
  %695 = load i8*, i8** %694, align 8, !dbg !2178, !tbaa !1211
  call fastcc void @xwrite_stdout(i8* %695, i64 %692) #20, !dbg !2179
  br label %696, !dbg !2180

696:                                              ; preds = %691, %689, %685, %684, %675, %656
  %697 = phi i8 [ 0, %656 ], [ 1, %691 ], [ 1, %689 ], [ 1, %675 ], [ 1, %685 ], [ 1, %684 ], !dbg !2031
  %698 = phi i64 [ %612, %656 ], [ %693, %691 ], [ %670, %689 ], [ %670, %675 ], [ %679, %685 ], [ %679, %684 ], !dbg !2031
  call void @llvm.dbg.value(metadata i64 %698, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 %697, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %649, metadata !1383, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.value(metadata i8** %636, metadata !1379, metadata !DIExpression()) #20, !dbg !1634
  call void @llvm.dbg.label(metadata !1394) #20, !dbg !2181
  call void @llvm.dbg.value(metadata i64 0, metadata !1377, metadata !DIExpression()) #20, !dbg !1634
  %699 = icmp eq i64 %649, 0, !dbg !2182
  br i1 %699, label %706, label %700, !dbg !2185

700:                                              ; preds = %696, %700
  %701 = phi i64 [ %704, %700 ], [ 0, %696 ]
  call void @llvm.dbg.value(metadata i64 %701, metadata !1377, metadata !DIExpression()) #20, !dbg !1634
  %702 = getelementptr inbounds i8*, i8** %636, i64 %701, !dbg !2186
  %703 = load i8*, i8** %702, align 8, !dbg !2186, !tbaa !1211
  call void @free(i8* %703) #20, !dbg !2187
  %704 = add nuw i64 %701, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %704, metadata !1377, metadata !DIExpression()) #20, !dbg !1634
  %705 = icmp eq i64 %704, %649, !dbg !2182
  br i1 %705, label %706, label %700, !dbg !2185, !llvm.loop !2189

706:                                              ; preds = %700, %696
  %707 = bitcast i8** %636 to i8*, !dbg !2191
  call void @free(i8* %707) #20, !dbg !2192
  br label %708

708:                                              ; preds = %706, %608
  %709 = phi i8 [ %610, %608 ], [ %697, %706 ], !dbg !1633
  %710 = phi i64 [ %609, %608 ], [ %698, %706 ], !dbg !2193
  call void @llvm.dbg.value(metadata i64 %710, metadata !1359, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i8 %709, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  %711 = icmp sgt i64 %236, -1, !dbg !2194
  br i1 %711, label %712, label %716, !dbg !2196

712:                                              ; preds = %708
  %713 = call fastcc i64 @elseek(i32 %207, i64 %710, i32 0, i8* %208) #20, !dbg !2197
  %714 = icmp slt i64 %713, 0, !dbg !2198
  %715 = select i1 %714, i8 0, i8 %709, !dbg !2199
  br label %716, !dbg !2199

716:                                              ; preds = %712, %708
  %717 = phi i8 [ %709, %708 ], [ %715, %712 ], !dbg !2031
  call void @llvm.dbg.value(metadata i8 %717, metadata !1360, metadata !DIExpression()) #20, !dbg !2031
  %718 = and i8 %717, 1, !dbg !2200
  %719 = icmp ne i8 %718, 0, !dbg !2200
  br label %744, !dbg !2201

720:                                              ; preds = %547
  %721 = sub nsw i64 %237, %236, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %721, metadata !1411, metadata !DIExpression()) #20, !dbg !2203
  %722 = icmp sgt i64 %721, 0, !dbg !2204
  %723 = select i1 %722, i64 %721, i64 0, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %723, metadata !1413, metadata !DIExpression()) #20, !dbg !2203
  %724 = icmp ugt i64 %723, %89, !dbg !2205
  br i1 %724, label %725, label %744, !dbg !2207

725:                                              ; preds = %720
  %726 = sub i64 %723, %89, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %207, metadata !1461, metadata !DIExpression()) #20, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %726, metadata !1462, metadata !DIExpression()) #20, !dbg !1631
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %167) #20, !dbg !2209
  call void @llvm.dbg.value(metadata i64 8192, metadata !1463, metadata !DIExpression()) #20, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %726, metadata !1462, metadata !DIExpression()) #20, !dbg !1631
  %727 = icmp eq i64 %726, 0, !dbg !2210
  br i1 %727, label %741, label %728, !dbg !2211

728:                                              ; preds = %725, %739
  %729 = phi i64 [ %735, %739 ], [ %726, %725 ]
  call void @llvm.dbg.value(metadata i64 %729, metadata !1462, metadata !DIExpression()) #20, !dbg !1631
  %730 = icmp ult i64 %729, 8192, !dbg !2212
  %731 = select i1 %730, i64 %729, i64 8192, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %731, metadata !1465, metadata !DIExpression()) #20, !dbg !2213
  %732 = call i64 @safe_read(i32 %207, i8* nonnull %167, i64 %731) #20, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %732, metadata !1467, metadata !DIExpression()) #20, !dbg !2213
  %733 = icmp eq i64 %732, -1, !dbg !2215
  br i1 %733, label %742, label %734, !dbg !2216

734:                                              ; preds = %728
  %735 = sub i64 %729, %732, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %735, metadata !1462, metadata !DIExpression()) #20, !dbg !1631
  %736 = icmp eq i64 %732, 0, !dbg !2218
  %737 = icmp ne i64 %735, 0, !dbg !2219
  %738 = and i1 %736, %737, !dbg !2220
  br i1 %738, label %742, label %739, !dbg !2220

739:                                              ; preds = %734
  call fastcc void @xwrite_stdout(i8* nonnull %167, i64 %732) #20, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %735, metadata !1462, metadata !DIExpression()) #20, !dbg !1631
  %740 = icmp eq i64 %735, 0, !dbg !2210
  br i1 %740, label %741, label %728, !dbg !2211

741:                                              ; preds = %739, %725
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %167) #20, !dbg !2222
  br label %744, !dbg !2223

742:                                              ; preds = %734, %728
  %743 = phi i32 [ 2, %734 ], [ 1, %728 ], !dbg !1631
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %167) #20, !dbg !2222
  call void @llvm.dbg.value(metadata i32 %743, metadata !1414, metadata !DIExpression()) #20, !dbg !2203
  call fastcc void @diagnose_copy_fd_failure(i32 %743, i8* %208) #20, !dbg !2224
  br label %744, !dbg !2225

744:                                              ; preds = %742, %741, %720, %716, %544, %447, %443, %229, %218
  %745 = phi i1 [ false, %218 ], [ false, %229 ], [ %446, %443 ], [ true, %447 ], [ %545, %544 ], [ %719, %716 ], [ true, %720 ], [ false, %742 ], [ true, %741 ], !dbg !1620
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %163) #20, !dbg !2226
  br label %809

746:                                              ; preds = %214
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %167) #20, !dbg !2227
  br i1 %143, label %747, label %792, !dbg !2228

747:                                              ; preds = %746
  call void @llvm.dbg.value(metadata i8* %208, metadata !1270, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %207, metadata !1271, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %89, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %89, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  br i1 %187, label %790, label %748, !dbg !2230

748:                                              ; preds = %747, %788
  %749 = phi i64 [ %785, %788 ], [ %89, %747 ]
  call void @llvm.dbg.value(metadata i64 %749, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  %750 = call i64 @safe_read(i32 %207, i8* nonnull %167, i64 8192) #20, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %750, metadata !1277, metadata !DIExpression()) #20, !dbg !2232
  call void @llvm.dbg.value(metadata i64 0, metadata !1278, metadata !DIExpression()) #20, !dbg !2232
  switch i64 %750, label %751 [
    i64 -1, label %754
    i64 0, label %790
  ], !dbg !2233

751:                                              ; preds = %748
  call void @llvm.dbg.value(metadata i64 0, metadata !1278, metadata !DIExpression()) #20, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %749, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  %752 = load i1, i1* @line_end, align 1, !dbg !2234
  %753 = select i1 %752, i32 10, i32 0, !dbg !2234
  br label %759, !dbg !2235

754:                                              ; preds = %748
  %755 = tail call i32* @__errno_location() #25, !dbg !2236
  %756 = load i32, i32* %755, align 4, !dbg !2236, !tbaa !1600
  %757 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #20, !dbg !2239
  %758 = call i8* @quotearg_style(i32 4, i8* %208) #20, !dbg !2240
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %756, i8* %757, i8* %758) #20, !dbg !2241
  br label %790

759:                                              ; preds = %784, %751
  %760 = phi i64 [ 0, %751 ], [ %762, %784 ]
  %761 = phi i64 [ %749, %751 ], [ %785, %784 ]
  call void @llvm.dbg.value(metadata i64 %760, metadata !1278, metadata !DIExpression()) #20, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %761, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  %762 = add nuw i64 %760, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %762, metadata !1278, metadata !DIExpression()) #20, !dbg !2232
  %763 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 %760, !dbg !2243
  %764 = load i8, i8* %763, align 1, !dbg !2243, !tbaa !1497
  %765 = sext i8 %764 to i32, !dbg !2243
  %766 = icmp eq i32 %753, %765, !dbg !2244
  br i1 %766, label %767, label %784, !dbg !2245

767:                                              ; preds = %759
  %768 = add i64 %761, -1, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %768, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  %769 = icmp eq i64 %768, 0, !dbg !2247
  br i1 %769, label %770, label %784, !dbg !2248

770:                                              ; preds = %767
  call void @llvm.dbg.value(metadata i64 undef, metadata !1279, metadata !DIExpression()) #20, !dbg !2249
  %771 = sub i64 %762, %750, !dbg !2250
  %772 = call i64 @lseek(i32 %207, i64 %771, i32 1) #20, !dbg !2251
  %773 = icmp slt i64 %772, 0, !dbg !2252
  br i1 %773, label %774, label %787, !dbg !2253

774:                                              ; preds = %770
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %188) #20, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %207, metadata !1727, metadata !DIExpression()) #20, !dbg !2255
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1734, metadata !DIExpression()) #20, !dbg !2255
  %775 = call i32 @__fxstat(i32 1, i32 %207, %struct.stat* nonnull %3) #20, !dbg !2257
  %776 = icmp eq i32 %775, 0, !dbg !2258
  br i1 %776, label %777, label %781, !dbg !2259

777:                                              ; preds = %774
  %778 = load i32, i32* %189, align 8, !dbg !2260, !tbaa !1750
  %779 = and i32 %778, 61440, !dbg !2260
  %780 = icmp eq i32 %779, 32768, !dbg !2260
  br i1 %780, label %781, label %783, !dbg !2261

781:                                              ; preds = %777, %774
  %782 = call fastcc i64 @elseek(i32 %207, i64 %771, i32 1, i8* %208) #20, !dbg !2262
  br label %783, !dbg !2262

783:                                              ; preds = %781, %777
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %188) #20, !dbg !2263
  br label %787, !dbg !2264

784:                                              ; preds = %767, %759
  %785 = phi i64 [ %768, %767 ], [ %761, %759 ]
  call void @llvm.dbg.value(metadata i64 %762, metadata !1278, metadata !DIExpression()) #20, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  %786 = icmp eq i64 %762, %750, !dbg !2265
  br i1 %786, label %788, label %759, !dbg !2235, !llvm.loop !2266

787:                                              ; preds = %783, %770
  call void @llvm.dbg.value(metadata i64 %750, metadata !1278, metadata !DIExpression()) #20, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call fastcc void @xwrite_stdout(i8* nonnull %167, i64 %762) #20, !dbg !2268
  br label %790, !dbg !2230

788:                                              ; preds = %784
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %750, metadata !1278, metadata !DIExpression()) #20, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %785, metadata !1272, metadata !DIExpression()) #20, !dbg !2229
  call fastcc void @xwrite_stdout(i8* nonnull %167, i64 %750) #20, !dbg !2268
  %789 = icmp eq i64 %785, 0, !dbg !2230
  br i1 %789, label %790, label %748, !dbg !2230

790:                                              ; preds = %788, %748, %787, %754, %747
  %791 = phi i1 [ false, %754 ], [ true, %747 ], [ true, %787 ], [ true, %748 ], [ true, %788 ], !dbg !2229
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %167) #20, !dbg !2269
  br label %809, !dbg !2270

792:                                              ; preds = %746
  call void @llvm.dbg.value(metadata i8* %208, metadata !1475, metadata !DIExpression()) #20, !dbg !2271
  call void @llvm.dbg.value(metadata i32 %207, metadata !1476, metadata !DIExpression()) #20, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %89, metadata !1477, metadata !DIExpression()) #20, !dbg !2271
  call void @llvm.dbg.value(metadata i64 8192, metadata !1478, metadata !DIExpression()) #20, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %89, metadata !1477, metadata !DIExpression()) #20, !dbg !2271
  br i1 %187, label %807, label %793, !dbg !2272

793:                                              ; preds = %792, %804
  %794 = phi i64 [ %797, %804 ], [ 8192, %792 ]
  %795 = phi i64 [ %805, %804 ], [ %89, %792 ]
  call void @llvm.dbg.value(metadata i64 %794, metadata !1478, metadata !DIExpression()) #20, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %795, metadata !1477, metadata !DIExpression()) #20, !dbg !2271
  %796 = icmp ult i64 %795, %794, !dbg !2273
  %797 = select i1 %796, i64 %795, i64 %794, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %797, metadata !1478, metadata !DIExpression()) #20, !dbg !2271
  %798 = call i64 @safe_read(i32 %207, i8* nonnull %167, i64 %797) #20, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %798, metadata !1479, metadata !DIExpression()) #20, !dbg !2277
  switch i64 %798, label %804 [
    i64 -1, label %799
    i64 0, label %807
  ], !dbg !2278

799:                                              ; preds = %793
  %800 = tail call i32* @__errno_location() #25, !dbg !2279
  %801 = load i32, i32* %800, align 4, !dbg !2279, !tbaa !1600
  %802 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #20, !dbg !2282
  %803 = call i8* @quotearg_style(i32 4, i8* %208) #20, !dbg !2283
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %801, i8* %802, i8* %803) #20, !dbg !2284
  br label %807

804:                                              ; preds = %793
  call fastcc void @xwrite_stdout(i8* nonnull %167, i64 %798) #20, !dbg !2285
  %805 = sub i64 %795, %798, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %797, metadata !1478, metadata !DIExpression()) #20, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %805, metadata !1477, metadata !DIExpression()) #20, !dbg !2271
  %806 = icmp eq i64 %805, 0, !dbg !2272
  br i1 %806, label %807, label %793, !dbg !2272

807:                                              ; preds = %804, %793, %799, %792
  %808 = phi i1 [ false, %799 ], [ true, %792 ], [ true, %793 ], [ true, %804 ], !dbg !2271
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %167) #20, !dbg !2287
  br label %809, !dbg !2288

809:                                              ; preds = %807, %790, %744
  %810 = phi i1 [ %745, %744 ], [ %791, %790 ], [ %808, %807 ], !dbg !1716
  call void @llvm.dbg.value(metadata i1 %810, metadata !1342, metadata !DIExpression()) #20, !dbg !1696
  br i1 %195, label %819, label %811, !dbg !2289

811:                                              ; preds = %809
  %812 = call i32 @close(i32 %207) #20, !dbg !2291
  %813 = icmp eq i32 %812, 0, !dbg !2292
  br i1 %813, label %819, label %814, !dbg !2293

814:                                              ; preds = %811
  %815 = tail call i32* @__errno_location() #25, !dbg !2294
  %816 = load i32, i32* %815, align 4, !dbg !2294, !tbaa !1600
  %817 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i32 5) #20, !dbg !2296
  %818 = call i8* @quotearg_style(i32 4, i8* %208) #20, !dbg !2297
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %816, i8* %817, i8* %818) #20, !dbg !2298
  br label %819, !dbg !2299

819:                                              ; preds = %201, %809, %811, %814
  %820 = phi i1 [ false, %814 ], [ false, %201 ], [ %810, %811 ], [ %810, %809 ], !dbg !1696
  %821 = and i1 %193, %820, !dbg !2300
  call void @llvm.dbg.value(metadata i1 %821, metadata !222, metadata !DIExpression()), !dbg !1484
  %822 = add i64 %192, 1, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %822, metadata !225, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8 undef, metadata !222, metadata !DIExpression()), !dbg !1484
  %823 = getelementptr inbounds i8*, i8** %158, i64 %822, !dbg !1617
  %824 = load i8*, i8** %823, align 8, !dbg !1617, !tbaa !1211
  %825 = icmp eq i8* %824, null, !dbg !1618
  br i1 %825, label %826, label %190, !dbg !1618, !llvm.loop !2302

826:                                              ; preds = %819
  %827 = xor i1 %821, true, !dbg !2304
  %828 = zext i1 %827 to i32, !dbg !2304
  br label %829, !dbg !2304

829:                                              ; preds = %826, %153
  %830 = phi i32 [ 0, %153 ], [ %828, %826 ]
  %831 = load i1, i1* @have_read_stdin, align 1, !dbg !2304
  br i1 %831, label %832, label %838, !dbg !2306

832:                                              ; preds = %829
  %833 = call i32 @close(i32 0) #20, !dbg !2307
  %834 = icmp slt i32 %833, 0, !dbg !2308
  br i1 %834, label %835, label %838, !dbg !2309

835:                                              ; preds = %832
  %836 = tail call i32* @__errno_location() #25, !dbg !2310
  %837 = load i32, i32* %836, align 4, !dbg !2310, !tbaa !1600
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %837, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #20, !dbg !2310
  unreachable, !dbg !2310

838:                                              ; preds = %832, %829
  ret i32 %830, !dbg !2311
}

; Function Attrs: nounwind
declare !dbg !110 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !113 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !116 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !123 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !127 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !165 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @elseek(i32 %0, i64 %1, i32 %2, i8* %3) unnamed_addr #8 !dbg !2312 {
  %5 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2316, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %1, metadata !2317, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %2, metadata !2318, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %3, metadata !2319, metadata !DIExpression()), !dbg !2322
  %6 = tail call i64 @lseek(i32 %0, i64 %1, i32 %2) #20, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %6, metadata !2320, metadata !DIExpression()), !dbg !2322
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !2324
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %7) #20, !dbg !2324
  call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !2321, metadata !DIExpression()), !dbg !2325
  %8 = icmp slt i64 %6, 0, !dbg !2326
  br i1 %8, label %9, label %17, !dbg !2328

9:                                                ; preds = %4
  %10 = tail call i32* @__errno_location() #25, !dbg !2329
  %11 = load i32, i32* %10, align 4, !dbg !2329, !tbaa !1600
  %12 = icmp eq i32 %2, 0, !dbg !2330
  %13 = select i1 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i64 0, i64 0), !dbg !2330
  %14 = tail call i8* @dcgettext(i8* null, i8* %13, i32 5) #20, !dbg !2330
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #20, !dbg !2331
  %16 = call i8* @offtostr(i64 %1, i8* nonnull %7) #20, !dbg !2332
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* %14, i8* %15, i8* %16) #20, !dbg !2333
  br label %17, !dbg !2333

17:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %7) #20, !dbg !2334
  ret i64 %6, !dbg !2335
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xwrite_stdout(i8* nocapture %0, i64 %1) unnamed_addr #8 !dbg !2336 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2340, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i64 %1, metadata !2341, metadata !DIExpression()), !dbg !2350
  %3 = icmp eq i64 %1, 0, !dbg !2351
  br i1 %3, label %14, label %4, !dbg !2352

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2353, !tbaa !1211
  %6 = tail call i64 @fwrite_unlocked(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %5), !dbg !2354
  %7 = icmp ult i64 %6, %1, !dbg !2355
  br i1 %7, label %8, label %14, !dbg !2356

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2357, !tbaa !1211
  tail call void @clearerr_unlocked(%struct._IO_FILE* %9) #20, !dbg !2357
  %10 = tail call i32* @__errno_location() #25, !dbg !2359
  %11 = load i32, i32* %10, align 4, !dbg !2359, !tbaa !1600
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i32 5) #20, !dbg !2359
  %13 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0)) #20, !dbg !2359
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* %12, i8* %13) #20, !dbg !2359
  unreachable, !dbg !2359

14:                                               ; preds = %2, %4
  ret void, !dbg !2360
}

; Function Attrs: nounwind
declare !dbg !189 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind readonly
declare !dbg !201 i8* @memrchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @diagnose_copy_fd_failure(i32 %0, i8* %1) unnamed_addr #8 !dbg !2361 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8* %1, metadata !2366, metadata !DIExpression()), !dbg !2367
  switch i32 %0, label %13 [
    i32 1, label %3
    i32 2, label %8
  ], !dbg !2368

3:                                                ; preds = %2
  %4 = tail call i32* @__errno_location() #25, !dbg !2369
  %5 = load i32, i32* %4, align 4, !dbg !2369, !tbaa !1600
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #20, !dbg !2371
  %7 = tail call i8* @quotearg_style(i32 4, i8* %1) #20, !dbg !2372
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %5, i8* %6, i8* %7) #20, !dbg !2373
  br label %14, !dbg !2374

8:                                                ; preds = %2
  %9 = tail call i32* @__errno_location() #25, !dbg !2375
  %10 = load i32, i32* %9, align 4, !dbg !2375, !tbaa !1600
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i64 0, i64 0), i32 5) #20, !dbg !2376
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #20, !dbg !2377
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11, i8* %12) #20, !dbg !2378
  br label %14, !dbg !2379

13:                                               ; preds = %2
  tail call void @abort() #23, !dbg !2380
  unreachable, !dbg !2380

14:                                               ; preds = %8, %3
  ret void, !dbg !2381
}

; Function Attrs: nounwind
declare !dbg !172 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare !dbg !157 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !192 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !197 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !2382 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2384, metadata !DIExpression()), !dbg !2385
  store i8* %0, i8** @file_name, align 8, !dbg !2386, !tbaa !1211
  ret void, !dbg !2387
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !2388 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2392, metadata !DIExpression()), !dbg !2393
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2394, !tbaa !2395
  ret void, !dbg !2397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2398 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2403, !tbaa !1211
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !2404
  %3 = icmp eq i32 %2, 0, !dbg !2405
  br i1 %3, label %22, label %4, !dbg !2406

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2407, !tbaa !2395, !range !2408
  %6 = icmp eq i8 %5, 0, !dbg !2407
  br i1 %6, label %11, label %7, !dbg !2409

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !2410
  %9 = load i32, i32* %8, align 4, !dbg !2410, !tbaa !1600
  %10 = icmp eq i32 %9, 32, !dbg !2411
  br i1 %10, label %22, label %11, !dbg !2412

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 5) #20, !dbg !2413
  call void @llvm.dbg.value(metadata i8* %12, metadata !2400, metadata !DIExpression()), !dbg !2414
  %13 = load i8*, i8** @file_name, align 8, !dbg !2415, !tbaa !1211
  %14 = icmp eq i8* %13, null, !dbg !2415
  %15 = tail call i32* @__errno_location() #25, !dbg !2417
  %16 = load i32, i32* %15, align 4, !dbg !2417, !tbaa !1600
  br i1 %14, label %19, label %17, !dbg !2418

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !2419
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.65, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !2420
  br label %20, !dbg !2420

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.66, i64 0, i64 0), i8* %12) #20, !dbg !2421
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2422, !tbaa !1600
  tail call void @_exit(i32 %21) #23, !dbg !2423
  unreachable, !dbg !2423

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2424, !tbaa !1211
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !2426
  %25 = icmp eq i32 %24, 0, !dbg !2427
  br i1 %25, label %28, label %26, !dbg !2428

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2429, !tbaa !1600
  tail call void @_exit(i32 %27) #23, !dbg !2430
  unreachable, !dbg !2430

28:                                               ; preds = %22
  ret void, !dbg !2431
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @full_read(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2432 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2437, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %1, metadata !2438, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %2, metadata !2439, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 0, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %1, metadata !2441, metadata !DIExpression()), !dbg !2444
  %4 = icmp eq i64 %2, 0, !dbg !2445
  br i1 %4, label %17, label %5, !dbg !2446

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %15, %12 ], [ %2, %3 ]
  %7 = phi i8* [ %14, %12 ], [ %1, %3 ]
  %8 = phi i64 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !2439, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %7, metadata !2441, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %8, metadata !2440, metadata !DIExpression()), !dbg !2444
  %9 = tail call i64 @safe_read(i32 %0, i8* %7, i64 %6) #20, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %9, metadata !2442, metadata !DIExpression()), !dbg !2448
  switch i64 %9, label %12 [
    i64 -1, label %17
    i64 0, label %10
  ], !dbg !2449

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 %8, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %8, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %8, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %8, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %8, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %8, metadata !2440, metadata !DIExpression()), !dbg !2444
  %11 = tail call i32* @__errno_location() #25, !dbg !2450
  store i32 0, i32* %11, align 4, !dbg !2453, !tbaa !1600
  br label %17, !dbg !2454

12:                                               ; preds = %5
  %13 = add i64 %9, %8, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %13, metadata !2440, metadata !DIExpression()), !dbg !2444
  %14 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %14, metadata !2441, metadata !DIExpression()), !dbg !2444
  %15 = sub i64 %6, %9, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %15, metadata !2439, metadata !DIExpression()), !dbg !2444
  %16 = icmp eq i64 %15, 0, !dbg !2445
  br i1 %16, label %17, label %5, !dbg !2446

17:                                               ; preds = %12, %5, %3, %10
  %18 = phi i64 [ %8, %10 ], [ 0, %3 ], [ %13, %12 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !2440, metadata !DIExpression()), !dbg !2444
  ret i64 %18, !dbg !2458
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @offtostr(i64 %0, i8* %1) local_unnamed_addr #11 !dbg !2459 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2464, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %1, metadata !2465, metadata !DIExpression()), !dbg !2467
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2468
  call void @llvm.dbg.value(metadata i8* %3, metadata !2466, metadata !DIExpression()), !dbg !2467
  store i8 0, i8* %3, align 1, !dbg !2469, !tbaa !1497
  %4 = icmp slt i64 %0, 0, !dbg !2470
  br i1 %4, label %5, label %17, !dbg !2472

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %0, %2 ]
  %7 = phi i8* [ %11, %5 ], [ %3, %2 ], !dbg !2467
  call void @llvm.dbg.value(metadata i8* %7, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %6, metadata !2464, metadata !DIExpression()), !dbg !2467
  %8 = srem i64 %6, 10, !dbg !2473
  %9 = trunc i64 %8 to i8, !dbg !2475
  %10 = sub nsw i8 48, %9, !dbg !2475
  %11 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !2476
  call void @llvm.dbg.value(metadata i8* %11, metadata !2466, metadata !DIExpression()), !dbg !2467
  store i8 %10, i8* %11, align 1, !dbg !2477, !tbaa !1497
  %12 = sdiv i64 %6, 10, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %12, metadata !2464, metadata !DIExpression()), !dbg !2467
  %13 = add i64 %6, 9, !dbg !2479
  %14 = icmp ugt i64 %13, 18, !dbg !2479
  br i1 %14, label %5, label %15, !dbg !2480, !llvm.loop !2481

15:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %7, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %7, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %7, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %7, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %7, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %7, metadata !2466, metadata !DIExpression()), !dbg !2467
  %16 = getelementptr inbounds i8, i8* %7, i64 -2, !dbg !2484
  call void @llvm.dbg.value(metadata i8* %16, metadata !2466, metadata !DIExpression()), !dbg !2467
  store i8 45, i8* %16, align 1, !dbg !2485, !tbaa !1497
  br label %27, !dbg !2486

17:                                               ; preds = %2, %17
  %18 = phi i64 [ %24, %17 ], [ %0, %2 ]
  %19 = phi i8* [ %23, %17 ], [ %3, %2 ], !dbg !2467
  call void @llvm.dbg.value(metadata i8* %19, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %18, metadata !2464, metadata !DIExpression()), !dbg !2467
  %20 = srem i64 %18, 10, !dbg !2487
  %21 = trunc i64 %20 to i8, !dbg !2489
  %22 = add nsw i8 %21, 48, !dbg !2489
  %23 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %23, metadata !2466, metadata !DIExpression()), !dbg !2467
  store i8 %22, i8* %23, align 1, !dbg !2491, !tbaa !1497
  %24 = sdiv i64 %18, 10, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %24, metadata !2464, metadata !DIExpression()), !dbg !2467
  %25 = add i64 %18, 9, !dbg !2493
  %26 = icmp ugt i64 %25, 18, !dbg !2493
  br i1 %26, label %17, label %27, !dbg !2494, !llvm.loop !2495

27:                                               ; preds = %17, %15
  %28 = phi i8* [ %16, %15 ], [ %23, %17 ], !dbg !2498
  call void @llvm.dbg.value(metadata i8* %28, metadata !2466, metadata !DIExpression()), !dbg !2467
  ret i8* %28, !dbg !2499
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #11 !dbg !2500 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %1, metadata !2505, metadata !DIExpression()), !dbg !2507
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %3, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i8 0, i8* %3, align 1, !dbg !2509, !tbaa !1497
  br label %4, !dbg !2510

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2507
  call void @llvm.dbg.value(metadata i8* %6, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %5, metadata !2504, metadata !DIExpression()), !dbg !2507
  %7 = urem i64 %5, 10, !dbg !2511
  %8 = trunc i64 %7 to i8, !dbg !2514
  %9 = or i8 %8, 48, !dbg !2514
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2515
  call void @llvm.dbg.value(metadata i8* %10, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i8 %9, i8* %10, align 1, !dbg !2516, !tbaa !1497
  %11 = udiv i64 %5, 10, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %11, metadata !2504, metadata !DIExpression()), !dbg !2507
  %12 = icmp ugt i64 %5, 9, !dbg !2518
  br i1 %12, label %4, label %13, !dbg !2519, !llvm.loop !2520

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2506, metadata !DIExpression()), !dbg !2507
  ret i8* %10, !dbg !2523
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2524 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2526, metadata !DIExpression()), !dbg !2529
  %2 = icmp eq i8* %0, null, !dbg !2530
  br i1 %2, label %3, label %6, !dbg !2532

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2533, !tbaa !1211
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !2535
  tail call void @abort() #23, !dbg !2536
  unreachable, !dbg !2536

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2537
  call void @llvm.dbg.value(metadata i8* %7, metadata !2527, metadata !DIExpression()), !dbg !2529
  %8 = icmp eq i8* %7, null, !dbg !2538
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2539
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %10, metadata !2528, metadata !DIExpression()), !dbg !2529
  %11 = ptrtoint i8* %10 to i64, !dbg !2540
  %12 = ptrtoint i8* %0 to i64, !dbg !2540
  %13 = sub i64 %11, %12, !dbg !2540
  %14 = icmp sgt i64 %13, 6, !dbg !2542
  br i1 %14, label %15, label %24, !dbg !2543

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2544
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.80, i64 0, i64 0), i64 7) #22, !dbg !2545
  %18 = icmp eq i32 %17, 0, !dbg !2546
  br i1 %18, label %19, label %24, !dbg !2547

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2526, metadata !DIExpression()), !dbg !2529
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i64 3) #22, !dbg !2548
  %21 = icmp eq i32 %20, 0, !dbg !2551
  br i1 %21, label %22, label %24, !dbg !2552

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2553
  call void @llvm.dbg.value(metadata i8* %23, metadata !2526, metadata !DIExpression()), !dbg !2529
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2555, !tbaa !1211
  br label %24, !dbg !2556

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2526, metadata !DIExpression()), !dbg !2529
  store i8* %25, i8** @program_name, align 8, !dbg !2557, !tbaa !1211
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2558, !tbaa !1211
  ret void, !dbg !2559
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2560 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2565, metadata !DIExpression()), !dbg !2568
  %2 = tail call i32* @__errno_location() #25, !dbg !2569
  %3 = load i32, i32* %2, align 4, !dbg !2569, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %3, metadata !2566, metadata !DIExpression()), !dbg !2568
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2570
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2570
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2570
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !2571
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2571
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2567, metadata !DIExpression()), !dbg !2568
  store i32 %3, i32* %2, align 4, !dbg !2572, !tbaa !1600
  ret %struct.quoting_options* %8, !dbg !2573
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !2574 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2578, metadata !DIExpression()), !dbg !2579
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2580
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2580
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2581
  %5 = load i32, i32* %4, align 8, !dbg !2581, !tbaa !2582
  ret i32 %5, !dbg !2584
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2585 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2589, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %1, metadata !2590, metadata !DIExpression()), !dbg !2591
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2592
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2592
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2593
  store i32 %1, i32* %5, align 8, !dbg !2594, !tbaa !2582
  ret void, !dbg !2595
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !2596 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2600, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 %1, metadata !2601, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %2, metadata !2602, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 %1, metadata !2603, metadata !DIExpression()), !dbg !2608
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2609
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2609
  %6 = lshr i8 %1, 5, !dbg !2610
  %7 = zext i8 %6 to i64, !dbg !2610
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2611
  call void @llvm.dbg.value(metadata i32* %8, metadata !2604, metadata !DIExpression()), !dbg !2608
  %9 = and i8 %1, 31, !dbg !2612
  %10 = zext i8 %9 to i32, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %10, metadata !2606, metadata !DIExpression()), !dbg !2608
  %11 = load i32, i32* %8, align 4, !dbg !2613, !tbaa !1600
  %12 = lshr i32 %11, %10, !dbg !2614
  %13 = and i32 %12, 1, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %13, metadata !2607, metadata !DIExpression()), !dbg !2608
  %14 = and i32 %2, 1, !dbg !2616
  %15 = xor i32 %13, %14, !dbg !2617
  %16 = shl i32 %15, %10, !dbg !2618
  %17 = xor i32 %16, %11, !dbg !2619
  store i32 %17, i32* %8, align 4, !dbg !2619, !tbaa !1600
  ret i32 %13, !dbg !2620
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !2621 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %1, metadata !2626, metadata !DIExpression()), !dbg !2628
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2629
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2631
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2625, metadata !DIExpression()), !dbg !2628
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2632
  %6 = load i32, i32* %5, align 4, !dbg !2632, !tbaa !2633
  call void @llvm.dbg.value(metadata i32 %6, metadata !2627, metadata !DIExpression()), !dbg !2628
  store i32 %1, i32* %5, align 4, !dbg !2634, !tbaa !2633
  ret i32 %6, !dbg !2635
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2636 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2640, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8* %1, metadata !2641, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8* %2, metadata !2642, metadata !DIExpression()), !dbg !2643
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2644
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2640, metadata !DIExpression()), !dbg !2643
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2647
  store i32 10, i32* %6, align 8, !dbg !2648, !tbaa !2582
  %7 = icmp ne i8* %1, null, !dbg !2649
  %8 = icmp ne i8* %2, null, !dbg !2651
  %9 = and i1 %7, %8, !dbg !2652
  br i1 %9, label %11, label %10, !dbg !2652

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2653
  unreachable, !dbg !2653

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2654
  store i8* %1, i8** %12, align 8, !dbg !2655, !tbaa !2656
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2657
  store i8* %2, i8** %13, align 8, !dbg !2658, !tbaa !2659
  ret void, !dbg !2660
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2661 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2665, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %1, metadata !2666, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8* %2, metadata !2667, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %3, metadata !2668, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2669, metadata !DIExpression()), !dbg !2673
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2674
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2674
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2670, metadata !DIExpression()), !dbg !2673
  %8 = tail call i32* @__errno_location() #25, !dbg !2675
  %9 = load i32, i32* %8, align 4, !dbg !2675, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %9, metadata !2671, metadata !DIExpression()), !dbg !2673
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2676
  %11 = load i32, i32* %10, align 8, !dbg !2676, !tbaa !2582
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2677
  %13 = load i32, i32* %12, align 4, !dbg !2677, !tbaa !2633
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2678
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2679
  %16 = load i8*, i8** %15, align 8, !dbg !2679, !tbaa !2656
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2680
  %18 = load i8*, i8** %17, align 8, !dbg !2680, !tbaa !2659
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %19, metadata !2672, metadata !DIExpression()), !dbg !2673
  store i32 %9, i32* %8, align 4, !dbg !2682, !tbaa !1600
  ret i64 %19, !dbg !2683
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2684 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2690, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %1, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %2, metadata !2692, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %3, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %4, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %5, metadata !2695, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32* %6, metadata !2696, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %7, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %8, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 0, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 0, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* null, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 0, metadata !2703, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2748
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2749
  %14 = icmp eq i64 %13, 1, !dbg !2750
  call void @llvm.dbg.value(metadata i1 %14, metadata !2705, metadata !DIExpression()), !dbg !2748
  %15 = lshr i32 %5, 1, !dbg !2751
  %16 = trunc i32 %15 to i8, !dbg !2751
  %17 = and i8 %16, 1, !dbg !2751
  call void @llvm.dbg.value(metadata i8 %17, metadata !2706, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 0, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 0, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2709, metadata !DIExpression()), !dbg !2748
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2752
  %19 = and i32 %5, 4, !dbg !2754
  %20 = icmp eq i32 %19, 0, !dbg !2754
  %21 = and i32 %5, 1, !dbg !2757
  %22 = icmp eq i32 %21, 0, !dbg !2757
  %23 = bitcast i64* %10 to i8*, !dbg !2760
  %24 = bitcast i32* %12 to i8*, !dbg !2761
  %25 = icmp eq i32* %6, null, !dbg !2762
  br label %26, !dbg !2764

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2765
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2766
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2767
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2768
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2748
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2769
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2770
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2771
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %38, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %37, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %36, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %35, metadata !2706, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %34, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %33, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %32, metadata !2703, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %31, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %30, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 0, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %29, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %28, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %27, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.label(metadata !2742), !dbg !2772
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
  ], !dbg !2773

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2706, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %35, metadata !2706, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 5, metadata !2694, metadata !DIExpression()), !dbg !2748
  br label %92, !dbg !2774

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2706, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 5, metadata !2694, metadata !DIExpression()), !dbg !2748
  %42 = and i8 %35, 1, !dbg !2776
  %43 = icmp eq i8 %42, 0, !dbg !2776
  br i1 %43, label %44, label %92, !dbg !2774

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2778
  br i1 %45, label %92, label %46, !dbg !2781

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2778, !tbaa !1497
  br label %92, !dbg !2778

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 %27), !dbg !2782
  call void @llvm.dbg.value(metadata i8* %48, metadata !2697, metadata !DIExpression()), !dbg !2748
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), i32 %27), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %49, metadata !2698, metadata !DIExpression()), !dbg !2748
  br label %50, !dbg !2787

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %51, metadata !2697, metadata !DIExpression()), !dbg !2748
  %53 = and i8 %35, 1, !dbg !2788
  %54 = icmp eq i8 %53, 0, !dbg !2788
  br i1 %54, label %55, label %70, !dbg !2790

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 0, metadata !2700, metadata !DIExpression()), !dbg !2748
  %56 = load i8, i8* %51, align 1, !dbg !2791, !tbaa !1497
  %57 = icmp eq i8 %56, 0, !dbg !2794
  br i1 %57, label %70, label %58, !dbg !2794

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %61, metadata !2700, metadata !DIExpression()), !dbg !2748
  %62 = icmp ult i64 %61, %39, !dbg !2795
  br i1 %62, label %63, label %65, !dbg !2798

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2795
  store i8 %59, i8* %64, align 1, !dbg !2795, !tbaa !1497
  br label %65, !dbg !2795

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %66, metadata !2700, metadata !DIExpression()), !dbg !2748
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %67, metadata !2702, metadata !DIExpression()), !dbg !2748
  %68 = load i8, i8* %67, align 1, !dbg !2791, !tbaa !1497
  %69 = icmp eq i8 %68, 0, !dbg !2794
  br i1 %69, label %70, label %58, !dbg !2794, !llvm.loop !2800

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2802
  call void @llvm.dbg.value(metadata i64 %71, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %52, metadata !2702, metadata !DIExpression()), !dbg !2748
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %72, metadata !2703, metadata !DIExpression()), !dbg !2748
  br label %92, !dbg !2804

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2704, metadata !DIExpression()), !dbg !2748
  br label %74, !dbg !2805

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %75, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2706, metadata !DIExpression()), !dbg !2748
  br label %76, !dbg !2806

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2768
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %78, metadata !2706, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %77, metadata !2704, metadata !DIExpression()), !dbg !2748
  %79 = and i8 %78, 1, !dbg !2807
  %80 = icmp eq i8 %79, 0, !dbg !2807
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2809
  br label %82, !dbg !2809

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2748
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2751
  call void @llvm.dbg.value(metadata i8 %84, metadata !2706, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %83, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  %85 = and i8 %84, 1, !dbg !2810
  %86 = icmp eq i8 %85, 0, !dbg !2810
  br i1 %86, label %87, label %92, !dbg !2812

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2813
  br i1 %88, label %92, label %89, !dbg !2816

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2813, !tbaa !1497
  br label %92, !dbg !2813

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2706, metadata !DIExpression()), !dbg !2748
  br label %92, !dbg !2817

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2818
  unreachable, !dbg !2818

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2802
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %40 ], !dbg !2748
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2748
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2748
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %100, metadata !2706, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %98, metadata !2703, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %96, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %93, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 0, metadata !2699, metadata !DIExpression()), !dbg !2748
  %101 = and i8 %99, 1, !dbg !2819
  %102 = icmp ne i8 %101, 0, !dbg !2819
  %103 = icmp ne i32 %93, 2, !dbg !2819
  %104 = and i1 %103, %102, !dbg !2819
  %105 = icmp ne i64 %98, 0, !dbg !2819
  %106 = and i1 %105, %104, !dbg !2819
  %107 = icmp ugt i64 %98, 1, !dbg !2819
  %108 = and i8 %100, 1, !dbg !2821
  %109 = icmp eq i8 %108, 0, !dbg !2821
  %110 = icmp eq i32 %93, 2, !dbg !2824
  %111 = or i1 %103, %109, !dbg !2826
  %112 = icmp ne i8 %108, 0, !dbg !2828
  %113 = and i1 %110, %112, !dbg !2828
  %114 = xor i1 %102, true, !dbg !2829
  %115 = xor i1 %104, true, !dbg !2762
  %116 = and i1 %109, %115, !dbg !2762
  %117 = or i1 %25, %116, !dbg !2762
  %118 = and i8 %99, %100, !dbg !2830
  %119 = and i8 %118, 1, !dbg !2830
  %120 = icmp ne i8 %119, 0, !dbg !2830
  %121 = and i1 %120, %105, !dbg !2830
  br label %122, !dbg !2832

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2833
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2802
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2765
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2769
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2770
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2771
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %126, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %123, metadata !2699, metadata !DIExpression()), !dbg !2748
  %131 = icmp eq i64 %126, -1, !dbg !2834
  br i1 %131, label %132, label %136, !dbg !2835

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2836
  %134 = load i8, i8* %133, align 1, !dbg !2836, !tbaa !1497
  %135 = icmp eq i8 %134, 0, !dbg !2837
  br i1 %135, label %581, label %138, !dbg !2838

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2839
  br i1 %137, label %581, label %138, !dbg !2838

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2715, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2716, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2717, metadata !DIExpression()), !dbg !2840
  br i1 %106, label %139, label %154, !dbg !2841

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2842
  %141 = and i1 %107, %131, !dbg !2843
  br i1 %141, label %142, label %144, !dbg !2843

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %143, metadata !2693, metadata !DIExpression()), !dbg !2748
  br label %144, !dbg !2845

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2693, metadata !DIExpression()), !dbg !2748
  %146 = icmp ugt i64 %140, %145, !dbg !2846
  br i1 %146, label %154, label %147, !dbg !2847

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2848
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2849
  %150 = icmp ne i32 %149, 0, !dbg !2850
  %151 = or i1 %150, %109, !dbg !2851
  %152 = xor i1 %150, true, !dbg !2851
  %153 = zext i1 %152 to i8, !dbg !2851
  br i1 %151, label %154, label %639, !dbg !2851

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2840
  call void @llvm.dbg.value(metadata i8 %156, metadata !2715, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %155, metadata !2693, metadata !DIExpression()), !dbg !2748
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2852
  %158 = load i8, i8* %157, align 1, !dbg !2852, !tbaa !1497
  call void @llvm.dbg.value(metadata i8 %158, metadata !2710, metadata !DIExpression()), !dbg !2840
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
  ], !dbg !2853

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2854

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2855

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2716, metadata !DIExpression()), !dbg !2840
  %162 = and i8 %127, 1, !dbg !2858
  %163 = icmp eq i8 %162, 0, !dbg !2858
  %164 = and i1 %110, %163, !dbg !2858
  br i1 %164, label %165, label %181, !dbg !2858

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2860
  br i1 %166, label %167, label %169, !dbg !2864

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2860
  store i8 39, i8* %168, align 1, !dbg !2860, !tbaa !1497
  br label %169, !dbg !2860

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %170, metadata !2700, metadata !DIExpression()), !dbg !2748
  %171 = icmp ult i64 %170, %130, !dbg !2865
  br i1 %171, label %172, label %174, !dbg !2868

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2865
  store i8 36, i8* %173, align 1, !dbg !2865, !tbaa !1497
  br label %174, !dbg !2865

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %175, metadata !2700, metadata !DIExpression()), !dbg !2748
  %176 = icmp ult i64 %175, %130, !dbg !2869
  br i1 %176, label %177, label %179, !dbg !2872

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2869
  store i8 39, i8* %178, align 1, !dbg !2869, !tbaa !1497
  br label %179, !dbg !2869

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %180, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2707, metadata !DIExpression()), !dbg !2748
  br label %181, !dbg !2873

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2748
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %183, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %182, metadata !2700, metadata !DIExpression()), !dbg !2748
  %184 = icmp ult i64 %182, %130, !dbg !2874
  br i1 %184, label %185, label %187, !dbg !2877

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2874
  store i8 92, i8* %186, align 1, !dbg !2874, !tbaa !1497
  br label %187, !dbg !2874

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %188, metadata !2700, metadata !DIExpression()), !dbg !2748
  br i1 %103, label %189, label %463, !dbg !2878

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2880
  %191 = icmp ult i64 %190, %155, !dbg !2881
  br i1 %191, label %192, label %463, !dbg !2882

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2883
  %194 = load i8, i8* %193, align 1, !dbg !2883, !tbaa !1497
  %195 = add i8 %194, -48, !dbg !2884
  %196 = icmp ult i8 %195, 10, !dbg !2884
  br i1 %196, label %197, label %463, !dbg !2884

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2885
  br i1 %198, label %199, label %201, !dbg !2889

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2885
  store i8 48, i8* %200, align 1, !dbg !2885, !tbaa !1497
  br label %201, !dbg !2885

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %202, metadata !2700, metadata !DIExpression()), !dbg !2748
  %203 = icmp ult i64 %202, %130, !dbg !2890
  br i1 %203, label %204, label %206, !dbg !2893

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2890
  store i8 48, i8* %205, align 1, !dbg !2890, !tbaa !1497
  br label %206, !dbg !2890

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %207, metadata !2700, metadata !DIExpression()), !dbg !2748
  br label %463, !dbg !2894

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2895

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2896

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2897

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2898

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2899
  %214 = icmp ult i64 %213, %155, !dbg !2900
  br i1 %214, label %215, label %463, !dbg !2901

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2902
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2903
  %218 = load i8, i8* %217, align 1, !dbg !2903, !tbaa !1497
  %219 = icmp eq i8 %218, 63, !dbg !2904
  br i1 %219, label %220, label %463, !dbg !2905

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2906
  %222 = load i8, i8* %221, align 1, !dbg !2906, !tbaa !1497
  %223 = sext i8 %222 to i32, !dbg !2906
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
  ], !dbg !2907

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2908

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2710, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %213, metadata !2699, metadata !DIExpression()), !dbg !2748
  %226 = icmp ult i64 %124, %130, !dbg !2910
  br i1 %226, label %227, label %229, !dbg !2913

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2910
  store i8 63, i8* %228, align 1, !dbg !2910, !tbaa !1497
  br label %229, !dbg !2910

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %230, metadata !2700, metadata !DIExpression()), !dbg !2748
  %231 = icmp ult i64 %230, %130, !dbg !2914
  br i1 %231, label %232, label %234, !dbg !2917

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2914
  store i8 34, i8* %233, align 1, !dbg !2914, !tbaa !1497
  br label %234, !dbg !2914

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %235, metadata !2700, metadata !DIExpression()), !dbg !2748
  %236 = icmp ult i64 %235, %130, !dbg !2918
  br i1 %236, label %237, label %239, !dbg !2921

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2918
  store i8 34, i8* %238, align 1, !dbg !2918, !tbaa !1497
  br label %239, !dbg !2918

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %240, metadata !2700, metadata !DIExpression()), !dbg !2748
  %241 = icmp ult i64 %240, %130, !dbg !2922
  br i1 %241, label %242, label %244, !dbg !2925

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2922
  store i8 63, i8* %243, align 1, !dbg !2922, !tbaa !1497
  br label %244, !dbg !2922

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %245, metadata !2700, metadata !DIExpression()), !dbg !2748
  br label %463, !dbg !2926

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2714, metadata !DIExpression()), !dbg !2840
  br label %256, !dbg !2927

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2714, metadata !DIExpression()), !dbg !2840
  br label %256, !dbg !2928

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2714, metadata !DIExpression()), !dbg !2840
  br label %254, !dbg !2929

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2714, metadata !DIExpression()), !dbg !2840
  br label %254, !dbg !2930

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2714, metadata !DIExpression()), !dbg !2840
  br label %256, !dbg !2931

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2714, metadata !DIExpression()), !dbg !2840
  br i1 %110, label %252, label %253, !dbg !2932

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2933

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2936

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2937
  call void @llvm.dbg.value(metadata i8 %255, metadata !2714, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.label(metadata !2743), !dbg !2938
  br i1 %111, label %256, label %625, !dbg !2939

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2937
  call void @llvm.dbg.value(metadata i8 %257, metadata !2714, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.label(metadata !2744), !dbg !2941
  br i1 %102, label %488, label %463, !dbg !2942

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2943

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2944, !tbaa !1497
  %261 = icmp eq i8 %260, 0, !dbg !2945
  br i1 %261, label %262, label %463, !dbg !2946

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2947
  br i1 %263, label %264, label %463, !dbg !2949

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2717, metadata !DIExpression()), !dbg !2840
  br label %265, !dbg !2950

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2840
  call void @llvm.dbg.value(metadata i8 %266, metadata !2717, metadata !DIExpression()), !dbg !2840
  br i1 %111, label %463, label %625, !dbg !2951

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2717, metadata !DIExpression()), !dbg !2840
  br i1 %110, label %268, label %463, !dbg !2952

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2953

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2955
  %271 = icmp ne i64 %125, 0, !dbg !2957
  %272 = or i1 %271, %270, !dbg !2958
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2958
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %274, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %273, metadata !2701, metadata !DIExpression()), !dbg !2748
  %275 = icmp ult i64 %124, %274, !dbg !2959
  br i1 %275, label %276, label %278, !dbg !2962

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2959
  store i8 39, i8* %277, align 1, !dbg !2959, !tbaa !1497
  br label %278, !dbg !2959

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %279, metadata !2700, metadata !DIExpression()), !dbg !2748
  %280 = icmp ult i64 %279, %274, !dbg !2963
  br i1 %280, label %281, label %283, !dbg !2966

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2963
  store i8 92, i8* %282, align 1, !dbg !2963, !tbaa !1497
  br label %283, !dbg !2963

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %284, metadata !2700, metadata !DIExpression()), !dbg !2748
  %285 = icmp ult i64 %284, %274, !dbg !2967
  br i1 %285, label %286, label %288, !dbg !2970

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2967
  store i8 39, i8* %287, align 1, !dbg !2967, !tbaa !1497
  br label %288, !dbg !2967

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %289, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 0, metadata !2707, metadata !DIExpression()), !dbg !2748
  br label %463, !dbg !2971

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2972

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2718, metadata !DIExpression()), !dbg !2973
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2974
  %293 = load i16*, i16** %292, align 8, !dbg !2974, !tbaa !1211
  %294 = zext i8 %158 to i64, !dbg !2974
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2974
  %296 = load i16, i16* %295, align 2, !dbg !2974, !tbaa !2976
  %297 = lshr i16 %296, 14, !dbg !2978
  %298 = trunc i16 %297 to i8, !dbg !2978
  %299 = and i8 %298, 1, !dbg !2978
  call void @llvm.dbg.value(metadata i8 %299, metadata !2721, metadata !DIExpression()), !dbg !2973
  br label %355, !dbg !2979

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2980
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2722, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %23, metadata !2982, metadata !DIExpression()) #20, !dbg !2989
  call void @llvm.dbg.value(metadata i32 0, metadata !2987, metadata !DIExpression()) #20, !dbg !2989
  call void @llvm.dbg.value(metadata i64 8, metadata !2988, metadata !DIExpression()) #20, !dbg !2989
  store i64 0, i64* %10, align 8, !dbg !2991
  call void @llvm.dbg.value(metadata i64 0, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 1, metadata !2721, metadata !DIExpression()), !dbg !2973
  %301 = icmp eq i64 %155, -1, !dbg !2992
  br i1 %301, label %302, label %304, !dbg !2994

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %303, metadata !2693, metadata !DIExpression()), !dbg !2748
  br label %304, !dbg !2996

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2840
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  br label %306, !dbg !2997

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2998
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2999
  call void @llvm.dbg.value(metadata i8 %308, metadata !2721, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %307, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !3000
  %309 = add i64 %307, %123, !dbg !3001
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !3002
  %311 = sub i64 %305, %309, !dbg !3003
  call void @llvm.dbg.value(metadata i32* %12, metadata !2728, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %312, metadata !2731, metadata !DIExpression()), !dbg !2761
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !3005

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %307, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %307, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %307, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %307, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %307, metadata !2718, metadata !DIExpression()), !dbg !2973
  %314 = icmp ugt i64 %305, %309, !dbg !3006
  br i1 %314, label %315, label %340, !dbg !3008

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !3009
  br label %317, !dbg !3009

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2718, metadata !DIExpression()), !dbg !2973
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !3010
  %321 = load i8, i8* %320, align 1, !dbg !3010, !tbaa !1497
  %322 = icmp eq i8 %321, 0, !dbg !3008
  br i1 %322, label %340, label %323, !dbg !3009

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %324, metadata !2718, metadata !DIExpression()), !dbg !2973
  %325 = add i64 %324, %123, !dbg !3012
  %326 = icmp ult i64 %325, %305, !dbg !3006
  br i1 %326, label %317, label %340, !dbg !3008, !llvm.loop !3013

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !3014
  %329 = and i1 %113, %328, !dbg !3017
  call void @llvm.dbg.value(metadata i64 1, metadata !2732, metadata !DIExpression()), !dbg !3018
  br i1 %329, label %330, label %343, !dbg !3017

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2732, metadata !DIExpression()), !dbg !3018
  %332 = add i64 %331, %309, !dbg !3019
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !3020
  %334 = load i8, i8* %333, align 1, !dbg !3020, !tbaa !1497
  %335 = sext i8 %334 to i32, !dbg !3020
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !3021

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %337, metadata !2732, metadata !DIExpression()), !dbg !3018
  %338 = icmp eq i64 %337, %312, !dbg !3014
  br i1 %338, label %343, label %330, !dbg !3023, !llvm.loop !3024

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 %308, metadata !2721, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %307, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 %308, metadata !2721, metadata !DIExpression()), !dbg !2973
  br label %340, !dbg !3026

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !3026
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !3027, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %344, metadata !2728, metadata !DIExpression()), !dbg !2761
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !3029
  %346 = icmp eq i32 %345, 0, !dbg !3029
  %347 = select i1 %346, i8 0, i8 %308, !dbg !3030
  call void @llvm.dbg.value(metadata i8 %347, metadata !2721, metadata !DIExpression()), !dbg !2973
  %348 = add i64 %312, %307, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %348, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 %347, metadata !2721, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %348, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !3026
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !3032
  %350 = icmp eq i32 %349, 0, !dbg !3033
  br i1 %350, label %306, label %351, !dbg !3034, !llvm.loop !3035

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !3037
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2694, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %99, metadata !2704, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %305, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !3026
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !3037
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2840
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !3038
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !3038
  call void @llvm.dbg.value(metadata i8 %358, metadata !2721, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %357, metadata !2718, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %356, metadata !2693, metadata !DIExpression()), !dbg !2748
  %359 = and i8 %358, 1, !dbg !3039
  %360 = icmp ne i8 %359, 0, !dbg !3039
  call void @llvm.dbg.value(metadata i8 %359, metadata !2717, metadata !DIExpression()), !dbg !2840
  %361 = icmp ult i64 %357, 2, !dbg !3040
  %362 = or i1 %360, %114, !dbg !3041
  %363 = and i1 %361, %362, !dbg !3042
  br i1 %363, label %463, label %364, !dbg !3042

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %365, metadata !2739, metadata !DIExpression()), !dbg !3044
  br label %366, !dbg !3045

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2833
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2748
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2769
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2840
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2840
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !3046
  call void @llvm.dbg.value(metadata i8 %372, metadata !2716, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %371, metadata !2715, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %370, metadata !2710, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %369, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %368, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %367, metadata !2699, metadata !DIExpression()), !dbg !2748
  br i1 %362, label %419, label %373, !dbg !3047

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3052

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2716, metadata !DIExpression()), !dbg !2840
  %375 = and i8 %369, 1, !dbg !3055
  %376 = icmp eq i8 %375, 0, !dbg !3055
  %377 = and i1 %110, %376, !dbg !3055
  br i1 %377, label %378, label %394, !dbg !3055

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3057
  br i1 %379, label %380, label %382, !dbg !3061

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3057
  store i8 39, i8* %381, align 1, !dbg !3057, !tbaa !1497
  br label %382, !dbg !3057

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %383, metadata !2700, metadata !DIExpression()), !dbg !2748
  %384 = icmp ult i64 %383, %130, !dbg !3062
  br i1 %384, label %385, label %387, !dbg !3065

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3062
  store i8 36, i8* %386, align 1, !dbg !3062, !tbaa !1497
  br label %387, !dbg !3062

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %388, metadata !2700, metadata !DIExpression()), !dbg !2748
  %389 = icmp ult i64 %388, %130, !dbg !3066
  br i1 %389, label %390, label %392, !dbg !3069

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3066
  store i8 39, i8* %391, align 1, !dbg !3066, !tbaa !1497
  br label %392, !dbg !3066

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %393, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2707, metadata !DIExpression()), !dbg !2748
  br label %394, !dbg !3070

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2748
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %396, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %395, metadata !2700, metadata !DIExpression()), !dbg !2748
  %397 = icmp ult i64 %395, %130, !dbg !3071
  br i1 %397, label %398, label %400, !dbg !3074

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3071
  store i8 92, i8* %399, align 1, !dbg !3071, !tbaa !1497
  br label %400, !dbg !3071

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %401, metadata !2700, metadata !DIExpression()), !dbg !2748
  %402 = icmp ult i64 %401, %130, !dbg !3075
  br i1 %402, label %403, label %407, !dbg !3078

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3075
  %405 = or i8 %404, 48, !dbg !3075
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3075
  store i8 %405, i8* %406, align 1, !dbg !3075, !tbaa !1497
  br label %407, !dbg !3075

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %408, metadata !2700, metadata !DIExpression()), !dbg !2748
  %409 = icmp ult i64 %408, %130, !dbg !3079
  br i1 %409, label %410, label %415, !dbg !3082

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3079
  %412 = and i8 %411, 7, !dbg !3079
  %413 = or i8 %412, 48, !dbg !3079
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3079
  store i8 %413, i8* %414, align 1, !dbg !3079, !tbaa !1497
  br label %415, !dbg !3079

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %416, metadata !2700, metadata !DIExpression()), !dbg !2748
  %417 = and i8 %370, 7, !dbg !3083
  %418 = or i8 %417, 48, !dbg !3084
  call void @llvm.dbg.value(metadata i8 %418, metadata !2710, metadata !DIExpression()), !dbg !2840
  br label %428, !dbg !3085

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3086
  %421 = icmp eq i8 %420, 0, !dbg !3086
  br i1 %421, label %428, label %422, !dbg !3088

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3089
  br i1 %423, label %424, label %426, !dbg !3093

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3089
  store i8 92, i8* %425, align 1, !dbg !3089, !tbaa !1497
  br label %426, !dbg !3089

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %427, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 0, metadata !2715, metadata !DIExpression()), !dbg !2840
  br label %428, !dbg !3094

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2748
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2769
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2840
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2840
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2840
  call void @llvm.dbg.value(metadata i8 %433, metadata !2716, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %432, metadata !2715, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %431, metadata !2710, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %430, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %429, metadata !2700, metadata !DIExpression()), !dbg !2748
  %434 = add i64 %367, 1, !dbg !3095
  %435 = icmp ugt i64 %365, %434, !dbg !3097
  br i1 %435, label %436, label %526, !dbg !3098

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3099
  %438 = icmp ne i8 %437, 0, !dbg !3099
  %439 = and i8 %433, 1, !dbg !3099
  %440 = icmp eq i8 %439, 0, !dbg !3099
  %441 = and i1 %438, %440, !dbg !3099
  br i1 %441, label %442, label %453, !dbg !3099

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3102
  br i1 %443, label %444, label %446, !dbg !3106

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3102
  store i8 39, i8* %445, align 1, !dbg !3102, !tbaa !1497
  br label %446, !dbg !3102

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %447, metadata !2700, metadata !DIExpression()), !dbg !2748
  %448 = icmp ult i64 %447, %130, !dbg !3107
  br i1 %448, label %449, label %451, !dbg !3110

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3107
  store i8 39, i8* %450, align 1, !dbg !3107, !tbaa !1497
  br label %451, !dbg !3107

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %452, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 0, metadata !2707, metadata !DIExpression()), !dbg !2748
  br label %453, !dbg !3111

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3112
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %455, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %454, metadata !2700, metadata !DIExpression()), !dbg !2748
  %456 = icmp ult i64 %454, %130, !dbg !3113
  br i1 %456, label %457, label %459, !dbg !3116

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3113
  store i8 %431, i8* %458, align 1, !dbg !3113, !tbaa !1497
  br label %459, !dbg !3113

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %460, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %434, metadata !2699, metadata !DIExpression()), !dbg !2748
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3117
  %462 = load i8, i8* %461, align 1, !dbg !3117, !tbaa !1497
  call void @llvm.dbg.value(metadata i8 %462, metadata !2710, metadata !DIExpression()), !dbg !2840
  br label %366, !dbg !3118, !llvm.loop !3119

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2833
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2748
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2765
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3122
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2748
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2748
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2840
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2840
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2840
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %472, metadata !2717, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %471, metadata !2716, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %156, metadata !2715, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %470, metadata !2710, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %469, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %468, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %467, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %466, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %465, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %464, metadata !2699, metadata !DIExpression()), !dbg !2748
  br i1 %117, label %486, label %474, !dbg !3123

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3124
  %476 = zext i8 %475 to i64, !dbg !3124
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3125
  %478 = load i32, i32* %477, align 4, !dbg !3125, !tbaa !1600
  %479 = and i8 %470, 31, !dbg !3126
  %480 = zext i8 %479 to i32, !dbg !3126
  %481 = shl nuw i32 1, %480, !dbg !3127
  %482 = and i32 %478, %481, !dbg !3127
  %483 = icmp eq i32 %482, 0, !dbg !3127
  %484 = icmp eq i8 %156, 0, !dbg !3128
  %485 = and i1 %484, %483, !dbg !3129
  br i1 %485, label %526, label %488, !dbg !3129

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3128
  br i1 %487, label %526, label %488, !dbg !3130

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3131
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2748
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2765
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3122
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2769
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2770
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2840
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2840
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %496, metadata !2717, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %495, metadata !2710, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %494, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %493, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %492, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %491, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %490, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %489, metadata !2699, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.label(metadata !2745), !dbg !3132
  br i1 %109, label %498, label %629, !dbg !3133

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2716, metadata !DIExpression()), !dbg !2840
  %499 = and i8 %493, 1, !dbg !3135
  %500 = icmp eq i8 %499, 0, !dbg !3135
  %501 = and i1 %110, %500, !dbg !3135
  br i1 %501, label %502, label %518, !dbg !3135

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3137
  br i1 %503, label %504, label %506, !dbg !3141

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3137
  store i8 39, i8* %505, align 1, !dbg !3137, !tbaa !1497
  br label %506, !dbg !3137

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %507, metadata !2700, metadata !DIExpression()), !dbg !2748
  %508 = icmp ult i64 %507, %497, !dbg !3142
  br i1 %508, label %509, label %511, !dbg !3145

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3142
  store i8 36, i8* %510, align 1, !dbg !3142, !tbaa !1497
  br label %511, !dbg !3142

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %512, metadata !2700, metadata !DIExpression()), !dbg !2748
  %513 = icmp ult i64 %512, %497, !dbg !3146
  br i1 %513, label %514, label %516, !dbg !3149

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3146
  store i8 39, i8* %515, align 1, !dbg !3146, !tbaa !1497
  br label %516, !dbg !3146

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %517, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2707, metadata !DIExpression()), !dbg !2748
  br label %518, !dbg !3150

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2840
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %520, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %519, metadata !2700, metadata !DIExpression()), !dbg !2748
  %521 = icmp ult i64 %519, %497, !dbg !3151
  br i1 %521, label %522, label %524, !dbg !3154

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3151
  store i8 92, i8* %523, align 1, !dbg !3151, !tbaa !1497
  br label %524, !dbg !3151

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %525, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %536, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %535, metadata !2717, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %534, metadata !2716, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %533, metadata !2710, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %532, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %531, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %530, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %529, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %528, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %527, metadata !2699, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.label(metadata !2746), !dbg !3155
  br label %553, !dbg !3156

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3131
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2748
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2765
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3122
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2769
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2770
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3159
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2840
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2840
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %535, metadata !2717, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %534, metadata !2716, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %533, metadata !2710, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %532, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %531, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %530, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %529, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %528, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %527, metadata !2699, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.label(metadata !2746), !dbg !3155
  %537 = and i8 %531, 1, !dbg !3156
  %538 = icmp ne i8 %537, 0, !dbg !3156
  %539 = and i8 %534, 1, !dbg !3156
  %540 = icmp eq i8 %539, 0, !dbg !3156
  %541 = and i1 %538, %540, !dbg !3156
  br i1 %541, label %542, label %553, !dbg !3156

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3160
  br i1 %543, label %544, label %546, !dbg !3164

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3160
  store i8 39, i8* %545, align 1, !dbg !3160, !tbaa !1497
  br label %546, !dbg !3160

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %547, metadata !2700, metadata !DIExpression()), !dbg !2748
  %548 = icmp ult i64 %547, %536, !dbg !3165
  br i1 %548, label %549, label %551, !dbg !3168

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3165
  store i8 39, i8* %550, align 1, !dbg !3165, !tbaa !1497
  br label %551, !dbg !3165

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %552, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 0, metadata !2707, metadata !DIExpression()), !dbg !2748
  br label %553, !dbg !3169

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2840
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %562, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %561, metadata !2700, metadata !DIExpression()), !dbg !2748
  %563 = icmp ult i64 %561, %554, !dbg !3170
  br i1 %563, label %564, label %566, !dbg !3173

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3170
  store i8 %556, i8* %565, align 1, !dbg !3170, !tbaa !1497
  br label %566, !dbg !3170

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %567, metadata !2700, metadata !DIExpression()), !dbg !2748
  %568 = and i8 %555, 1, !dbg !3174
  %569 = icmp eq i8 %568, 0, !dbg !3174
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3176
  call void @llvm.dbg.value(metadata i8 %570, metadata !2709, metadata !DIExpression()), !dbg !2748
  br label %571, !dbg !3177

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3131
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2748
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2765
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3122
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2769
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2748
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2771
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %578, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %577, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %576, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %575, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %574, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %573, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %572, metadata !2699, metadata !DIExpression()), !dbg !2748
  %580 = add i64 %572, 1, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %580, metadata !2699, metadata !DIExpression()), !dbg !2748
  br label %122, !dbg !3179, !llvm.loop !3180

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %127, metadata !2707, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %128, metadata !2708, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %129, metadata !2709, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  %583 = icmp eq i64 %124, 0, !dbg !3182
  %584 = and i1 %110, %583, !dbg !3184
  %585 = xor i1 %584, true, !dbg !3184
  %586 = or i1 %109, %585, !dbg !3184
  br i1 %586, label %587, label %629, !dbg !3184

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3185
  %589 = xor i1 %588, true, !dbg !3185
  %590 = and i8 %128, 1, !dbg !3187
  %591 = icmp eq i8 %590, 0, !dbg !3187
  %592 = or i1 %591, %589, !dbg !3185
  br i1 %592, label %602, label %593, !dbg !3185

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3188
  %595 = icmp eq i8 %594, 0, !dbg !3188
  br i1 %595, label %598, label %596, !dbg !3191

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %94, metadata !2697, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %95, metadata !2698, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %125, metadata !2701, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %582, metadata !2693, metadata !DIExpression()), !dbg !2748
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3192
  br label %645, !dbg !3193

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3194
  %600 = icmp ne i64 %125, 0, !dbg !3196
  %601 = and i1 %600, %599, !dbg !3197
  br i1 %601, label %26, label %602, !dbg !3197

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %130, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  %603 = icmp ne i8* %97, null, !dbg !3198
  %604 = and i1 %603, %109, !dbg !3200
  br i1 %604, label %605, label %620, !dbg !3200

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %124, metadata !2700, metadata !DIExpression()), !dbg !2748
  %606 = load i8, i8* %97, align 1, !dbg !3201, !tbaa !1497
  %607 = icmp eq i8 %606, 0, !dbg !3204
  br i1 %607, label %620, label %608, !dbg !3204

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2702, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %611, metadata !2700, metadata !DIExpression()), !dbg !2748
  %612 = icmp ult i64 %611, %130, !dbg !3205
  br i1 %612, label %613, label %615, !dbg !3208

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3205
  store i8 %609, i8* %614, align 1, !dbg !3205, !tbaa !1497
  br label %615, !dbg !3205

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %616, metadata !2700, metadata !DIExpression()), !dbg !2748
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %617, metadata !2702, metadata !DIExpression()), !dbg !2748
  %618 = load i8, i8* %617, align 1, !dbg !3201, !tbaa !1497
  %619 = icmp eq i8 %618, 0, !dbg !3204
  br i1 %619, label %620, label %608, !dbg !3204, !llvm.loop !3210

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2802
  call void @llvm.dbg.value(metadata i64 %621, metadata !2700, metadata !DIExpression()), !dbg !2748
  %622 = icmp ult i64 %621, %130, !dbg !3212
  br i1 %622, label %623, label %645, !dbg !3214

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3215
  store i8 0, i8* %624, align 1, !dbg !3216, !tbaa !1497
  br label %645, !dbg !3215

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %630, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.label(metadata !2747), !dbg !3217
  %627 = icmp eq i8 %101, 0, !dbg !3218
  %628 = select i1 %627, i32 2, i32 4, !dbg !3218
  br label %635, !dbg !3218

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2691, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %630, metadata !2693, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.label(metadata !2747), !dbg !3217
  %632 = icmp eq i32 %93, 2, !dbg !3220
  %633 = icmp eq i8 %101, 0, !dbg !3218
  %634 = select i1 %633, i32 2, i32 4, !dbg !3218
  br i1 %632, label %635, label %639, !dbg !3218

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3218

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2694, metadata !DIExpression()), !dbg !2748
  %643 = and i32 %5, -3, !dbg !3221
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3222
  br label %645, !dbg !3223

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3224
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3229, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %1, metadata !3230, metadata !DIExpression()), !dbg !3233
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %3, metadata !3231, metadata !DIExpression()), !dbg !3233
  %4 = icmp eq i8* %3, %0, !dbg !3235
  br i1 %4, label %5, label %71, !dbg !3237

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %6, metadata !3232, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8* %6, metadata !3239, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8* undef, metadata !3245, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 85, metadata !3246, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 84, metadata !3247, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 70, metadata !3248, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 45, metadata !3249, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 56, metadata !3250, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 0, metadata !3251, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 0, metadata !3252, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 0, metadata !3253, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 0, metadata !3254, metadata !DIExpression()), !dbg !3255
  %7 = load i8, i8* %6, align 1, !dbg !3258, !tbaa !1497
  %8 = and i8 %7, -33, !dbg !3258
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3258

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3260, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* undef, metadata !3265, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 84, metadata !3266, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 70, metadata !3267, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 45, metadata !3268, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 56, metadata !3269, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3270, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3271, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3273, metadata !DIExpression()), !dbg !3274
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3278
  %11 = load i8, i8* %10, align 1, !dbg !3278, !tbaa !1497
  %12 = and i8 %11, -33, !dbg !3278
  %13 = icmp eq i8 %12, 84, !dbg !3278
  br i1 %13, label %14, label %68, !dbg !3278

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3280, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* undef, metadata !3285, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 70, metadata !3286, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 45, metadata !3287, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 56, metadata !3288, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 0, metadata !3289, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 0, metadata !3290, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 0, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 0, metadata !3292, metadata !DIExpression()), !dbg !3293
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3297
  %16 = load i8, i8* %15, align 1, !dbg !3297, !tbaa !1497
  %17 = and i8 %16, -33, !dbg !3297
  %18 = icmp eq i8 %17, 70, !dbg !3297
  br i1 %18, label %19, label %68, !dbg !3297

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3299, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8* undef, metadata !3304, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8 45, metadata !3305, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8 56, metadata !3306, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8 0, metadata !3307, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8 0, metadata !3308, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8 0, metadata !3309, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8 0, metadata !3310, metadata !DIExpression()), !dbg !3311
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3315
  %21 = load i8, i8* %20, align 1, !dbg !3315, !tbaa !1497
  %22 = icmp eq i8 %21, 45, !dbg !3315
  br i1 %22, label %23, label %68, !dbg !3317

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3318, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8* undef, metadata !3323, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 56, metadata !3324, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3325, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3326, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3327, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3328, metadata !DIExpression()), !dbg !3329
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3333
  %25 = load i8, i8* %24, align 1, !dbg !3333, !tbaa !1497
  %26 = icmp eq i8 %25, 56, !dbg !3333
  br i1 %26, label %27, label %68, !dbg !3335

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3336, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8* undef, metadata !3341, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8 0, metadata !3342, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8 0, metadata !3343, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8 0, metadata !3344, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8 0, metadata !3345, metadata !DIExpression()), !dbg !3346
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3350
  %29 = load i8, i8* %28, align 1, !dbg !3350, !tbaa !1497
  %30 = icmp eq i8 %29, 0, !dbg !3350
  br i1 %30, label %31, label %68, !dbg !3352

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3353, !tbaa !1497
  %33 = icmp eq i8 %32, 96, !dbg !3354
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.95, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.96, i64 0, i64 0), !dbg !3353
  br label %71, !dbg !3355

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3260, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8* undef, metadata !3265, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 66, metadata !3266, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 49, metadata !3267, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 56, metadata !3268, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 48, metadata !3269, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 51, metadata !3270, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 48, metadata !3271, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 0, metadata !3272, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 0, metadata !3273, metadata !DIExpression()), !dbg !3356
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3360
  %37 = load i8, i8* %36, align 1, !dbg !3360, !tbaa !1497
  %38 = and i8 %37, -33, !dbg !3360
  %39 = icmp eq i8 %38, 66, !dbg !3360
  br i1 %39, label %40, label %68, !dbg !3360

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3280, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8* undef, metadata !3285, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8 49, metadata !3286, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8 56, metadata !3287, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8 48, metadata !3288, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8 51, metadata !3289, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8 48, metadata !3290, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8 0, metadata !3291, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8 0, metadata !3292, metadata !DIExpression()), !dbg !3361
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3363
  %42 = load i8, i8* %41, align 1, !dbg !3363, !tbaa !1497
  %43 = icmp eq i8 %42, 49, !dbg !3363
  br i1 %43, label %44, label %68, !dbg !3364

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3299, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* undef, metadata !3304, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 56, metadata !3305, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 48, metadata !3306, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 51, metadata !3307, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 48, metadata !3308, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 0, metadata !3309, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 0, metadata !3310, metadata !DIExpression()), !dbg !3365
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3367
  %46 = load i8, i8* %45, align 1, !dbg !3367, !tbaa !1497
  %47 = icmp eq i8 %46, 56, !dbg !3367
  br i1 %47, label %48, label %68, !dbg !3368

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3318, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8* undef, metadata !3323, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 48, metadata !3324, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 51, metadata !3325, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 48, metadata !3326, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 0, metadata !3327, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 0, metadata !3328, metadata !DIExpression()), !dbg !3369
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3371
  %50 = load i8, i8* %49, align 1, !dbg !3371, !tbaa !1497
  %51 = icmp eq i8 %50, 48, !dbg !3371
  br i1 %51, label %52, label %68, !dbg !3372

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3336, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8* undef, metadata !3341, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 51, metadata !3342, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 48, metadata !3343, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 0, metadata !3344, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8 0, metadata !3345, metadata !DIExpression()), !dbg !3373
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3375
  %54 = load i8, i8* %53, align 1, !dbg !3375, !tbaa !1497
  %55 = icmp eq i8 %54, 51, !dbg !3375
  br i1 %55, label %56, label %68, !dbg !3376

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3377, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* undef, metadata !3382, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 48, metadata !3383, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 0, metadata !3384, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 0, metadata !3385, metadata !DIExpression()), !dbg !3386
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3390
  %58 = load i8, i8* %57, align 1, !dbg !3390, !tbaa !1497
  %59 = icmp eq i8 %58, 48, !dbg !3390
  br i1 %59, label %60, label %68, !dbg !3392

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3393, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8* undef, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8 0, metadata !3399, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8 0, metadata !3400, metadata !DIExpression()), !dbg !3401
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3405
  %62 = load i8, i8* %61, align 1, !dbg !3405, !tbaa !1497
  %63 = icmp eq i8 %62, 0, !dbg !3405
  br i1 %63, label %64, label %68, !dbg !3407

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3408, !tbaa !1497
  %66 = icmp eq i8 %65, 96, !dbg !3409
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.98, i64 0, i64 0), !dbg !3408
  br label %71, !dbg !3410

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3411
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.93, i64 0, i64 0), !dbg !3412
  br label %71, !dbg !3413

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3233
  ret i8* %72, !dbg !3414
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !431 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !435 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3419, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %1, metadata !3420, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3421, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i8* %0, metadata !3423, metadata !DIExpression()) #20, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %1, metadata !3428, metadata !DIExpression()) #20, !dbg !3436
  call void @llvm.dbg.value(metadata i64* null, metadata !3429, metadata !DIExpression()) #20, !dbg !3436
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3430, metadata !DIExpression()) #20, !dbg !3436
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3438
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3431, metadata !DIExpression()) #20, !dbg !3436
  %6 = tail call i32* @__errno_location() #25, !dbg !3439
  %7 = load i32, i32* %6, align 4, !dbg !3439, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %7, metadata !3432, metadata !DIExpression()) #20, !dbg !3436
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3440
  %9 = load i32, i32* %8, align 4, !dbg !3440, !tbaa !2633
  %10 = or i32 %9, 1, !dbg !3441
  call void @llvm.dbg.value(metadata i32 %10, metadata !3433, metadata !DIExpression()) #20, !dbg !3436
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3442
  %12 = load i32, i32* %11, align 8, !dbg !3442, !tbaa !2582
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3443
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3444
  %15 = load i8*, i8** %14, align 8, !dbg !3444, !tbaa !2656
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3445
  %17 = load i8*, i8** %16, align 8, !dbg !3445, !tbaa !2659
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !3446
  %19 = add i64 %18, 1, !dbg !3447
  call void @llvm.dbg.value(metadata i64 %19, metadata !3434, metadata !DIExpression()) #20, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %19, metadata !3448, metadata !DIExpression()) #20, !dbg !3453
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !3455
  call void @llvm.dbg.value(metadata i8* %20, metadata !3435, metadata !DIExpression()) #20, !dbg !3436
  %21 = load i32, i32* %11, align 8, !dbg !3456, !tbaa !2582
  %22 = load i8*, i8** %14, align 8, !dbg !3457, !tbaa !2656
  %23 = load i8*, i8** %16, align 8, !dbg !3458, !tbaa !2659
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !3459
  store i32 %7, i32* %6, align 4, !dbg !3460, !tbaa !1600
  ret i8* %20, !dbg !3461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3423, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %1, metadata !3428, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64* %2, metadata !3429, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3430, metadata !DIExpression()), !dbg !3462
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3463
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3463
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3431, metadata !DIExpression()), !dbg !3462
  %7 = tail call i32* @__errno_location() #25, !dbg !3464
  %8 = load i32, i32* %7, align 4, !dbg !3464, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %8, metadata !3432, metadata !DIExpression()), !dbg !3462
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3465
  %10 = load i32, i32* %9, align 4, !dbg !3465, !tbaa !2633
  %11 = icmp ne i64* %2, null, !dbg !3466
  %12 = xor i1 %11, true, !dbg !3466
  %13 = zext i1 %12 to i32, !dbg !3466
  %14 = or i32 %10, %13, !dbg !3467
  call void @llvm.dbg.value(metadata i32 %14, metadata !3433, metadata !DIExpression()), !dbg !3462
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3468
  %16 = load i32, i32* %15, align 8, !dbg !3468, !tbaa !2582
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3469
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3470
  %19 = load i8*, i8** %18, align 8, !dbg !3470, !tbaa !2656
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3471
  %21 = load i8*, i8** %20, align 8, !dbg !3471, !tbaa !2659
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3472
  %23 = add i64 %22, 1, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %23, metadata !3434, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %23, metadata !3448, metadata !DIExpression()) #20, !dbg !3474
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !3476
  call void @llvm.dbg.value(metadata i8* %24, metadata !3435, metadata !DIExpression()), !dbg !3462
  %25 = load i32, i32* %15, align 8, !dbg !3477, !tbaa !2582
  %26 = load i8*, i8** %18, align 8, !dbg !3478, !tbaa !2656
  %27 = load i8*, i8** %20, align 8, !dbg !3479, !tbaa !2659
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3480
  store i32 %8, i32* %7, align 4, !dbg !3481, !tbaa !1600
  br i1 %11, label %29, label %30, !dbg !3482

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3483, !tbaa !1823
  br label %30, !dbg !3485

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3486
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3487 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3491, !tbaa !1211
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3489, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 1, metadata !3490, metadata !DIExpression()), !dbg !3492
  %2 = load i32, i32* @nslots, align 4, !dbg !3493, !tbaa !1600
  %3 = icmp sgt i32 %2, 1, !dbg !3496
  br i1 %3, label %4, label %12, !dbg !3497

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3490, metadata !DIExpression()), !dbg !3492
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3498
  %7 = load i8*, i8** %6, align 8, !dbg !3498, !tbaa !3499
  tail call void @free(i8* %7) #20, !dbg !3501
  %8 = add nuw nsw i64 %5, 1, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %8, metadata !3490, metadata !DIExpression()), !dbg !3492
  %9 = load i32, i32* @nslots, align 4, !dbg !3493, !tbaa !1600
  %10 = sext i32 %9 to i64, !dbg !3496
  %11 = icmp slt i64 %8, %10, !dbg !3496
  br i1 %11, label %4, label %12, !dbg !3497, !llvm.loop !3503

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3505
  %14 = load i8*, i8** %13, align 8, !dbg !3505, !tbaa !3499
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3507
  br i1 %15, label %17, label %16, !dbg !3508

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !3509
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3511, !tbaa !3512
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3513, !tbaa !3499
  br label %17, !dbg !3514

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3515
  br i1 %18, label %21, label %19, !dbg !3517

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3518
  tail call void @free(i8* %20) #20, !dbg !3520
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3521, !tbaa !1211
  br label %21, !dbg !3522

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3523, !tbaa !1600
  ret void, !dbg !3524
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3525 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3527, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i8* %1, metadata !3528, metadata !DIExpression()), !dbg !3529
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3530
  ret i8* %3, !dbg !3531
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3532 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3536, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i8* %1, metadata !3537, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %2, metadata !3538, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3539, metadata !DIExpression()), !dbg !3551
  %5 = tail call i32* @__errno_location() #25, !dbg !3552
  %6 = load i32, i32* %5, align 4, !dbg !3552, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %6, metadata !3540, metadata !DIExpression()), !dbg !3551
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3553, !tbaa !1211
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3541, metadata !DIExpression()), !dbg !3551
  %8 = icmp slt i32 %0, 0, !dbg !3554
  br i1 %8, label %9, label %10, !dbg !3556

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3557
  unreachable, !dbg !3557

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3558, !tbaa !1600
  %12 = icmp sgt i32 %11, %0, !dbg !3559
  br i1 %12, label %34, label %13, !dbg !3560

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3561
  call void @llvm.dbg.value(metadata i1 %14, metadata !3542, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3545, metadata !DIExpression()), !dbg !3562
  %15 = icmp eq i32 %0, 2147483647, !dbg !3563
  br i1 %15, label %16, label %17, !dbg !3565

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3566
  unreachable, !dbg !3566

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3567
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3567
  %20 = add nuw nsw i32 %0, 1, !dbg !3568
  %21 = sext i32 %20 to i64, !dbg !3569
  %22 = shl nuw nsw i64 %21, 4, !dbg !3570
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !3571
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3571
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3541, metadata !DIExpression()), !dbg !3551
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3572, !tbaa !1211
  br i1 %14, label %25, label %26, !dbg !3573

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3574, !tbaa.struct !3576
  br label %26, !dbg !3577

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3578, !tbaa !1600
  %28 = sext i32 %27 to i64, !dbg !3579
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3579
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3580
  %31 = sub nsw i32 %20, %27, !dbg !3581
  %32 = sext i32 %31 to i64, !dbg !3582
  %33 = shl nsw i64 %32, 4, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %30, metadata !2982, metadata !DIExpression()) #20, !dbg !3584
  call void @llvm.dbg.value(metadata i32 0, metadata !2987, metadata !DIExpression()) #20, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %33, metadata !2988, metadata !DIExpression()) #20, !dbg !3584
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !3586
  store i32 %20, i32* @nslots, align 4, !dbg !3587, !tbaa !1600
  br label %34, !dbg !3588

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3551
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3541, metadata !DIExpression()), !dbg !3551
  %36 = zext i32 %0 to i64, !dbg !3589
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3590
  %38 = load i64, i64* %37, align 8, !dbg !3590, !tbaa !3512
  call void @llvm.dbg.value(metadata i64 %38, metadata !3546, metadata !DIExpression()), !dbg !3591
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3592
  %40 = load i8*, i8** %39, align 8, !dbg !3592, !tbaa !3499
  call void @llvm.dbg.value(metadata i8* %40, metadata !3548, metadata !DIExpression()), !dbg !3591
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3593
  %42 = load i32, i32* %41, align 4, !dbg !3593, !tbaa !2633
  %43 = or i32 %42, 1, !dbg !3594
  call void @llvm.dbg.value(metadata i32 %43, metadata !3549, metadata !DIExpression()), !dbg !3591
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3595
  %45 = load i32, i32* %44, align 8, !dbg !3595, !tbaa !2582
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3596
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3597
  %48 = load i8*, i8** %47, align 8, !dbg !3597, !tbaa !2656
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3598
  %50 = load i8*, i8** %49, align 8, !dbg !3598, !tbaa !2659
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %51, metadata !3550, metadata !DIExpression()), !dbg !3591
  %52 = icmp ugt i64 %38, %51, !dbg !3600
  br i1 %52, label %63, label %53, !dbg !3602

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %54, metadata !3546, metadata !DIExpression()), !dbg !3591
  store i64 %54, i64* %37, align 8, !dbg !3605, !tbaa !3512
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3606
  br i1 %55, label %57, label %56, !dbg !3608

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !3609
  br label %57, !dbg !3609

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3448, metadata !DIExpression()) #20, !dbg !3610
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %58, metadata !3548, metadata !DIExpression()), !dbg !3591
  store i8* %58, i8** %39, align 8, !dbg !3613, !tbaa !3499
  %59 = load i32, i32* %44, align 8, !dbg !3614, !tbaa !2582
  %60 = load i8*, i8** %47, align 8, !dbg !3615, !tbaa !2656
  %61 = load i8*, i8** %49, align 8, !dbg !3616, !tbaa !2659
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3617
  br label %63, !dbg !3618

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3591
  call void @llvm.dbg.value(metadata i8* %64, metadata !3548, metadata !DIExpression()), !dbg !3591
  store i32 %6, i32* %5, align 4, !dbg !3619, !tbaa !1600
  ret i8* %64, !dbg !3620
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3621 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3625, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8* %1, metadata !3626, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i64 %2, metadata !3627, metadata !DIExpression()), !dbg !3628
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3629
  ret i8* %4, !dbg !3630
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3631 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 0, metadata !3527, metadata !DIExpression()) #20, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %0, metadata !3528, metadata !DIExpression()) #20, !dbg !3635
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3637
  ret i8* %2, !dbg !3638
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3639 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3643, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 0, metadata !3625, metadata !DIExpression()) #20, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %0, metadata !3626, metadata !DIExpression()) #20, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3627, metadata !DIExpression()) #20, !dbg !3646
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3648
  ret i8* %3, !dbg !3649
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3650 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3652, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 %1, metadata !3653, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i8* %2, metadata !3654, metadata !DIExpression()), !dbg !3656
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3657
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3657
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3655, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i32 %1, metadata !3659, metadata !DIExpression()) #20, !dbg !3665
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3664, metadata !DIExpression()) #20, !dbg !3667
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3667, !alias.scope !3668
  %6 = icmp eq i32 %1, 10, !dbg !3671
  br i1 %6, label %7, label %8, !dbg !3673

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3674, !noalias !3668
  unreachable, !dbg !3674

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3675
  store i32 %1, i32* %9, align 8, !dbg !3676, !tbaa !2582, !alias.scope !3668
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3677
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3678
  ret i8* %10, !dbg !3679
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3680 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3684, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 %1, metadata !3685, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i8* %2, metadata !3686, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %3, metadata !3687, metadata !DIExpression()), !dbg !3689
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3690
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3690
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3688, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i32 %1, metadata !3659, metadata !DIExpression()) #20, !dbg !3692
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3664, metadata !DIExpression()) #20, !dbg !3694
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3694, !alias.scope !3695
  %7 = icmp eq i32 %1, 10, !dbg !3698
  br i1 %7, label %8, label %9, !dbg !3699

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3700, !noalias !3695
  unreachable, !dbg !3700

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3701
  store i32 %1, i32* %10, align 8, !dbg !3702, !tbaa !2582, !alias.scope !3695
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3703
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3704
  ret i8* %11, !dbg !3705
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3706 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3664, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3655, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %0, metadata !3708, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i8* %1, metadata !3709, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i32 0, metadata !3652, metadata !DIExpression()) #20, !dbg !3715
  call void @llvm.dbg.value(metadata i32 %0, metadata !3653, metadata !DIExpression()) #20, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %1, metadata !3654, metadata !DIExpression()) #20, !dbg !3715
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3716
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3716
  call void @llvm.dbg.value(metadata i32 %0, metadata !3659, metadata !DIExpression()) #20, !dbg !3717
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3710, !alias.scope !3718
  %5 = icmp eq i32 %0, 10, !dbg !3721
  br i1 %5, label %6, label %7, !dbg !3722

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3723, !noalias !3718
  unreachable, !dbg !3723

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3724
  store i32 %0, i32* %8, align 8, !dbg !3725, !tbaa !2582, !alias.scope !3718
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3726
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3727
  ret i8* %9, !dbg !3728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3729 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3664, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3688, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 %0, metadata !3733, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8* %1, metadata !3734, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %2, metadata !3735, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 0, metadata !3684, metadata !DIExpression()) #20, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %0, metadata !3685, metadata !DIExpression()) #20, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %1, metadata !3686, metadata !DIExpression()) #20, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %2, metadata !3687, metadata !DIExpression()) #20, !dbg !3741
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3742
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %0, metadata !3659, metadata !DIExpression()) #20, !dbg !3743
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3736, !alias.scope !3744
  %6 = icmp eq i32 %0, 10, !dbg !3747
  br i1 %6, label %7, label %8, !dbg !3748

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3749, !noalias !3744
  unreachable, !dbg !3749

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3750
  store i32 %0, i32* %9, align 8, !dbg !3751, !tbaa !2582, !alias.scope !3744
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3752
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3753
  ret i8* %10, !dbg !3754
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3755 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3760, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i8 %2, metadata !3761, metadata !DIExpression()), !dbg !3763
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3764
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3764
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3762, metadata !DIExpression()), !dbg !3765
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3766, !tbaa.struct !3767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2600, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8 %2, metadata !2601, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 1, metadata !2602, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8 %2, metadata !2603, metadata !DIExpression()), !dbg !3768
  %6 = lshr i8 %2, 5, !dbg !3770
  %7 = zext i8 %6 to i64, !dbg !3770
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3771
  call void @llvm.dbg.value(metadata i32* %8, metadata !2604, metadata !DIExpression()), !dbg !3768
  %9 = and i8 %2, 31, !dbg !3772
  %10 = zext i8 %9 to i32, !dbg !3772
  call void @llvm.dbg.value(metadata i32 %10, metadata !2606, metadata !DIExpression()), !dbg !3768
  %11 = load i32, i32* %8, align 4, !dbg !3773, !tbaa !1600
  %12 = lshr i32 %11, %10, !dbg !3774
  %13 = and i32 %12, 1, !dbg !3775
  call void @llvm.dbg.value(metadata i32 %13, metadata !2607, metadata !DIExpression()), !dbg !3768
  %14 = xor i32 %13, 1, !dbg !3776
  %15 = shl i32 %14, %10, !dbg !3777
  %16 = xor i32 %15, %11, !dbg !3778
  store i32 %16, i32* %8, align 4, !dbg !3778, !tbaa !1600
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3779
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3780
  ret i8* %17, !dbg !3781
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3782 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3762, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i8* %0, metadata !3786, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8 %1, metadata !3787, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()) #20, !dbg !3791
  call void @llvm.dbg.value(metadata i64 -1, metadata !3760, metadata !DIExpression()) #20, !dbg !3791
  call void @llvm.dbg.value(metadata i8 %1, metadata !3761, metadata !DIExpression()) #20, !dbg !3791
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3792
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3792
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3793, !tbaa.struct !3767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2600, metadata !DIExpression()) #20, !dbg !3794
  call void @llvm.dbg.value(metadata i8 %1, metadata !2601, metadata !DIExpression()) #20, !dbg !3794
  call void @llvm.dbg.value(metadata i32 1, metadata !2602, metadata !DIExpression()) #20, !dbg !3794
  call void @llvm.dbg.value(metadata i8 %1, metadata !2603, metadata !DIExpression()) #20, !dbg !3794
  %5 = lshr i8 %1, 5, !dbg !3796
  %6 = zext i8 %5 to i64, !dbg !3796
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3797
  call void @llvm.dbg.value(metadata i32* %7, metadata !2604, metadata !DIExpression()) #20, !dbg !3794
  %8 = and i8 %1, 31, !dbg !3798
  %9 = zext i8 %8 to i32, !dbg !3798
  call void @llvm.dbg.value(metadata i32 %9, metadata !2606, metadata !DIExpression()) #20, !dbg !3794
  %10 = load i32, i32* %7, align 4, !dbg !3799, !tbaa !1600
  %11 = lshr i32 %10, %9, !dbg !3800
  %12 = and i32 %11, 1, !dbg !3801
  call void @llvm.dbg.value(metadata i32 %12, metadata !2607, metadata !DIExpression()) #20, !dbg !3794
  %13 = xor i32 %12, 1, !dbg !3802
  %14 = shl i32 %13, %9, !dbg !3803
  %15 = xor i32 %14, %10, !dbg !3804
  store i32 %15, i32* %7, align 4, !dbg !3804, !tbaa !1600
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3805
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3806
  ret i8* %16, !dbg !3807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3808 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3762, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8* %0, metadata !3810, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i8* %0, metadata !3786, metadata !DIExpression()) #20, !dbg !3815
  call void @llvm.dbg.value(metadata i8 58, metadata !3787, metadata !DIExpression()) #20, !dbg !3815
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()) #20, !dbg !3816
  call void @llvm.dbg.value(metadata i64 -1, metadata !3760, metadata !DIExpression()) #20, !dbg !3816
  call void @llvm.dbg.value(metadata i8 58, metadata !3761, metadata !DIExpression()) #20, !dbg !3816
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3817
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3817
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3818, !tbaa.struct !3767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2600, metadata !DIExpression()) #20, !dbg !3819
  call void @llvm.dbg.value(metadata i8 58, metadata !2601, metadata !DIExpression()) #20, !dbg !3819
  call void @llvm.dbg.value(metadata i32 1, metadata !2602, metadata !DIExpression()) #20, !dbg !3819
  call void @llvm.dbg.value(metadata i8 58, metadata !2603, metadata !DIExpression()) #20, !dbg !3819
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3821
  call void @llvm.dbg.value(metadata i32* %4, metadata !2604, metadata !DIExpression()) #20, !dbg !3819
  call void @llvm.dbg.value(metadata i32 26, metadata !2606, metadata !DIExpression()) #20, !dbg !3819
  %5 = load i32, i32* %4, align 4, !dbg !3822, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %5, metadata !2607, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3819
  %6 = or i32 %5, 67108864, !dbg !3823
  store i32 %6, i32* %4, align 4, !dbg !3823, !tbaa !1600
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3824
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3825
  ret i8* %7, !dbg !3826
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3827 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3762, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !3829, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 %1, metadata !3830, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()) #20, !dbg !3834
  call void @llvm.dbg.value(metadata i64 %1, metadata !3760, metadata !DIExpression()) #20, !dbg !3834
  call void @llvm.dbg.value(metadata i8 58, metadata !3761, metadata !DIExpression()) #20, !dbg !3834
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3835
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3836, !tbaa.struct !3767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2600, metadata !DIExpression()) #20, !dbg !3837
  call void @llvm.dbg.value(metadata i8 58, metadata !2601, metadata !DIExpression()) #20, !dbg !3837
  call void @llvm.dbg.value(metadata i32 1, metadata !2602, metadata !DIExpression()) #20, !dbg !3837
  call void @llvm.dbg.value(metadata i8 58, metadata !2603, metadata !DIExpression()) #20, !dbg !3837
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3839
  call void @llvm.dbg.value(metadata i32* %5, metadata !2604, metadata !DIExpression()) #20, !dbg !3837
  call void @llvm.dbg.value(metadata i32 26, metadata !2606, metadata !DIExpression()) #20, !dbg !3837
  %6 = load i32, i32* %5, align 4, !dbg !3840, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %6, metadata !2607, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3837
  %7 = or i32 %6, 67108864, !dbg !3841
  store i32 %7, i32* %5, align 4, !dbg !3841, !tbaa !1600
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3842
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3843
  ret i8* %8, !dbg !3844
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3845 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3664, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3851
  call void @llvm.dbg.value(metadata i32 %0, metadata !3847, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %1, metadata !3848, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i8* %2, metadata !3849, metadata !DIExpression()), !dbg !3853
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3854
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3854
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3850, metadata !DIExpression()), !dbg !3855
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3856
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3856
  call void @llvm.dbg.value(metadata i32 %1, metadata !3659, metadata !DIExpression()) #20, !dbg !3857
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3857
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3851, !alias.scope !3858
  %8 = icmp eq i32 %1, 10, !dbg !3861
  br i1 %8, label %9, label %10, !dbg !3862

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3863, !noalias !3858
  unreachable, !dbg !3863

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3664, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3857
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3856
  store i32 %1, i32* %11, align 8, !dbg !3856, !tbaa.struct !3767
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3856
  %13 = bitcast i32* %12 to i8*, !dbg !3856
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3856, !tbaa.struct !3767
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2600, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8 58, metadata !2601, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 1, metadata !2602, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8 58, metadata !2603, metadata !DIExpression()), !dbg !3864
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3866
  call void @llvm.dbg.value(metadata i32* %14, metadata !2604, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 26, metadata !2606, metadata !DIExpression()), !dbg !3864
  %15 = load i32, i32* %14, align 4, !dbg !3867, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %15, metadata !2607, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3864
  %16 = or i32 %15, 67108864, !dbg !3868
  store i32 %16, i32* %14, align 4, !dbg !3868, !tbaa !1600
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3869
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3870
  ret i8* %17, !dbg !3871
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3872 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3880, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i32 %0, metadata !3876, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i8* %1, metadata !3877, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i8* %2, metadata !3878, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i8* %3, metadata !3879, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i32 %0, metadata !3885, metadata !DIExpression()) #20, !dbg !3893
  call void @llvm.dbg.value(metadata i8* %1, metadata !3886, metadata !DIExpression()) #20, !dbg !3893
  call void @llvm.dbg.value(metadata i8* %2, metadata !3887, metadata !DIExpression()) #20, !dbg !3893
  call void @llvm.dbg.value(metadata i8* %3, metadata !3888, metadata !DIExpression()) #20, !dbg !3893
  call void @llvm.dbg.value(metadata i64 -1, metadata !3889, metadata !DIExpression()) #20, !dbg !3893
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3894
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3895, !tbaa.struct !3767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2640, metadata !DIExpression()) #20, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %1, metadata !2641, metadata !DIExpression()) #20, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %2, metadata !2642, metadata !DIExpression()) #20, !dbg !3896
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2640, metadata !DIExpression()) #20, !dbg !3896
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3898
  store i32 10, i32* %7, align 8, !dbg !3899, !tbaa !2582
  %8 = icmp ne i8* %1, null, !dbg !3900
  %9 = icmp ne i8* %2, null, !dbg !3901
  %10 = and i1 %8, %9, !dbg !3902
  br i1 %10, label %12, label %11, !dbg !3902

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3903
  unreachable, !dbg !3903

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3904
  store i8* %1, i8** %13, align 8, !dbg !3905, !tbaa !2656
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3906
  store i8* %2, i8** %14, align 8, !dbg !3907, !tbaa !2659
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3908
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3909
  ret i8* %15, !dbg !3910
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3881 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3885, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i8* %1, metadata !3886, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i8* %2, metadata !3887, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i8* %3, metadata !3888, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %4, metadata !3889, metadata !DIExpression()), !dbg !3911
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3912
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3912
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3880, metadata !DIExpression()), !dbg !3913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3914, !tbaa.struct !3767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2640, metadata !DIExpression()) #20, !dbg !3915
  call void @llvm.dbg.value(metadata i8* %1, metadata !2641, metadata !DIExpression()) #20, !dbg !3915
  call void @llvm.dbg.value(metadata i8* %2, metadata !2642, metadata !DIExpression()) #20, !dbg !3915
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2640, metadata !DIExpression()) #20, !dbg !3915
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3917
  store i32 10, i32* %8, align 8, !dbg !3918, !tbaa !2582
  %9 = icmp ne i8* %1, null, !dbg !3919
  %10 = icmp ne i8* %2, null, !dbg !3920
  %11 = and i1 %9, %10, !dbg !3921
  br i1 %11, label %13, label %12, !dbg !3921

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3922
  unreachable, !dbg !3922

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3923
  store i8* %1, i8** %14, align 8, !dbg !3924, !tbaa !2656
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3925
  store i8* %2, i8** %15, align 8, !dbg !3926, !tbaa !2659
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3927
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3928
  ret i8* %16, !dbg !3929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3930 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3880, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8* %0, metadata !3934, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i8* %1, metadata !3935, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i8* %2, metadata !3936, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3876, metadata !DIExpression()) #20, !dbg !3941
  call void @llvm.dbg.value(metadata i8* %0, metadata !3877, metadata !DIExpression()) #20, !dbg !3941
  call void @llvm.dbg.value(metadata i8* %1, metadata !3878, metadata !DIExpression()) #20, !dbg !3941
  call void @llvm.dbg.value(metadata i8* %2, metadata !3879, metadata !DIExpression()) #20, !dbg !3941
  call void @llvm.dbg.value(metadata i32 0, metadata !3885, metadata !DIExpression()) #20, !dbg !3942
  call void @llvm.dbg.value(metadata i8* %0, metadata !3886, metadata !DIExpression()) #20, !dbg !3942
  call void @llvm.dbg.value(metadata i8* %1, metadata !3887, metadata !DIExpression()) #20, !dbg !3942
  call void @llvm.dbg.value(metadata i8* %2, metadata !3888, metadata !DIExpression()) #20, !dbg !3942
  call void @llvm.dbg.value(metadata i64 -1, metadata !3889, metadata !DIExpression()) #20, !dbg !3942
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3943
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3944, !tbaa.struct !3767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2640, metadata !DIExpression()) #20, !dbg !3945
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()) #20, !dbg !3945
  call void @llvm.dbg.value(metadata i8* %1, metadata !2642, metadata !DIExpression()) #20, !dbg !3945
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2640, metadata !DIExpression()) #20, !dbg !3945
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3947
  store i32 10, i32* %6, align 8, !dbg !3948, !tbaa !2582
  %7 = icmp ne i8* %0, null, !dbg !3949
  %8 = icmp ne i8* %1, null, !dbg !3950
  %9 = and i1 %7, %8, !dbg !3951
  br i1 %9, label %11, label %10, !dbg !3951

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3952
  unreachable, !dbg !3952

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3953
  store i8* %0, i8** %12, align 8, !dbg !3954, !tbaa !2656
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3955
  store i8* %1, i8** %13, align 8, !dbg !3956, !tbaa !2659
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3957
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3958
  ret i8* %14, !dbg !3959
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3960 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3880, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i8* %0, metadata !3964, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %1, metadata !3965, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %2, metadata !3966, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %3, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3885, metadata !DIExpression()) #20, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %0, metadata !3886, metadata !DIExpression()) #20, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %1, metadata !3887, metadata !DIExpression()) #20, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %2, metadata !3888, metadata !DIExpression()) #20, !dbg !3971
  call void @llvm.dbg.value(metadata i64 %3, metadata !3889, metadata !DIExpression()) #20, !dbg !3971
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3972
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3972
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3973, !tbaa.struct !3767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2640, metadata !DIExpression()) #20, !dbg !3974
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()) #20, !dbg !3974
  call void @llvm.dbg.value(metadata i8* %1, metadata !2642, metadata !DIExpression()) #20, !dbg !3974
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2640, metadata !DIExpression()) #20, !dbg !3974
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3976
  store i32 10, i32* %7, align 8, !dbg !3977, !tbaa !2582
  %8 = icmp ne i8* %0, null, !dbg !3978
  %9 = icmp ne i8* %1, null, !dbg !3979
  %10 = and i1 %8, %9, !dbg !3980
  br i1 %10, label %12, label %11, !dbg !3980

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3981
  unreachable, !dbg !3981

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3982
  store i8* %0, i8** %13, align 8, !dbg !3983, !tbaa !2656
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3984
  store i8* %1, i8** %14, align 8, !dbg !3985, !tbaa !2659
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3986
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3987
  ret i8* %15, !dbg !3988
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3993, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i8* %1, metadata !3994, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %2, metadata !3995, metadata !DIExpression()), !dbg !3996
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3997
  ret i8* %4, !dbg !3998
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3999 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4003, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %1, metadata !4004, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i32 0, metadata !3993, metadata !DIExpression()) #20, !dbg !4006
  call void @llvm.dbg.value(metadata i8* %0, metadata !3994, metadata !DIExpression()) #20, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !3995, metadata !DIExpression()) #20, !dbg !4006
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !4008
  ret i8* %3, !dbg !4009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4014, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i8* %1, metadata !4015, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %0, metadata !3993, metadata !DIExpression()) #20, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %1, metadata !3994, metadata !DIExpression()) #20, !dbg !4017
  call void @llvm.dbg.value(metadata i64 -1, metadata !3995, metadata !DIExpression()) #20, !dbg !4017
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !4019
  ret i8* %3, !dbg !4020
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4021 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4023, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 0, metadata !4014, metadata !DIExpression()) #20, !dbg !4025
  call void @llvm.dbg.value(metadata i8* %0, metadata !4015, metadata !DIExpression()) #20, !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !3993, metadata !DIExpression()) #20, !dbg !4027
  call void @llvm.dbg.value(metadata i8* %0, metadata !3994, metadata !DIExpression()) #20, !dbg !4027
  call void @llvm.dbg.value(metadata i64 -1, metadata !3995, metadata !DIExpression()) #20, !dbg !4027
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !4029
  ret i8* %2, !dbg !4030
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32 %0, i8* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !4031 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4033, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i8* %1, metadata !4034, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i64 %2, metadata !4035, metadata !DIExpression()), !dbg !4042
  br label %4, !dbg !4043

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !4044

6:                                                ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !4035, metadata !DIExpression()), !dbg !4042
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #20, !dbg !4045
  call void @llvm.dbg.value(metadata i64 %7, metadata !4036, metadata !DIExpression()), !dbg !4046
  %8 = icmp sgt i64 %7, -1, !dbg !4047
  br i1 %8, label %17, label %9, !dbg !4044

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4049
  %11 = load i32, i32* %10, align 4, !dbg !4049, !tbaa !1600
  %12 = icmp eq i32 %11, 4, !dbg !4049
  br i1 %12, label %6, label %13, !dbg !4051, !llvm.loop !4052

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !4055
  %15 = icmp ugt i64 %5, 2146435072, !dbg !4057
  %16 = and i1 %15, %14, !dbg !4058
  call void @llvm.dbg.value(metadata i64 %5, metadata !4035, metadata !DIExpression()), !dbg !4042
  br i1 %16, label %4, label %17

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !4059
}

; Function Attrs: nofree
declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4060 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4066, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i8* %1, metadata !4067, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i8* %2, metadata !4068, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i8* %3, metadata !4069, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i8** %4, metadata !4070, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i64 %5, metadata !4071, metadata !DIExpression()), !dbg !4072
  %7 = icmp eq i8* %1, null, !dbg !4073
  br i1 %7, label %10, label %8, !dbg !4075

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !4076
  br label %12, !dbg !4076

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.110, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !4077
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.111, i64 0, i64 0), i32 5) #20, !dbg !4078
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !4078
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.112, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4079
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.113, i64 0, i64 0), i32 5) #20, !dbg !4080
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.114, i64 0, i64 0)) #20, !dbg !4080
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.112, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4081
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
  ], !dbg !4082

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.115, i64 0, i64 0), i32 5) #20, !dbg !4083
  %21 = load i8*, i8** %4, align 8, !dbg !4083, !tbaa !1211
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !4083
  br label %147, !dbg !4085

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.116, i64 0, i64 0), i32 5) #20, !dbg !4086
  %25 = load i8*, i8** %4, align 8, !dbg !4086, !tbaa !1211
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4086
  %27 = load i8*, i8** %26, align 8, !dbg !4086, !tbaa !1211
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !4086
  br label %147, !dbg !4087

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.117, i64 0, i64 0), i32 5) #20, !dbg !4088
  %31 = load i8*, i8** %4, align 8, !dbg !4088, !tbaa !1211
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4088
  %33 = load i8*, i8** %32, align 8, !dbg !4088, !tbaa !1211
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4088
  %35 = load i8*, i8** %34, align 8, !dbg !4088, !tbaa !1211
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !4088
  br label %147, !dbg !4089

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.118, i64 0, i64 0), i32 5) #20, !dbg !4090
  %39 = load i8*, i8** %4, align 8, !dbg !4090, !tbaa !1211
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4090
  %41 = load i8*, i8** %40, align 8, !dbg !4090, !tbaa !1211
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4090
  %43 = load i8*, i8** %42, align 8, !dbg !4090, !tbaa !1211
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4090
  %45 = load i8*, i8** %44, align 8, !dbg !4090, !tbaa !1211
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !4090
  br label %147, !dbg !4091

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.119, i64 0, i64 0), i32 5) #20, !dbg !4092
  %49 = load i8*, i8** %4, align 8, !dbg !4092, !tbaa !1211
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4092
  %51 = load i8*, i8** %50, align 8, !dbg !4092, !tbaa !1211
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4092
  %53 = load i8*, i8** %52, align 8, !dbg !4092, !tbaa !1211
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4092
  %55 = load i8*, i8** %54, align 8, !dbg !4092, !tbaa !1211
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4092
  %57 = load i8*, i8** %56, align 8, !dbg !4092, !tbaa !1211
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !4092
  br label %147, !dbg !4093

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.120, i64 0, i64 0), i32 5) #20, !dbg !4094
  %61 = load i8*, i8** %4, align 8, !dbg !4094, !tbaa !1211
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4094
  %63 = load i8*, i8** %62, align 8, !dbg !4094, !tbaa !1211
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4094
  %65 = load i8*, i8** %64, align 8, !dbg !4094, !tbaa !1211
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4094
  %67 = load i8*, i8** %66, align 8, !dbg !4094, !tbaa !1211
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4094
  %69 = load i8*, i8** %68, align 8, !dbg !4094, !tbaa !1211
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4094
  %71 = load i8*, i8** %70, align 8, !dbg !4094, !tbaa !1211
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !4094
  br label %147, !dbg !4095

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.121, i64 0, i64 0), i32 5) #20, !dbg !4096
  %75 = load i8*, i8** %4, align 8, !dbg !4096, !tbaa !1211
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4096
  %77 = load i8*, i8** %76, align 8, !dbg !4096, !tbaa !1211
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4096
  %79 = load i8*, i8** %78, align 8, !dbg !4096, !tbaa !1211
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4096
  %81 = load i8*, i8** %80, align 8, !dbg !4096, !tbaa !1211
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4096
  %83 = load i8*, i8** %82, align 8, !dbg !4096, !tbaa !1211
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4096
  %85 = load i8*, i8** %84, align 8, !dbg !4096, !tbaa !1211
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4096
  %87 = load i8*, i8** %86, align 8, !dbg !4096, !tbaa !1211
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !4096
  br label %147, !dbg !4097

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.122, i64 0, i64 0), i32 5) #20, !dbg !4098
  %91 = load i8*, i8** %4, align 8, !dbg !4098, !tbaa !1211
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4098
  %93 = load i8*, i8** %92, align 8, !dbg !4098, !tbaa !1211
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4098
  %95 = load i8*, i8** %94, align 8, !dbg !4098, !tbaa !1211
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4098
  %97 = load i8*, i8** %96, align 8, !dbg !4098, !tbaa !1211
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4098
  %99 = load i8*, i8** %98, align 8, !dbg !4098, !tbaa !1211
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4098
  %101 = load i8*, i8** %100, align 8, !dbg !4098, !tbaa !1211
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4098
  %103 = load i8*, i8** %102, align 8, !dbg !4098, !tbaa !1211
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4098
  %105 = load i8*, i8** %104, align 8, !dbg !4098, !tbaa !1211
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !4098
  br label %147, !dbg !4099

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.123, i64 0, i64 0), i32 5) #20, !dbg !4100
  %109 = load i8*, i8** %4, align 8, !dbg !4100, !tbaa !1211
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4100
  %111 = load i8*, i8** %110, align 8, !dbg !4100, !tbaa !1211
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4100
  %113 = load i8*, i8** %112, align 8, !dbg !4100, !tbaa !1211
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4100
  %115 = load i8*, i8** %114, align 8, !dbg !4100, !tbaa !1211
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4100
  %117 = load i8*, i8** %116, align 8, !dbg !4100, !tbaa !1211
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4100
  %119 = load i8*, i8** %118, align 8, !dbg !4100, !tbaa !1211
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4100
  %121 = load i8*, i8** %120, align 8, !dbg !4100, !tbaa !1211
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4100
  %123 = load i8*, i8** %122, align 8, !dbg !4100, !tbaa !1211
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4100
  %125 = load i8*, i8** %124, align 8, !dbg !4100, !tbaa !1211
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !4100
  br label %147, !dbg !4101

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.124, i64 0, i64 0), i32 5) #20, !dbg !4102
  %129 = load i8*, i8** %4, align 8, !dbg !4102, !tbaa !1211
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4102
  %131 = load i8*, i8** %130, align 8, !dbg !4102, !tbaa !1211
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4102
  %133 = load i8*, i8** %132, align 8, !dbg !4102, !tbaa !1211
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4102
  %135 = load i8*, i8** %134, align 8, !dbg !4102, !tbaa !1211
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4102
  %137 = load i8*, i8** %136, align 8, !dbg !4102, !tbaa !1211
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4102
  %139 = load i8*, i8** %138, align 8, !dbg !4102, !tbaa !1211
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4102
  %141 = load i8*, i8** %140, align 8, !dbg !4102, !tbaa !1211
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4102
  %143 = load i8*, i8** %142, align 8, !dbg !4102, !tbaa !1211
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4102
  %145 = load i8*, i8** %144, align 8, !dbg !4102, !tbaa !1211
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !4102
  br label %147, !dbg !4103

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4104
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4105 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4109, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i8* %1, metadata !4110, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i8* %2, metadata !4111, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i8* %3, metadata !4112, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i8** %4, metadata !4113, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 0, metadata !4114, metadata !DIExpression()), !dbg !4115
  br label %6, !dbg !4116

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4118
  call void @llvm.dbg.value(metadata i64 %7, metadata !4114, metadata !DIExpression()), !dbg !4115
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4119
  %9 = load i8*, i8** %8, align 8, !dbg !4119, !tbaa !1211
  %10 = icmp eq i8* %9, null, !dbg !4121
  %11 = add i64 %7, 1, !dbg !4122
  call void @llvm.dbg.value(metadata i64 %11, metadata !4114, metadata !DIExpression()), !dbg !4115
  br i1 %10, label %12, label %6, !dbg !4121, !llvm.loop !4123

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %7, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %7, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %7, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %7, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %7, metadata !4114, metadata !DIExpression()), !dbg !4115
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4125
  ret void, !dbg !4126
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4127 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4138, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i8* %1, metadata !4139, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i8* %2, metadata !4140, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i8* %3, metadata !4141, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4142, metadata !DIExpression()), !dbg !4146
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4147
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !4147
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4144, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 0, metadata !4143, metadata !DIExpression()), !dbg !4146
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4149
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4149
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4149
  %11 = load i32, i32* %8, align 8, !dbg !4152
  %12 = icmp ult i32 %11, 41, !dbg !4152
  br i1 %12, label %13, label %18, !dbg !4152

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4152
  %15 = zext i32 %11 to i64, !dbg !4152
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4152
  %17 = add nuw nsw i32 %11, 8, !dbg !4152
  store i32 %17, i32* %8, align 8, !dbg !4152
  br label %21, !dbg !4152

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4152
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4152
  store i8* %20, i8** %9, align 8, !dbg !4152
  br label %21, !dbg !4152

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4152
  %25 = load i8*, i8** %24, align 8, !dbg !4152
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4153
  store i8* %25, i8** %26, align 16, !dbg !4154, !tbaa !1211
  %27 = icmp eq i8* %25, null, !dbg !4155
  br i1 %27, label %30, label %28, !dbg !4156

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4143, metadata !DIExpression()), !dbg !4146
  %29 = icmp ult i32 %22, 41, !dbg !4152
  br i1 %29, label %35, label %32, !dbg !4152

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4157
  call void @llvm.dbg.value(metadata i64 %31, metadata !4143, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i64 %31, metadata !4143, metadata !DIExpression()), !dbg !4146
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4158
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !4159
  ret void, !dbg !4159

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4152
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4152
  store i8* %34, i8** %9, align 8, !dbg !4152
  br label %40, !dbg !4152

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4152
  %37 = zext i32 %22 to i64, !dbg !4152
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4152
  %39 = add nuw nsw i32 %22, 8, !dbg !4152
  store i32 %39, i32* %8, align 8, !dbg !4152
  br label %40, !dbg !4152

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4152
  %44 = load i8*, i8** %43, align 8, !dbg !4152
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4153
  store i8* %44, i8** %45, align 8, !dbg !4154, !tbaa !1211
  %46 = icmp eq i8* %44, null, !dbg !4155
  br i1 %46, label %30, label %47, !dbg !4156

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4143, metadata !DIExpression()), !dbg !4146
  %48 = icmp ult i32 %41, 41, !dbg !4152
  br i1 %48, label %52, label %49, !dbg !4152

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4152
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4152
  store i8* %51, i8** %9, align 8, !dbg !4152
  br label %57, !dbg !4152

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4152
  %54 = zext i32 %41 to i64, !dbg !4152
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4152
  %56 = add nuw nsw i32 %41, 8, !dbg !4152
  store i32 %56, i32* %8, align 8, !dbg !4152
  br label %57, !dbg !4152

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4152
  %61 = load i8*, i8** %60, align 8, !dbg !4152
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4153
  store i8* %61, i8** %62, align 16, !dbg !4154, !tbaa !1211
  %63 = icmp eq i8* %61, null, !dbg !4155
  br i1 %63, label %30, label %64, !dbg !4156

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4143, metadata !DIExpression()), !dbg !4146
  %65 = icmp ult i32 %58, 41, !dbg !4152
  br i1 %65, label %69, label %66, !dbg !4152

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4152
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4152
  store i8* %68, i8** %9, align 8, !dbg !4152
  br label %74, !dbg !4152

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4152
  %71 = zext i32 %58 to i64, !dbg !4152
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4152
  %73 = add nuw nsw i32 %58, 8, !dbg !4152
  store i32 %73, i32* %8, align 8, !dbg !4152
  br label %74, !dbg !4152

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4152
  %78 = load i8*, i8** %77, align 8, !dbg !4152
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4153
  store i8* %78, i8** %79, align 8, !dbg !4154, !tbaa !1211
  %80 = icmp eq i8* %78, null, !dbg !4155
  br i1 %80, label %30, label %81, !dbg !4156

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4143, metadata !DIExpression()), !dbg !4146
  %82 = icmp ult i32 %75, 41, !dbg !4152
  br i1 %82, label %86, label %83, !dbg !4152

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4152
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4152
  store i8* %85, i8** %9, align 8, !dbg !4152
  br label %91, !dbg !4152

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4152
  %88 = zext i32 %75 to i64, !dbg !4152
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4152
  %90 = add nuw nsw i32 %75, 8, !dbg !4152
  store i32 %90, i32* %8, align 8, !dbg !4152
  br label %91, !dbg !4152

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4152
  %95 = load i8*, i8** %94, align 8, !dbg !4152
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4153
  store i8* %95, i8** %96, align 16, !dbg !4154, !tbaa !1211
  %97 = icmp eq i8* %95, null, !dbg !4155
  br i1 %97, label %30, label %98, !dbg !4156

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4143, metadata !DIExpression()), !dbg !4146
  %99 = icmp ult i32 %92, 41, !dbg !4152
  br i1 %99, label %103, label %100, !dbg !4152

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4152
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4152
  store i8* %102, i8** %9, align 8, !dbg !4152
  br label %108, !dbg !4152

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4152
  %105 = zext i32 %92 to i64, !dbg !4152
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4152
  %107 = add nuw nsw i32 %92, 8, !dbg !4152
  store i32 %107, i32* %8, align 8, !dbg !4152
  br label %108, !dbg !4152

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4152
  %111 = load i8*, i8** %110, align 8, !dbg !4152
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4153
  store i8* %111, i8** %112, align 8, !dbg !4154, !tbaa !1211
  %113 = icmp eq i8* %111, null, !dbg !4155
  br i1 %113, label %30, label %114, !dbg !4156

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4143, metadata !DIExpression()), !dbg !4146
  %115 = load i8*, i8** %9, align 8, !dbg !4152
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4152
  store i8* %116, i8** %9, align 8, !dbg !4152
  %117 = bitcast i8* %115 to i8**, !dbg !4152
  %118 = load i8*, i8** %117, align 8, !dbg !4152
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4153
  store i8* %118, i8** %119, align 16, !dbg !4154, !tbaa !1211
  %120 = icmp eq i8* %118, null, !dbg !4155
  br i1 %120, label %30, label %121, !dbg !4156

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4143, metadata !DIExpression()), !dbg !4146
  %122 = load i8*, i8** %9, align 8, !dbg !4152
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4152
  store i8* %123, i8** %9, align 8, !dbg !4152
  %124 = bitcast i8* %122 to i8**, !dbg !4152
  %125 = load i8*, i8** %124, align 8, !dbg !4152
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4153
  store i8* %125, i8** %126, align 8, !dbg !4154, !tbaa !1211
  %127 = icmp eq i8* %125, null, !dbg !4155
  br i1 %127, label %30, label %128, !dbg !4156

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4143, metadata !DIExpression()), !dbg !4146
  %129 = load i8*, i8** %9, align 8, !dbg !4152
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4152
  store i8* %130, i8** %9, align 8, !dbg !4152
  %131 = bitcast i8* %129 to i8**, !dbg !4152
  %132 = load i8*, i8** %131, align 8, !dbg !4152
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4153
  store i8* %132, i8** %133, align 16, !dbg !4154, !tbaa !1211
  %134 = icmp eq i8* %132, null, !dbg !4155
  br i1 %134, label %30, label %135, !dbg !4156

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4143, metadata !DIExpression()), !dbg !4146
  %136 = load i8*, i8** %9, align 8, !dbg !4152
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4152
  store i8* %137, i8** %9, align 8, !dbg !4152
  %138 = bitcast i8* %136 to i8**, !dbg !4152
  %139 = load i8*, i8** %138, align 8, !dbg !4152
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4153
  store i8* %139, i8** %140, align 8, !dbg !4154, !tbaa !1211
  %141 = icmp eq i8* %139, null, !dbg !4155
  %142 = select i1 %141, i64 9, i64 10, !dbg !4156
  br label %30, !dbg !4156
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4160 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4164, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i8* %1, metadata !4165, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i8* %2, metadata !4166, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i8* %3, metadata !4167, metadata !DIExpression()), !dbg !4174
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4175
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !4175
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4168, metadata !DIExpression()), !dbg !4176
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4177
  call void @llvm.va_start(i8* nonnull %6), !dbg !4177
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4178
  call void @llvm.va_end(i8* nonnull %6), !dbg !4179
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !4180
  ret void, !dbg !4180
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4181 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4182, !tbaa !1211
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.112, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4182
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.127, i64 0, i64 0), i32 5) #20, !dbg !4183
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.128, i64 0, i64 0)) #20, !dbg !4183
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.129, i64 0, i64 0), i32 5) #20, !dbg !4184
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.130, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.131, i64 0, i64 0)) #20, !dbg !4184
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.132, i64 0, i64 0), i32 5) #20, !dbg !4185
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.133, i64 0, i64 0)) #20, !dbg !4185
  ret void, !dbg !4186
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4187 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4189, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i64 %1, metadata !4190, metadata !DIExpression()), !dbg !4191
  %3 = udiv i64 9223372036854775807, %1, !dbg !4192
  %4 = icmp ult i64 %3, %0, !dbg !4192
  br i1 %4, label %5, label %6, !dbg !4194

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4195
  unreachable, !dbg !4195

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4196
  call void @llvm.dbg.value(metadata i64 %7, metadata !4197, metadata !DIExpression()) #20, !dbg !4203
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %8, metadata !4202, metadata !DIExpression()) #20, !dbg !4203
  %9 = icmp eq i8* %8, null, !dbg !4206
  %10 = icmp ne i64 %7, 0, !dbg !4208
  %11 = and i1 %10, %9, !dbg !4209
  br i1 %11, label %12, label %13, !dbg !4209

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !4210
  unreachable, !dbg !4210

13:                                               ; preds = %6
  ret i8* %8, !dbg !4211
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4198 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4197, metadata !DIExpression()), !dbg !4212
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !4213
  call void @llvm.dbg.value(metadata i8* %2, metadata !4202, metadata !DIExpression()), !dbg !4212
  %3 = icmp eq i8* %2, null, !dbg !4214
  %4 = icmp ne i64 %0, 0, !dbg !4215
  %5 = and i1 %4, %3, !dbg !4216
  br i1 %5, label %6, label %7, !dbg !4216

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4217
  unreachable, !dbg !4217

7:                                                ; preds = %1
  ret i8* %2, !dbg !4218
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !4219 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4221, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %1, metadata !4222, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %2, metadata !4223, metadata !DIExpression()), !dbg !4224
  %4 = udiv i64 9223372036854775807, %2, !dbg !4225
  %5 = icmp ult i64 %4, %1, !dbg !4225
  br i1 %5, label %6, label %7, !dbg !4227

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !4228
  unreachable, !dbg !4228

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4229
  call void @llvm.dbg.value(metadata i8* %0, metadata !4230, metadata !DIExpression()) #20, !dbg !4236
  call void @llvm.dbg.value(metadata i64 %8, metadata !4235, metadata !DIExpression()) #20, !dbg !4236
  %9 = icmp eq i64 %8, 0, !dbg !4238
  %10 = icmp ne i8* %0, null, !dbg !4240
  %11 = and i1 %10, %9, !dbg !4241
  br i1 %11, label %12, label %13, !dbg !4241

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !4242
  br label %19, !dbg !4244

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !4245
  call void @llvm.dbg.value(metadata i8* %14, metadata !4230, metadata !DIExpression()) #20, !dbg !4236
  %15 = icmp eq i8* %14, null, !dbg !4246
  %16 = icmp ne i64 %8, 0, !dbg !4248
  %17 = and i1 %16, %15, !dbg !4249
  br i1 %17, label %18, label %19, !dbg !4249

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !4250
  unreachable, !dbg !4250

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4236
  ret i8* %20, !dbg !4251
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4231 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4230, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %1, metadata !4235, metadata !DIExpression()), !dbg !4252
  %3 = icmp eq i64 %1, 0, !dbg !4253
  %4 = icmp ne i8* %0, null, !dbg !4254
  %5 = and i1 %4, %3, !dbg !4255
  br i1 %5, label %6, label %7, !dbg !4255

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !4256
  br label %13, !dbg !4257

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !4258
  call void @llvm.dbg.value(metadata i8* %8, metadata !4230, metadata !DIExpression()), !dbg !4252
  %9 = icmp eq i8* %8, null, !dbg !4259
  %10 = icmp ne i64 %1, 0, !dbg !4260
  %11 = and i1 %10, %9, !dbg !4261
  br i1 %11, label %12, label %13, !dbg !4261

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4262
  unreachable, !dbg !4262

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4252
  ret i8* %14, !dbg !4263
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !549 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !554, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64* %1, metadata !555, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %2, metadata !556, metadata !DIExpression()), !dbg !4264
  %4 = load i64, i64* %1, align 8, !dbg !4265, !tbaa !1823
  call void @llvm.dbg.value(metadata i64 %4, metadata !557, metadata !DIExpression()), !dbg !4264
  %5 = icmp eq i8* %0, null, !dbg !4266
  br i1 %5, label %6, label %20, !dbg !4268

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4269
  br i1 %7, label %8, label %13, !dbg !4272

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4273
  call void @llvm.dbg.value(metadata i64 %9, metadata !557, metadata !DIExpression()), !dbg !4264
  %10 = icmp ugt i64 %2, 128, !dbg !4275
  %11 = zext i1 %10 to i64, !dbg !4275
  %12 = add nuw nsw i64 %9, %11, !dbg !4276
  call void @llvm.dbg.value(metadata i64 %12, metadata !557, metadata !DIExpression()), !dbg !4264
  br label %13, !dbg !4277

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4264
  call void @llvm.dbg.value(metadata i64 %14, metadata !557, metadata !DIExpression()), !dbg !4264
  %15 = udiv i64 9223372036854775807, %2, !dbg !4278
  %16 = icmp ult i64 %15, %14, !dbg !4278
  br i1 %16, label %19, label %17, !dbg !4280

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !557, metadata !DIExpression()), !dbg !4264
  store i64 %14, i64* %1, align 8, !dbg !4281, !tbaa !1823
  %18 = mul i64 %14, %2, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %0, metadata !4230, metadata !DIExpression()) #20, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %28, metadata !4235, metadata !DIExpression()) #20, !dbg !4283
  br label %31, !dbg !4285

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !4286
  unreachable, !dbg !4286

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4287
  %22 = icmp ugt i64 %21, %4, !dbg !4290
  br i1 %22, label %24, label %23, !dbg !4291

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !4292
  unreachable, !dbg !4292

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4293
  %26 = add nuw i64 %4, 1, !dbg !4294
  %27 = add i64 %26, %25, !dbg !4295
  call void @llvm.dbg.value(metadata i64 %27, metadata !557, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %27, metadata !557, metadata !DIExpression()), !dbg !4264
  store i64 %27, i64* %1, align 8, !dbg !4281, !tbaa !1823
  %28 = mul i64 %27, %2, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %0, metadata !4230, metadata !DIExpression()) #20, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %28, metadata !4235, metadata !DIExpression()) #20, !dbg !4283
  %29 = icmp eq i64 %28, 0, !dbg !4296
  br i1 %29, label %30, label %31, !dbg !4285

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !4297
  br label %38, !dbg !4298

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !4299
  call void @llvm.dbg.value(metadata i8* %33, metadata !4230, metadata !DIExpression()) #20, !dbg !4283
  %34 = icmp eq i8* %33, null, !dbg !4300
  %35 = icmp ne i64 %32, 0, !dbg !4301
  %36 = and i1 %35, %34, !dbg !4302
  br i1 %36, label %37, label %38, !dbg !4302

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !4303
  unreachable, !dbg !4303

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4283
  ret i8* %39, !dbg !4304
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !4305 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4307, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i64 %0, metadata !4197, metadata !DIExpression()) #20, !dbg !4309
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !4311
  call void @llvm.dbg.value(metadata i8* %2, metadata !4202, metadata !DIExpression()) #20, !dbg !4309
  %3 = icmp eq i8* %2, null, !dbg !4312
  %4 = icmp ne i64 %0, 0, !dbg !4313
  %5 = and i1 %4, %3, !dbg !4314
  br i1 %5, label %6, label %7, !dbg !4314

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4315
  unreachable, !dbg !4315

7:                                                ; preds = %1
  ret i8* %2, !dbg !4316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4321, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64* %1, metadata !4322, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i8* %0, metadata !554, metadata !DIExpression()) #20, !dbg !4324
  call void @llvm.dbg.value(metadata i64* %1, metadata !555, metadata !DIExpression()) #20, !dbg !4324
  call void @llvm.dbg.value(metadata i64 1, metadata !556, metadata !DIExpression()) #20, !dbg !4324
  %3 = load i64, i64* %1, align 8, !dbg !4326, !tbaa !1823
  call void @llvm.dbg.value(metadata i64 %3, metadata !557, metadata !DIExpression()) #20, !dbg !4324
  %4 = icmp eq i8* %0, null, !dbg !4327
  br i1 %4, label %5, label %12, !dbg !4328

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4329
  br i1 %6, label %9, label %7, !dbg !4330

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !557, metadata !DIExpression()) #20, !dbg !4324
  %8 = icmp slt i64 %3, 0, !dbg !4331
  br i1 %8, label %11, label %9, !dbg !4332

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !557, metadata !DIExpression()) #20, !dbg !4324
  store i64 %10, i64* %1, align 8, !dbg !4333, !tbaa !1823
  call void @llvm.dbg.value(metadata i8* %0, metadata !4230, metadata !DIExpression()) #20, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %18, metadata !4235, metadata !DIExpression()) #20, !dbg !4334
  br label %21, !dbg !4336

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4337
  unreachable, !dbg !4337

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4338
  br i1 %13, label %15, label %14, !dbg !4339

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !4340
  unreachable, !dbg !4340

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4341
  %17 = add nuw nsw i64 %3, 1, !dbg !4342
  %18 = add nuw nsw i64 %17, %16, !dbg !4343
  call void @llvm.dbg.value(metadata i64 %18, metadata !557, metadata !DIExpression()) #20, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %18, metadata !557, metadata !DIExpression()) #20, !dbg !4324
  store i64 %18, i64* %1, align 8, !dbg !4333, !tbaa !1823
  call void @llvm.dbg.value(metadata i8* %0, metadata !4230, metadata !DIExpression()) #20, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %18, metadata !4235, metadata !DIExpression()) #20, !dbg !4334
  %19 = icmp eq i64 %18, 0, !dbg !4344
  br i1 %19, label %20, label %21, !dbg !4336

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !4345
  br label %28, !dbg !4346

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !4347
  call void @llvm.dbg.value(metadata i8* %23, metadata !4230, metadata !DIExpression()) #20, !dbg !4334
  %24 = icmp eq i8* %23, null, !dbg !4348
  %25 = icmp ne i64 %22, 0, !dbg !4349
  %26 = and i1 %25, %24, !dbg !4350
  br i1 %26, label %27, label %28, !dbg !4350

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !4351
  unreachable, !dbg !4351

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4334
  ret i8* %29, !dbg !4352
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4353 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4355, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i64 %0, metadata !4357, metadata !DIExpression()) #20, !dbg !4362
  call void @llvm.dbg.value(metadata i64 1, metadata !4360, metadata !DIExpression()) #20, !dbg !4362
  %2 = icmp slt i64 %0, 0, !dbg !4364
  br i1 %2, label %6, label %3, !dbg !4366

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !4367
  call void @llvm.dbg.value(metadata i8* %4, metadata !4361, metadata !DIExpression()) #20, !dbg !4362
  %5 = icmp eq i8* %4, null, !dbg !4368
  br i1 %5, label %6, label %7, !dbg !4369

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !4370
  unreachable, !dbg !4370

7:                                                ; preds = %3
  ret i8* %4, !dbg !4371
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4358 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4357, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %1, metadata !4360, metadata !DIExpression()), !dbg !4372
  %3 = udiv i64 9223372036854775807, %1, !dbg !4373
  %4 = icmp ult i64 %3, %0, !dbg !4373
  br i1 %4, label %8, label %5, !dbg !4374

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !4375
  call void @llvm.dbg.value(metadata i8* %6, metadata !4361, metadata !DIExpression()), !dbg !4372
  %7 = icmp eq i8* %6, null, !dbg !4376
  br i1 %7, label %8, label %9, !dbg !4377

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !4378
  unreachable, !dbg !4378

9:                                                ; preds = %5
  ret i8* %6, !dbg !4379
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4384, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 %1, metadata !4385, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 %1, metadata !4197, metadata !DIExpression()) #20, !dbg !4387
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !4389
  call void @llvm.dbg.value(metadata i8* %3, metadata !4202, metadata !DIExpression()) #20, !dbg !4387
  %4 = icmp eq i8* %3, null, !dbg !4390
  %5 = icmp ne i64 %1, 0, !dbg !4391
  %6 = and i1 %5, %4, !dbg !4392
  br i1 %6, label %7, label %8, !dbg !4392

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4393
  unreachable, !dbg !4393

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4394, metadata !DIExpression()) #20, !dbg !4399
  call void @llvm.dbg.value(metadata i8* %0, metadata !4397, metadata !DIExpression()) #20, !dbg !4399
  call void @llvm.dbg.value(metadata i64 %1, metadata !4398, metadata !DIExpression()) #20, !dbg !4399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !4401
  ret i8* %3, !dbg !4402
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4403 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4405, metadata !DIExpression()), !dbg !4406
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !4407
  %3 = add i64 %2, 1, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %0, metadata !4384, metadata !DIExpression()) #20, !dbg !4409
  call void @llvm.dbg.value(metadata i64 %3, metadata !4385, metadata !DIExpression()) #20, !dbg !4409
  call void @llvm.dbg.value(metadata i64 %3, metadata !4197, metadata !DIExpression()) #20, !dbg !4411
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !4413
  call void @llvm.dbg.value(metadata i8* %4, metadata !4202, metadata !DIExpression()) #20, !dbg !4411
  %5 = icmp eq i8* %4, null, !dbg !4414
  %6 = icmp ne i64 %3, 0, !dbg !4415
  %7 = and i1 %6, %5, !dbg !4416
  br i1 %7, label %8, label %9, !dbg !4416

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4417
  unreachable, !dbg !4417

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4394, metadata !DIExpression()) #20, !dbg !4418
  call void @llvm.dbg.value(metadata i8* %0, metadata !4397, metadata !DIExpression()) #20, !dbg !4418
  call void @llvm.dbg.value(metadata i64 %3, metadata !4398, metadata !DIExpression()) #20, !dbg !4418
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !4420
  ret i8* %4, !dbg !4421
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4422 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4423, !tbaa !1600
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.144, i64 0, i64 0), i32 5) #20, !dbg !4424
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i8* %2) #20, !dbg !4425
  tail call void @abort() #23, !dbg !4426
  unreachable, !dbg !4426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !4427 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4432, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %1, metadata !4433, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %2, metadata !4434, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %3, metadata !4435, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i8* %4, metadata !4436, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i8* %5, metadata !4437, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %6, metadata !4438, metadata !DIExpression()), !dbg !4442
  %9 = bitcast i64* %8 to i8*, !dbg !4443
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #20, !dbg !4443
  call void @llvm.dbg.value(metadata i64* %8, metadata !4441, metadata !DIExpression(DW_OP_deref)), !dbg !4442
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #20, !dbg !4444
  call void @llvm.dbg.value(metadata i32 %10, metadata !4439, metadata !DIExpression()), !dbg !4442
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4445

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #25, !dbg !4446
  br label %27, !dbg !4445

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4449, !tbaa !1823
  call void @llvm.dbg.value(metadata i64 %14, metadata !4441, metadata !DIExpression()), !dbg !4442
  %15 = icmp ult i64 %14, %2, !dbg !4453
  %16 = icmp ugt i64 %14, %3, !dbg !4454
  %17 = or i1 %15, %16, !dbg !4455
  br i1 %17, label %18, label %36, !dbg !4455

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4439, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %14, metadata !4441, metadata !DIExpression()), !dbg !4442
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4456
  %20 = tail call i32* @__errno_location() #25, !dbg !4459
  br i1 %19, label %21, label %22, !dbg !4460

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4461, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 undef, metadata !4439, metadata !DIExpression()), !dbg !4442
  br label %27, !dbg !4462

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4463, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 undef, metadata !4439, metadata !DIExpression()), !dbg !4442
  br label %27, !dbg !4462

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #25, !dbg !4464
  store i32 75, i32* %24, align 4, !dbg !4466, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 undef, metadata !4439, metadata !DIExpression()), !dbg !4442
  br label %27, !dbg !4462

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #25, !dbg !4467
  store i32 0, i32* %26, align 4, !dbg !4469, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 undef, metadata !4439, metadata !DIExpression()), !dbg !4442
  br label %27, !dbg !4462

27:                                               ; preds = %11, %25, %23, %22, %21
  %28 = phi i32* [ %12, %11 ], [ %26, %25 ], [ %24, %23 ], [ %20, %22 ], [ %20, %21 ], !dbg !4446
  %29 = icmp eq i32 %6, 0, !dbg !4470
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4470
  %31 = load i32, i32* %28, align 4, !dbg !4446, !tbaa !1600
  %32 = icmp eq i32 %31, 22, !dbg !4471
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4446
  %34 = call i8* @quote(i8* %0) #20, !dbg !4472
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i8* %5, i8* %34) #20, !dbg !4473
  %35 = load i64, i64* %8, align 8, !dbg !4474, !tbaa !1823
  br label %36, !dbg !4475

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4474
  call void @llvm.dbg.value(metadata i64 %37, metadata !4441, metadata !DIExpression()), !dbg !4442
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #20, !dbg !4476
  ret i64 %37, !dbg !4477
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !4478 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4482, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i64 %1, metadata !4483, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i64 %2, metadata !4484, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i8* %3, metadata !4485, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i8* %4, metadata !4486, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 %5, metadata !4487, metadata !DIExpression()), !dbg !4488
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4489
  ret i64 %7, !dbg !4490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4491 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4497, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i8** %1, metadata !4498, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i32 %2, metadata !4499, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i64* %3, metadata !4500, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i8* %4, metadata !4501, metadata !DIExpression()), !dbg !4515
  %7 = bitcast i8** %6 to i8*, !dbg !4516
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !4516
  call void @llvm.dbg.value(metadata i32 0, metadata !4505, metadata !DIExpression()), !dbg !4515
  %8 = icmp ult i32 %2, 37, !dbg !4517
  br i1 %8, label %10, label %9, !dbg !4517

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.151, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.152, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #23, !dbg !4517
  unreachable, !dbg !4517

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4520
  call void @llvm.dbg.value(metadata i8** %25, metadata !4503, metadata !DIExpression()), !dbg !4515
  %12 = tail call i32* @__errno_location() #25, !dbg !4521
  store i32 0, i32* %12, align 4, !dbg !4522, !tbaa !1600
  call void @llvm.dbg.value(metadata i8* %0, metadata !4506, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i8 undef, metadata !4509, metadata !DIExpression()), !dbg !4523
  %13 = tail call i16** @__ctype_b_loc() #25, !dbg !4523
  %14 = load i16*, i16** %13, align 8, !dbg !4523, !tbaa !1211
  br label %15, !dbg !4524

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4523
  %17 = load i8, i8* %16, align 1, !dbg !4523, !tbaa !1497
  call void @llvm.dbg.value(metadata i8 %17, metadata !4509, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i8* %16, metadata !4506, metadata !DIExpression()), !dbg !4523
  %18 = zext i8 %17 to i64, !dbg !4525
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4525
  %20 = load i16, i16* %19, align 2, !dbg !4525, !tbaa !2976
  %21 = and i16 %20, 8192, !dbg !4525
  %22 = icmp eq i16 %21, 0, !dbg !4524
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4526
  call void @llvm.dbg.value(metadata i8* %23, metadata !4506, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i8 undef, metadata !4509, metadata !DIExpression()), !dbg !4523
  br i1 %22, label %24, label %15, !dbg !4524, !llvm.loop !4527

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4520
  %26 = icmp eq i8 %17, 45, !dbg !4529
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4531, metadata !DIExpression()) #20, !dbg !4541
  call void @llvm.dbg.value(metadata i8** %25, metadata !4539, metadata !DIExpression()) #20, !dbg !4541
  call void @llvm.dbg.value(metadata i32 %2, metadata !4540, metadata !DIExpression()) #20, !dbg !4541
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #20, !dbg !4543
  call void @llvm.dbg.value(metadata i64 %28, metadata !4504, metadata !DIExpression()), !dbg !4515
  %29 = load i8*, i8** %25, align 8, !dbg !4544, !tbaa !1211
  %30 = icmp eq i8* %29, %0, !dbg !4546
  br i1 %30, label %31, label %40, !dbg !4547

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4548
  br i1 %32, label %285, label %33, !dbg !4551

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4552, !tbaa !1497
  %35 = icmp eq i8 %34, 0, !dbg !4552
  br i1 %35, label %285, label %36, !dbg !4553

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4552
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #22, !dbg !4554
  %39 = icmp eq i8* %38, null, !dbg !4554
  br i1 %39, label %285, label %47, !dbg !4555

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4556, !tbaa !1600
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4558

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4505, metadata !DIExpression()), !dbg !4515
  br label %43, !dbg !4559

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4515
  call void @llvm.dbg.value(metadata i32 %44, metadata !4505, metadata !DIExpression()), !dbg !4515
  %45 = icmp eq i8* %4, null, !dbg !4561
  br i1 %45, label %46, label %47, !dbg !4563

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4504, metadata !DIExpression()), !dbg !4515
  store i64 %28, i64* %3, align 8, !dbg !4564, !tbaa !1823
  br label %285, !dbg !4566

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4567, !tbaa !1497
  %51 = sext i8 %50 to i32, !dbg !4567
  %52 = icmp eq i8 %50, 0, !dbg !4568
  br i1 %52, label %282, label %53, !dbg !4569

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4510, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 1, metadata !4513, metadata !DIExpression()), !dbg !4570
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #22, !dbg !4571
  %55 = icmp eq i8* %54, null, !dbg !4571
  br i1 %55, label %56, label %58, !dbg !4573

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4504, metadata !DIExpression()), !dbg !4515
  store i64 %49, i64* %3, align 8, !dbg !4574, !tbaa !1823
  %57 = or i32 %48, 2, !dbg !4576
  br label %285, !dbg !4577

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
  ], !dbg !4578

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #22, !dbg !4579
  %61 = icmp eq i8* %60, null, !dbg !4579
  br i1 %61, label %72, label %62, !dbg !4582

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4583
  %64 = load i8, i8* %63, align 1, !dbg !4583, !tbaa !1497
  %65 = sext i8 %64 to i32, !dbg !4583
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4584

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4585
  %68 = load i8, i8* %67, align 1, !dbg !4585, !tbaa !1497
  %69 = icmp eq i8 %68, 66, !dbg !4588
  %70 = select i1 %69, i64 3, i64 1, !dbg !4589
  br label %72, !dbg !4589

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4510, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 2, metadata !4513, metadata !DIExpression()), !dbg !4570
  br label %72, !dbg !4590

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4513, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i32 undef, metadata !4510, metadata !DIExpression()), !dbg !4570
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
  ], !dbg !4591

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4592, metadata !DIExpression()) #20, !dbg !4600
  call void @llvm.dbg.value(metadata i32 6, metadata !4599, metadata !DIExpression()) #20, !dbg !4600
  call void @llvm.dbg.value(metadata i32 undef, metadata !4603, metadata !DIExpression()) #20, !dbg !4609
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4611
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4611
  %78 = mul i64 %49, %73, !dbg !4613
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4613
  call void @llvm.dbg.value(metadata i1 %77, metadata !4592, metadata !DIExpression()) #20, !dbg !4600
  call void @llvm.dbg.value(metadata i32 5, metadata !4599, metadata !DIExpression()) #20, !dbg !4600
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #20, !dbg !4611
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4611
  %82 = mul i64 %79, %73, !dbg !4613
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4613
  %84 = or i1 %77, %81, !dbg !4614
  call void @llvm.dbg.value(metadata i1 %84, metadata !4592, metadata !DIExpression()) #20, !dbg !4600
  call void @llvm.dbg.value(metadata i32 4, metadata !4599, metadata !DIExpression()) #20, !dbg !4600
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #20, !dbg !4611
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4611
  %87 = mul i64 %83, %73, !dbg !4613
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4613
  %89 = or i1 %84, %86, !dbg !4614
  call void @llvm.dbg.value(metadata i1 %89, metadata !4592, metadata !DIExpression()) #20, !dbg !4600
  call void @llvm.dbg.value(metadata i32 3, metadata !4599, metadata !DIExpression()) #20, !dbg !4600
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #20, !dbg !4611
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4611
  %92 = mul i64 %88, %73, !dbg !4613
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4613
  %94 = or i1 %89, %91, !dbg !4614
  call void @llvm.dbg.value(metadata i1 %94, metadata !4592, metadata !DIExpression()) #20, !dbg !4600
  call void @llvm.dbg.value(metadata i32 2, metadata !4599, metadata !DIExpression()) #20, !dbg !4600
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #20, !dbg !4611
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4611
  %97 = mul i64 %93, %73, !dbg !4613
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4613
  %99 = or i1 %94, %96, !dbg !4614
  call void @llvm.dbg.value(metadata i1 %99, metadata !4592, metadata !DIExpression()) #20, !dbg !4600
  call void @llvm.dbg.value(metadata i32 1, metadata !4599, metadata !DIExpression()) #20, !dbg !4600
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #20, !dbg !4611
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4611
  %102 = mul i64 %98, %73, !dbg !4613
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4613
  %104 = or i1 %99, %101, !dbg !4614
  call void @llvm.dbg.value(metadata i1 %104, metadata !4592, metadata !DIExpression()) #20, !dbg !4600
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression()) #20, !dbg !4600
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #20, !dbg !4611
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4611
  %107 = mul i64 %103, %73, !dbg !4613
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4613
  %109 = or i1 %104, %106, !dbg !4614
  call void @llvm.dbg.value(metadata i1 %109, metadata !4592, metadata !DIExpression()) #20, !dbg !4600
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4600
  br label %272, !dbg !4615

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4592, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 7, metadata !4599, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 undef, metadata !4603, metadata !DIExpression()) #20, !dbg !4618
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4620
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4620
  %113 = mul i64 %49, %73, !dbg !4621
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4621
  call void @llvm.dbg.value(metadata i1 %112, metadata !4592, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 6, metadata !4599, metadata !DIExpression()) #20, !dbg !4616
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #20, !dbg !4620
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4620
  %117 = mul i64 %114, %73, !dbg !4621
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4621
  %119 = or i1 %112, %116, !dbg !4622
  call void @llvm.dbg.value(metadata i1 %119, metadata !4592, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 5, metadata !4599, metadata !DIExpression()) #20, !dbg !4616
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #20, !dbg !4620
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4620
  %122 = mul i64 %118, %73, !dbg !4621
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4621
  %124 = or i1 %119, %121, !dbg !4622
  call void @llvm.dbg.value(metadata i1 %124, metadata !4592, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 4, metadata !4599, metadata !DIExpression()) #20, !dbg !4616
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #20, !dbg !4620
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4620
  %127 = mul i64 %123, %73, !dbg !4621
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4621
  %129 = or i1 %124, %126, !dbg !4622
  call void @llvm.dbg.value(metadata i1 %129, metadata !4592, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 3, metadata !4599, metadata !DIExpression()) #20, !dbg !4616
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #20, !dbg !4620
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4620
  %132 = mul i64 %128, %73, !dbg !4621
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4621
  %134 = or i1 %129, %131, !dbg !4622
  call void @llvm.dbg.value(metadata i1 %134, metadata !4592, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 2, metadata !4599, metadata !DIExpression()) #20, !dbg !4616
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #20, !dbg !4620
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4620
  %137 = mul i64 %133, %73, !dbg !4621
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4621
  %139 = or i1 %134, %136, !dbg !4622
  call void @llvm.dbg.value(metadata i1 %139, metadata !4592, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 1, metadata !4599, metadata !DIExpression()) #20, !dbg !4616
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #20, !dbg !4620
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4620
  %142 = mul i64 %138, %73, !dbg !4621
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4621
  %144 = or i1 %139, %141, !dbg !4622
  call void @llvm.dbg.value(metadata i1 %144, metadata !4592, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression()) #20, !dbg !4616
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #20, !dbg !4620
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4620
  %147 = mul i64 %143, %73, !dbg !4621
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4621
  %149 = or i1 %144, %146, !dbg !4622
  call void @llvm.dbg.value(metadata i1 %149, metadata !4592, metadata !DIExpression()) #20, !dbg !4616
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4616
  br label %272, !dbg !4615

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4592, metadata !DIExpression()) #20, !dbg !4623
  call void @llvm.dbg.value(metadata i32 4, metadata !4599, metadata !DIExpression()) #20, !dbg !4623
  call void @llvm.dbg.value(metadata i32 undef, metadata !4603, metadata !DIExpression()) #20, !dbg !4625
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4627
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4627
  %153 = mul i64 %49, %73, !dbg !4628
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4628
  call void @llvm.dbg.value(metadata i1 %152, metadata !4592, metadata !DIExpression()) #20, !dbg !4623
  call void @llvm.dbg.value(metadata i32 3, metadata !4599, metadata !DIExpression()) #20, !dbg !4623
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #20, !dbg !4627
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4627
  %157 = mul i64 %154, %73, !dbg !4628
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4628
  %159 = or i1 %152, %156, !dbg !4629
  call void @llvm.dbg.value(metadata i1 %159, metadata !4592, metadata !DIExpression()) #20, !dbg !4623
  call void @llvm.dbg.value(metadata i32 2, metadata !4599, metadata !DIExpression()) #20, !dbg !4623
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #20, !dbg !4627
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4627
  %162 = mul i64 %158, %73, !dbg !4628
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4628
  %164 = or i1 %159, %161, !dbg !4629
  call void @llvm.dbg.value(metadata i1 %164, metadata !4592, metadata !DIExpression()) #20, !dbg !4623
  call void @llvm.dbg.value(metadata i32 1, metadata !4599, metadata !DIExpression()) #20, !dbg !4623
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #20, !dbg !4627
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4627
  %167 = mul i64 %163, %73, !dbg !4628
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4628
  %169 = or i1 %164, %166, !dbg !4629
  call void @llvm.dbg.value(metadata i1 %169, metadata !4592, metadata !DIExpression()) #20, !dbg !4623
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression()) #20, !dbg !4623
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #20, !dbg !4627
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4627
  %172 = mul i64 %168, %73, !dbg !4628
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4628
  %174 = or i1 %169, %171, !dbg !4629
  call void @llvm.dbg.value(metadata i1 %174, metadata !4592, metadata !DIExpression()) #20, !dbg !4623
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4623
  br label %272, !dbg !4615

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4592, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i32 5, metadata !4599, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i32 undef, metadata !4603, metadata !DIExpression()) #20, !dbg !4632
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4634
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4634
  %178 = mul i64 %49, %73, !dbg !4635
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4635
  call void @llvm.dbg.value(metadata i1 %177, metadata !4592, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i32 4, metadata !4599, metadata !DIExpression()) #20, !dbg !4630
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #20, !dbg !4634
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4634
  %182 = mul i64 %179, %73, !dbg !4635
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4635
  %184 = or i1 %177, %181, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %184, metadata !4592, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i32 3, metadata !4599, metadata !DIExpression()) #20, !dbg !4630
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #20, !dbg !4634
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4634
  %187 = mul i64 %183, %73, !dbg !4635
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4635
  %189 = or i1 %184, %186, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %189, metadata !4592, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i32 2, metadata !4599, metadata !DIExpression()) #20, !dbg !4630
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #20, !dbg !4634
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4634
  %192 = mul i64 %188, %73, !dbg !4635
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4635
  %194 = or i1 %189, %191, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %194, metadata !4592, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i32 1, metadata !4599, metadata !DIExpression()) #20, !dbg !4630
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #20, !dbg !4634
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4634
  %197 = mul i64 %193, %73, !dbg !4635
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4635
  %199 = or i1 %194, %196, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %199, metadata !4592, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression()) #20, !dbg !4630
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #20, !dbg !4634
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4634
  %202 = mul i64 %198, %73, !dbg !4635
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4635
  %204 = or i1 %199, %201, !dbg !4636
  call void @llvm.dbg.value(metadata i1 %204, metadata !4592, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4630
  br label %272, !dbg !4615

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4603, metadata !DIExpression()) #20, !dbg !4637
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #20, !dbg !4639
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4639
  %208 = shl i64 %49, 9, !dbg !4640
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4640
  call void @llvm.dbg.value(metadata i1 %207, metadata !4514, metadata !DIExpression()), !dbg !4570
  br label %272, !dbg !4641

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4603, metadata !DIExpression()) #20, !dbg !4642
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #20, !dbg !4644
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4644
  %213 = shl i64 %49, 10, !dbg !4645
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4645
  call void @llvm.dbg.value(metadata i1 %212, metadata !4514, metadata !DIExpression()), !dbg !4570
  br label %272, !dbg !4646

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4598, metadata !DIExpression()) #20, !dbg !4647
  call void @llvm.dbg.value(metadata i32 0, metadata !4592, metadata !DIExpression()) #20, !dbg !4647
  call void @llvm.dbg.value(metadata i32 2, metadata !4599, metadata !DIExpression()) #20, !dbg !4647
  call void @llvm.dbg.value(metadata i32 undef, metadata !4603, metadata !DIExpression()) #20, !dbg !4649
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4651
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4651
  %218 = mul i64 %49, %73, !dbg !4652
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4652
  call void @llvm.dbg.value(metadata i1 %217, metadata !4592, metadata !DIExpression()) #20, !dbg !4647
  call void @llvm.dbg.value(metadata i32 1, metadata !4599, metadata !DIExpression()) #20, !dbg !4647
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #20, !dbg !4651
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4651
  %222 = mul i64 %219, %73, !dbg !4652
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4652
  %224 = or i1 %217, %221, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %224, metadata !4592, metadata !DIExpression()) #20, !dbg !4647
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression()) #20, !dbg !4647
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #20, !dbg !4651
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4651
  %227 = mul i64 %223, %73, !dbg !4652
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4652
  %229 = or i1 %224, %226, !dbg !4653
  call void @llvm.dbg.value(metadata i1 %229, metadata !4592, metadata !DIExpression()) #20, !dbg !4647
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4647
  br label %272, !dbg !4615

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4598, metadata !DIExpression()) #20, !dbg !4654
  call void @llvm.dbg.value(metadata i32 0, metadata !4592, metadata !DIExpression()) #20, !dbg !4654
  call void @llvm.dbg.value(metadata i32 undef, metadata !4599, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4654
  call void @llvm.dbg.value(metadata i32 undef, metadata !4603, metadata !DIExpression()) #20, !dbg !4656
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4658
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4658
  %233 = mul i64 %49, %73, !dbg !4659
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4659
  call void @llvm.dbg.value(metadata i1 %232, metadata !4592, metadata !DIExpression()) #20, !dbg !4654
  call void @llvm.dbg.value(metadata i32 undef, metadata !4599, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4654
  br label %272, !dbg !4615

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4598, metadata !DIExpression()) #20, !dbg !4660
  call void @llvm.dbg.value(metadata i32 0, metadata !4592, metadata !DIExpression()) #20, !dbg !4660
  call void @llvm.dbg.value(metadata i32 1, metadata !4599, metadata !DIExpression()) #20, !dbg !4660
  call void @llvm.dbg.value(metadata i32 undef, metadata !4603, metadata !DIExpression()) #20, !dbg !4662
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4664
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !4664
  %238 = mul i64 %49, %73, !dbg !4665
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !4665
  call void @llvm.dbg.value(metadata i1 %237, metadata !4592, metadata !DIExpression()) #20, !dbg !4660
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression()) #20, !dbg !4660
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #20, !dbg !4664
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4664
  %242 = mul i64 %239, %73, !dbg !4665
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4665
  %244 = or i1 %237, %241, !dbg !4666
  call void @llvm.dbg.value(metadata i1 %244, metadata !4592, metadata !DIExpression()) #20, !dbg !4660
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4660
  br label %272, !dbg !4615

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4598, metadata !DIExpression()) #20, !dbg !4667
  call void @llvm.dbg.value(metadata i32 0, metadata !4592, metadata !DIExpression()) #20, !dbg !4667
  call void @llvm.dbg.value(metadata i32 3, metadata !4599, metadata !DIExpression()) #20, !dbg !4667
  call void @llvm.dbg.value(metadata i32 undef, metadata !4603, metadata !DIExpression()) #20, !dbg !4669
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4671
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4671
  %248 = mul i64 %49, %73, !dbg !4672
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4672
  call void @llvm.dbg.value(metadata i1 %247, metadata !4592, metadata !DIExpression()) #20, !dbg !4667
  call void @llvm.dbg.value(metadata i32 2, metadata !4599, metadata !DIExpression()) #20, !dbg !4667
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #20, !dbg !4671
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4671
  %252 = mul i64 %249, %73, !dbg !4672
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4672
  %254 = or i1 %247, %251, !dbg !4673
  call void @llvm.dbg.value(metadata i1 %254, metadata !4592, metadata !DIExpression()) #20, !dbg !4667
  call void @llvm.dbg.value(metadata i32 1, metadata !4599, metadata !DIExpression()) #20, !dbg !4667
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #20, !dbg !4671
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4671
  %257 = mul i64 %253, %73, !dbg !4672
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4672
  %259 = or i1 %254, %256, !dbg !4673
  call void @llvm.dbg.value(metadata i1 %259, metadata !4592, metadata !DIExpression()) #20, !dbg !4667
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression()) #20, !dbg !4667
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #20, !dbg !4671
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4671
  %262 = mul i64 %258, %73, !dbg !4672
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4672
  %264 = or i1 %259, %261, !dbg !4673
  call void @llvm.dbg.value(metadata i1 %264, metadata !4592, metadata !DIExpression()) #20, !dbg !4667
  call void @llvm.dbg.value(metadata i32 0, metadata !4599, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4667
  br label %272, !dbg !4615

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4603, metadata !DIExpression()) #20, !dbg !4674
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #20, !dbg !4676
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4676
  %268 = shl i64 %49, 1, !dbg !4677
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4677
  call void @llvm.dbg.value(metadata i1 %267, metadata !4514, metadata !DIExpression()), !dbg !4570
  br label %272, !dbg !4678

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4504, metadata !DIExpression()), !dbg !4515
  store i64 %49, i64* %3, align 8, !dbg !4679, !tbaa !1823
  %271 = or i32 %48, 2, !dbg !4680
  br label %285, !dbg !4681

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !4515
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4682
  call void @llvm.dbg.value(metadata i32 %275, metadata !4514, metadata !DIExpression()), !dbg !4570
  %276 = or i32 %48, %275, !dbg !4615
  call void @llvm.dbg.value(metadata i32 %276, metadata !4505, metadata !DIExpression()), !dbg !4515
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4683
  store i8* %277, i8** %25, align 8, !dbg !4683, !tbaa !1211
  %278 = load i8, i8* %277, align 1, !dbg !4684, !tbaa !1497
  %279 = icmp eq i8 %278, 0, !dbg !4684
  %280 = or i32 %276, 2, !dbg !4686
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4687
  call void @llvm.dbg.value(metadata i32 %281, metadata !4505, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i32 %281, metadata !4505, metadata !DIExpression()), !dbg !4515
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4688
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4689
  call void @llvm.dbg.value(metadata i32 %284, metadata !4505, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i64 %283, metadata !4504, metadata !DIExpression()), !dbg !4515
  store i64 %283, i64* %3, align 8, !dbg !4690, !tbaa !1823
  br label %285, !dbg !4691

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !4515
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20, !dbg !4692
  ret i32 %286, !dbg !4692
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
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !4693 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4695, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i64 %1, metadata !4696, metadata !DIExpression()), !dbg !4701
  %3 = icmp eq i64 %0, 0, !dbg !4702
  %4 = icmp eq i64 %1, 0, !dbg !4703
  %5 = or i1 %3, %4, !dbg !4704
  br i1 %5, label %11, label %6, !dbg !4704

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4698, metadata !DIExpression()), !dbg !4705
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4706
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4706
  br i1 %8, label %9, label %11, !dbg !4708

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4709
  store i32 12, i32* %10, align 4, !dbg !4711, !tbaa !1600
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4695, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i64 %12, metadata !4696, metadata !DIExpression()), !dbg !4701
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !4712
  call void @llvm.dbg.value(metadata i8* %14, metadata !4697, metadata !DIExpression()), !dbg !4701
  br label %15, !dbg !4713

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4701
  ret i8* %16, !dbg !4714
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4715 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4723, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i8* %1, metadata !4724, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i64 %2, metadata !4725, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4726, metadata !DIExpression()), !dbg !4732
  %6 = bitcast i32* %5 to i8*, !dbg !4733
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4733
  %7 = icmp eq i32* %0, null, !dbg !4734
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4736
  call void @llvm.dbg.value(metadata i32* %8, metadata !4723, metadata !DIExpression()), !dbg !4732
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %9, metadata !4727, metadata !DIExpression()), !dbg !4732
  %10 = icmp ugt i64 %9, -3, !dbg !4738
  %11 = icmp ne i64 %2, 0, !dbg !4739
  %12 = and i1 %11, %10, !dbg !4740
  br i1 %12, label %13, label %18, !dbg !4740

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4741
  br i1 %14, label %18, label %15, !dbg !4742

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4743, !tbaa !1497
  call void @llvm.dbg.value(metadata i8 %16, metadata !4729, metadata !DIExpression()), !dbg !4744
  %17 = zext i8 %16 to i32, !dbg !4745
  store i32 %17, i32* %8, align 4, !dbg !4746, !tbaa !1600
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4732
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4747
  ret i64 %19, !dbg !4747
}

; Function Attrs: nounwind
declare !dbg !594 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4748 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4754, metadata !DIExpression()), !dbg !4758
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4759
  call void @llvm.dbg.value(metadata i1 undef, metadata !4755, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4760, metadata !DIExpression()), !dbg !4764
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4766
  %4 = load i32, i32* %3, align 8, !dbg !4766, !tbaa !4767
  %5 = and i32 %4, 32, !dbg !4766
  %6 = icmp eq i32 %5, 0, !dbg !4769
  call void @llvm.dbg.value(metadata i1 %6, metadata !4756, metadata !DIExpression()), !dbg !4758
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4770
  %8 = icmp ne i32 %7, 0, !dbg !4771
  call void @llvm.dbg.value(metadata i1 %8, metadata !4757, metadata !DIExpression()), !dbg !4758
  br i1 %6, label %9, label %19, !dbg !4772

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4774
  call void @llvm.dbg.value(metadata i1 %10, metadata !4755, metadata !DIExpression()), !dbg !4758
  %11 = xor i1 %8, true, !dbg !4775
  %12 = or i1 %10, %11, !dbg !4775
  %13 = sext i1 %8 to i32, !dbg !4775
  br i1 %12, label %22, label %14, !dbg !4775

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4776
  %16 = load i32, i32* %15, align 4, !dbg !4776, !tbaa !1600
  %17 = icmp ne i32 %16, 9, !dbg !4777
  %18 = sext i1 %17 to i32, !dbg !4778
  br label %22, !dbg !4778

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4779

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4781
  store i32 0, i32* %21, align 4, !dbg !4783, !tbaa !1600
  br label %22, !dbg !4781

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4758
  ret i32 %23, !dbg !4784
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4785 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4787, metadata !DIExpression()), !dbg !4792
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4793
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4793
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4788, metadata !DIExpression()), !dbg !4794
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !4795
  %5 = icmp eq i32 %4, 0, !dbg !4795
  br i1 %5, label %6, label %13, !dbg !4797

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4798
  %8 = load i16, i16* %7, align 16, !dbg !4798
  %9 = icmp eq i16 %8, 67, !dbg !4798
  br i1 %9, label %13, label %10, !dbg !4799

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i64 6), !dbg !4800
  %12 = icmp ne i32 %11, 0, !dbg !4801
  br label %13, !dbg !4799

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4792
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4802
  ret i1 %14, !dbg !4802
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4803 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4806
  call void @llvm.dbg.value(metadata i8* %1, metadata !4805, metadata !DIExpression()), !dbg !4807
  %2 = icmp eq i8* %1, null, !dbg !4808
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.164, i64 0, i64 0), i8* %1, !dbg !4810
  call void @llvm.dbg.value(metadata i8* %3, metadata !4805, metadata !DIExpression()), !dbg !4807
  %4 = load i8, i8* %3, align 1, !dbg !4811, !tbaa !1497
  %5 = icmp eq i8 %4, 0, !dbg !4815
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.165, i64 0, i64 0), i8* %3, !dbg !4816
  call void @llvm.dbg.value(metadata i8* %6, metadata !4805, metadata !DIExpression()), !dbg !4807
  ret i8* %6, !dbg !4817
}

; Function Attrs: nounwind
declare !dbg !1046 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4818 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4822, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i8* %1, metadata !4823, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %2, metadata !4824, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i32 %0, metadata !4826, metadata !DIExpression()) #20, !dbg !4835
  call void @llvm.dbg.value(metadata i8* %1, metadata !4829, metadata !DIExpression()) #20, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %2, metadata !4830, metadata !DIExpression()) #20, !dbg !4835
  call void @llvm.dbg.value(metadata i32 %0, metadata !4837, metadata !DIExpression()) #20, !dbg !4843
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4845
  call void @llvm.dbg.value(metadata i8* %4, metadata !4842, metadata !DIExpression()) #20, !dbg !4843
  call void @llvm.dbg.value(metadata i8* %4, metadata !4831, metadata !DIExpression()) #20, !dbg !4835
  %5 = icmp eq i8* %4, null, !dbg !4846
  br i1 %5, label %6, label %9, !dbg !4847

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4848
  br i1 %7, label %19, label %8, !dbg !4851

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4852, !tbaa !1497
  br label %19, !dbg !4853

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4854
  call void @llvm.dbg.value(metadata i64 %10, metadata !4832, metadata !DIExpression()) #20, !dbg !4855
  %11 = icmp ult i64 %10, %2, !dbg !4856
  br i1 %11, label %12, label %14, !dbg !4858

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4859
  call void @llvm.dbg.value(metadata i8* %1, metadata !4861, metadata !DIExpression()) #20, !dbg !4866
  call void @llvm.dbg.value(metadata i8* %4, metadata !4864, metadata !DIExpression()) #20, !dbg !4866
  call void @llvm.dbg.value(metadata i64 %13, metadata !4865, metadata !DIExpression()) #20, !dbg !4866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !4868
  br label %19, !dbg !4869

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4870
  br i1 %15, label %19, label %16, !dbg !4873

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4874
  call void @llvm.dbg.value(metadata i8* %1, metadata !4861, metadata !DIExpression()) #20, !dbg !4876
  call void @llvm.dbg.value(metadata i8* %4, metadata !4864, metadata !DIExpression()) #20, !dbg !4876
  call void @llvm.dbg.value(metadata i64 %17, metadata !4865, metadata !DIExpression()) #20, !dbg !4876
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !4878
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4879
  store i8 0, i8* %18, align 1, !dbg !4880, !tbaa !1497
  br label %19, !dbg !4881

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4882
  ret i32 %20, !dbg !4883
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.value(metadata i32 %0, metadata !4837, metadata !DIExpression()) #20, !dbg !4888
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4890
  call void @llvm.dbg.value(metadata i8* %2, metadata !4842, metadata !DIExpression()) #20, !dbg !4888
  ret i8* %2, !dbg !4891
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4892 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4898, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i32 0, metadata !4899, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i32 0, metadata !4901, metadata !DIExpression()), !dbg !4902
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4903
  call void @llvm.dbg.value(metadata i32 %2, metadata !4900, metadata !DIExpression()), !dbg !4902
  %3 = icmp slt i32 %2, 0, !dbg !4904
  br i1 %3, label %4, label %6, !dbg !4906

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4907
  br label %24, !dbg !4908

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4909
  %8 = icmp eq i32 %7, 0, !dbg !4909
  br i1 %8, label %13, label %9, !dbg !4911

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4912
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4913
  %12 = icmp eq i64 %11, -1, !dbg !4914
  br i1 %12, label %16, label %13, !dbg !4915

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4916
  %15 = icmp eq i32 %14, 0, !dbg !4916
  br i1 %15, label %16, label %18, !dbg !4917

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4899, metadata !DIExpression()), !dbg !4902
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4918
  call void @llvm.dbg.value(metadata i32 %21, metadata !4901, metadata !DIExpression()), !dbg !4902
  br label %24, !dbg !4919

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4920
  %20 = load i32, i32* %19, align 4, !dbg !4920, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 %20, metadata !4899, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i32 %20, metadata !4899, metadata !DIExpression()), !dbg !4902
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4918
  call void @llvm.dbg.value(metadata i32 %21, metadata !4901, metadata !DIExpression()), !dbg !4902
  %22 = icmp eq i32 %20, 0, !dbg !4921
  br i1 %22, label %24, label %23, !dbg !4919

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4923, !tbaa !1600
  call void @llvm.dbg.value(metadata i32 -1, metadata !4901, metadata !DIExpression()), !dbg !4902
  br label %24, !dbg !4925

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4902
  ret i32 %25, !dbg !4926
}

; Function Attrs: nofree nounwind
declare !dbg !1055 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1090 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4927 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4933, metadata !DIExpression()), !dbg !4934
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4935
  br i1 %2, label %6, label %3, !dbg !4937

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4938
  %5 = icmp eq i32 %4, 0, !dbg !4938
  br i1 %5, label %6, label %8, !dbg !4939

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4940
  br label %17, !dbg !4941

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4942, metadata !DIExpression()) #20, !dbg !4947
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4949
  %10 = load i32, i32* %9, align 8, !dbg !4949, !tbaa !4767
  %11 = and i32 %10, 256, !dbg !4951
  %12 = icmp eq i32 %11, 0, !dbg !4951
  br i1 %12, label %15, label %13, !dbg !4952

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4953
  br label %15, !dbg !4953

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4954
  br label %17, !dbg !4955

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4934
  ret i32 %18, !dbg !4956
}

; Function Attrs: nofree nounwind
declare !dbg !1095 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4957 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4963, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i64 %1, metadata !4964, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 %2, metadata !4965, metadata !DIExpression()), !dbg !4969
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4970
  %5 = load i8*, i8** %4, align 8, !dbg !4970, !tbaa !4971
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4972
  %7 = load i8*, i8** %6, align 8, !dbg !4972, !tbaa !4973
  %8 = icmp eq i8* %5, %7, !dbg !4974
  br i1 %8, label %9, label %28, !dbg !4975

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4976
  %11 = load i8*, i8** %10, align 8, !dbg !4976, !tbaa !4977
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4978
  %13 = load i8*, i8** %12, align 8, !dbg !4978, !tbaa !4979
  %14 = icmp eq i8* %11, %13, !dbg !4980
  br i1 %14, label %15, label %28, !dbg !4981

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4982
  %17 = load i8*, i8** %16, align 8, !dbg !4982, !tbaa !4983
  %18 = icmp eq i8* %17, null, !dbg !4984
  br i1 %18, label %19, label %28, !dbg !4985

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4986
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4987
  call void @llvm.dbg.value(metadata i64 %21, metadata !4966, metadata !DIExpression()), !dbg !4988
  %22 = icmp eq i64 %21, -1, !dbg !4989
  br i1 %22, label %30, label %23, !dbg !4991

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4992
  %25 = load i32, i32* %24, align 8, !dbg !4993, !tbaa !4767
  %26 = and i32 %25, -17, !dbg !4993
  store i32 %26, i32* %24, align 8, !dbg !4993, !tbaa !4767
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4994
  store i64 %21, i64* %27, align 8, !dbg !4995, !tbaa !4996
  br label %30, !dbg !4997

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4998
  br label %30, !dbg !4999

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4969
  ret i32 %31, !dbg !5000
}

; Function Attrs: nofree nounwind
declare !dbg !1171 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !271, !276, !321, !485, !488, !493, !327, !368, !496, !503, !479, !545, !566, !569, !584, !588, !591, !610, !649, !656, !1049, !1052, !1092, !1133}
!llvm.ident = !{!1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174, !1174}
!llvm.module.flags = !{!1175, !1176, !1177, !1178, !1179}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 72, type: !223, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !211, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/head.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "header_mode", file: !3, line: 66, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "multiple_files", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "always", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "never", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!30 = !{!31, !41, !102, !106, !110, !113, !116, !6, !123, !127, !35, !92, !142, !146, !147, !151, !155, !157, !161, !165, !169, !172, !175, !178, !94, !181, !185, !189, !37, !192, !197, !200, !201, !205, !207, !208}
!31 = !DISubprogram(name: "dcgettext", scope: !32, file: !32, line: 51, type: !33, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!32 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !37, !37, !39}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !{}
!41 = !DISubprogram(name: "fputs_unlocked", scope: !42, file: !42, line: 662, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!42 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!43 = !DISubroutineType(types: !44)
!44 = !{!39, !37, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !48)
!47 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !65, !66, !67, !71, !73, !75, !79, !82, !84, !87, !90, !91, !93, !97, !98}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 51, baseType: !39, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 36, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 70, baseType: !45, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !69, line: 152, baseType: !70)
!69 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!74 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 43, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !69, line: 153, baseType: !70)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !46, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !47, line: 37, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !46, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !47, line: 38, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !46, file: !47, line: 93, baseType: !45, size: 64, offset: 1344)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !46, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DISubprogram(name: "set_program_name", scope: !103, file: !103, line: 37, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!103 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!104 = !DISubroutineType(types: !105)
!105 = !{null, !37}
!106 = !DISubprogram(name: "setlocale", scope: !107, file: !107, line: 122, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!107 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!108 = !DISubroutineType(types: !109)
!109 = !{!35, !39, !37}
!110 = !DISubprogram(name: "bindtextdomain", scope: !32, file: !32, line: 86, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!111 = !DISubroutineType(types: !112)
!112 = !{!35, !37, !37}
!113 = !DISubprogram(name: "textdomain", scope: !32, file: !32, line: 82, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!114 = !DISubroutineType(types: !115)
!115 = !{!35, !37}
!116 = !DISubprogram(name: "atexit", scope: !117, file: !117, line: 595, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!117 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!118 = !DISubroutineType(types: !119)
!119 = !{!39, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null}
!123 = !DISubprogram(name: "error", scope: !124, file: !124, line: 52, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!124 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!125 = !DISubroutineType(types: !126)
!126 = !{null, !39, !39, !37, null}
!127 = !DISubprogram(name: "getopt_long", scope: !128, file: !128, line: 66, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!128 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!129 = !DISubroutineType(types: !130)
!130 = !{!39, !39, !131, !37, !133, !140}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !128, line: 50, size: 256, elements: !136)
!136 = !{!137, !138, !139, !141}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !128, line: 52, baseType: !37, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !135, file: !128, line: 55, baseType: !39, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !135, file: !128, line: 56, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !135, file: !128, line: 57, baseType: !39, size: 32, offset: 192)
!142 = !DISubprogram(name: "version_etc", scope: !143, file: !143, line: 69, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!143 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!144 = !DISubroutineType(types: !145)
!145 = !{null, !45, !37, !37, !37, null}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !42, line: 63, baseType: !68)
!147 = !DISubprogram(name: "umaxtostr", scope: !148, file: !148, line: 46, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!148 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!149 = !DISubroutineType(types: !150)
!150 = !{!35, !96, !35}
!151 = !DISubprogram(name: "quote", scope: !152, file: !152, line: 44, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!152 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !DISubroutineType(types: !154)
!154 = !{!37, !37}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!157 = !DISubprogram(name: "close", scope: !158, file: !158, line: 353, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!158 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!159 = !DISubroutineType(types: !160)
!160 = !{!39, !39}
!161 = !DISubprogram(name: "xdectoumax", scope: !162, file: !162, line: 31, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!162 = !DIFile(filename: "./lib/xdectoint.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!163 = !DISubroutineType(types: !164)
!164 = !{!96, !37, !96, !96, !37, !37, !39}
!165 = !DISubprogram(name: "open", scope: !166, file: !166, line: 196, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!166 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!167 = !DISubroutineType(types: !168)
!168 = !{!39, !37, !39, null}
!169 = !DISubprogram(name: "quotearg_style", scope: !12, file: !12, line: 377, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!170 = !DISubroutineType(types: !171)
!171 = !{!35, !11, !37}
!172 = !DISubprogram(name: "lseek", scope: !158, file: !158, line: 334, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!173 = !DISubroutineType(types: !174)
!174 = !{!70, !39, !70, !39}
!175 = !DISubprogram(name: "quotearg_n_style_colon", scope: !12, file: !12, line: 397, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!176 = !DISubroutineType(types: !177)
!177 = !{!35, !39, !11, !37}
!178 = !DISubprogram(name: "offtostr", scope: !148, file: !148, line: 44, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!179 = !DISubroutineType(types: !180)
!180 = !{!35, !70, !35}
!181 = !DISubprogram(name: "xmalloc", scope: !182, file: !182, line: 53, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!182 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !DISubroutineType(types: !184)
!184 = !{!92, !96}
!185 = !DISubprogram(name: "safe_read", scope: !186, file: !186, line: 42, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!186 = !DIFile(filename: "./lib/safe-read.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = !DISubroutineType(types: !188)
!188 = !{!96, !39, !92, !96}
!189 = !DISubprogram(name: "free", scope: !117, file: !117, line: 565, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !92}
!192 = !DISubprogram(name: "fwrite_unlocked", scope: !42, file: !42, line: 675, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!193 = !DISubroutineType(types: !194)
!194 = !{!96, !195, !96, !96, !45}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!197 = !DISubprogram(name: "clearerr_unlocked", scope: !42, file: !42, line: 765, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !45}
!200 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!201 = !DISubprogram(name: "memrchr", scope: !202, file: !202, line: 115, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!202 = !DIFile(filename: "/usr/include/string.h", directory: "")
!203 = !DISubroutineType(types: !204)
!204 = !{!92, !195, !39, !96}
!205 = !DISubprogram(name: "full_read", scope: !206, file: !206, line: 23, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!206 = !DIFile(filename: "./lib/full-read.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = !DISubprogram(name: "xalloc_die", scope: !182, file: !182, line: 51, type: !121, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !40)
!208 = !DISubprogram(name: "xrealloc", scope: !182, file: !182, line: 59, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!209 = !DISubroutineType(types: !210)
!210 = !{!92, !92, !96}
!211 = !{!212, !248, !250, !252, !254, !255, !260}
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "default_file_list", scope: !214, file: !3, line: 938, type: !245, isLocal: true, isDefinition: true)
!214 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 918, type: !215, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!215 = !DISubroutineType(types: !216)
!216 = !{!39, !39, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!218 = !{!219, !220, !221, !222, !224, !225, !226, !230, !231, !232, !233, !236, !237, !238, !239}
!219 = !DILocalVariable(name: "argc", arg: 1, scope: !214, file: !3, line: 918, type: !39)
!220 = !DILocalVariable(name: "argv", arg: 2, scope: !214, file: !3, line: 918, type: !217)
!221 = !DILocalVariable(name: "header_mode", scope: !214, file: !3, line: 920, type: !5)
!222 = !DILocalVariable(name: "ok", scope: !214, file: !3, line: 921, type: !223)
!223 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!224 = !DILocalVariable(name: "c", scope: !214, file: !3, line: 922, type: !39)
!225 = !DILocalVariable(name: "i", scope: !214, file: !3, line: 923, type: !94)
!226 = !DILocalVariable(name: "n_units", scope: !214, file: !3, line: 926, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !228, line: 102, baseType: !229)
!228 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !69, line: 73, baseType: !96)
!230 = !DILocalVariable(name: "count_lines", scope: !214, file: !3, line: 930, type: !223)
!231 = !DILocalVariable(name: "elide_from_end", scope: !214, file: !3, line: 934, type: !223)
!232 = !DILocalVariable(name: "file_list", scope: !214, file: !3, line: 939, type: !155)
!233 = !DILocalVariable(name: "a", scope: !234, file: !3, line: 957, type: !35)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 956, column: 5)
!235 = distinct !DILexicalBlock(scope: !214, file: !3, line: 955, column: 7)
!236 = !DILocalVariable(name: "n_string", scope: !234, file: !3, line: 958, type: !35)
!237 = !DILocalVariable(name: "end_n_string", scope: !234, file: !3, line: 959, type: !35)
!238 = !DILocalVariable(name: "multiplier_char", scope: !234, file: !3, line: 960, type: !36)
!239 = !DILocalVariable(name: "umax_buf", scope: !240, file: !3, line: 1077, type: !242)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 1076, column: 5)
!241 = distinct !DILexicalBlock(scope: !214, file: !3, line: 1075, column: 8)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 168, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 21)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 2)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "presume_input_pipe", scope: !2, file: !3, line: 57, type: !223, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "print_headers", scope: !2, file: !3, line: 60, type: !223, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "line_end", scope: !2, file: !3, line: 63, type: !36, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 88, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 2560, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 10)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "first_file", scope: !262, file: !3, line: 170, type: !223, isLocal: true, isDefinition: true)
!262 = distinct !DISubprogram(name: "write_header", scope: !3, file: !3, line: 168, type: !104, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!263 = !{!264}
!264 = !DILocalVariable(name: "filename", arg: 1, scope: !262, file: !3, line: 168, type: !37)
!265 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!266 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 10, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!267 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!268 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "Version", scope: !271, file: !272, line: 2, type: !37, isLocal: false, isDefinition: true)
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, globals: !273, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!273 = !{!269}
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "file_name", scope: !276, file: !277, line: 46, type: !37, isLocal: true, isDefinition: true)
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !278, globals: !316, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!278 = !{!279, !31, !315, !123}
!279 = !DISubprogram(name: "close_stream", scope: !280, file: !280, line: 2, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!280 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!281 = !DISubroutineType(types: !282)
!282 = !{!39, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !284, file: !47, line: 51, baseType: !39, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !284, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !284, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !284, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !284, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !284, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !284, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !284, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !284, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !284, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !284, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !284, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !284, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !284, file: !47, line: 70, baseType: !283, size: 64, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !284, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !284, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !284, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !284, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !284, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !284, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !284, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !284, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !284, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !284, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !284, file: !47, line: 93, baseType: !283, size: 64, offset: 1344)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !284, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !284, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !284, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !284, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!315 = !DISubprogram(name: "quotearg_colon", scope: !12, file: !12, line: 391, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!316 = !{!274, !317}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !276, file: !277, line: 56, type: !223, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "exit_failure", scope: !321, file: !322, line: 24, type: !324, isLocal: false, isDefinition: true)
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, globals: !323, splitDebugInlining: false, nameTableKind: None)
!322 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!323 = !{!319}
!324 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "program_name", scope: !327, file: !328, line: 33, type: !37, isLocal: false, isDefinition: true)
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !329, globals: !365, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!329 = !{!92, !330, !35}
!330 = !DISubprogram(name: "fputs", scope: !42, file: !42, line: 626, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!331 = !DISubroutineType(types: !332)
!332 = !{!39, !37, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !334, file: !47, line: 51, baseType: !39, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !334, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !334, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !334, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !334, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !334, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !334, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !334, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !334, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !334, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !334, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !334, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !334, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !334, file: !47, line: 70, baseType: !333, size: 64, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !334, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !334, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !334, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !334, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !334, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !334, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !334, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !334, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !334, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !334, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !334, file: !47, line: 93, baseType: !333, size: 64, offset: 1344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !334, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !334, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !334, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !334, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!365 = !{!325}
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !368, file: !369, line: 85, type: !474, isLocal: false, isDefinition: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !370, retainedTypes: !391, globals: !449, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!370 = !{!11, !371, !376}
!371 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !6, size: 32, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!374 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!375 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !377, line: 46, baseType: !6, size: 32, elements: !378)
!377 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390}
!379 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!380 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!381 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!382 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!383 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!384 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!385 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!386 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!387 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!388 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!389 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!390 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!391 = !{!392, !395, !189, !411, !39, !72, !414, !94, !431, !435, !31, !441, !445, !35, !181, !207, !208}
!392 = !DISubprogram(name: "xmemdup", scope: !182, file: !182, line: 62, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!393 = !DISubroutineType(types: !394)
!394 = !{!92, !195, !96}
!395 = !DISubprogram(name: "quotearg_alloc_mem", scope: !12, file: !12, line: 342, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!396 = !DISubroutineType(types: !397)
!397 = !{!35, !37, !96, !398, !399}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !369, line: 65, size: 448, elements: !402)
!402 = !{!403, !404, !405, !409, !410}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !401, file: !369, line: 68, baseType: !11, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !369, line: 71, baseType: !39, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !401, file: !369, line: 75, baseType: !406, size: 256, offset: 64)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 8)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !401, file: !369, line: 78, baseType: !37, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !401, file: !369, line: 81, baseType: !37, size: 64, offset: 384)
!411 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !12, file: !12, line: 408, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!412 = !DISubroutineType(types: !413)
!413 = !{!35, !39, !37, !37, !37, !96}
!414 = !DISubprogram(name: "rpl_mbrtowc", scope: !415, file: !415, line: 717, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!415 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!416 = !DISubroutineType(types: !417)
!417 = !{!96, !140, !37, !96, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 13, size: 64, elements: !421)
!420 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !419, file: !420, line: 15, baseType: !39, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !419, file: !420, line: 20, baseType: !424, size: 32, offset: 32)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !420, line: 16, size: 32, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !424, file: !420, line: 18, baseType: !6, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !424, file: !420, line: 19, baseType: !428, size: 32)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 4)
!431 = !DISubprogram(name: "iswprint", scope: !432, file: !432, line: 120, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!432 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!433 = !DISubroutineType(types: !434)
!434 = !{!39, !6}
!435 = !DISubprogram(name: "mbsinit", scope: !436, file: !436, line: 292, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!436 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!437 = !DISubroutineType(types: !438)
!438 = !{!39, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!441 = !DISubprogram(name: "locale_charset", scope: !442, file: !442, line: 35, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!442 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!443 = !DISubroutineType(types: !444)
!444 = !{!37}
!445 = !DISubprogram(name: "c_strcasecmp", scope: !446, file: !446, line: 42, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!446 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!447 = !DISubroutineType(types: !448)
!448 = !{!39, !37, !37}
!449 = !{!366, !450, !454, !456, !458, !463, !470, !472}
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !368, file: !369, line: 101, type: !452, isLocal: false, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 320, elements: !258)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !368, file: !369, line: 1052, type: !401, isLocal: false, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !368, file: !369, line: 116, type: !401, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "slot0", scope: !368, file: !369, line: 842, type: !460, isLocal: true, isDefinition: true)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 256)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "slotvec", scope: !368, file: !369, line: 845, type: !465, isLocal: true, isDefinition: true)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !369, line: 834, size: 128, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !466, file: !369, line: 836, baseType: !94, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !466, file: !369, line: 837, baseType: !35, size: 64, offset: 64)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "nslots", scope: !368, file: !369, line: 843, type: !39, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "slotvec0", scope: !368, file: !369, line: 844, type: !466, isLocal: true, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 704, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 11)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !479, file: !480, line: 26, type: !482, isLocal: false, isDefinition: true)
!479 = distinct !DICompileUnit(language: DW_LANG_C99, file: !480, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, globals: !481, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = !{!477}
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 47)
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !487, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "lib/full-read.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!487 = !{!35, !185, !94}
!488 = distinct !DICompileUnit(language: DW_LANG_C99, file: !489, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !490, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/offtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !492, line: 85, baseType: !68)
!492 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !494, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !495, splitDebugInlining: false, nameTableKind: None)
!494 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!495 = !{!227}
!496 = distinct !DICompileUnit(language: DW_LANG_C99, file: !497, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !498, splitDebugInlining: false, nameTableKind: None)
!497 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!498 = !{!499}
!499 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !500, line: 40, baseType: !6, size: 32, elements: !501)
!500 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!501 = !{!502}
!502 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !505, retainedTypes: !509, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!505 = !{!506}
!506 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !504, line: 40, baseType: !6, size: 32, elements: !507)
!507 = !{!508}
!508 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!509 = !{!31, !510, !92}
!510 = !DISubprogram(name: "fputs_unlocked", scope: !42, file: !42, line: 662, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!511 = !DISubroutineType(types: !512)
!512 = !{!39, !37, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !514, file: !47, line: 51, baseType: !39, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !514, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !514, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !514, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !514, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !514, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !514, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !514, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !514, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !514, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !514, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !514, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !514, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !514, file: !47, line: 70, baseType: !513, size: 64, offset: 832)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !514, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !514, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !514, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !514, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !514, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !514, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !514, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !514, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !514, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !514, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !514, file: !47, line: 93, baseType: !513, size: 64, offset: 1344)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !514, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !514, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !514, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !514, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !547, retainedTypes: !560, splitDebugInlining: false, nameTableKind: None)
!546 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!547 = !{!548}
!548 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !549, file: !182, line: 186, baseType: !6, size: 32, elements: !558)
!549 = distinct !DISubprogram(name: "x2nrealloc", scope: !182, file: !182, line: 174, type: !550, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !553)
!550 = !DISubroutineType(types: !551)
!551 = !{!92, !92, !552, !94}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!553 = !{!554, !555, !556, !557}
!554 = !DILocalVariable(name: "p", arg: 1, scope: !549, file: !182, line: 174, type: !92)
!555 = !DILocalVariable(name: "pn", arg: 2, scope: !549, file: !182, line: 174, type: !552)
!556 = !DILocalVariable(name: "s", arg: 3, scope: !549, file: !182, line: 174, type: !94)
!557 = !DILocalVariable(name: "n", scope: !549, file: !182, line: 176, type: !94)
!558 = !{!559}
!559 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!560 = !{!94, !207, !181, !208, !35, !189, !92, !561, !564}
!561 = !DISubprogram(name: "xcalloc", scope: !182, file: !182, line: 57, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!562 = !DISubroutineType(types: !563)
!563 = !{!92, !96, !96}
!564 = !DISubprogram(name: "rpl_calloc", scope: !565, file: !565, line: 688, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!565 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !568, splitDebugInlining: false, nameTableKind: None)
!567 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!568 = !{!31, !123}
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !571, retainedTypes: !580, splitDebugInlining: false, nameTableKind: None)
!570 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!571 = !{!572}
!572 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !573, line: 25, baseType: !6, size: 32, elements: !574)
!573 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!574 = !{!575, !576, !577, !578, !579}
!575 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!576 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!577 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!578 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!579 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!580 = !{!581, !151, !123}
!581 = !DISubprogram(name: "xstrtoumax", scope: !573, file: !573, line: 48, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!582 = !DISubroutineType(types: !583)
!583 = !{!572, !37, !217, !39, !398, !37}
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !586, retainedTypes: !587, splitDebugInlining: false, nameTableKind: None)
!585 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!586 = !{!572, !376}
!587 = !{!39, !72}
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !590, splitDebugInlining: false, nameTableKind: None)
!589 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!590 = !{!92}
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !593, splitDebugInlining: false, nameTableKind: None)
!592 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!593 = !{!594, !94, !606}
!594 = !DISubprogram(name: "mbrtowc", scope: !436, file: !436, line: 296, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!595 = !DISubroutineType(types: !596)
!596 = !{!96, !140, !37, !96, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 13, size: 64, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !598, file: !420, line: 15, baseType: !39, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !598, file: !420, line: 20, baseType: !602, size: 32, offset: 32)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !420, line: 16, size: 32, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !602, file: !420, line: 18, baseType: !6, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !602, file: !420, line: 19, baseType: !428, size: 32)
!606 = !DISubprogram(name: "hard_locale", scope: !607, file: !607, line: 26, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!607 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!608 = !DISubroutineType(types: !609)
!609 = !{!223, !39}
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !612, splitDebugInlining: false, nameTableKind: None)
!611 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!612 = !{!613}
!613 = !DISubprogram(name: "rpl_fclose", scope: !614, file: !614, line: 672, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!614 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!615 = !DISubroutineType(types: !616)
!616 = !{!39, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !618, file: !47, line: 51, baseType: !39, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !618, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !618, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !618, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !618, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !618, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !618, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !618, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !618, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !618, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !618, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !618, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !618, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !618, file: !47, line: 70, baseType: !617, size: 64, offset: 832)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !618, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !618, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !618, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !618, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !618, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !618, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !618, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !618, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !618, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !618, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !618, file: !47, line: 93, baseType: !617, size: 64, offset: 1344)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !618, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !618, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !618, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !618, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !651, splitDebugInlining: false, nameTableKind: None)
!650 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!651 = !{!652}
!652 = !DISubprogram(name: "setlocale_null_r", scope: !653, file: !653, line: 64, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!653 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!654 = !DISubroutineType(types: !655)
!655 = !{!39, !39, !35, !96}
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !658, retainedTypes: !1045, splitDebugInlining: false, nameTableKind: None)
!657 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!658 = !{!659}
!659 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !660, line: 41, baseType: !6, size: 32, elements: !661)
!660 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044}
!662 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!663 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!664 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!665 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!666 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!667 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!668 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!669 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!670 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!671 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!672 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!673 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!674 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!675 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!676 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!677 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!678 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!679 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!680 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!681 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!682 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!683 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!684 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!685 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!686 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!687 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!688 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!689 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!690 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!691 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!692 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!693 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!694 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!695 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!696 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!697 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!698 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!699 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!700 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!701 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!702 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!703 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!704 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!705 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!706 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!707 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!708 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!709 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!710 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!711 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!770 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!773 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!774 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!775 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!776 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!777 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!778 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!779 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!780 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!781 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!782 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!783 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!784 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!857 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!930 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!931 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!932 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!933 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!934 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!935 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!936 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!937 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!938 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!939 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!940 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!941 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!942 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!943 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!944 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!946 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!947 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!948 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!949 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!950 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!951 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!977 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!978 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!979 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!980 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!981 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!986 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!987 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!988 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!989 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1045 = !{!1046, !92}
!1046 = !DISubprogram(name: "nl_langinfo", scope: !660, file: !660, line: 661, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!35, !39}
!1049 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1050, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !1051, splitDebugInlining: false, nameTableKind: None)
!1050 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1051 = !{!92, !106}
!1052 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1053, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !1054, splitDebugInlining: false, nameTableKind: None)
!1053 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1054 = !{!1055, !1090, !172, !1091}
!1055 = !DISubprogram(name: "fileno", scope: !42, file: !42, line: 786, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!39, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1059, file: !47, line: 51, baseType: !39, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1059, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1059, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1059, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1059, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1059, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1059, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1059, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1059, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1059, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1059, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1059, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1059, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1059, file: !47, line: 70, baseType: !1058, size: 64, offset: 832)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1059, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1059, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1059, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1059, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1059, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1059, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1059, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1059, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1059, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1059, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1059, file: !47, line: 93, baseType: !1058, size: 64, offset: 1344)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1059, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1059, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1059, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1059, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!1090 = !DISubprogram(name: "fclose", scope: !42, file: !42, line: 213, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!1091 = !DISubprogram(name: "rpl_fflush", scope: !614, file: !614, line: 718, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!1092 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1093, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !1094, splitDebugInlining: false, nameTableKind: None)
!1093 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1094 = !{!92, !1095, !1130}
!1095 = !DISubprogram(name: "fflush", scope: !42, file: !42, line: 218, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!39, !1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1099, file: !47, line: 51, baseType: !39, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1099, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1099, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1099, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1099, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1099, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1099, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1099, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1099, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1099, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1099, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1099, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1099, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1099, file: !47, line: 70, baseType: !1098, size: 64, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1099, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1099, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1099, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1099, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1099, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1099, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1099, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1099, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1099, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1099, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1099, file: !47, line: 93, baseType: !1098, size: 64, offset: 1344)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1099, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1099, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1099, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1099, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!1130 = !DISubprogram(name: "rpl_fseeko", scope: !614, file: !614, line: 1034, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!39, !1098, !70, !39}
!1133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1134, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !1135, splitDebugInlining: false, nameTableKind: None)
!1134 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1135 = !{!92, !1136, !172, !1171}
!1136 = !DISubprogram(name: "fileno", scope: !42, file: !42, line: 786, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!39, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1140, file: !47, line: 51, baseType: !39, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1140, file: !47, line: 54, baseType: !35, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1140, file: !47, line: 55, baseType: !35, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1140, file: !47, line: 56, baseType: !35, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1140, file: !47, line: 57, baseType: !35, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1140, file: !47, line: 58, baseType: !35, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1140, file: !47, line: 59, baseType: !35, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1140, file: !47, line: 60, baseType: !35, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1140, file: !47, line: 61, baseType: !35, size: 64, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1140, file: !47, line: 64, baseType: !35, size: 64, offset: 576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1140, file: !47, line: 65, baseType: !35, size: 64, offset: 640)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1140, file: !47, line: 66, baseType: !35, size: 64, offset: 704)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1140, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1140, file: !47, line: 70, baseType: !1139, size: 64, offset: 832)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1140, file: !47, line: 72, baseType: !39, size: 32, offset: 896)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1140, file: !47, line: 73, baseType: !39, size: 32, offset: 928)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1140, file: !47, line: 74, baseType: !68, size: 64, offset: 960)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1140, file: !47, line: 77, baseType: !72, size: 16, offset: 1024)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1140, file: !47, line: 78, baseType: !74, size: 8, offset: 1040)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1140, file: !47, line: 79, baseType: !76, size: 8, offset: 1048)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1140, file: !47, line: 81, baseType: !80, size: 64, offset: 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1140, file: !47, line: 89, baseType: !83, size: 64, offset: 1152)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1140, file: !47, line: 91, baseType: !85, size: 64, offset: 1216)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1140, file: !47, line: 92, baseType: !88, size: 64, offset: 1280)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1140, file: !47, line: 93, baseType: !1139, size: 64, offset: 1344)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1140, file: !47, line: 94, baseType: !92, size: 64, offset: 1408)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1140, file: !47, line: 95, baseType: !94, size: 64, offset: 1472)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1140, file: !47, line: 96, baseType: !39, size: 32, offset: 1536)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1140, file: !47, line: 98, baseType: !99, size: 160, offset: 1568)
!1171 = !DISubprogram(name: "fseeko", scope: !42, file: !42, line: 707, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !40)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!39, !1139, !70, !39}
!1174 = !{!"clang version 10.0.0 "}
!1175 = !{i32 7, !"Dwarf Version", i32 4}
!1176 = !{i32 2, !"Debug Info Version", i32 3}
!1177 = !{i32 1, !"wchar_size", i32 4}
!1178 = !{i32 7, !"PIC Level", i32 2}
!1179 = !{i32 7, !"PIE Level", i32 2}
!1180 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 104, type: !1181, scopeLine: 105, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !39}
!1183 = !{!1184}
!1184 = !DILocalVariable(name: "status", arg: 1, scope: !1180, file: !3, line: 104, type: !39)
!1185 = !DILocalVariable(name: "infomap", scope: !1186, file: !1187, line: 636, type: !1199)
!1186 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1187, file: !1187, line: 634, type: !104, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1188)
!1187 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1188 = !{!1189, !1185, !1190, !1191, !1198}
!1189 = !DILocalVariable(name: "program", arg: 1, scope: !1186, file: !1187, line: 634, type: !37)
!1190 = !DILocalVariable(name: "node", scope: !1186, file: !1187, line: 646, type: !37)
!1191 = !DILocalVariable(name: "map_prog", scope: !1186, file: !1187, line: 647, type: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1186, file: !1187, line: 636, size: 128, elements: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1194, file: !1187, line: 636, baseType: !37, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1194, file: !1187, line: 636, baseType: !37, size: 64, offset: 64)
!1198 = !DILocalVariable(name: "lc_messages", scope: !1186, file: !1187, line: 659, type: !37)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1193, size: 896, elements: !1200)
!1200 = !{!1201}
!1201 = !DISubrange(count: 7)
!1202 = !DILocation(line: 636, column: 67, scope: !1186, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 146, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 109, column: 5)
!1205 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 106, column: 7)
!1206 = !DILocation(line: 0, scope: !1180)
!1207 = !DILocation(line: 106, column: 14, scope: !1205)
!1208 = !DILocation(line: 106, column: 7, scope: !1180)
!1209 = !DILocation(line: 107, column: 5, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 107, column: 5)
!1211 = !{!1212, !1212, i64 0}
!1212 = !{!"any pointer", !1213, i64 0}
!1213 = !{!"omnipotent char", !1214, i64 0}
!1214 = !{!"Simple C/C++ TBAA"}
!1215 = !DILocation(line: 110, column: 7, scope: !1204)
!1216 = !DILocation(line: 114, column: 7, scope: !1204)
!1217 = !DILocation(line: 583, column: 3, scope: !1218, inlinedAt: !1219)
!1218 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1187, file: !1187, line: 581, type: !121, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!1219 = distinct !DILocation(line: 119, column: 7, scope: !1204)
!1220 = !DILocation(line: 590, column: 3, scope: !1221, inlinedAt: !1222)
!1221 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1187, file: !1187, line: 588, type: !121, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!1222 = distinct !DILocation(line: 120, column: 7, scope: !1204)
!1223 = !DILocation(line: 122, column: 7, scope: !1204)
!1224 = !DILocation(line: 130, column: 7, scope: !1204)
!1225 = !DILocation(line: 134, column: 7, scope: !1204)
!1226 = !DILocation(line: 137, column: 7, scope: !1204)
!1227 = !DILocation(line: 138, column: 7, scope: !1204)
!1228 = !DILocation(line: 139, column: 7, scope: !1204)
!1229 = !DILocation(line: 0, scope: !1186, inlinedAt: !1203)
!1230 = !DILocation(line: 636, column: 3, scope: !1186, inlinedAt: !1203)
!1231 = !DILocation(line: 647, column: 36, scope: !1186, inlinedAt: !1203)
!1232 = !DILocation(line: 649, column: 3, scope: !1186, inlinedAt: !1203)
!1233 = !DILocation(line: 649, column: 33, scope: !1186, inlinedAt: !1203)
!1234 = !DILocation(line: 650, column: 13, scope: !1186, inlinedAt: !1203)
!1235 = !DILocation(line: 649, column: 20, scope: !1186, inlinedAt: !1203)
!1236 = !{!1237, !1212, i64 0}
!1237 = !{!"infomap", !1212, i64 0, !1212, i64 8}
!1238 = !DILocation(line: 649, column: 10, scope: !1186, inlinedAt: !1203)
!1239 = !DILocation(line: 649, column: 28, scope: !1186, inlinedAt: !1203)
!1240 = distinct !{!1240, !1232, !1234}
!1241 = !DILocation(line: 652, column: 17, scope: !1242, inlinedAt: !1203)
!1242 = distinct !DILexicalBlock(scope: !1186, file: !1187, line: 652, column: 7)
!1243 = !{!1237, !1212, i64 8}
!1244 = !DILocation(line: 652, column: 7, scope: !1242, inlinedAt: !1203)
!1245 = !DILocation(line: 652, column: 7, scope: !1186, inlinedAt: !1203)
!1246 = !DILocation(line: 655, column: 3, scope: !1186, inlinedAt: !1203)
!1247 = !DILocation(line: 659, column: 29, scope: !1186, inlinedAt: !1203)
!1248 = !DILocation(line: 660, column: 7, scope: !1249, inlinedAt: !1203)
!1249 = distinct !DILexicalBlock(scope: !1186, file: !1187, line: 660, column: 7)
!1250 = !DILocation(line: 660, column: 19, scope: !1249, inlinedAt: !1203)
!1251 = !DILocation(line: 660, column: 22, scope: !1249, inlinedAt: !1203)
!1252 = !DILocation(line: 660, column: 7, scope: !1186, inlinedAt: !1203)
!1253 = !DILocation(line: 666, column: 7, scope: !1254, inlinedAt: !1203)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !1187, line: 661, column: 5)
!1255 = !DILocation(line: 668, column: 5, scope: !1254, inlinedAt: !1203)
!1256 = !DILocation(line: 669, column: 3, scope: !1186, inlinedAt: !1203)
!1257 = !DILocation(line: 671, column: 3, scope: !1186, inlinedAt: !1203)
!1258 = !DILocation(line: 673, column: 1, scope: !1186, inlinedAt: !1203)
!1259 = !DILocation(line: 148, column: 3, scope: !1180)
!1260 = !DILocalVariable(name: "st", scope: !1261, file: !3, line: 824, type: !1280)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 823, column: 15)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 822, column: 17)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 817, column: 11)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 816, column: 13)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 804, column: 5)
!1266 = distinct !DISubprogram(name: "head_lines", scope: !3, file: !3, line: 799, type: !1267, scopeLine: 800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1269)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!223, !37, !39, !227}
!1269 = !{!1270, !1271, !1272, !1273, !1277, !1278, !1279, !1260}
!1270 = !DILocalVariable(name: "filename", arg: 1, scope: !1266, file: !3, line: 799, type: !37)
!1271 = !DILocalVariable(name: "fd", arg: 2, scope: !1266, file: !3, line: 799, type: !39)
!1272 = !DILocalVariable(name: "lines_to_write", arg: 3, scope: !1266, file: !3, line: 799, type: !227)
!1273 = !DILocalVariable(name: "buffer", scope: !1266, file: !3, line: 801, type: !1274)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 65536, elements: !1275)
!1275 = !{!1276}
!1276 = !DISubrange(count: 8192)
!1277 = !DILocalVariable(name: "bytes_read", scope: !1265, file: !3, line: 805, type: !94)
!1278 = !DILocalVariable(name: "bytes_to_write", scope: !1265, file: !3, line: 806, type: !94)
!1279 = !DILocalVariable(name: "n_bytes_past_EOL", scope: !1263, file: !3, line: 818, type: !146)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1281, line: 46, size: 1152, elements: !1282)
!1281 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!1282 = !{!1283, !1285, !1287, !1289, !1291, !1293, !1295, !1296, !1297, !1298, !1300, !1302, !1310, !1311, !1312}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1280, file: !1281, line: 48, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !69, line: 145, baseType: !96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1280, file: !1281, line: 53, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !69, line: 148, baseType: !96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1280, file: !1281, line: 61, baseType: !1288, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !69, line: 151, baseType: !96)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1280, file: !1281, line: 62, baseType: !1290, size: 32, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !69, line: 150, baseType: !6)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1280, file: !1281, line: 64, baseType: !1292, size: 32, offset: 224)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !69, line: 146, baseType: !6)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1280, file: !1281, line: 65, baseType: !1294, size: 32, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !69, line: 147, baseType: !6)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1280, file: !1281, line: 67, baseType: !39, size: 32, offset: 288)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1280, file: !1281, line: 69, baseType: !1284, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1280, file: !1281, line: 74, baseType: !68, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1280, file: !1281, line: 78, baseType: !1299, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !69, line: 174, baseType: !70)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1280, file: !1281, line: 80, baseType: !1301, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !69, line: 179, baseType: !70)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1280, file: !1281, line: 91, baseType: !1303, size: 128, offset: 576)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1304, line: 10, size: 128, elements: !1305)
!1304 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1305 = !{!1306, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1303, file: !1304, line: 12, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !69, line: 160, baseType: !70)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1303, file: !1304, line: 16, baseType: !1309, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !69, line: 196, baseType: !70)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1280, file: !1281, line: 92, baseType: !1303, size: 128, offset: 704)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1280, file: !1281, line: 93, baseType: !1303, size: 128, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1280, file: !1281, line: 106, baseType: !1313, size: 192, offset: 960)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 192, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 3)
!1316 = !DILocation(line: 824, column: 29, scope: !1261, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 864, column: 12, scope: !1318, inlinedAt: !1332)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 863, column: 7)
!1319 = distinct !DISubprogram(name: "head", scope: !3, file: !3, line: 836, type: !1320, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!223, !37, !39, !227, !223, !223}
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1331}
!1323 = !DILocalVariable(name: "filename", arg: 1, scope: !1319, file: !3, line: 836, type: !37)
!1324 = !DILocalVariable(name: "fd", arg: 2, scope: !1319, file: !3, line: 836, type: !39)
!1325 = !DILocalVariable(name: "n_units", arg: 3, scope: !1319, file: !3, line: 836, type: !227)
!1326 = !DILocalVariable(name: "count_lines", arg: 4, scope: !1319, file: !3, line: 836, type: !223)
!1327 = !DILocalVariable(name: "elide_from_end", arg: 5, scope: !1319, file: !3, line: 837, type: !223)
!1328 = !DILocalVariable(name: "current_pos", scope: !1329, file: !3, line: 844, type: !146)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 843, column: 5)
!1330 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 842, column: 7)
!1331 = !DILocalVariable(name: "st", scope: !1329, file: !3, line: 845, type: !1280)
!1332 = distinct !DILocation(line: 894, column: 8, scope: !1333, inlinedAt: !1344)
!1333 = distinct !DISubprogram(name: "head_file", scope: !3, file: !3, line: 870, type: !1334, scopeLine: 872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!223, !37, !227, !223, !223}
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1337 = !DILocalVariable(name: "filename", arg: 1, scope: !1333, file: !3, line: 870, type: !37)
!1338 = !DILocalVariable(name: "n_units", arg: 2, scope: !1333, file: !3, line: 870, type: !227)
!1339 = !DILocalVariable(name: "count_lines", arg: 3, scope: !1333, file: !3, line: 870, type: !223)
!1340 = !DILocalVariable(name: "elide_from_end", arg: 4, scope: !1333, file: !3, line: 871, type: !223)
!1341 = !DILocalVariable(name: "fd", scope: !1333, file: !3, line: 873, type: !39)
!1342 = !DILocalVariable(name: "ok", scope: !1333, file: !3, line: 874, type: !223)
!1343 = !DILocalVariable(name: "is_stdin", scope: !1333, file: !3, line: 875, type: !223)
!1344 = distinct !DILocation(line: 1089, column: 11, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1088, column: 3)
!1346 = distinct !DILexicalBlock(scope: !214, file: !3, line: 1088, column: 3)
!1347 = !DILocalVariable(name: "b", scope: !1348, file: !3, line: 296, type: !1395)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 291, column: 5)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 290, column: 7)
!1350 = distinct !DISubprogram(name: "elide_tail_bytes_pipe", scope: !3, file: !3, line: 248, type: !1351, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!223, !37, !39, !227, !146}
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1364, !1365, !1366, !1367, !1347, !1368, !1372, !1373, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1390, !1393, !1394}
!1354 = !DILocalVariable(name: "filename", arg: 1, scope: !1350, file: !3, line: 248, type: !37)
!1355 = !DILocalVariable(name: "fd", arg: 2, scope: !1350, file: !3, line: 248, type: !39)
!1356 = !DILocalVariable(name: "n_elide_0", arg: 3, scope: !1350, file: !3, line: 248, type: !227)
!1357 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1350, file: !3, line: 249, type: !146)
!1358 = !DILocalVariable(name: "n_elide", scope: !1350, file: !3, line: 251, type: !94)
!1359 = !DILocalVariable(name: "desired_pos", scope: !1350, file: !3, line: 252, type: !227)
!1360 = !DILocalVariable(name: "ok", scope: !1350, file: !3, line: 253, type: !223)
!1361 = !DILocalVariable(name: "umax_buf", scope: !1362, file: !3, line: 274, type: !242)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 273, column: 5)
!1363 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 272, column: 7)
!1364 = !DILocalVariable(name: "first", scope: !1348, file: !3, line: 292, type: !223)
!1365 = !DILocalVariable(name: "eof", scope: !1348, file: !3, line: 293, type: !223)
!1366 = !DILocalVariable(name: "n_to_read", scope: !1348, file: !3, line: 294, type: !94)
!1367 = !DILocalVariable(name: "i", scope: !1348, file: !3, line: 295, type: !223)
!1368 = !DILocalVariable(name: "n_read", scope: !1369, file: !3, line: 302, type: !94)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 301, column: 9)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 300, column: 7)
!1371 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 300, column: 7)
!1372 = !DILocalVariable(name: "delta", scope: !1369, file: !3, line: 303, type: !94)
!1373 = !DILocalVariable(name: "eof", scope: !1374, file: !3, line: 353, type: !223)
!1374 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 349, column: 5)
!1375 = !DILocalVariable(name: "n_read", scope: !1374, file: !3, line: 354, type: !94)
!1376 = !DILocalVariable(name: "buffered_enough", scope: !1374, file: !3, line: 355, type: !223)
!1377 = !DILocalVariable(name: "i", scope: !1374, file: !3, line: 356, type: !94)
!1378 = !DILocalVariable(name: "i_next", scope: !1374, file: !3, line: 356, type: !94)
!1379 = !DILocalVariable(name: "b", scope: !1374, file: !3, line: 357, type: !217)
!1380 = !DILocalVariable(name: "rem", scope: !1374, file: !3, line: 359, type: !94)
!1381 = !DILocalVariable(name: "n_elide_round", scope: !1374, file: !3, line: 360, type: !94)
!1382 = !DILocalVariable(name: "n_bufs", scope: !1374, file: !3, line: 361, type: !94)
!1383 = !DILocalVariable(name: "n_alloc", scope: !1374, file: !3, line: 362, type: !94)
!1384 = !DILocalVariable(name: "n_array_alloc", scope: !1374, file: !3, line: 363, type: !94)
!1385 = !DILocalVariable(name: "n_bytes_left_in_b_i", scope: !1386, file: !3, line: 412, type: !94)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 411, column: 13)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 410, column: 15)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 409, column: 9)
!1389 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 408, column: 11)
!1390 = !DILocalVariable(name: "y", scope: !1391, file: !3, line: 438, type: !94)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 425, column: 13)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 424, column: 20)
!1393 = !DILocalVariable(name: "x", scope: !1391, file: !3, line: 439, type: !94)
!1394 = !DILabel(scope: !1374, name: "free_mem", file: !3, line: 445)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !246)
!1396 = !DILocation(line: 296, column: 13, scope: !1348, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 470, column: 12, scope: !1398, inlinedAt: !1415)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 469, column: 7)
!1399 = distinct !DISubprogram(name: "elide_tail_bytes_file", scope: !3, file: !3, line: 465, type: !1400, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1404)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!223, !37, !39, !227, !1402, !146}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1410, !1411, !1413, !1414}
!1405 = !DILocalVariable(name: "filename", arg: 1, scope: !1399, file: !3, line: 465, type: !37)
!1406 = !DILocalVariable(name: "fd", arg: 2, scope: !1399, file: !3, line: 465, type: !39)
!1407 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1399, file: !3, line: 465, type: !227)
!1408 = !DILocalVariable(name: "st", arg: 4, scope: !1399, file: !3, line: 466, type: !1402)
!1409 = !DILocalVariable(name: "current_pos", arg: 5, scope: !1399, file: !3, line: 466, type: !146)
!1410 = !DILocalVariable(name: "size", scope: !1399, file: !3, line: 468, type: !146)
!1411 = !DILocalVariable(name: "diff", scope: !1412, file: !3, line: 475, type: !146)
!1412 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 472, column: 5)
!1413 = !DILocalVariable(name: "bytes_remaining", scope: !1412, file: !3, line: 476, type: !146)
!1414 = !DILocalVariable(name: "err", scope: !1412, file: !3, line: 481, type: !25)
!1415 = distinct !DILocation(line: 861, column: 16, scope: !1416, inlinedAt: !1332)
!1416 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 858, column: 11)
!1417 = !DILocalVariable(name: "buffer", scope: !1418, file: !3, line: 651, type: !1274)
!1418 = distinct !DISubprogram(name: "elide_tail_lines_seekable", scope: !3, file: !3, line: 647, type: !1419, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!223, !37, !39, !227, !146, !146}
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1417, !1427, !1428, !1429, !1431, !1433, !1437}
!1422 = !DILocalVariable(name: "pretty_filename", arg: 1, scope: !1418, file: !3, line: 647, type: !37)
!1423 = !DILocalVariable(name: "fd", arg: 2, scope: !1418, file: !3, line: 647, type: !39)
!1424 = !DILocalVariable(name: "n_lines", arg: 3, scope: !1418, file: !3, line: 648, type: !227)
!1425 = !DILocalVariable(name: "start_pos", arg: 4, scope: !1418, file: !3, line: 649, type: !146)
!1426 = !DILocalVariable(name: "size", arg: 5, scope: !1418, file: !3, line: 649, type: !146)
!1427 = !DILocalVariable(name: "bytes_read", scope: !1418, file: !3, line: 652, type: !94)
!1428 = !DILocalVariable(name: "pos", scope: !1418, file: !3, line: 653, type: !146)
!1429 = !DILocalVariable(name: "all_lines", scope: !1418, file: !3, line: 673, type: !1430)
!1430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!1431 = !DILocalVariable(name: "n", scope: !1432, file: !3, line: 683, type: !94)
!1432 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 680, column: 5)
!1433 = !DILocalVariable(name: "nl", scope: !1434, file: !3, line: 690, type: !37)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 689, column: 13)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 686, column: 15)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 685, column: 9)
!1437 = !DILocalVariable(name: "err", scope: !1438, file: !3, line: 703, type: !25)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 702, column: 17)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 701, column: 19)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 697, column: 13)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 696, column: 15)
!1442 = !DILocation(line: 651, column: 8, scope: !1418, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 768, column: 18, scope: !1444, inlinedAt: !1454)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 761, column: 5)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 758, column: 7)
!1446 = distinct !DISubprogram(name: "elide_tail_lines_file", scope: !3, file: !3, line: 754, type: !1400, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453}
!1448 = !DILocalVariable(name: "filename", arg: 1, scope: !1446, file: !3, line: 754, type: !37)
!1449 = !DILocalVariable(name: "fd", arg: 2, scope: !1446, file: !3, line: 754, type: !39)
!1450 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1446, file: !3, line: 754, type: !227)
!1451 = !DILocalVariable(name: "st", arg: 4, scope: !1446, file: !3, line: 755, type: !1402)
!1452 = !DILocalVariable(name: "current_pos", arg: 5, scope: !1446, file: !3, line: 755, type: !146)
!1453 = !DILocalVariable(name: "size", scope: !1446, file: !3, line: 757, type: !146)
!1454 = distinct !DILocation(line: 859, column: 16, scope: !1416, inlinedAt: !1332)
!1455 = !DILocation(line: 801, column: 8, scope: !1266, inlinedAt: !1317)
!1456 = !DILocalVariable(name: "buf", scope: !1457, file: !3, line: 196, type: !1274)
!1457 = distinct !DISubprogram(name: "copy_fd", scope: !3, file: !3, line: 194, type: !1458, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!25, !39, !227}
!1460 = !{!1461, !1462, !1456, !1463, !1465, !1467}
!1461 = !DILocalVariable(name: "src_fd", arg: 1, scope: !1457, file: !3, line: 194, type: !39)
!1462 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !1457, file: !3, line: 194, type: !227)
!1463 = !DILocalVariable(name: "buf_size", scope: !1457, file: !3, line: 197, type: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1465 = !DILocalVariable(name: "n_to_read", scope: !1466, file: !3, line: 202, type: !94)
!1466 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 201, column: 5)
!1467 = !DILocalVariable(name: "n_read", scope: !1466, file: !3, line: 203, type: !94)
!1468 = !DILocation(line: 196, column: 8, scope: !1457, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 481, column: 33, scope: !1412, inlinedAt: !1415)
!1470 = !DILocation(line: 196, column: 8, scope: !1457, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 707, column: 25, scope: !1438, inlinedAt: !1443)
!1472 = !DILocalVariable(name: "buffer", scope: !1473, file: !3, line: 776, type: !1274)
!1473 = distinct !DISubprogram(name: "head_bytes", scope: !3, file: !3, line: 774, type: !1267, scopeLine: 775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1474)
!1474 = !{!1475, !1476, !1477, !1472, !1478, !1479}
!1475 = !DILocalVariable(name: "filename", arg: 1, scope: !1473, file: !3, line: 774, type: !37)
!1476 = !DILocalVariable(name: "fd", arg: 2, scope: !1473, file: !3, line: 774, type: !39)
!1477 = !DILocalVariable(name: "bytes_to_write", arg: 3, scope: !1473, file: !3, line: 774, type: !227)
!1478 = !DILocalVariable(name: "bytes_to_read", scope: !1473, file: !3, line: 777, type: !94)
!1479 = !DILocalVariable(name: "bytes_read", scope: !1480, file: !3, line: 781, type: !94)
!1480 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 780, column: 5)
!1481 = !DILocation(line: 776, column: 8, scope: !1473, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 866, column: 12, scope: !1318, inlinedAt: !1332)
!1483 = !DILocation(line: 845, column: 19, scope: !1329, inlinedAt: !1332)
!1484 = !DILocation(line: 0, scope: !214)
!1485 = !DILocation(line: 942, column: 21, scope: !214)
!1486 = !DILocation(line: 942, column: 3, scope: !214)
!1487 = !DILocation(line: 943, column: 3, scope: !214)
!1488 = !DILocation(line: 944, column: 3, scope: !214)
!1489 = !DILocation(line: 945, column: 3, scope: !214)
!1490 = !DILocation(line: 947, column: 3, scope: !214)
!1491 = !DILocation(line: 949, column: 19, scope: !214)
!1492 = !DILocation(line: 951, column: 17, scope: !214)
!1493 = !DILocation(line: 953, column: 12, scope: !214)
!1494 = !DILocation(line: 955, column: 9, scope: !235)
!1495 = !DILocation(line: 955, column: 16, scope: !235)
!1496 = !DILocation(line: 955, column: 19, scope: !235)
!1497 = !{!1213, !1213, i64 0}
!1498 = !DILocation(line: 955, column: 30, scope: !235)
!1499 = !DILocation(line: 955, column: 37, scope: !235)
!1500 = !DILocation(line: 955, column: 40, scope: !235)
!1501 = !DILocation(line: 955, column: 7, scope: !214)
!1502 = !DILocation(line: 0, scope: !234)
!1503 = !DILocation(line: 964, column: 10, scope: !234)
!1504 = !DILocation(line: 965, column: 14, scope: !234)
!1505 = distinct !{!1505, !1506, !1507}
!1506 = !DILocation(line: 964, column: 7, scope: !234)
!1507 = !DILocation(line: 965, column: 26, scope: !234)
!1508 = !DILocation(line: 971, column: 7, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !234, file: !3, line: 971, column: 7)
!1510 = !DILocation(line: 1011, column: 21, scope: !234)
!1511 = !DILocalVariable(name: "count_lines", arg: 1, scope: !1512, file: !3, line: 910, type: !223)
!1512 = distinct !DISubprogram(name: "string_to_integer", scope: !3, file: !3, line: 910, type: !1513, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!227, !223, !37}
!1515 = !{!1511, !1516}
!1516 = !DILocalVariable(name: "n_string", arg: 2, scope: !1512, file: !3, line: 910, type: !37)
!1517 = !DILocation(line: 0, scope: !1512, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 1015, column: 17, scope: !234)
!1519 = !DILocation(line: 913, column: 22, scope: !1512, inlinedAt: !1518)
!1520 = !DILocation(line: 973, column: 19, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 972, column: 9)
!1522 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 971, column: 7)
!1523 = !DILocation(line: 973, column: 11, scope: !1521)
!1524 = !DILocation(line: 985, column: 15, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 974, column: 13)
!1526 = !DILocation(line: 989, column: 15, scope: !1525)
!1527 = !DILocation(line: 993, column: 15, scope: !1525)
!1528 = !DILocation(line: 997, column: 15, scope: !1525)
!1529 = !DILocation(line: 1000, column: 24, scope: !1525)
!1530 = !DILocation(line: 1001, column: 15, scope: !1525)
!1531 = !DILocation(line: 1004, column: 28, scope: !1525)
!1532 = !DILocation(line: 1004, column: 64, scope: !1525)
!1533 = !DILocation(line: 1004, column: 15, scope: !1525)
!1534 = !DILocation(line: 1005, column: 15, scope: !1525)
!1535 = !DILocation(line: 971, column: 19, scope: !1522)
!1536 = !DILocation(line: 971, column: 14, scope: !1522)
!1537 = distinct !{!1537, !1508, !1538}
!1538 = !DILocation(line: 1007, column: 9, scope: !1509)
!1539 = !DILocation(line: 1012, column: 11, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !234, file: !3, line: 1012, column: 11)
!1541 = !DILocation(line: 1012, column: 11, scope: !234)
!1542 = !DILocation(line: 1013, column: 11, scope: !1540)
!1543 = !DILocation(line: 1013, column: 27, scope: !1540)
!1544 = !DILocation(line: 1013, column: 9, scope: !1540)
!1545 = !DILocation(line: 1015, column: 36, scope: !234)
!1546 = !DILocation(line: 912, column: 10, scope: !1512, inlinedAt: !1518)
!1547 = !DILocation(line: 1018, column: 17, scope: !234)
!1548 = !DILocation(line: 1018, column: 15, scope: !234)
!1549 = !DILocation(line: 1020, column: 11, scope: !234)
!1550 = !DILocation(line: 1021, column: 5, scope: !234)
!1551 = !DILocation(line: 920, column: 20, scope: !214)
!1552 = !DILocation(line: 930, column: 8, scope: !214)
!1553 = !DILocation(line: 1023, column: 3, scope: !214)
!1554 = !DILocation(line: 1023, column: 15, scope: !214)
!1555 = distinct !{!1555, !1553, !1556}
!1556 = !DILocation(line: 1069, column: 5, scope: !214)
!1557 = !DILocation(line: 1029, column: 30, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 1027, column: 9)
!1559 = distinct !DILexicalBlock(scope: !214, file: !3, line: 1025, column: 5)
!1560 = !DILocation(line: 1030, column: 11, scope: !1558)
!1561 = !DILocation(line: 1034, column: 30, scope: !1558)
!1562 = !DILocation(line: 1034, column: 29, scope: !1558)
!1563 = !DILocation(line: 1034, column: 37, scope: !1558)
!1564 = !DILocation(line: 1035, column: 15, scope: !1558)
!1565 = !DILocation(line: 1036, column: 13, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1035, column: 15)
!1567 = !DILocation(line: 1037, column: 53, scope: !1558)
!1568 = !DILocation(line: 0, scope: !1512, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 1037, column: 21, scope: !1558)
!1570 = !DILocation(line: 914, column: 36, scope: !1512, inlinedAt: !1569)
!1571 = !DILocation(line: 912, column: 10, scope: !1512, inlinedAt: !1569)
!1572 = !DILocation(line: 1038, column: 11, scope: !1558)
!1573 = !DILocation(line: 1042, column: 30, scope: !1558)
!1574 = !DILocation(line: 1042, column: 29, scope: !1558)
!1575 = !DILocation(line: 1042, column: 37, scope: !1558)
!1576 = !DILocation(line: 1043, column: 15, scope: !1558)
!1577 = !DILocation(line: 1044, column: 13, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1043, column: 15)
!1579 = !DILocation(line: 1045, column: 53, scope: !1558)
!1580 = !DILocation(line: 0, scope: !1512, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 1045, column: 21, scope: !1558)
!1582 = !DILocation(line: 913, column: 36, scope: !1512, inlinedAt: !1581)
!1583 = !DILocation(line: 912, column: 10, scope: !1512, inlinedAt: !1581)
!1584 = !DILocation(line: 1046, column: 11, scope: !1558)
!1585 = !DILocation(line: 0, scope: !1558)
!1586 = !DILocation(line: 1054, column: 11, scope: !1558)
!1587 = !DILocation(line: 1057, column: 20, scope: !1558)
!1588 = !DILocation(line: 1058, column: 11, scope: !1558)
!1589 = !DILocation(line: 1060, column: 9, scope: !1558)
!1590 = !DILocation(line: 1062, column: 9, scope: !1558)
!1591 = !DILocation(line: 1065, column: 15, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1065, column: 15)
!1593 = !DILocation(line: 1065, column: 15, scope: !1558)
!1594 = !DILocation(line: 1066, column: 26, scope: !1592)
!1595 = !DILocation(line: 1066, column: 13, scope: !1592)
!1596 = !DILocation(line: 1067, column: 11, scope: !1558)
!1597 = !DILocation(line: 1072, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !214, file: !3, line: 1071, column: 7)
!1599 = !DILocation(line: 1072, column: 44, scope: !1598)
!1600 = !{!1601, !1601, i64 0}
!1601 = !{!"int", !1213, i64 0}
!1602 = !DILocation(line: 1072, column: 58, scope: !1598)
!1603 = !DILocation(line: 1072, column: 51, scope: !1598)
!1604 = !DILocation(line: 1071, column: 7, scope: !214)
!1605 = !DILocation(line: 1073, column: 19, scope: !1598)
!1606 = !DILocation(line: 1073, column: 5, scope: !1598)
!1607 = !DILocation(line: 1075, column: 10, scope: !241)
!1608 = !DILocation(line: 1075, column: 22, scope: !241)
!1609 = !DILocation(line: 1075, column: 25, scope: !241)
!1610 = !DILocation(line: 1075, column: 53, scope: !241)
!1611 = !DILocation(line: 1075, column: 40, scope: !241)
!1612 = !DILocation(line: 1077, column: 7, scope: !240)
!1613 = !DILocation(line: 1077, column: 12, scope: !240)
!1614 = !DILocation(line: 1078, column: 7, scope: !240)
!1615 = !DILocation(line: 1082, column: 16, scope: !214)
!1616 = !DILocation(line: 1082, column: 23, scope: !214)
!1617 = !DILocation(line: 1088, column: 15, scope: !1345)
!1618 = !DILocation(line: 1088, column: 3, scope: !1346)
!1619 = !DILocation(line: 0, scope: !1345)
!1620 = !DILocation(line: 0, scope: !1329, inlinedAt: !1332)
!1621 = !DILocation(line: 0, scope: !1622, inlinedAt: !1627)
!1622 = distinct !DISubprogram(name: "usable_st_size", scope: !1187, file: !1187, line: 705, type: !1623, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1625)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!223, !1402}
!1625 = !{!1626}
!1626 = !DILocalVariable(name: "sb", arg: 1, scope: !1622, file: !1187, line: 705, type: !1402)
!1627 = distinct !DILocation(line: 852, column: 35, scope: !1628, inlinedAt: !1332)
!1628 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 852, column: 11)
!1629 = !DILocation(line: 0, scope: !1416, inlinedAt: !1332)
!1630 = !DILocation(line: 0, scope: !1398, inlinedAt: !1415)
!1631 = !DILocation(line: 0, scope: !1457, inlinedAt: !1469)
!1632 = !DILocation(line: 0, scope: !1363, inlinedAt: !1397)
!1633 = !DILocation(line: 0, scope: !1349, inlinedAt: !1397)
!1634 = !DILocation(line: 0, scope: !1374, inlinedAt: !1397)
!1635 = !DILocation(line: 0, scope: !1636, inlinedAt: !1397)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 373, column: 24)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 371, column: 19)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 369, column: 13)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 368, column: 15)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 367, column: 9)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 366, column: 7)
!1642 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 366, column: 7)
!1643 = !DILocation(line: 0, scope: !1637, inlinedAt: !1397)
!1644 = !DILocation(line: 0, scope: !1389, inlinedAt: !1397)
!1645 = !DILocation(line: 0, scope: !1348, inlinedAt: !1397)
!1646 = !DILocation(line: 0, scope: !1647, inlinedAt: !1654)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !182, line: 101, column: 7)
!1648 = distinct !DISubprogram(name: "xnmalloc", scope: !182, file: !182, line: 99, type: !1649, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1651)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!92, !94, !94}
!1651 = !{!1652, !1653}
!1652 = !DILocalVariable(name: "n", arg: 1, scope: !1648, file: !182, line: 99, type: !94)
!1653 = !DILocalVariable(name: "s", arg: 2, scope: !1648, file: !182, line: 99, type: !94)
!1654 = distinct !DILocation(line: 297, column: 14, scope: !1348, inlinedAt: !1397)
!1655 = !DILocation(line: 0, scope: !1648, inlinedAt: !1654)
!1656 = !DILocation(line: 0, scope: !1418, inlinedAt: !1443)
!1657 = !DILocation(line: 0, scope: !1434, inlinedAt: !1443)
!1658 = !DILocation(line: 0, scope: !1659, inlinedAt: !1692)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 529, column: 11)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 524, column: 5)
!1661 = distinct !DISubprogram(name: "elide_tail_lines_pipe", scope: !3, file: !3, line: 498, type: !1351, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1678, !1679, !1680, !1681, !1682, !1683, !1685, !1686, !1689, !1690, !1691}
!1663 = !DILocalVariable(name: "filename", arg: 1, scope: !1661, file: !3, line: 498, type: !37)
!1664 = !DILocalVariable(name: "fd", arg: 2, scope: !1661, file: !3, line: 498, type: !39)
!1665 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1661, file: !3, line: 498, type: !227)
!1666 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1661, file: !3, line: 499, type: !146)
!1667 = !DILocalVariable(name: "desired_pos", scope: !1661, file: !3, line: 508, type: !227)
!1668 = !DILocalVariable(name: "first", scope: !1661, file: !3, line: 510, type: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBUFFER", scope: !1661, file: !3, line: 509, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", scope: !1661, file: !3, line: 501, size: 65728, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1671, file: !3, line: 503, baseType: !1274, size: 65536)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !1671, file: !3, line: 504, baseType: !94, size: 64, offset: 65536)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !1671, file: !3, line: 505, baseType: !94, size: 64, offset: 65600)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1671, file: !3, line: 506, baseType: !1677, size: 64, offset: 65664)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1678 = !DILocalVariable(name: "last", scope: !1661, file: !3, line: 510, type: !1669)
!1679 = !DILocalVariable(name: "tmp", scope: !1661, file: !3, line: 510, type: !1669)
!1680 = !DILocalVariable(name: "total_lines", scope: !1661, file: !3, line: 511, type: !94)
!1681 = !DILocalVariable(name: "ok", scope: !1661, file: !3, line: 512, type: !223)
!1682 = !DILocalVariable(name: "n_read", scope: !1661, file: !3, line: 513, type: !94)
!1683 = !DILocalVariable(name: "buffer_end", scope: !1684, file: !3, line: 542, type: !37)
!1684 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 541, column: 7)
!1685 = !DILocalVariable(name: "p", scope: !1684, file: !3, line: 543, type: !37)
!1686 = !DILocalVariable(name: "n", scope: !1687, file: !3, line: 609, type: !94)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 608, column: 5)
!1688 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 607, column: 7)
!1689 = !DILocalVariable(name: "buffer_end", scope: !1687, file: !3, line: 610, type: !37)
!1690 = !DILocalVariable(name: "p", scope: !1687, file: !3, line: 611, type: !37)
!1691 = !DILabel(scope: !1661, name: "free_lbuffers", file: !3, line: 622)
!1692 = distinct !DILocation(line: 759, column: 12, scope: !1445, inlinedAt: !1454)
!1693 = !DILocation(line: 0, scope: !1261, inlinedAt: !1317)
!1694 = !DILocation(line: 0, scope: !1695, inlinedAt: !1317)
!1695 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 825, column: 21)
!1696 = !DILocation(line: 0, scope: !1333, inlinedAt: !1344)
!1697 = !DILocation(line: 875, column: 19, scope: !1333, inlinedAt: !1344)
!1698 = !DILocation(line: 877, column: 7, scope: !1333, inlinedAt: !1344)
!1699 = !DILocation(line: 879, column: 23, scope: !1700, inlinedAt: !1344)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 878, column: 5)
!1701 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 877, column: 7)
!1702 = !DILocation(line: 881, column: 18, scope: !1700, inlinedAt: !1344)
!1703 = !DILocation(line: 883, column: 5, scope: !1700, inlinedAt: !1344)
!1704 = !DILocation(line: 886, column: 12, scope: !1705, inlinedAt: !1344)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 885, column: 5)
!1706 = !DILocation(line: 887, column: 14, scope: !1707, inlinedAt: !1344)
!1707 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 887, column: 11)
!1708 = !DILocation(line: 887, column: 11, scope: !1705, inlinedAt: !1344)
!1709 = !DILocation(line: 889, column: 21, scope: !1710, inlinedAt: !1344)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 888, column: 9)
!1711 = !DILocation(line: 889, column: 28, scope: !1710, inlinedAt: !1344)
!1712 = !DILocation(line: 889, column: 61, scope: !1710, inlinedAt: !1344)
!1713 = !DILocation(line: 889, column: 11, scope: !1710, inlinedAt: !1344)
!1714 = !DILocation(line: 890, column: 11, scope: !1710, inlinedAt: !1344)
!1715 = !DILocation(line: 0, scope: !1701, inlinedAt: !1344)
!1716 = !DILocation(line: 0, scope: !1319, inlinedAt: !1332)
!1717 = !DILocation(line: 839, column: 7, scope: !1718, inlinedAt: !1332)
!1718 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 839, column: 7)
!1719 = !DILocation(line: 839, column: 7, scope: !1319, inlinedAt: !1332)
!1720 = !DILocation(line: 0, scope: !262, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 840, column: 5, scope: !1718, inlinedAt: !1332)
!1722 = !DILocation(line: 172, column: 3, scope: !262, inlinedAt: !1721)
!1723 = !DILocation(line: 173, column: 14, scope: !262, inlinedAt: !1721)
!1724 = !DILocation(line: 840, column: 5, scope: !1718, inlinedAt: !1332)
!1725 = !DILocation(line: 842, column: 7, scope: !1319, inlinedAt: !1332)
!1726 = !DILocation(line: 845, column: 7, scope: !1329, inlinedAt: !1332)
!1727 = !DILocalVariable(name: "__fd", arg: 1, scope: !1728, file: !1729, line: 467, type: !39)
!1728 = distinct !DISubprogram(name: "fstat", scope: !1729, file: !1729, line: 467, type: !1730, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!1729 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!39, !39, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1733 = !{!1727, !1734}
!1734 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1728, file: !1729, line: 467, type: !1732)
!1735 = !DILocation(line: 0, scope: !1728, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 846, column: 11, scope: !1737, inlinedAt: !1332)
!1737 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 846, column: 11)
!1738 = !DILocation(line: 469, column: 10, scope: !1728, inlinedAt: !1736)
!1739 = !DILocation(line: 846, column: 27, scope: !1737, inlinedAt: !1332)
!1740 = !DILocation(line: 846, column: 11, scope: !1329, inlinedAt: !1332)
!1741 = !DILocation(line: 848, column: 21, scope: !1742, inlinedAt: !1332)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 847, column: 9)
!1743 = !DILocation(line: 848, column: 28, scope: !1742, inlinedAt: !1332)
!1744 = !DILocation(line: 849, column: 18, scope: !1742, inlinedAt: !1332)
!1745 = !DILocation(line: 848, column: 11, scope: !1742, inlinedAt: !1332)
!1746 = !DILocation(line: 850, column: 11, scope: !1742, inlinedAt: !1332)
!1747 = !DILocation(line: 852, column: 13, scope: !1628, inlinedAt: !1332)
!1748 = !DILocation(line: 852, column: 32, scope: !1628, inlinedAt: !1332)
!1749 = !DILocation(line: 707, column: 11, scope: !1622, inlinedAt: !1627)
!1750 = !{!1751, !1601, i64 24}
!1751 = !{!"stat", !1752, i64 0, !1752, i64 8, !1752, i64 16, !1601, i64 24, !1601, i64 28, !1601, i64 32, !1601, i64 36, !1752, i64 40, !1752, i64 48, !1752, i64 56, !1752, i64 64, !1753, i64 72, !1753, i64 88, !1753, i64 104, !1213, i64 120}
!1752 = !{!"long", !1213, i64 0}
!1753 = !{!"timespec", !1752, i64 0, !1752, i64 8}
!1754 = !DILocation(line: 707, column: 33, scope: !1622, inlinedAt: !1627)
!1755 = !DILocation(line: 854, column: 25, scope: !1756, inlinedAt: !1332)
!1756 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 853, column: 9)
!1757 = !DILocation(line: 855, column: 27, scope: !1758, inlinedAt: !1332)
!1758 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 855, column: 15)
!1759 = !DILocation(line: 855, column: 15, scope: !1756, inlinedAt: !1332)
!1760 = !{!1751, !1752, i64 48}
!1761 = !DILocation(line: 858, column: 11, scope: !1329, inlinedAt: !1332)
!1762 = !DILocation(line: 0, scope: !1446, inlinedAt: !1454)
!1763 = !DILocation(line: 758, column: 26, scope: !1445, inlinedAt: !1454)
!1764 = !DILocation(line: 758, column: 56, scope: !1445, inlinedAt: !1454)
!1765 = !{!1751, !1752, i64 56}
!1766 = !DILocation(line: 758, column: 53, scope: !1445, inlinedAt: !1454)
!1767 = !DILocation(line: 758, column: 7, scope: !1446, inlinedAt: !1454)
!1768 = !DILocation(line: 0, scope: !1661, inlinedAt: !1692)
!1769 = !DILocation(line: 515, column: 18, scope: !1661, inlinedAt: !1692)
!1770 = !DILocation(line: 516, column: 10, scope: !1661, inlinedAt: !1692)
!1771 = !DILocation(line: 516, column: 17, scope: !1661, inlinedAt: !1692)
!1772 = !DILocation(line: 518, column: 9, scope: !1661, inlinedAt: !1692)
!1773 = !DILocation(line: 525, column: 16, scope: !1660, inlinedAt: !1692)
!1774 = !DILocation(line: 526, column: 23, scope: !1775, inlinedAt: !1692)
!1775 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 526, column: 11)
!1776 = !DILocation(line: 523, column: 3, scope: !1661, inlinedAt: !1692)
!1777 = !DILocation(line: 536, column: 12, scope: !1660, inlinedAt: !1692)
!1778 = !DILocation(line: 536, column: 19, scope: !1660, inlinedAt: !1692)
!1779 = !{!1780, !1752, i64 8192}
!1780 = !{!"linebuffer", !1213, i64 0, !1752, i64 8192, !1752, i64 8200, !1212, i64 8208}
!1781 = !DILocation(line: 537, column: 12, scope: !1660, inlinedAt: !1692)
!1782 = !DILocation(line: 542, column: 46, scope: !1684, inlinedAt: !1692)
!1783 = !DILocation(line: 0, scope: !1684, inlinedAt: !1692)
!1784 = !DILocation(line: 544, column: 32, scope: !1684, inlinedAt: !1692)
!1785 = !DILocation(line: 538, column: 17, scope: !1660, inlinedAt: !1692)
!1786 = !DILocation(line: 544, column: 53, scope: !1684, inlinedAt: !1692)
!1787 = !DILocation(line: 544, column: 21, scope: !1684, inlinedAt: !1692)
!1788 = !DILocation(line: 544, column: 9, scope: !1684, inlinedAt: !1692)
!1789 = !DILocation(line: 531, column: 23, scope: !1790, inlinedAt: !1692)
!1790 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 530, column: 9)
!1791 = !DILocation(line: 532, column: 11, scope: !1790, inlinedAt: !1692)
!1792 = distinct !{!1792, !1776, !1793}
!1793 = !DILocation(line: 580, column: 5, scope: !1661, inlinedAt: !1692)
!1794 = !DILocation(line: 547, column: 13, scope: !1795, inlinedAt: !1692)
!1795 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 545, column: 11)
!1796 = !DILocation(line: 546, column: 13, scope: !1795, inlinedAt: !1692)
!1797 = !{!1780, !1752, i64 8200}
!1798 = distinct !{!1798, !1788, !1799}
!1799 = !DILocation(line: 548, column: 11, scope: !1684, inlinedAt: !1692)
!1800 = !DILocation(line: 550, column: 27, scope: !1660, inlinedAt: !1692)
!1801 = !DILocation(line: 550, column: 19, scope: !1660, inlinedAt: !1692)
!1802 = !DILocation(line: 555, column: 31, scope: !1803, inlinedAt: !1692)
!1803 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 555, column: 11)
!1804 = !DILocation(line: 555, column: 23, scope: !1803, inlinedAt: !1692)
!1805 = !DILocation(line: 555, column: 38, scope: !1803, inlinedAt: !1692)
!1806 = !DILocation(line: 555, column: 11, scope: !1660, inlinedAt: !1692)
!1807 = !DILocation(line: 557, column: 20, scope: !1808, inlinedAt: !1692)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 556, column: 9)
!1809 = !DILocalVariable(name: "__dest", arg: 1, scope: !1810, file: !1811, line: 31, type: !1814)
!1810 = distinct !DISubprogram(name: "memcpy", scope: !1811, file: !1811, line: 31, type: !1812, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1816)
!1811 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!92, !1814, !1815, !94}
!1814 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !92)
!1815 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !195)
!1816 = !{!1809, !1817, !1818}
!1817 = !DILocalVariable(name: "__src", arg: 2, scope: !1810, file: !1811, line: 31, type: !1815)
!1818 = !DILocalVariable(name: "__len", arg: 3, scope: !1810, file: !1811, line: 31, type: !94)
!1819 = !DILocation(line: 0, scope: !1810, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 557, column: 11, scope: !1808, inlinedAt: !1692)
!1821 = !DILocation(line: 34, column: 10, scope: !1810, inlinedAt: !1820)
!1822 = !DILocation(line: 558, column: 32, scope: !1808, inlinedAt: !1692)
!1823 = !{!1752, !1752, i64 0}
!1824 = !DILocation(line: 558, column: 24, scope: !1808, inlinedAt: !1692)
!1825 = !DILocation(line: 560, column: 9, scope: !1808, inlinedAt: !1692)
!1826 = !DILocation(line: 568, column: 24, scope: !1827, inlinedAt: !1692)
!1827 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 562, column: 9)
!1828 = !DILocation(line: 568, column: 29, scope: !1827, inlinedAt: !1692)
!1829 = !{!1780, !1212, i64 8208}
!1830 = !DILocation(line: 569, column: 46, scope: !1831, inlinedAt: !1692)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 569, column: 15)
!1832 = !DILocation(line: 569, column: 37, scope: !1831, inlinedAt: !1692)
!1833 = !DILocation(line: 569, column: 23, scope: !1831, inlinedAt: !1692)
!1834 = !DILocation(line: 569, column: 15, scope: !1827, inlinedAt: !1692)
!1835 = !DILocation(line: 571, column: 37, scope: !1836, inlinedAt: !1692)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 570, column: 13)
!1837 = !DILocation(line: 571, column: 27, scope: !1836, inlinedAt: !1692)
!1838 = !DILocation(line: 572, column: 30, scope: !1836, inlinedAt: !1692)
!1839 = !DILocation(line: 572, column: 15, scope: !1836, inlinedAt: !1692)
!1840 = !DILocation(line: 574, column: 37, scope: !1836, inlinedAt: !1692)
!1841 = !DILocation(line: 574, column: 27, scope: !1836, inlinedAt: !1692)
!1842 = !DILocation(line: 575, column: 30, scope: !1836, inlinedAt: !1692)
!1843 = !DILocation(line: 576, column: 13, scope: !1836, inlinedAt: !1692)
!1844 = !DILocation(line: 578, column: 19, scope: !1831, inlinedAt: !1692)
!1845 = !DILocation(line: 0, scope: !1660, inlinedAt: !1692)
!1846 = !DILocation(line: 525, column: 31, scope: !1660, inlinedAt: !1692)
!1847 = distinct !{!1847, !1776, !1793}
!1848 = !DILocation(line: 526, column: 33, scope: !1775, inlinedAt: !1692)
!1849 = !DILocation(line: 582, column: 3, scope: !1661, inlinedAt: !1692)
!1850 = !DILocation(line: 584, column: 7, scope: !1661, inlinedAt: !1692)
!1851 = !DILocation(line: 586, column: 17, scope: !1852, inlinedAt: !1692)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 585, column: 5)
!1853 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 584, column: 7)
!1854 = !DILocation(line: 586, column: 24, scope: !1852, inlinedAt: !1692)
!1855 = !DILocation(line: 586, column: 47, scope: !1852, inlinedAt: !1692)
!1856 = !DILocation(line: 586, column: 7, scope: !1852, inlinedAt: !1692)
!1857 = !DILocation(line: 588, column: 7, scope: !1852, inlinedAt: !1692)
!1858 = !DILocation(line: 593, column: 13, scope: !1859, inlinedAt: !1692)
!1859 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 593, column: 7)
!1860 = !DILocation(line: 593, column: 7, scope: !1859, inlinedAt: !1692)
!1861 = !DILocation(line: 593, column: 20, scope: !1859, inlinedAt: !1692)
!1862 = !DILocation(line: 593, column: 49, scope: !1859, inlinedAt: !1692)
!1863 = !DILocation(line: 593, column: 23, scope: !1859, inlinedAt: !1692)
!1864 = !DILocation(line: 593, column: 57, scope: !1859, inlinedAt: !1692)
!1865 = !DILocation(line: 593, column: 54, scope: !1859, inlinedAt: !1692)
!1866 = !DILocation(line: 593, column: 7, scope: !1661, inlinedAt: !1692)
!1867 = !DILocation(line: 595, column: 15, scope: !1868, inlinedAt: !1692)
!1868 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 594, column: 5)
!1869 = !DILocation(line: 595, column: 7, scope: !1868, inlinedAt: !1692)
!1870 = !DILocation(line: 596, column: 7, scope: !1868, inlinedAt: !1692)
!1871 = !DILocation(line: 597, column: 5, scope: !1868, inlinedAt: !1692)
!1872 = !DILocation(line: 599, column: 50, scope: !1873, inlinedAt: !1692)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 599, column: 3)
!1874 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 599, column: 3)
!1875 = !DILocation(line: 599, column: 43, scope: !1873, inlinedAt: !1692)
!1876 = !DILocation(line: 599, column: 29, scope: !1873, inlinedAt: !1692)
!1877 = !DILocation(line: 599, column: 3, scope: !1874, inlinedAt: !1692)
!1878 = !DILocation(line: 601, column: 27, scope: !1879, inlinedAt: !1692)
!1879 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 600, column: 5)
!1880 = !DILocation(line: 601, column: 19, scope: !1879, inlinedAt: !1692)
!1881 = !DILocation(line: 602, column: 22, scope: !1879, inlinedAt: !1692)
!1882 = !DILocation(line: 602, column: 7, scope: !1879, inlinedAt: !1692)
!1883 = !DILocation(line: 603, column: 27, scope: !1879, inlinedAt: !1692)
!1884 = !DILocation(line: 603, column: 19, scope: !1879, inlinedAt: !1692)
!1885 = !DILocation(line: 599, column: 69, scope: !1873, inlinedAt: !1692)
!1886 = distinct !{!1886, !1877, !1887}
!1887 = !DILocation(line: 604, column: 5, scope: !1874, inlinedAt: !1692)
!1888 = !DILocation(line: 0, scope: !1874, inlinedAt: !1692)
!1889 = !DILocation(line: 607, column: 15, scope: !1688, inlinedAt: !1692)
!1890 = !DILocation(line: 607, column: 7, scope: !1661, inlinedAt: !1692)
!1891 = !DILocation(line: 609, column: 30, scope: !1687, inlinedAt: !1692)
!1892 = !DILocation(line: 0, scope: !1687, inlinedAt: !1692)
!1893 = !DILocation(line: 610, column: 32, scope: !1687, inlinedAt: !1692)
!1894 = !DILocation(line: 612, column: 14, scope: !1687, inlinedAt: !1692)
!1895 = !DILocation(line: 612, column: 16, scope: !1687, inlinedAt: !1692)
!1896 = !DILocation(line: 610, column: 51, scope: !1687, inlinedAt: !1692)
!1897 = !DILocation(line: 610, column: 44, scope: !1687, inlinedAt: !1692)
!1898 = !DILocation(line: 612, column: 56, scope: !1687, inlinedAt: !1692)
!1899 = !DILocation(line: 612, column: 24, scope: !1687, inlinedAt: !1692)
!1900 = !DILocation(line: 612, column: 7, scope: !1687, inlinedAt: !1692)
!1901 = !DILocation(line: 614, column: 11, scope: !1902, inlinedAt: !1692)
!1902 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 613, column: 9)
!1903 = !DILocation(line: 615, column: 11, scope: !1902, inlinedAt: !1692)
!1904 = !DILocation(line: 616, column: 11, scope: !1902, inlinedAt: !1692)
!1905 = distinct !{!1905, !1900, !1906}
!1906 = !DILocation(line: 617, column: 9, scope: !1687, inlinedAt: !1692)
!1907 = !DILocation(line: 618, column: 24, scope: !1687, inlinedAt: !1692)
!1908 = !DILocation(line: 618, column: 19, scope: !1687, inlinedAt: !1692)
!1909 = !DILocation(line: 619, column: 7, scope: !1687, inlinedAt: !1692)
!1910 = !DILocation(line: 620, column: 5, scope: !1687, inlinedAt: !1692)
!1911 = !DILocation(line: 622, column: 1, scope: !1661, inlinedAt: !1692)
!1912 = !DILocation(line: 623, column: 3, scope: !1661, inlinedAt: !1692)
!1913 = !DILocation(line: 625, column: 20, scope: !1914, inlinedAt: !1692)
!1914 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 624, column: 5)
!1915 = !DILocation(line: 626, column: 13, scope: !1914, inlinedAt: !1692)
!1916 = !DILocation(line: 626, column: 7, scope: !1914, inlinedAt: !1692)
!1917 = distinct !{!1917, !1912, !1918}
!1918 = !DILocation(line: 628, column: 5, scope: !1661, inlinedAt: !1692)
!1919 = !DILocation(line: 630, column: 9, scope: !1920, inlinedAt: !1692)
!1920 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 630, column: 7)
!1921 = !DILocation(line: 630, column: 24, scope: !1920, inlinedAt: !1692)
!1922 = !DILocation(line: 630, column: 27, scope: !1920, inlinedAt: !1692)
!1923 = !DILocation(line: 630, column: 72, scope: !1920, inlinedAt: !1692)
!1924 = !DILocation(line: 630, column: 7, scope: !1661, inlinedAt: !1692)
!1925 = !DILocation(line: 632, column: 10, scope: !1661, inlinedAt: !1692)
!1926 = !DILocation(line: 759, column: 5, scope: !1445, inlinedAt: !1454)
!1927 = !DILocation(line: 767, column: 20, scope: !1444, inlinedAt: !1454)
!1928 = !DILocation(line: 768, column: 15, scope: !1444, inlinedAt: !1454)
!1929 = !DILocation(line: 651, column: 3, scope: !1418, inlinedAt: !1443)
!1930 = !DILocation(line: 657, column: 21, scope: !1418, inlinedAt: !1443)
!1931 = !DILocation(line: 657, column: 34, scope: !1418, inlinedAt: !1443)
!1932 = !DILocation(line: 658, column: 18, scope: !1933, inlinedAt: !1443)
!1933 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 658, column: 7)
!1934 = !DILocation(line: 658, column: 7, scope: !1418, inlinedAt: !1443)
!1935 = !DILocation(line: 662, column: 7, scope: !1418, inlinedAt: !1443)
!1936 = !DILocation(line: 663, column: 7, scope: !1937, inlinedAt: !1443)
!1937 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 663, column: 7)
!1938 = !DILocation(line: 663, column: 51, scope: !1937, inlinedAt: !1443)
!1939 = !DILocation(line: 663, column: 7, scope: !1418, inlinedAt: !1443)
!1940 = !DILocation(line: 665, column: 16, scope: !1418, inlinedAt: !1443)
!1941 = !DILocation(line: 666, column: 18, scope: !1942, inlinedAt: !1443)
!1942 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 666, column: 7)
!1943 = !DILocation(line: 666, column: 7, scope: !1418, inlinedAt: !1443)
!1944 = !DILocation(line: 668, column: 17, scope: !1945, inlinedAt: !1443)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 667, column: 5)
!1946 = !DILocation(line: 668, column: 24, scope: !1945, inlinedAt: !1443)
!1947 = !DILocation(line: 668, column: 47, scope: !1945, inlinedAt: !1443)
!1948 = !DILocation(line: 668, column: 7, scope: !1945, inlinedAt: !1443)
!1949 = !DILocation(line: 669, column: 7, scope: !1945, inlinedAt: !1443)
!1950 = !DILocation(line: 676, column: 18, scope: !1951, inlinedAt: !1443)
!1951 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 676, column: 7)
!1952 = !DILocation(line: 676, column: 15, scope: !1951, inlinedAt: !1443)
!1953 = !DILocation(line: 676, column: 50, scope: !1951, inlinedAt: !1443)
!1954 = !DILocation(line: 676, column: 32, scope: !1951, inlinedAt: !1443)
!1955 = !DILocation(line: 676, column: 58, scope: !1951, inlinedAt: !1443)
!1956 = !DILocation(line: 676, column: 55, scope: !1951, inlinedAt: !1443)
!1957 = !DILocation(line: 676, column: 7, scope: !1418, inlinedAt: !1443)
!1958 = !DILocation(line: 684, column: 7, scope: !1432, inlinedAt: !1443)
!1959 = !DILocation(line: 665, column: 14, scope: !1418, inlinedAt: !1443)
!1960 = !DILocation(line: 0, scope: !1432, inlinedAt: !1443)
!1961 = !DILocation(line: 686, column: 15, scope: !1436, inlinedAt: !1443)
!1962 = !DILocation(line: 687, column: 15, scope: !1435, inlinedAt: !1443)
!1963 = !DILocation(line: 687, column: 13, scope: !1435, inlinedAt: !1443)
!1964 = !DILocation(line: 691, column: 20, scope: !1434, inlinedAt: !1443)
!1965 = !DILocation(line: 692, column: 22, scope: !1966, inlinedAt: !1443)
!1966 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 692, column: 19)
!1967 = !DILocation(line: 692, column: 19, scope: !1434, inlinedAt: !1443)
!1968 = !DILocation(line: 696, column: 22, scope: !1441, inlinedAt: !1443)
!1969 = !DILocation(line: 696, column: 25, scope: !1441, inlinedAt: !1443)
!1970 = !DILocation(line: 696, column: 15, scope: !1436, inlinedAt: !1443)
!1971 = distinct !{!1971, !1958, !1972}
!1972 = !DILocation(line: 722, column: 9, scope: !1432, inlinedAt: !1443)
!1973 = !DILocation(line: 701, column: 29, scope: !1439, inlinedAt: !1443)
!1974 = !DILocation(line: 701, column: 19, scope: !1440, inlinedAt: !1443)
!1975 = !DILocation(line: 704, column: 23, scope: !1976, inlinedAt: !1443)
!1976 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 704, column: 23)
!1977 = !DILocation(line: 704, column: 73, scope: !1976, inlinedAt: !1443)
!1978 = !DILocation(line: 704, column: 23, scope: !1438, inlinedAt: !1443)
!1979 = !DILocation(line: 707, column: 42, scope: !1438, inlinedAt: !1443)
!1980 = !DILocation(line: 0, scope: !1457, inlinedAt: !1471)
!1981 = !DILocation(line: 196, column: 3, scope: !1457, inlinedAt: !1471)
!1982 = !DILocation(line: 200, column: 12, scope: !1457, inlinedAt: !1471)
!1983 = !DILocation(line: 200, column: 3, scope: !1457, inlinedAt: !1471)
!1984 = !DILocation(line: 202, column: 26, scope: !1466, inlinedAt: !1471)
!1985 = !DILocation(line: 0, scope: !1466, inlinedAt: !1471)
!1986 = !DILocation(line: 203, column: 23, scope: !1466, inlinedAt: !1471)
!1987 = !DILocation(line: 204, column: 18, scope: !1988, inlinedAt: !1471)
!1988 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 204, column: 11)
!1989 = !DILocation(line: 204, column: 11, scope: !1466, inlinedAt: !1471)
!1990 = !DILocation(line: 207, column: 15, scope: !1466, inlinedAt: !1471)
!1991 = !DILocation(line: 209, column: 18, scope: !1992, inlinedAt: !1471)
!1992 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 209, column: 11)
!1993 = !DILocation(line: 209, column: 34, scope: !1992, inlinedAt: !1471)
!1994 = !DILocation(line: 209, column: 23, scope: !1992, inlinedAt: !1471)
!1995 = !DILocation(line: 212, column: 7, scope: !1466, inlinedAt: !1471)
!1996 = !DILocation(line: 216, column: 1, scope: !1457, inlinedAt: !1471)
!1997 = !DILocation(line: 0, scope: !1438, inlinedAt: !1443)
!1998 = !DILocation(line: 710, column: 23, scope: !1999, inlinedAt: !1443)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 709, column: 21)
!2000 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 708, column: 23)
!2001 = !DILocation(line: 711, column: 23, scope: !1999, inlinedAt: !1443)
!2002 = !DILocation(line: 717, column: 40, scope: !1440, inlinedAt: !1443)
!2003 = !DILocation(line: 717, column: 15, scope: !1440, inlinedAt: !1443)
!2004 = !DILocation(line: 720, column: 47, scope: !1440, inlinedAt: !1443)
!2005 = !DILocation(line: 720, column: 27, scope: !1440, inlinedAt: !1443)
!2006 = !DILocation(line: 720, column: 24, scope: !1440, inlinedAt: !1443)
!2007 = !DILocation(line: 720, column: 15, scope: !1440, inlinedAt: !1443)
!2008 = !DILocation(line: 725, column: 15, scope: !2009, inlinedAt: !1443)
!2009 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 725, column: 11)
!2010 = !DILocation(line: 725, column: 11, scope: !1432, inlinedAt: !1443)
!2011 = !DILocation(line: 730, column: 11, scope: !1432, inlinedAt: !1443)
!2012 = !DILocation(line: 731, column: 11, scope: !2013, inlinedAt: !1443)
!2013 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 731, column: 11)
!2014 = !DILocation(line: 731, column: 55, scope: !2013, inlinedAt: !1443)
!2015 = !DILocation(line: 731, column: 11, scope: !1432, inlinedAt: !1443)
!2016 = !DILocation(line: 734, column: 20, scope: !1432, inlinedAt: !1443)
!2017 = !DILocation(line: 735, column: 11, scope: !1432, inlinedAt: !1443)
!2018 = !DILocation(line: 737, column: 21, scope: !2019, inlinedAt: !1443)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 736, column: 9)
!2020 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 735, column: 11)
!2021 = !DILocation(line: 737, column: 28, scope: !2019, inlinedAt: !1443)
!2022 = !DILocation(line: 737, column: 51, scope: !2019, inlinedAt: !1443)
!2023 = !DILocation(line: 737, column: 11, scope: !2019, inlinedAt: !1443)
!2024 = !DILocation(line: 738, column: 11, scope: !2019, inlinedAt: !1443)
!2025 = !DILocation(line: 746, column: 1, scope: !1418, inlinedAt: !1443)
!2026 = !DILocation(line: 0, scope: !1399, inlinedAt: !1415)
!2027 = !DILocation(line: 469, column: 26, scope: !1398, inlinedAt: !1415)
!2028 = !DILocation(line: 469, column: 56, scope: !1398, inlinedAt: !1415)
!2029 = !DILocation(line: 469, column: 53, scope: !1398, inlinedAt: !1415)
!2030 = !DILocation(line: 469, column: 7, scope: !1399, inlinedAt: !1415)
!2031 = !DILocation(line: 0, scope: !1350, inlinedAt: !1397)
!2032 = !DILocation(line: 290, column: 7, scope: !1350, inlinedAt: !1397)
!2033 = !DILocation(line: 296, column: 7, scope: !1348, inlinedAt: !1397)
!2034 = !DILocation(line: 101, column: 7, scope: !1648, inlinedAt: !1654)
!2035 = !DILocation(line: 102, column: 5, scope: !1647, inlinedAt: !1654)
!2036 = !DILocation(line: 103, column: 10, scope: !1648, inlinedAt: !1654)
!2037 = !DILocation(line: 297, column: 12, scope: !1348, inlinedAt: !1397)
!2038 = !DILocation(line: 298, column: 19, scope: !1348, inlinedAt: !1397)
!2039 = !DILocation(line: 298, column: 12, scope: !1348, inlinedAt: !1397)
!2040 = !DILocation(line: 300, column: 7, scope: !1371, inlinedAt: !1397)
!2041 = !DILocation(line: 302, column: 42, scope: !1369, inlinedAt: !1397)
!2042 = !DILocation(line: 302, column: 27, scope: !1369, inlinedAt: !1397)
!2043 = !DILocation(line: 0, scope: !1369, inlinedAt: !1397)
!2044 = !DILocation(line: 304, column: 22, scope: !2045, inlinedAt: !1397)
!2045 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 304, column: 15)
!2046 = !DILocation(line: 304, column: 15, scope: !1369, inlinedAt: !1397)
!2047 = !DILocation(line: 306, column: 19, scope: !2048, inlinedAt: !1397)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 306, column: 19)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 305, column: 13)
!2050 = !DILocation(line: 306, column: 25, scope: !2048, inlinedAt: !1397)
!2051 = !DILocation(line: 306, column: 19, scope: !2049, inlinedAt: !1397)
!2052 = !DILocation(line: 314, column: 26, scope: !2053, inlinedAt: !1397)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 314, column: 19)
!2054 = !DILocation(line: 316, column: 23, scope: !2055, inlinedAt: !1397)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 316, column: 23)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 315, column: 17)
!2057 = !DILocation(line: 314, column: 19, scope: !2049, inlinedAt: !1397)
!2058 = !DILocation(line: 303, column: 18, scope: !1369, inlinedAt: !1397)
!2059 = !DILocation(line: 332, column: 17, scope: !2060, inlinedAt: !1397)
!2060 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 332, column: 15)
!2061 = !DILocation(line: 332, column: 15, scope: !1369, inlinedAt: !1397)
!2062 = !DILocation(line: 334, column: 38, scope: !2063, inlinedAt: !1397)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 333, column: 13)
!2064 = !DILocation(line: 334, column: 27, scope: !2063, inlinedAt: !1397)
!2065 = !DILocation(line: 335, column: 32, scope: !2063, inlinedAt: !1397)
!2066 = !DILocation(line: 335, column: 30, scope: !2063, inlinedAt: !1397)
!2067 = !DILocation(line: 335, column: 36, scope: !2063, inlinedAt: !1397)
!2068 = !DILocation(line: 335, column: 15, scope: !2063, inlinedAt: !1397)
!2069 = !DILocation(line: 336, column: 13, scope: !2063, inlinedAt: !1397)
!2070 = !DILocation(line: 339, column: 23, scope: !2071, inlinedAt: !1397)
!2071 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 339, column: 15)
!2072 = !DILocation(line: 339, column: 15, scope: !1369, inlinedAt: !1397)
!2073 = !DILocation(line: 341, column: 37, scope: !2074, inlinedAt: !1397)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 340, column: 13)
!2075 = !DILocation(line: 341, column: 27, scope: !2074, inlinedAt: !1397)
!2076 = !DILocation(line: 342, column: 15, scope: !2074, inlinedAt: !1397)
!2077 = !DILocation(line: 343, column: 13, scope: !2074, inlinedAt: !1397)
!2078 = !DILocation(line: 308, column: 36, scope: !2079, inlinedAt: !1397)
!2079 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 307, column: 17)
!2080 = !DILocation(line: 308, column: 59, scope: !2079, inlinedAt: !1397)
!2081 = !DILocation(line: 308, column: 19, scope: !2079, inlinedAt: !1397)
!2082 = !DILocation(line: 300, column: 35, scope: !1370, inlinedAt: !1397)
!2083 = !DILocation(line: 300, column: 25, scope: !1370, inlinedAt: !1397)
!2084 = distinct !{!2084, !2040, !2085}
!2085 = !DILocation(line: 344, column: 9, scope: !1371, inlinedAt: !1397)
!2086 = !DILocation(line: 346, column: 7, scope: !1348, inlinedAt: !1397)
!2087 = !DILocation(line: 347, column: 5, scope: !1349, inlinedAt: !1397)
!2088 = !DILocation(line: 347, column: 5, scope: !1348, inlinedAt: !1397)
!2089 = !DILocation(line: 368, column: 29, scope: !1639, inlinedAt: !1397)
!2090 = !DILocation(line: 368, column: 15, scope: !1640, inlinedAt: !1397)
!2091 = !DILocation(line: 371, column: 33, scope: !1637, inlinedAt: !1397)
!2092 = !DILocation(line: 371, column: 19, scope: !1638, inlinedAt: !1397)
!2093 = !DILocation(line: 373, column: 38, scope: !1636, inlinedAt: !1397)
!2094 = !DILocation(line: 374, column: 31, scope: !1636, inlinedAt: !1397)
!2095 = !DILocation(line: 373, column: 24, scope: !1637, inlinedAt: !1397)
!2096 = !DILocalVariable(name: "p", arg: 1, scope: !2097, file: !182, line: 112, type: !92)
!2097 = distinct !DISubprogram(name: "xnrealloc", scope: !182, file: !182, line: 112, type: !2098, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!92, !92, !94, !94}
!2100 = !{!2096, !2101, !2102}
!2101 = !DILocalVariable(name: "n", arg: 2, scope: !2097, file: !182, line: 112, type: !94)
!2102 = !DILocalVariable(name: "s", arg: 3, scope: !2097, file: !182, line: 112, type: !94)
!2103 = !DILocation(line: 0, scope: !2097, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 377, column: 19, scope: !1638, inlinedAt: !1397)
!2105 = !DILocation(line: 114, column: 7, scope: !2106, inlinedAt: !2104)
!2106 = distinct !DILexicalBlock(scope: !2097, file: !182, line: 114, column: 7)
!2107 = !DILocation(line: 114, column: 7, scope: !2097, inlinedAt: !2104)
!2108 = !DILocation(line: 115, column: 5, scope: !2106, inlinedAt: !2104)
!2109 = !DILocation(line: 377, column: 30, scope: !1638, inlinedAt: !1397)
!2110 = !DILocation(line: 116, column: 25, scope: !2097, inlinedAt: !2104)
!2111 = !DILocation(line: 116, column: 10, scope: !2097, inlinedAt: !2104)
!2112 = !DILocation(line: 377, column: 19, scope: !1638, inlinedAt: !1397)
!2113 = !DILocation(line: 378, column: 13, scope: !1638, inlinedAt: !1397)
!2114 = !DILocation(line: 380, column: 17, scope: !2115, inlinedAt: !1397)
!2115 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 380, column: 15)
!2116 = !DILocation(line: 380, column: 15, scope: !1640, inlinedAt: !1397)
!2117 = !DILocation(line: 0, scope: !1640, inlinedAt: !1397)
!2118 = !DILocation(line: 385, column: 35, scope: !1640, inlinedAt: !1397)
!2119 = !DILocation(line: 382, column: 22, scope: !2120, inlinedAt: !1397)
!2120 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 381, column: 13)
!2121 = !DILocation(line: 382, column: 15, scope: !2120, inlinedAt: !1397)
!2122 = !DILocation(line: 382, column: 20, scope: !2120, inlinedAt: !1397)
!2123 = !DILocation(line: 383, column: 27, scope: !2120, inlinedAt: !1397)
!2124 = !DILocation(line: 384, column: 13, scope: !2120, inlinedAt: !1397)
!2125 = !DILocation(line: 385, column: 20, scope: !1640, inlinedAt: !1397)
!2126 = !DILocation(line: 386, column: 22, scope: !2127, inlinedAt: !1397)
!2127 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 386, column: 15)
!2128 = !DILocation(line: 386, column: 15, scope: !1640, inlinedAt: !1397)
!2129 = !DILocation(line: 388, column: 19, scope: !2130, inlinedAt: !1397)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 388, column: 19)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 387, column: 13)
!2132 = !DILocation(line: 388, column: 25, scope: !2130, inlinedAt: !1397)
!2133 = !DILocation(line: 388, column: 19, scope: !2131, inlinedAt: !1397)
!2134 = !DILocation(line: 390, column: 36, scope: !2135, inlinedAt: !1397)
!2135 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 389, column: 17)
!2136 = !DILocation(line: 390, column: 59, scope: !2135, inlinedAt: !1397)
!2137 = !DILocation(line: 390, column: 19, scope: !2135, inlinedAt: !1397)
!2138 = !DILocation(line: 392, column: 19, scope: !2135, inlinedAt: !1397)
!2139 = !DILocation(line: 397, column: 21, scope: !2140, inlinedAt: !1397)
!2140 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 397, column: 15)
!2141 = !DILocation(line: 397, column: 15, scope: !1640, inlinedAt: !1397)
!2142 = !DILocation(line: 400, column: 15, scope: !2143, inlinedAt: !1397)
!2143 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 400, column: 15)
!2144 = !DILocation(line: 400, column: 15, scope: !1640, inlinedAt: !1397)
!2145 = !DILocation(line: 402, column: 27, scope: !2146, inlinedAt: !1397)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 401, column: 13)
!2147 = !DILocation(line: 403, column: 30, scope: !2146, inlinedAt: !1397)
!2148 = !DILocation(line: 403, column: 15, scope: !2146, inlinedAt: !1397)
!2149 = !DILocation(line: 404, column: 13, scope: !2146, inlinedAt: !1397)
!2150 = !DILocation(line: 366, column: 66, scope: !1641, inlinedAt: !1397)
!2151 = !DILocation(line: 366, column: 71, scope: !1641, inlinedAt: !1397)
!2152 = !DILocation(line: 366, column: 32, scope: !1641, inlinedAt: !1397)
!2153 = !DILocation(line: 366, column: 7, scope: !1642, inlinedAt: !1397)
!2154 = distinct !{!2154, !2153, !2155}
!2155 = !DILocation(line: 405, column: 9, scope: !1642, inlinedAt: !1397)
!2156 = !DILocation(line: 408, column: 11, scope: !1374, inlinedAt: !1397)
!2157 = !DILocation(line: 410, column: 15, scope: !1388, inlinedAt: !1397)
!2158 = !DILocation(line: 412, column: 57, scope: !1386, inlinedAt: !1397)
!2159 = !DILocation(line: 0, scope: !1386, inlinedAt: !1397)
!2160 = !DILocation(line: 413, column: 27, scope: !1386, inlinedAt: !1397)
!2161 = !DILocation(line: 414, column: 23, scope: !2162, inlinedAt: !1397)
!2162 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 414, column: 19)
!2163 = !DILocation(line: 0, scope: !2162, inlinedAt: !1397)
!2164 = !DILocation(line: 414, column: 19, scope: !1386, inlinedAt: !1397)
!2165 = !DILocation(line: 416, column: 19, scope: !2166, inlinedAt: !1397)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 415, column: 17)
!2167 = !DILocation(line: 417, column: 17, scope: !2166, inlinedAt: !1397)
!2168 = !DILocation(line: 420, column: 19, scope: !2169, inlinedAt: !1397)
!2169 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 419, column: 17)
!2170 = !DILocation(line: 421, column: 34, scope: !2169, inlinedAt: !1397)
!2171 = !DILocation(line: 421, column: 49, scope: !2169, inlinedAt: !1397)
!2172 = !DILocation(line: 421, column: 19, scope: !2169, inlinedAt: !1397)
!2173 = !DILocation(line: 424, column: 26, scope: !1392, inlinedAt: !1397)
!2174 = !DILocation(line: 424, column: 20, scope: !1387, inlinedAt: !1397)
!2175 = !DILocation(line: 0, scope: !1391, inlinedAt: !1397)
!2176 = !DILocation(line: 439, column: 33, scope: !1391, inlinedAt: !1397)
!2177 = !DILocation(line: 440, column: 27, scope: !1391, inlinedAt: !1397)
!2178 = !DILocation(line: 441, column: 30, scope: !1391, inlinedAt: !1397)
!2179 = !DILocation(line: 441, column: 15, scope: !1391, inlinedAt: !1397)
!2180 = !DILocation(line: 442, column: 13, scope: !1391, inlinedAt: !1397)
!2181 = !DILocation(line: 445, column: 5, scope: !1374, inlinedAt: !1397)
!2182 = !DILocation(line: 446, column: 21, scope: !2183, inlinedAt: !1397)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 446, column: 7)
!2184 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 446, column: 7)
!2185 = !DILocation(line: 446, column: 7, scope: !2184, inlinedAt: !1397)
!2186 = !DILocation(line: 447, column: 15, scope: !2183, inlinedAt: !1397)
!2187 = !DILocation(line: 447, column: 9, scope: !2183, inlinedAt: !1397)
!2188 = !DILocation(line: 446, column: 33, scope: !2183, inlinedAt: !1397)
!2189 = distinct !{!2189, !2185, !2190}
!2190 = !DILocation(line: 447, column: 19, scope: !2184, inlinedAt: !1397)
!2191 = !DILocation(line: 448, column: 13, scope: !1374, inlinedAt: !1397)
!2192 = !DILocation(line: 448, column: 7, scope: !1374, inlinedAt: !1397)
!2193 = !DILocation(line: 252, column: 13, scope: !1350, inlinedAt: !1397)
!2194 = !DILocation(line: 451, column: 9, scope: !2195, inlinedAt: !1397)
!2195 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 451, column: 7)
!2196 = !DILocation(line: 451, column: 24, scope: !2195, inlinedAt: !1397)
!2197 = !DILocation(line: 451, column: 27, scope: !2195, inlinedAt: !1397)
!2198 = !DILocation(line: 451, column: 72, scope: !2195, inlinedAt: !1397)
!2199 = !DILocation(line: 451, column: 7, scope: !1350, inlinedAt: !1397)
!2200 = !DILocation(line: 453, column: 10, scope: !1350, inlinedAt: !1397)
!2201 = !DILocation(line: 470, column: 5, scope: !1398, inlinedAt: !1415)
!2202 = !DILocation(line: 475, column: 25, scope: !1412, inlinedAt: !1415)
!2203 = !DILocation(line: 0, scope: !1412, inlinedAt: !1415)
!2204 = !DILocation(line: 476, column: 31, scope: !1412, inlinedAt: !1415)
!2205 = !DILocation(line: 478, column: 27, scope: !2206, inlinedAt: !1415)
!2206 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 478, column: 11)
!2207 = !DILocation(line: 478, column: 11, scope: !1412, inlinedAt: !1415)
!2208 = !DILocation(line: 481, column: 62, scope: !1412, inlinedAt: !1415)
!2209 = !DILocation(line: 196, column: 3, scope: !1457, inlinedAt: !1469)
!2210 = !DILocation(line: 200, column: 12, scope: !1457, inlinedAt: !1469)
!2211 = !DILocation(line: 200, column: 3, scope: !1457, inlinedAt: !1469)
!2212 = !DILocation(line: 202, column: 26, scope: !1466, inlinedAt: !1469)
!2213 = !DILocation(line: 0, scope: !1466, inlinedAt: !1469)
!2214 = !DILocation(line: 203, column: 23, scope: !1466, inlinedAt: !1469)
!2215 = !DILocation(line: 204, column: 18, scope: !1988, inlinedAt: !1469)
!2216 = !DILocation(line: 204, column: 11, scope: !1466, inlinedAt: !1469)
!2217 = !DILocation(line: 207, column: 15, scope: !1466, inlinedAt: !1469)
!2218 = !DILocation(line: 209, column: 18, scope: !1992, inlinedAt: !1469)
!2219 = !DILocation(line: 209, column: 34, scope: !1992, inlinedAt: !1469)
!2220 = !DILocation(line: 209, column: 23, scope: !1992, inlinedAt: !1469)
!2221 = !DILocation(line: 212, column: 7, scope: !1466, inlinedAt: !1469)
!2222 = !DILocation(line: 216, column: 1, scope: !1457, inlinedAt: !1469)
!2223 = !DILocation(line: 482, column: 11, scope: !1412, inlinedAt: !1415)
!2224 = !DILocation(line: 485, column: 7, scope: !1412, inlinedAt: !1415)
!2225 = !DILocation(line: 486, column: 7, scope: !1412, inlinedAt: !1415)
!2226 = !DILocation(line: 862, column: 5, scope: !1330, inlinedAt: !1332)
!2227 = !DILocation(line: 0, scope: !1318, inlinedAt: !1332)
!2228 = !DILocation(line: 863, column: 7, scope: !1319, inlinedAt: !1332)
!2229 = !DILocation(line: 0, scope: !1266, inlinedAt: !1317)
!2230 = !DILocation(line: 803, column: 3, scope: !1266, inlinedAt: !1317)
!2231 = !DILocation(line: 805, column: 27, scope: !1265, inlinedAt: !1317)
!2232 = !DILocation(line: 0, scope: !1265, inlinedAt: !1317)
!2233 = !DILocation(line: 808, column: 11, scope: !1265, inlinedAt: !1317)
!2234 = !DILocation(line: 0, scope: !1264, inlinedAt: !1317)
!2235 = !DILocation(line: 815, column: 7, scope: !1265, inlinedAt: !1317)
!2236 = !DILocation(line: 810, column: 21, scope: !2237, inlinedAt: !1317)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 809, column: 9)
!2238 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 808, column: 11)
!2239 = !DILocation(line: 810, column: 28, scope: !2237, inlinedAt: !1317)
!2240 = !DILocation(line: 810, column: 51, scope: !2237, inlinedAt: !1317)
!2241 = !DILocation(line: 810, column: 11, scope: !2237, inlinedAt: !1317)
!2242 = !DILocation(line: 816, column: 34, scope: !1264, inlinedAt: !1317)
!2243 = !DILocation(line: 816, column: 13, scope: !1264, inlinedAt: !1317)
!2244 = !DILocation(line: 816, column: 38, scope: !1264, inlinedAt: !1317)
!2245 = !DILocation(line: 816, column: 50, scope: !1264, inlinedAt: !1317)
!2246 = !DILocation(line: 816, column: 53, scope: !1264, inlinedAt: !1317)
!2247 = !DILocation(line: 816, column: 70, scope: !1264, inlinedAt: !1317)
!2248 = !DILocation(line: 816, column: 13, scope: !1265, inlinedAt: !1317)
!2249 = !DILocation(line: 0, scope: !1263, inlinedAt: !1317)
!2250 = !DILocation(line: 822, column: 28, scope: !1262, inlinedAt: !1317)
!2251 = !DILocation(line: 822, column: 17, scope: !1262, inlinedAt: !1317)
!2252 = !DILocation(line: 822, column: 57, scope: !1262, inlinedAt: !1317)
!2253 = !DILocation(line: 822, column: 17, scope: !1263, inlinedAt: !1317)
!2254 = !DILocation(line: 824, column: 17, scope: !1261, inlinedAt: !1317)
!2255 = !DILocation(line: 0, scope: !1728, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 825, column: 21, scope: !1695, inlinedAt: !1317)
!2257 = !DILocation(line: 469, column: 10, scope: !1728, inlinedAt: !2256)
!2258 = !DILocation(line: 825, column: 37, scope: !1695, inlinedAt: !1317)
!2259 = !DILocation(line: 825, column: 42, scope: !1695, inlinedAt: !1317)
!2260 = !DILocation(line: 825, column: 45, scope: !1695, inlinedAt: !1317)
!2261 = !DILocation(line: 825, column: 21, scope: !1261, inlinedAt: !1317)
!2262 = !DILocation(line: 826, column: 19, scope: !1695, inlinedAt: !1317)
!2263 = !DILocation(line: 827, column: 15, scope: !1262, inlinedAt: !1317)
!2264 = !DILocation(line: 827, column: 15, scope: !1261, inlinedAt: !1317)
!2265 = !DILocation(line: 815, column: 29, scope: !1265, inlinedAt: !1317)
!2266 = distinct !{!2266, !2235, !2267}
!2267 = !DILocation(line: 829, column: 11, scope: !1265, inlinedAt: !1317)
!2268 = !DILocation(line: 830, column: 7, scope: !1265, inlinedAt: !1317)
!2269 = !DILocation(line: 833, column: 1, scope: !1266, inlinedAt: !1317)
!2270 = !DILocation(line: 864, column: 5, scope: !1318, inlinedAt: !1332)
!2271 = !DILocation(line: 0, scope: !1473, inlinedAt: !1482)
!2272 = !DILocation(line: 779, column: 3, scope: !1473, inlinedAt: !1482)
!2273 = !DILocation(line: 782, column: 26, scope: !2274, inlinedAt: !1482)
!2274 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 782, column: 11)
!2275 = !DILocation(line: 782, column: 11, scope: !1480, inlinedAt: !1482)
!2276 = !DILocation(line: 784, column: 20, scope: !1480, inlinedAt: !1482)
!2277 = !DILocation(line: 0, scope: !1480, inlinedAt: !1482)
!2278 = !DILocation(line: 785, column: 11, scope: !1480, inlinedAt: !1482)
!2279 = !DILocation(line: 787, column: 21, scope: !2280, inlinedAt: !1482)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 786, column: 9)
!2281 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 785, column: 11)
!2282 = !DILocation(line: 787, column: 28, scope: !2280, inlinedAt: !1482)
!2283 = !DILocation(line: 787, column: 51, scope: !2280, inlinedAt: !1482)
!2284 = !DILocation(line: 787, column: 11, scope: !2280, inlinedAt: !1482)
!2285 = !DILocation(line: 792, column: 7, scope: !1480, inlinedAt: !1482)
!2286 = !DILocation(line: 793, column: 22, scope: !1480, inlinedAt: !1482)
!2287 = !DILocation(line: 796, column: 1, scope: !1473, inlinedAt: !1482)
!2288 = !DILocation(line: 866, column: 5, scope: !1318, inlinedAt: !1332)
!2289 = !DILocation(line: 895, column: 17, scope: !2290, inlinedAt: !1344)
!2290 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 895, column: 7)
!2291 = !DILocation(line: 895, column: 20, scope: !2290, inlinedAt: !1344)
!2292 = !DILocation(line: 895, column: 31, scope: !2290, inlinedAt: !1344)
!2293 = !DILocation(line: 895, column: 7, scope: !1333, inlinedAt: !1344)
!2294 = !DILocation(line: 897, column: 17, scope: !2295, inlinedAt: !1344)
!2295 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 896, column: 5)
!2296 = !DILocation(line: 897, column: 24, scope: !2295, inlinedAt: !1344)
!2297 = !DILocation(line: 897, column: 49, scope: !2295, inlinedAt: !1344)
!2298 = !DILocation(line: 897, column: 7, scope: !2295, inlinedAt: !1344)
!2299 = !DILocation(line: 898, column: 7, scope: !2295, inlinedAt: !1344)
!2300 = !DILocation(line: 1089, column: 8, scope: !1345)
!2301 = !DILocation(line: 1088, column: 29, scope: !1345)
!2302 = distinct !{!2302, !1618, !2303}
!2303 = !DILocation(line: 1089, column: 72, scope: !1346)
!2304 = !DILocation(line: 1091, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !214, file: !3, line: 1091, column: 7)
!2306 = !DILocation(line: 1091, column: 23, scope: !2305)
!2307 = !DILocation(line: 1091, column: 26, scope: !2305)
!2308 = !DILocation(line: 1091, column: 47, scope: !2305)
!2309 = !DILocation(line: 1091, column: 7, scope: !214)
!2310 = !DILocation(line: 1092, column: 5, scope: !2305)
!2311 = !DILocation(line: 1095, column: 1, scope: !214)
!2312 = distinct !DISubprogram(name: "elseek", scope: !3, file: !3, line: 224, type: !2313, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!146, !39, !146, !39, !37}
!2315 = !{!2316, !2317, !2318, !2319, !2320, !2321}
!2316 = !DILocalVariable(name: "fd", arg: 1, scope: !2312, file: !3, line: 224, type: !39)
!2317 = !DILocalVariable(name: "offset", arg: 2, scope: !2312, file: !3, line: 224, type: !146)
!2318 = !DILocalVariable(name: "whence", arg: 3, scope: !2312, file: !3, line: 224, type: !39)
!2319 = !DILocalVariable(name: "filename", arg: 4, scope: !2312, file: !3, line: 224, type: !37)
!2320 = !DILocalVariable(name: "new_offset", scope: !2312, file: !3, line: 226, type: !146)
!2321 = !DILocalVariable(name: "buf", scope: !2312, file: !3, line: 227, type: !242)
!2322 = !DILocation(line: 0, scope: !2312)
!2323 = !DILocation(line: 226, column: 22, scope: !2312)
!2324 = !DILocation(line: 227, column: 3, scope: !2312)
!2325 = !DILocation(line: 227, column: 8, scope: !2312)
!2326 = !DILocation(line: 229, column: 18, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 229, column: 7)
!2328 = !DILocation(line: 229, column: 7, scope: !2312)
!2329 = !DILocation(line: 230, column: 15, scope: !2327)
!2330 = !DILocation(line: 231, column: 12, scope: !2327)
!2331 = !DILocation(line: 234, column: 12, scope: !2327)
!2332 = !DILocation(line: 235, column: 12, scope: !2327)
!2333 = !DILocation(line: 230, column: 5, scope: !2327)
!2334 = !DILocation(line: 238, column: 1, scope: !2312)
!2335 = !DILocation(line: 237, column: 3, scope: !2312)
!2336 = distinct !DISubprogram(name: "xwrite_stdout", scope: !3, file: !3, line: 180, type: !2337, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !37, !94}
!2339 = !{!2340, !2341, !2342, !2345, !2349}
!2340 = !DILocalVariable(name: "buffer", arg: 1, scope: !2336, file: !3, line: 180, type: !37)
!2341 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !2336, file: !3, line: 180, type: !94)
!2342 = !DILocalVariable(name: "__ptr", scope: !2343, file: !3, line: 182, type: !37)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 182, column: 22)
!2344 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 182, column: 7)
!2345 = !DILocalVariable(name: "__stream", scope: !2343, file: !3, line: 182, type: !2346)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2348, line: 7, baseType: !46)
!2348 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2349 = !DILocalVariable(name: "__cnt", scope: !2343, file: !3, line: 182, type: !94)
!2350 = !DILocation(line: 0, scope: !2336)
!2351 = !DILocation(line: 182, column: 15, scope: !2344)
!2352 = !DILocation(line: 182, column: 19, scope: !2344)
!2353 = !DILocation(line: 0, scope: !2344)
!2354 = !DILocation(line: 182, column: 22, scope: !2344)
!2355 = !DILocation(line: 182, column: 58, scope: !2344)
!2356 = !DILocation(line: 182, column: 7, scope: !2336)
!2357 = !DILocation(line: 184, column: 7, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 183, column: 5)
!2359 = !DILocation(line: 185, column: 7, scope: !2358)
!2360 = !DILocation(line: 188, column: 1, scope: !2336)
!2361 = distinct !DISubprogram(name: "diagnose_copy_fd_failure", scope: !3, file: !3, line: 152, type: !2362, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !25, !37}
!2364 = !{!2365, !2366}
!2365 = !DILocalVariable(name: "err", arg: 1, scope: !2361, file: !3, line: 152, type: !25)
!2366 = !DILocalVariable(name: "filename", arg: 2, scope: !2361, file: !3, line: 152, type: !37)
!2367 = !DILocation(line: 0, scope: !2361)
!2368 = !DILocation(line: 154, column: 3, scope: !2361)
!2369 = !DILocation(line: 157, column: 17, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 155, column: 5)
!2371 = !DILocation(line: 157, column: 24, scope: !2370)
!2372 = !DILocation(line: 157, column: 47, scope: !2370)
!2373 = !DILocation(line: 157, column: 7, scope: !2370)
!2374 = !DILocation(line: 158, column: 7, scope: !2370)
!2375 = !DILocation(line: 160, column: 17, scope: !2370)
!2376 = !DILocation(line: 160, column: 24, scope: !2370)
!2377 = !DILocation(line: 160, column: 59, scope: !2370)
!2378 = !DILocation(line: 160, column: 7, scope: !2370)
!2379 = !DILocation(line: 161, column: 7, scope: !2370)
!2380 = !DILocation(line: 163, column: 7, scope: !2370)
!2381 = !DILocation(line: 165, column: 1, scope: !2361)
!2382 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !277, file: !277, line: 51, type: !104, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2383)
!2383 = !{!2384}
!2384 = !DILocalVariable(name: "file", arg: 1, scope: !2382, file: !277, line: 51, type: !37)
!2385 = !DILocation(line: 0, scope: !2382)
!2386 = !DILocation(line: 53, column: 13, scope: !2382)
!2387 = !DILocation(line: 54, column: 1, scope: !2382)
!2388 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !277, file: !277, line: 88, type: !2389, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{null, !223}
!2391 = !{!2392}
!2392 = !DILocalVariable(name: "ignore", arg: 1, scope: !2388, file: !277, line: 88, type: !223)
!2393 = !DILocation(line: 0, scope: !2388)
!2394 = !DILocation(line: 90, column: 16, scope: !2388)
!2395 = !{!2396, !2396, i64 0}
!2396 = !{!"_Bool", !1213, i64 0}
!2397 = !DILocation(line: 91, column: 1, scope: !2388)
!2398 = distinct !DISubprogram(name: "close_stdout", scope: !277, file: !277, line: 117, type: !121, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2399)
!2399 = !{!2400}
!2400 = !DILocalVariable(name: "write_error", scope: !2401, file: !277, line: 122, type: !37)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !277, line: 121, column: 5)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !277, line: 119, column: 7)
!2403 = !DILocation(line: 119, column: 21, scope: !2402)
!2404 = !DILocation(line: 119, column: 7, scope: !2402)
!2405 = !DILocation(line: 119, column: 29, scope: !2402)
!2406 = !DILocation(line: 120, column: 7, scope: !2402)
!2407 = !DILocation(line: 120, column: 12, scope: !2402)
!2408 = !{i8 0, i8 2}
!2409 = !DILocation(line: 120, column: 25, scope: !2402)
!2410 = !DILocation(line: 120, column: 28, scope: !2402)
!2411 = !DILocation(line: 120, column: 34, scope: !2402)
!2412 = !DILocation(line: 119, column: 7, scope: !2398)
!2413 = !DILocation(line: 122, column: 33, scope: !2401)
!2414 = !DILocation(line: 0, scope: !2401)
!2415 = !DILocation(line: 123, column: 11, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2401, file: !277, line: 123, column: 11)
!2417 = !DILocation(line: 0, scope: !2416)
!2418 = !DILocation(line: 123, column: 11, scope: !2401)
!2419 = !DILocation(line: 124, column: 36, scope: !2416)
!2420 = !DILocation(line: 124, column: 9, scope: !2416)
!2421 = !DILocation(line: 127, column: 9, scope: !2416)
!2422 = !DILocation(line: 129, column: 14, scope: !2401)
!2423 = !DILocation(line: 129, column: 7, scope: !2401)
!2424 = !DILocation(line: 134, column: 42, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2398, file: !277, line: 134, column: 7)
!2426 = !DILocation(line: 134, column: 28, scope: !2425)
!2427 = !DILocation(line: 134, column: 50, scope: !2425)
!2428 = !DILocation(line: 134, column: 7, scope: !2398)
!2429 = !DILocation(line: 135, column: 12, scope: !2425)
!2430 = !DILocation(line: 135, column: 5, scope: !2425)
!2431 = !DILocation(line: 136, column: 1, scope: !2398)
!2432 = distinct !DISubprogram(name: "full_read", scope: !2433, file: !2433, line: 58, type: !2434, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !2436)
!2433 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!94, !39, !92, !94}
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442}
!2437 = !DILocalVariable(name: "fd", arg: 1, scope: !2432, file: !2433, line: 58, type: !39)
!2438 = !DILocalVariable(name: "buf", arg: 2, scope: !2432, file: !2433, line: 58, type: !92)
!2439 = !DILocalVariable(name: "count", arg: 3, scope: !2432, file: !2433, line: 58, type: !94)
!2440 = !DILocalVariable(name: "total", scope: !2432, file: !2433, line: 60, type: !94)
!2441 = !DILocalVariable(name: "ptr", scope: !2432, file: !2433, line: 61, type: !35)
!2442 = !DILocalVariable(name: "n_rw", scope: !2443, file: !2433, line: 65, type: !94)
!2443 = distinct !DILexicalBlock(scope: !2432, file: !2433, line: 64, column: 5)
!2444 = !DILocation(line: 0, scope: !2432)
!2445 = !DILocation(line: 63, column: 16, scope: !2432)
!2446 = !DILocation(line: 63, column: 3, scope: !2432)
!2447 = !DILocation(line: 65, column: 21, scope: !2443)
!2448 = !DILocation(line: 0, scope: !2443)
!2449 = !DILocation(line: 66, column: 11, scope: !2443)
!2450 = !DILocation(line: 70, column: 11, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !2433, line: 69, column: 9)
!2452 = distinct !DILexicalBlock(scope: !2443, file: !2433, line: 68, column: 11)
!2453 = !DILocation(line: 70, column: 17, scope: !2451)
!2454 = !DILocation(line: 71, column: 11, scope: !2451)
!2455 = !DILocation(line: 73, column: 13, scope: !2443)
!2456 = !DILocation(line: 74, column: 11, scope: !2443)
!2457 = !DILocation(line: 75, column: 13, scope: !2443)
!2458 = !DILocation(line: 78, column: 3, scope: !2432)
!2459 = distinct !DISubprogram(name: "offtostr", scope: !2460, file: !2460, line: 36, type: !2461, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2463)
!2460 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!35, !491, !35}
!2463 = !{!2464, !2465, !2466}
!2464 = !DILocalVariable(name: "i", arg: 1, scope: !2459, file: !2460, line: 36, type: !491)
!2465 = !DILocalVariable(name: "buf", arg: 2, scope: !2459, file: !2460, line: 36, type: !35)
!2466 = !DILocalVariable(name: "p", scope: !2459, file: !2460, line: 38, type: !35)
!2467 = !DILocation(line: 0, scope: !2459)
!2468 = !DILocation(line: 38, column: 17, scope: !2459)
!2469 = !DILocation(line: 39, column: 6, scope: !2459)
!2470 = !DILocation(line: 41, column: 9, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2459, file: !2460, line: 41, column: 7)
!2472 = !DILocation(line: 41, column: 7, scope: !2459)
!2473 = !DILocation(line: 44, column: 24, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !2460, line: 42, column: 5)
!2475 = !DILocation(line: 44, column: 16, scope: !2474)
!2476 = !DILocation(line: 44, column: 10, scope: !2474)
!2477 = !DILocation(line: 44, column: 14, scope: !2474)
!2478 = !DILocation(line: 45, column: 17, scope: !2474)
!2479 = !DILocation(line: 45, column: 24, scope: !2474)
!2480 = !DILocation(line: 44, column: 9, scope: !2474)
!2481 = distinct !{!2481, !2482, !2483}
!2482 = !DILocation(line: 43, column: 7, scope: !2474)
!2483 = !DILocation(line: 45, column: 28, scope: !2474)
!2484 = !DILocation(line: 47, column: 8, scope: !2474)
!2485 = !DILocation(line: 47, column: 12, scope: !2474)
!2486 = !DILocation(line: 48, column: 5, scope: !2474)
!2487 = !DILocation(line: 52, column: 24, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2471, file: !2460, line: 50, column: 5)
!2489 = !DILocation(line: 52, column: 16, scope: !2488)
!2490 = !DILocation(line: 52, column: 10, scope: !2488)
!2491 = !DILocation(line: 52, column: 14, scope: !2488)
!2492 = !DILocation(line: 53, column: 17, scope: !2488)
!2493 = !DILocation(line: 53, column: 24, scope: !2488)
!2494 = !DILocation(line: 52, column: 9, scope: !2488)
!2495 = distinct !{!2495, !2496, !2497}
!2496 = !DILocation(line: 51, column: 7, scope: !2488)
!2497 = !DILocation(line: 53, column: 28, scope: !2488)
!2498 = !DILocation(line: 0, scope: !2471)
!2499 = !DILocation(line: 56, column: 3, scope: !2459)
!2500 = distinct !DISubprogram(name: "umaxtostr", scope: !2460, file: !2460, line: 36, type: !2501, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!35, !227, !35}
!2503 = !{!2504, !2505, !2506}
!2504 = !DILocalVariable(name: "i", arg: 1, scope: !2500, file: !2460, line: 36, type: !227)
!2505 = !DILocalVariable(name: "buf", arg: 2, scope: !2500, file: !2460, line: 36, type: !35)
!2506 = !DILocalVariable(name: "p", scope: !2500, file: !2460, line: 38, type: !35)
!2507 = !DILocation(line: 0, scope: !2500)
!2508 = !DILocation(line: 38, column: 17, scope: !2500)
!2509 = !DILocation(line: 39, column: 6, scope: !2500)
!2510 = !DILocation(line: 41, column: 7, scope: !2500)
!2511 = !DILocation(line: 52, column: 24, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !2460, line: 50, column: 5)
!2513 = distinct !DILexicalBlock(scope: !2500, file: !2460, line: 41, column: 7)
!2514 = !DILocation(line: 52, column: 16, scope: !2512)
!2515 = !DILocation(line: 52, column: 10, scope: !2512)
!2516 = !DILocation(line: 52, column: 14, scope: !2512)
!2517 = !DILocation(line: 53, column: 17, scope: !2512)
!2518 = !DILocation(line: 53, column: 24, scope: !2512)
!2519 = !DILocation(line: 52, column: 9, scope: !2512)
!2520 = distinct !{!2520, !2521, !2522}
!2521 = !DILocation(line: 51, column: 7, scope: !2512)
!2522 = !DILocation(line: 53, column: 28, scope: !2512)
!2523 = !DILocation(line: 56, column: 3, scope: !2500)
!2524 = distinct !DISubprogram(name: "set_program_name", scope: !328, file: !328, line: 39, type: !104, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2525)
!2525 = !{!2526, !2527, !2528}
!2526 = !DILocalVariable(name: "argv0", arg: 1, scope: !2524, file: !328, line: 39, type: !37)
!2527 = !DILocalVariable(name: "slash", scope: !2524, file: !328, line: 46, type: !37)
!2528 = !DILocalVariable(name: "base", scope: !2524, file: !328, line: 47, type: !37)
!2529 = !DILocation(line: 0, scope: !2524)
!2530 = !DILocation(line: 51, column: 13, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2524, file: !328, line: 51, column: 7)
!2532 = !DILocation(line: 51, column: 7, scope: !2524)
!2533 = !DILocation(line: 55, column: 14, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !328, line: 52, column: 5)
!2535 = !DILocation(line: 54, column: 7, scope: !2534)
!2536 = !DILocation(line: 56, column: 7, scope: !2534)
!2537 = !DILocation(line: 59, column: 11, scope: !2524)
!2538 = !DILocation(line: 60, column: 17, scope: !2524)
!2539 = !DILocation(line: 60, column: 11, scope: !2524)
!2540 = !DILocation(line: 61, column: 12, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2524, file: !328, line: 61, column: 7)
!2542 = !DILocation(line: 61, column: 20, scope: !2541)
!2543 = !DILocation(line: 61, column: 25, scope: !2541)
!2544 = !DILocation(line: 61, column: 42, scope: !2541)
!2545 = !DILocation(line: 61, column: 28, scope: !2541)
!2546 = !DILocation(line: 61, column: 61, scope: !2541)
!2547 = !DILocation(line: 61, column: 7, scope: !2524)
!2548 = !DILocation(line: 64, column: 11, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !328, line: 64, column: 11)
!2550 = distinct !DILexicalBlock(scope: !2541, file: !328, line: 62, column: 5)
!2551 = !DILocation(line: 64, column: 36, scope: !2549)
!2552 = !DILocation(line: 64, column: 11, scope: !2550)
!2553 = !DILocation(line: 66, column: 24, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !328, line: 65, column: 9)
!2555 = !DILocation(line: 70, column: 41, scope: !2554)
!2556 = !DILocation(line: 72, column: 9, scope: !2554)
!2557 = !DILocation(line: 84, column: 16, scope: !2524)
!2558 = !DILocation(line: 90, column: 27, scope: !2524)
!2559 = !DILocation(line: 92, column: 1, scope: !2524)
!2560 = distinct !DISubprogram(name: "clone_quoting_options", scope: !369, file: !369, line: 122, type: !2561, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2564)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!2563, !2563}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2564 = !{!2565, !2566, !2567}
!2565 = !DILocalVariable(name: "o", arg: 1, scope: !2560, file: !369, line: 122, type: !2563)
!2566 = !DILocalVariable(name: "e", scope: !2560, file: !369, line: 124, type: !39)
!2567 = !DILocalVariable(name: "p", scope: !2560, file: !369, line: 125, type: !2563)
!2568 = !DILocation(line: 0, scope: !2560)
!2569 = !DILocation(line: 124, column: 11, scope: !2560)
!2570 = !DILocation(line: 125, column: 40, scope: !2560)
!2571 = !DILocation(line: 125, column: 31, scope: !2560)
!2572 = !DILocation(line: 127, column: 9, scope: !2560)
!2573 = !DILocation(line: 128, column: 3, scope: !2560)
!2574 = distinct !DISubprogram(name: "get_quoting_style", scope: !369, file: !369, line: 133, type: !2575, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!11, !399}
!2577 = !{!2578}
!2578 = !DILocalVariable(name: "o", arg: 1, scope: !2574, file: !369, line: 133, type: !399)
!2579 = !DILocation(line: 0, scope: !2574)
!2580 = !DILocation(line: 135, column: 11, scope: !2574)
!2581 = !DILocation(line: 135, column: 46, scope: !2574)
!2582 = !{!2583, !1213, i64 0}
!2583 = !{!"quoting_options", !1213, i64 0, !1601, i64 4, !1213, i64 8, !1212, i64 40, !1212, i64 48}
!2584 = !DILocation(line: 135, column: 3, scope: !2574)
!2585 = distinct !DISubprogram(name: "set_quoting_style", scope: !369, file: !369, line: 141, type: !2586, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{null, !2563, !11}
!2588 = !{!2589, !2590}
!2589 = !DILocalVariable(name: "o", arg: 1, scope: !2585, file: !369, line: 141, type: !2563)
!2590 = !DILocalVariable(name: "s", arg: 2, scope: !2585, file: !369, line: 141, type: !11)
!2591 = !DILocation(line: 0, scope: !2585)
!2592 = !DILocation(line: 143, column: 4, scope: !2585)
!2593 = !DILocation(line: 143, column: 39, scope: !2585)
!2594 = !DILocation(line: 143, column: 45, scope: !2585)
!2595 = !DILocation(line: 144, column: 1, scope: !2585)
!2596 = distinct !DISubprogram(name: "set_char_quoting", scope: !369, file: !369, line: 152, type: !2597, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!39, !2563, !36, !39}
!2599 = !{!2600, !2601, !2602, !2603, !2604, !2606, !2607}
!2600 = !DILocalVariable(name: "o", arg: 1, scope: !2596, file: !369, line: 152, type: !2563)
!2601 = !DILocalVariable(name: "c", arg: 2, scope: !2596, file: !369, line: 152, type: !36)
!2602 = !DILocalVariable(name: "i", arg: 3, scope: !2596, file: !369, line: 152, type: !39)
!2603 = !DILocalVariable(name: "uc", scope: !2596, file: !369, line: 154, type: !200)
!2604 = !DILocalVariable(name: "p", scope: !2596, file: !369, line: 155, type: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2606 = !DILocalVariable(name: "shift", scope: !2596, file: !369, line: 157, type: !39)
!2607 = !DILocalVariable(name: "r", scope: !2596, file: !369, line: 158, type: !39)
!2608 = !DILocation(line: 0, scope: !2596)
!2609 = !DILocation(line: 156, column: 6, scope: !2596)
!2610 = !DILocation(line: 156, column: 62, scope: !2596)
!2611 = !DILocation(line: 156, column: 57, scope: !2596)
!2612 = !DILocation(line: 157, column: 15, scope: !2596)
!2613 = !DILocation(line: 158, column: 12, scope: !2596)
!2614 = !DILocation(line: 158, column: 15, scope: !2596)
!2615 = !DILocation(line: 158, column: 25, scope: !2596)
!2616 = !DILocation(line: 159, column: 13, scope: !2596)
!2617 = !DILocation(line: 159, column: 18, scope: !2596)
!2618 = !DILocation(line: 159, column: 23, scope: !2596)
!2619 = !DILocation(line: 159, column: 6, scope: !2596)
!2620 = !DILocation(line: 160, column: 3, scope: !2596)
!2621 = distinct !DISubprogram(name: "set_quoting_flags", scope: !369, file: !369, line: 168, type: !2622, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!39, !2563, !39}
!2624 = !{!2625, !2626, !2627}
!2625 = !DILocalVariable(name: "o", arg: 1, scope: !2621, file: !369, line: 168, type: !2563)
!2626 = !DILocalVariable(name: "i", arg: 2, scope: !2621, file: !369, line: 168, type: !39)
!2627 = !DILocalVariable(name: "r", scope: !2621, file: !369, line: 170, type: !39)
!2628 = !DILocation(line: 0, scope: !2621)
!2629 = !DILocation(line: 171, column: 8, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2621, file: !369, line: 171, column: 7)
!2631 = !DILocation(line: 171, column: 7, scope: !2621)
!2632 = !DILocation(line: 173, column: 10, scope: !2621)
!2633 = !{!2583, !1601, i64 4}
!2634 = !DILocation(line: 174, column: 12, scope: !2621)
!2635 = !DILocation(line: 175, column: 3, scope: !2621)
!2636 = distinct !DISubprogram(name: "set_custom_quoting", scope: !369, file: !369, line: 179, type: !2637, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !2563, !37, !37}
!2639 = !{!2640, !2641, !2642}
!2640 = !DILocalVariable(name: "o", arg: 1, scope: !2636, file: !369, line: 179, type: !2563)
!2641 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2636, file: !369, line: 180, type: !37)
!2642 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2636, file: !369, line: 180, type: !37)
!2643 = !DILocation(line: 0, scope: !2636)
!2644 = !DILocation(line: 182, column: 8, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2636, file: !369, line: 182, column: 7)
!2646 = !DILocation(line: 182, column: 7, scope: !2636)
!2647 = !DILocation(line: 184, column: 6, scope: !2636)
!2648 = !DILocation(line: 184, column: 12, scope: !2636)
!2649 = !DILocation(line: 185, column: 8, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2636, file: !369, line: 185, column: 7)
!2651 = !DILocation(line: 185, column: 23, scope: !2650)
!2652 = !DILocation(line: 185, column: 19, scope: !2650)
!2653 = !DILocation(line: 186, column: 5, scope: !2650)
!2654 = !DILocation(line: 187, column: 6, scope: !2636)
!2655 = !DILocation(line: 187, column: 17, scope: !2636)
!2656 = !{!2583, !1212, i64 40}
!2657 = !DILocation(line: 188, column: 6, scope: !2636)
!2658 = !DILocation(line: 188, column: 18, scope: !2636)
!2659 = !{!2583, !1212, i64 48}
!2660 = !DILocation(line: 189, column: 1, scope: !2636)
!2661 = distinct !DISubprogram(name: "quotearg_buffer", scope: !369, file: !369, line: 784, type: !2662, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!94, !35, !94, !37, !94, !399}
!2664 = !{!2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672}
!2665 = !DILocalVariable(name: "buffer", arg: 1, scope: !2661, file: !369, line: 784, type: !35)
!2666 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2661, file: !369, line: 784, type: !94)
!2667 = !DILocalVariable(name: "arg", arg: 3, scope: !2661, file: !369, line: 785, type: !37)
!2668 = !DILocalVariable(name: "argsize", arg: 4, scope: !2661, file: !369, line: 785, type: !94)
!2669 = !DILocalVariable(name: "o", arg: 5, scope: !2661, file: !369, line: 786, type: !399)
!2670 = !DILocalVariable(name: "p", scope: !2661, file: !369, line: 788, type: !399)
!2671 = !DILocalVariable(name: "e", scope: !2661, file: !369, line: 789, type: !39)
!2672 = !DILocalVariable(name: "r", scope: !2661, file: !369, line: 790, type: !94)
!2673 = !DILocation(line: 0, scope: !2661)
!2674 = !DILocation(line: 788, column: 37, scope: !2661)
!2675 = !DILocation(line: 789, column: 11, scope: !2661)
!2676 = !DILocation(line: 791, column: 43, scope: !2661)
!2677 = !DILocation(line: 791, column: 53, scope: !2661)
!2678 = !DILocation(line: 791, column: 60, scope: !2661)
!2679 = !DILocation(line: 792, column: 43, scope: !2661)
!2680 = !DILocation(line: 792, column: 58, scope: !2661)
!2681 = !DILocation(line: 790, column: 14, scope: !2661)
!2682 = !DILocation(line: 793, column: 9, scope: !2661)
!2683 = !DILocation(line: 794, column: 3, scope: !2661)
!2684 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !369, file: !369, line: 256, type: !2685, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2689)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!94, !35, !94, !37, !94, !11, !39, !2687, !37, !37}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2689 = !{!2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2714, !2715, !2716, !2717, !2718, !2721, !2722, !2728, !2731, !2732, !2739, !2742, !2743, !2744, !2745, !2746, !2747}
!2690 = !DILocalVariable(name: "buffer", arg: 1, scope: !2684, file: !369, line: 256, type: !35)
!2691 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2684, file: !369, line: 256, type: !94)
!2692 = !DILocalVariable(name: "arg", arg: 3, scope: !2684, file: !369, line: 257, type: !37)
!2693 = !DILocalVariable(name: "argsize", arg: 4, scope: !2684, file: !369, line: 257, type: !94)
!2694 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2684, file: !369, line: 258, type: !11)
!2695 = !DILocalVariable(name: "flags", arg: 6, scope: !2684, file: !369, line: 258, type: !39)
!2696 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2684, file: !369, line: 259, type: !2687)
!2697 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2684, file: !369, line: 260, type: !37)
!2698 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2684, file: !369, line: 261, type: !37)
!2699 = !DILocalVariable(name: "i", scope: !2684, file: !369, line: 263, type: !94)
!2700 = !DILocalVariable(name: "len", scope: !2684, file: !369, line: 264, type: !94)
!2701 = !DILocalVariable(name: "orig_buffersize", scope: !2684, file: !369, line: 265, type: !94)
!2702 = !DILocalVariable(name: "quote_string", scope: !2684, file: !369, line: 266, type: !37)
!2703 = !DILocalVariable(name: "quote_string_len", scope: !2684, file: !369, line: 267, type: !94)
!2704 = !DILocalVariable(name: "backslash_escapes", scope: !2684, file: !369, line: 268, type: !223)
!2705 = !DILocalVariable(name: "unibyte_locale", scope: !2684, file: !369, line: 269, type: !223)
!2706 = !DILocalVariable(name: "elide_outer_quotes", scope: !2684, file: !369, line: 270, type: !223)
!2707 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2684, file: !369, line: 271, type: !223)
!2708 = !DILocalVariable(name: "encountered_single_quote", scope: !2684, file: !369, line: 272, type: !223)
!2709 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2684, file: !369, line: 273, type: !223)
!2710 = !DILocalVariable(name: "c", scope: !2711, file: !369, line: 402, type: !200)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !369, line: 401, column: 5)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !369, line: 400, column: 3)
!2713 = distinct !DILexicalBlock(scope: !2684, file: !369, line: 400, column: 3)
!2714 = !DILocalVariable(name: "esc", scope: !2711, file: !369, line: 403, type: !200)
!2715 = !DILocalVariable(name: "is_right_quote", scope: !2711, file: !369, line: 404, type: !223)
!2716 = !DILocalVariable(name: "escaping", scope: !2711, file: !369, line: 405, type: !223)
!2717 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2711, file: !369, line: 406, type: !223)
!2718 = !DILocalVariable(name: "m", scope: !2719, file: !369, line: 610, type: !94)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 608, column: 11)
!2720 = distinct !DILexicalBlock(scope: !2711, file: !369, line: 426, column: 9)
!2721 = !DILocalVariable(name: "printable", scope: !2719, file: !369, line: 612, type: !223)
!2722 = !DILocalVariable(name: "mbstate", scope: !2723, file: !369, line: 621, type: !2725)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !369, line: 620, column: 15)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !369, line: 614, column: 17)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2726, line: 6, baseType: !2727)
!2726 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !420, line: 21, baseType: !419)
!2728 = !DILocalVariable(name: "w", scope: !2729, file: !369, line: 631, type: !2730)
!2729 = distinct !DILexicalBlock(scope: !2723, file: !369, line: 630, column: 19)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 74, baseType: !39)
!2731 = !DILocalVariable(name: "bytes", scope: !2729, file: !369, line: 632, type: !94)
!2732 = !DILocalVariable(name: "j", scope: !2733, file: !369, line: 657, type: !94)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !369, line: 656, column: 27)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !369, line: 654, column: 29)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !369, line: 649, column: 23)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !369, line: 641, column: 30)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !369, line: 636, column: 30)
!2738 = distinct !DILexicalBlock(scope: !2729, file: !369, line: 634, column: 25)
!2739 = !DILocalVariable(name: "ilim", scope: !2740, file: !369, line: 684, type: !94)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !369, line: 681, column: 15)
!2741 = distinct !DILexicalBlock(scope: !2719, file: !369, line: 680, column: 17)
!2742 = !DILabel(scope: !2684, name: "process_input", file: !369, line: 314)
!2743 = !DILabel(scope: !2720, name: "c_and_shell_escape", file: !369, line: 512)
!2744 = !DILabel(scope: !2720, name: "c_escape", file: !369, line: 517)
!2745 = !DILabel(scope: !2711, name: "store_escape", file: !369, line: 719)
!2746 = !DILabel(scope: !2711, name: "store_c", file: !369, line: 722)
!2747 = !DILabel(scope: !2684, name: "force_outer_quoting_style", file: !369, line: 763)
!2748 = !DILocation(line: 0, scope: !2684)
!2749 = !DILocation(line: 269, column: 25, scope: !2684)
!2750 = !DILocation(line: 269, column: 36, scope: !2684)
!2751 = !DILocation(line: 270, column: 8, scope: !2684)
!2752 = !DILocation(line: 0, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 526, column: 15)
!2754 = !DILocation(line: 0, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !369, line: 462, column: 19)
!2756 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 455, column: 13)
!2757 = !DILocation(line: 0, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !369, line: 449, column: 20)
!2759 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 428, column: 15)
!2760 = !DILocation(line: 0, scope: !2723)
!2761 = !DILocation(line: 0, scope: !2729)
!2762 = !DILocation(line: 0, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2711, file: !369, line: 712, column: 11)
!2764 = !DILocation(line: 273, column: 3, scope: !2684)
!2765 = !DILocation(line: 265, column: 10, scope: !2684)
!2766 = !DILocation(line: 266, column: 15, scope: !2684)
!2767 = !DILocation(line: 267, column: 10, scope: !2684)
!2768 = !DILocation(line: 268, column: 8, scope: !2684)
!2769 = !DILocation(line: 271, column: 8, scope: !2684)
!2770 = !DILocation(line: 272, column: 8, scope: !2684)
!2771 = !DILocation(line: 273, column: 8, scope: !2684)
!2772 = !DILocation(line: 314, column: 2, scope: !2684)
!2773 = !DILocation(line: 316, column: 3, scope: !2684)
!2774 = !DILocation(line: 323, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2684, file: !369, line: 317, column: 5)
!2776 = !DILocation(line: 323, column: 12, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2775, file: !369, line: 323, column: 11)
!2778 = !DILocation(line: 324, column: 9, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !369, line: 324, column: 9)
!2780 = distinct !DILexicalBlock(scope: !2777, file: !369, line: 324, column: 9)
!2781 = !DILocation(line: 324, column: 9, scope: !2780)
!2782 = !DILocation(line: 362, column: 26, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !369, line: 340, column: 11)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !369, line: 339, column: 13)
!2785 = distinct !DILexicalBlock(scope: !2775, file: !369, line: 338, column: 7)
!2786 = !DILocation(line: 363, column: 27, scope: !2783)
!2787 = !DILocation(line: 364, column: 11, scope: !2783)
!2788 = !DILocation(line: 365, column: 14, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !369, line: 365, column: 13)
!2790 = !DILocation(line: 365, column: 13, scope: !2785)
!2791 = !DILocation(line: 366, column: 43, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !369, line: 366, column: 11)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !369, line: 366, column: 11)
!2794 = !DILocation(line: 366, column: 11, scope: !2793)
!2795 = !DILocation(line: 367, column: 13, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !369, line: 367, column: 13)
!2797 = distinct !DILexicalBlock(scope: !2792, file: !369, line: 367, column: 13)
!2798 = !DILocation(line: 367, column: 13, scope: !2797)
!2799 = !DILocation(line: 366, column: 70, scope: !2792)
!2800 = distinct !{!2800, !2794, !2801}
!2801 = !DILocation(line: 367, column: 13, scope: !2793)
!2802 = !DILocation(line: 264, column: 10, scope: !2684)
!2803 = !DILocation(line: 370, column: 28, scope: !2785)
!2804 = !DILocation(line: 372, column: 7, scope: !2775)
!2805 = !DILocation(line: 376, column: 7, scope: !2775)
!2806 = !DILocation(line: 379, column: 7, scope: !2775)
!2807 = !DILocation(line: 381, column: 12, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2775, file: !369, line: 381, column: 11)
!2809 = !DILocation(line: 381, column: 11, scope: !2775)
!2810 = !DILocation(line: 386, column: 12, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2775, file: !369, line: 386, column: 11)
!2812 = !DILocation(line: 386, column: 11, scope: !2775)
!2813 = !DILocation(line: 387, column: 9, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !369, line: 387, column: 9)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !369, line: 387, column: 9)
!2816 = !DILocation(line: 387, column: 9, scope: !2815)
!2817 = !DILocation(line: 394, column: 7, scope: !2775)
!2818 = !DILocation(line: 397, column: 7, scope: !2775)
!2819 = !DILocation(line: 0, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2711, file: !369, line: 408, column: 11)
!2821 = !DILocation(line: 0, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !369, line: 419, column: 15)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !369, line: 418, column: 9)
!2824 = !DILocation(line: 0, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 556, column: 15)
!2826 = !DILocation(line: 0, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 548, column: 15)
!2828 = !DILocation(line: 0, scope: !2734)
!2829 = !DILocation(line: 0, scope: !2741)
!2830 = !DILocation(line: 0, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 509, column: 15)
!2832 = !DILocation(line: 400, column: 8, scope: !2713)
!2833 = !DILocation(line: 0, scope: !2713)
!2834 = !DILocation(line: 400, column: 27, scope: !2712)
!2835 = !DILocation(line: 400, column: 19, scope: !2712)
!2836 = !DILocation(line: 400, column: 41, scope: !2712)
!2837 = !DILocation(line: 400, column: 48, scope: !2712)
!2838 = !DILocation(line: 400, column: 3, scope: !2713)
!2839 = !DILocation(line: 400, column: 60, scope: !2712)
!2840 = !DILocation(line: 0, scope: !2711)
!2841 = !DILocation(line: 409, column: 11, scope: !2820)
!2842 = !DILocation(line: 411, column: 17, scope: !2820)
!2843 = !DILocation(line: 412, column: 39, scope: !2820)
!2844 = !DILocation(line: 416, column: 32, scope: !2820)
!2845 = !DILocation(line: 412, column: 19, scope: !2820)
!2846 = !DILocation(line: 412, column: 15, scope: !2820)
!2847 = !DILocation(line: 417, column: 11, scope: !2820)
!2848 = !DILocation(line: 417, column: 26, scope: !2820)
!2849 = !DILocation(line: 417, column: 14, scope: !2820)
!2850 = !DILocation(line: 417, column: 63, scope: !2820)
!2851 = !DILocation(line: 408, column: 11, scope: !2711)
!2852 = !DILocation(line: 424, column: 11, scope: !2711)
!2853 = !DILocation(line: 425, column: 7, scope: !2711)
!2854 = !DILocation(line: 428, column: 15, scope: !2720)
!2855 = !DILocation(line: 430, column: 15, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !369, line: 430, column: 15)
!2857 = distinct !DILexicalBlock(scope: !2759, file: !369, line: 429, column: 13)
!2858 = !DILocation(line: 430, column: 15, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !369, line: 430, column: 15)
!2860 = !DILocation(line: 430, column: 15, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !369, line: 430, column: 15)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !369, line: 430, column: 15)
!2863 = distinct !DILexicalBlock(scope: !2859, file: !369, line: 430, column: 15)
!2864 = !DILocation(line: 430, column: 15, scope: !2862)
!2865 = !DILocation(line: 430, column: 15, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !369, line: 430, column: 15)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !369, line: 430, column: 15)
!2868 = !DILocation(line: 430, column: 15, scope: !2867)
!2869 = !DILocation(line: 430, column: 15, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !369, line: 430, column: 15)
!2871 = distinct !DILexicalBlock(scope: !2863, file: !369, line: 430, column: 15)
!2872 = !DILocation(line: 430, column: 15, scope: !2871)
!2873 = !DILocation(line: 430, column: 15, scope: !2863)
!2874 = !DILocation(line: 430, column: 15, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !369, line: 430, column: 15)
!2876 = distinct !DILexicalBlock(scope: !2856, file: !369, line: 430, column: 15)
!2877 = !DILocation(line: 430, column: 15, scope: !2876)
!2878 = !DILocation(line: 438, column: 19, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2857, file: !369, line: 437, column: 19)
!2880 = !DILocation(line: 438, column: 24, scope: !2879)
!2881 = !DILocation(line: 438, column: 28, scope: !2879)
!2882 = !DILocation(line: 438, column: 38, scope: !2879)
!2883 = !DILocation(line: 438, column: 48, scope: !2879)
!2884 = !DILocation(line: 438, column: 59, scope: !2879)
!2885 = !DILocation(line: 440, column: 19, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !369, line: 440, column: 19)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !369, line: 440, column: 19)
!2888 = distinct !DILexicalBlock(scope: !2879, file: !369, line: 439, column: 17)
!2889 = !DILocation(line: 440, column: 19, scope: !2887)
!2890 = !DILocation(line: 441, column: 19, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !369, line: 441, column: 19)
!2892 = distinct !DILexicalBlock(scope: !2888, file: !369, line: 441, column: 19)
!2893 = !DILocation(line: 441, column: 19, scope: !2892)
!2894 = !DILocation(line: 442, column: 17, scope: !2888)
!2895 = !DILocation(line: 449, column: 20, scope: !2759)
!2896 = !DILocation(line: 454, column: 11, scope: !2720)
!2897 = !DILocation(line: 457, column: 19, scope: !2756)
!2898 = !DILocation(line: 463, column: 19, scope: !2755)
!2899 = !DILocation(line: 463, column: 24, scope: !2755)
!2900 = !DILocation(line: 463, column: 28, scope: !2755)
!2901 = !DILocation(line: 463, column: 38, scope: !2755)
!2902 = !DILocation(line: 463, column: 47, scope: !2755)
!2903 = !DILocation(line: 463, column: 41, scope: !2755)
!2904 = !DILocation(line: 463, column: 52, scope: !2755)
!2905 = !DILocation(line: 462, column: 19, scope: !2756)
!2906 = !DILocation(line: 464, column: 25, scope: !2755)
!2907 = !DILocation(line: 464, column: 17, scope: !2755)
!2908 = !DILocation(line: 471, column: 25, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2755, file: !369, line: 465, column: 19)
!2910 = !DILocation(line: 475, column: 21, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !369, line: 475, column: 21)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !369, line: 475, column: 21)
!2913 = !DILocation(line: 475, column: 21, scope: !2912)
!2914 = !DILocation(line: 476, column: 21, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !369, line: 476, column: 21)
!2916 = distinct !DILexicalBlock(scope: !2909, file: !369, line: 476, column: 21)
!2917 = !DILocation(line: 476, column: 21, scope: !2916)
!2918 = !DILocation(line: 477, column: 21, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !369, line: 477, column: 21)
!2920 = distinct !DILexicalBlock(scope: !2909, file: !369, line: 477, column: 21)
!2921 = !DILocation(line: 477, column: 21, scope: !2920)
!2922 = !DILocation(line: 478, column: 21, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !369, line: 478, column: 21)
!2924 = distinct !DILexicalBlock(scope: !2909, file: !369, line: 478, column: 21)
!2925 = !DILocation(line: 478, column: 21, scope: !2924)
!2926 = !DILocation(line: 479, column: 21, scope: !2909)
!2927 = !DILocation(line: 492, column: 31, scope: !2720)
!2928 = !DILocation(line: 493, column: 31, scope: !2720)
!2929 = !DILocation(line: 495, column: 31, scope: !2720)
!2930 = !DILocation(line: 496, column: 31, scope: !2720)
!2931 = !DILocation(line: 497, column: 31, scope: !2720)
!2932 = !DILocation(line: 500, column: 15, scope: !2720)
!2933 = !DILocation(line: 502, column: 19, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !369, line: 501, column: 13)
!2935 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 500, column: 15)
!2936 = !DILocation(line: 509, column: 33, scope: !2831)
!2937 = !DILocation(line: 0, scope: !2720)
!2938 = !DILocation(line: 512, column: 9, scope: !2720)
!2939 = !DILocation(line: 514, column: 15, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 513, column: 15)
!2941 = !DILocation(line: 517, column: 9, scope: !2720)
!2942 = !DILocation(line: 518, column: 15, scope: !2720)
!2943 = !DILocation(line: 526, column: 15, scope: !2720)
!2944 = !DILocation(line: 526, column: 40, scope: !2753)
!2945 = !DILocation(line: 526, column: 47, scope: !2753)
!2946 = !DILocation(line: 526, column: 18, scope: !2753)
!2947 = !DILocation(line: 530, column: 17, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2720, file: !369, line: 530, column: 15)
!2949 = !DILocation(line: 530, column: 15, scope: !2720)
!2950 = !DILocation(line: 535, column: 11, scope: !2720)
!2951 = !DILocation(line: 549, column: 15, scope: !2827)
!2952 = !DILocation(line: 556, column: 15, scope: !2720)
!2953 = !DILocation(line: 558, column: 19, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2825, file: !369, line: 557, column: 13)
!2955 = !DILocation(line: 561, column: 19, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2954, file: !369, line: 561, column: 19)
!2957 = !DILocation(line: 561, column: 35, scope: !2956)
!2958 = !DILocation(line: 561, column: 30, scope: !2956)
!2959 = !DILocation(line: 570, column: 15, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !369, line: 570, column: 15)
!2961 = distinct !DILexicalBlock(scope: !2954, file: !369, line: 570, column: 15)
!2962 = !DILocation(line: 570, column: 15, scope: !2961)
!2963 = !DILocation(line: 571, column: 15, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !369, line: 571, column: 15)
!2965 = distinct !DILexicalBlock(scope: !2954, file: !369, line: 571, column: 15)
!2966 = !DILocation(line: 571, column: 15, scope: !2965)
!2967 = !DILocation(line: 572, column: 15, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !369, line: 572, column: 15)
!2969 = distinct !DILexicalBlock(scope: !2954, file: !369, line: 572, column: 15)
!2970 = !DILocation(line: 572, column: 15, scope: !2969)
!2971 = !DILocation(line: 574, column: 13, scope: !2954)
!2972 = !DILocation(line: 614, column: 17, scope: !2719)
!2973 = !DILocation(line: 0, scope: !2719)
!2974 = !DILocation(line: 617, column: 29, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2724, file: !369, line: 615, column: 15)
!2976 = !{!2977, !2977, i64 0}
!2977 = !{!"short", !1213, i64 0}
!2978 = !DILocation(line: 617, column: 27, scope: !2975)
!2979 = !DILocation(line: 618, column: 15, scope: !2975)
!2980 = !DILocation(line: 621, column: 17, scope: !2723)
!2981 = !DILocation(line: 621, column: 27, scope: !2723)
!2982 = !DILocalVariable(name: "__dest", arg: 1, scope: !2983, file: !1811, line: 59, type: !92)
!2983 = distinct !DISubprogram(name: "memset", scope: !1811, file: !1811, line: 59, type: !2984, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!92, !92, !39, !94}
!2986 = !{!2982, !2987, !2988}
!2987 = !DILocalVariable(name: "__ch", arg: 2, scope: !2983, file: !1811, line: 59, type: !39)
!2988 = !DILocalVariable(name: "__len", arg: 3, scope: !2983, file: !1811, line: 59, type: !94)
!2989 = !DILocation(line: 0, scope: !2983, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 622, column: 17, scope: !2723)
!2991 = !DILocation(line: 71, column: 10, scope: !2983, inlinedAt: !2990)
!2992 = !DILocation(line: 626, column: 29, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2723, file: !369, line: 626, column: 21)
!2994 = !DILocation(line: 626, column: 21, scope: !2723)
!2995 = !DILocation(line: 627, column: 29, scope: !2993)
!2996 = !DILocation(line: 627, column: 19, scope: !2993)
!2997 = !DILocation(line: 629, column: 17, scope: !2723)
!2998 = !DILocation(line: 624, column: 19, scope: !2723)
!2999 = !DILocation(line: 625, column: 27, scope: !2723)
!3000 = !DILocation(line: 631, column: 21, scope: !2729)
!3001 = !DILocation(line: 632, column: 56, scope: !2729)
!3002 = !DILocation(line: 632, column: 50, scope: !2729)
!3003 = !DILocation(line: 633, column: 53, scope: !2729)
!3004 = !DILocation(line: 632, column: 36, scope: !2729)
!3005 = !DILocation(line: 634, column: 25, scope: !2729)
!3006 = !DILocation(line: 644, column: 38, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2736, file: !369, line: 642, column: 23)
!3008 = !DILocation(line: 644, column: 48, scope: !3007)
!3009 = !DILocation(line: 644, column: 25, scope: !3007)
!3010 = !DILocation(line: 644, column: 51, scope: !3007)
!3011 = !DILocation(line: 645, column: 28, scope: !3007)
!3012 = !DILocation(line: 644, column: 34, scope: !3007)
!3013 = distinct !{!3013, !3009, !3011}
!3014 = !DILocation(line: 658, column: 43, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !369, line: 658, column: 29)
!3016 = distinct !DILexicalBlock(scope: !2733, file: !369, line: 658, column: 29)
!3017 = !DILocation(line: 655, column: 29, scope: !2734)
!3018 = !DILocation(line: 0, scope: !2733)
!3019 = !DILocation(line: 659, column: 49, scope: !3015)
!3020 = !DILocation(line: 659, column: 39, scope: !3015)
!3021 = !DILocation(line: 659, column: 31, scope: !3015)
!3022 = !DILocation(line: 658, column: 53, scope: !3015)
!3023 = !DILocation(line: 658, column: 29, scope: !3016)
!3024 = distinct !{!3024, !3023, !3025}
!3025 = !DILocation(line: 667, column: 33, scope: !3016)
!3026 = !DILocation(line: 674, column: 19, scope: !2723)
!3027 = !DILocation(line: 670, column: 41, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2735, file: !369, line: 670, column: 29)
!3029 = !DILocation(line: 670, column: 31, scope: !3028)
!3030 = !DILocation(line: 670, column: 29, scope: !2735)
!3031 = !DILocation(line: 672, column: 27, scope: !2735)
!3032 = !DILocation(line: 675, column: 26, scope: !2723)
!3033 = !DILocation(line: 675, column: 24, scope: !2723)
!3034 = !DILocation(line: 674, column: 19, scope: !2729)
!3035 = distinct !{!3035, !2997, !3036}
!3036 = !DILocation(line: 675, column: 44, scope: !2723)
!3037 = !DILocation(line: 676, column: 15, scope: !2724)
!3038 = !DILocation(line: 0, scope: !2724)
!3039 = !DILocation(line: 678, column: 40, scope: !2719)
!3040 = !DILocation(line: 680, column: 19, scope: !2741)
!3041 = !DILocation(line: 680, column: 45, scope: !2741)
!3042 = !DILocation(line: 680, column: 23, scope: !2741)
!3043 = !DILocation(line: 684, column: 33, scope: !2740)
!3044 = !DILocation(line: 0, scope: !2740)
!3045 = !DILocation(line: 686, column: 17, scope: !2740)
!3046 = !DILocation(line: 405, column: 12, scope: !2711)
!3047 = !DILocation(line: 688, column: 43, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !369, line: 688, column: 25)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !369, line: 687, column: 19)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !369, line: 686, column: 17)
!3051 = distinct !DILexicalBlock(scope: !2740, file: !369, line: 686, column: 17)
!3052 = !DILocation(line: 690, column: 25, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !369, line: 690, column: 25)
!3054 = distinct !DILexicalBlock(scope: !3048, file: !369, line: 689, column: 23)
!3055 = !DILocation(line: 690, column: 25, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3053, file: !369, line: 690, column: 25)
!3057 = !DILocation(line: 690, column: 25, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !369, line: 690, column: 25)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !369, line: 690, column: 25)
!3060 = distinct !DILexicalBlock(scope: !3056, file: !369, line: 690, column: 25)
!3061 = !DILocation(line: 690, column: 25, scope: !3059)
!3062 = !DILocation(line: 690, column: 25, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !369, line: 690, column: 25)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !369, line: 690, column: 25)
!3065 = !DILocation(line: 690, column: 25, scope: !3064)
!3066 = !DILocation(line: 690, column: 25, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !369, line: 690, column: 25)
!3068 = distinct !DILexicalBlock(scope: !3060, file: !369, line: 690, column: 25)
!3069 = !DILocation(line: 690, column: 25, scope: !3068)
!3070 = !DILocation(line: 690, column: 25, scope: !3060)
!3071 = !DILocation(line: 690, column: 25, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !369, line: 690, column: 25)
!3073 = distinct !DILexicalBlock(scope: !3053, file: !369, line: 690, column: 25)
!3074 = !DILocation(line: 690, column: 25, scope: !3073)
!3075 = !DILocation(line: 691, column: 25, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !369, line: 691, column: 25)
!3077 = distinct !DILexicalBlock(scope: !3054, file: !369, line: 691, column: 25)
!3078 = !DILocation(line: 691, column: 25, scope: !3077)
!3079 = !DILocation(line: 692, column: 25, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !369, line: 692, column: 25)
!3081 = distinct !DILexicalBlock(scope: !3054, file: !369, line: 692, column: 25)
!3082 = !DILocation(line: 692, column: 25, scope: !3081)
!3083 = !DILocation(line: 693, column: 38, scope: !3054)
!3084 = !DILocation(line: 693, column: 33, scope: !3054)
!3085 = !DILocation(line: 694, column: 23, scope: !3054)
!3086 = !DILocation(line: 695, column: 30, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3048, file: !369, line: 695, column: 30)
!3088 = !DILocation(line: 695, column: 30, scope: !3048)
!3089 = !DILocation(line: 697, column: 25, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !369, line: 697, column: 25)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !369, line: 697, column: 25)
!3092 = distinct !DILexicalBlock(scope: !3087, file: !369, line: 696, column: 23)
!3093 = !DILocation(line: 697, column: 25, scope: !3091)
!3094 = !DILocation(line: 699, column: 23, scope: !3092)
!3095 = !DILocation(line: 700, column: 35, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3049, file: !369, line: 700, column: 25)
!3097 = !DILocation(line: 700, column: 30, scope: !3096)
!3098 = !DILocation(line: 700, column: 25, scope: !3049)
!3099 = !DILocation(line: 702, column: 21, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !369, line: 702, column: 21)
!3101 = distinct !DILexicalBlock(scope: !3049, file: !369, line: 702, column: 21)
!3102 = !DILocation(line: 702, column: 21, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !369, line: 702, column: 21)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !369, line: 702, column: 21)
!3105 = distinct !DILexicalBlock(scope: !3100, file: !369, line: 702, column: 21)
!3106 = !DILocation(line: 702, column: 21, scope: !3104)
!3107 = !DILocation(line: 702, column: 21, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !369, line: 702, column: 21)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !369, line: 702, column: 21)
!3110 = !DILocation(line: 702, column: 21, scope: !3109)
!3111 = !DILocation(line: 702, column: 21, scope: !3105)
!3112 = !DILocation(line: 0, scope: !3049)
!3113 = !DILocation(line: 703, column: 21, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !369, line: 703, column: 21)
!3115 = distinct !DILexicalBlock(scope: !3049, file: !369, line: 703, column: 21)
!3116 = !DILocation(line: 703, column: 21, scope: !3115)
!3117 = !DILocation(line: 704, column: 25, scope: !3049)
!3118 = !DILocation(line: 686, column: 17, scope: !3050)
!3119 = distinct !{!3119, !3120, !3121}
!3120 = !DILocation(line: 686, column: 17, scope: !3051)
!3121 = !DILocation(line: 705, column: 19, scope: !3051)
!3122 = !DILocation(line: 416, column: 30, scope: !2820)
!3123 = !DILocation(line: 712, column: 34, scope: !2763)
!3124 = !DILocation(line: 715, column: 35, scope: !2763)
!3125 = !DILocation(line: 715, column: 17, scope: !2763)
!3126 = !DILocation(line: 715, column: 47, scope: !2763)
!3127 = !DILocation(line: 715, column: 65, scope: !2763)
!3128 = !DILocation(line: 716, column: 15, scope: !2763)
!3129 = !DILocation(line: 716, column: 11, scope: !2763)
!3130 = !DILocation(line: 712, column: 11, scope: !2711)
!3131 = !DILocation(line: 400, column: 10, scope: !2713)
!3132 = !DILocation(line: 719, column: 5, scope: !2711)
!3133 = !DILocation(line: 720, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !2711, file: !369, line: 720, column: 7)
!3135 = !DILocation(line: 720, column: 7, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3134, file: !369, line: 720, column: 7)
!3137 = !DILocation(line: 720, column: 7, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !369, line: 720, column: 7)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !369, line: 720, column: 7)
!3140 = distinct !DILexicalBlock(scope: !3136, file: !369, line: 720, column: 7)
!3141 = !DILocation(line: 720, column: 7, scope: !3139)
!3142 = !DILocation(line: 720, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !369, line: 720, column: 7)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !369, line: 720, column: 7)
!3145 = !DILocation(line: 720, column: 7, scope: !3144)
!3146 = !DILocation(line: 720, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !369, line: 720, column: 7)
!3148 = distinct !DILexicalBlock(scope: !3140, file: !369, line: 720, column: 7)
!3149 = !DILocation(line: 720, column: 7, scope: !3148)
!3150 = !DILocation(line: 720, column: 7, scope: !3140)
!3151 = !DILocation(line: 720, column: 7, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !369, line: 720, column: 7)
!3153 = distinct !DILexicalBlock(scope: !3134, file: !369, line: 720, column: 7)
!3154 = !DILocation(line: 720, column: 7, scope: !3153)
!3155 = !DILocation(line: 722, column: 5, scope: !2711)
!3156 = !DILocation(line: 723, column: 7, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !369, line: 723, column: 7)
!3158 = distinct !DILexicalBlock(scope: !2711, file: !369, line: 723, column: 7)
!3159 = !DILocation(line: 424, column: 9, scope: !2711)
!3160 = !DILocation(line: 723, column: 7, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !369, line: 723, column: 7)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !369, line: 723, column: 7)
!3163 = distinct !DILexicalBlock(scope: !3157, file: !369, line: 723, column: 7)
!3164 = !DILocation(line: 723, column: 7, scope: !3162)
!3165 = !DILocation(line: 723, column: 7, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !369, line: 723, column: 7)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !369, line: 723, column: 7)
!3168 = !DILocation(line: 723, column: 7, scope: !3167)
!3169 = !DILocation(line: 723, column: 7, scope: !3163)
!3170 = !DILocation(line: 724, column: 7, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !369, line: 724, column: 7)
!3172 = distinct !DILexicalBlock(scope: !2711, file: !369, line: 724, column: 7)
!3173 = !DILocation(line: 724, column: 7, scope: !3172)
!3174 = !DILocation(line: 726, column: 13, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !2711, file: !369, line: 726, column: 11)
!3176 = !DILocation(line: 726, column: 11, scope: !2711)
!3177 = !DILocation(line: 728, column: 5, scope: !2712)
!3178 = !DILocation(line: 400, column: 75, scope: !2712)
!3179 = !DILocation(line: 400, column: 3, scope: !2712)
!3180 = distinct !{!3180, !2838, !3181}
!3181 = !DILocation(line: 728, column: 5, scope: !2713)
!3182 = !DILocation(line: 730, column: 11, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !2684, file: !369, line: 730, column: 7)
!3184 = !DILocation(line: 730, column: 16, scope: !3183)
!3185 = !DILocation(line: 738, column: 51, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !2684, file: !369, line: 738, column: 7)
!3187 = !DILocation(line: 739, column: 10, scope: !3186)
!3188 = !DILocation(line: 741, column: 11, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !369, line: 741, column: 11)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !369, line: 740, column: 5)
!3191 = !DILocation(line: 741, column: 11, scope: !3190)
!3192 = !DILocation(line: 742, column: 16, scope: !3189)
!3193 = !DILocation(line: 742, column: 9, scope: !3189)
!3194 = !DILocation(line: 746, column: 18, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3189, file: !369, line: 746, column: 16)
!3196 = !DILocation(line: 746, column: 32, scope: !3195)
!3197 = !DILocation(line: 746, column: 29, scope: !3195)
!3198 = !DILocation(line: 755, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !2684, file: !369, line: 755, column: 7)
!3200 = !DILocation(line: 755, column: 20, scope: !3199)
!3201 = !DILocation(line: 756, column: 12, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !369, line: 756, column: 5)
!3203 = distinct !DILexicalBlock(scope: !3199, file: !369, line: 756, column: 5)
!3204 = !DILocation(line: 756, column: 5, scope: !3203)
!3205 = !DILocation(line: 757, column: 7, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !369, line: 757, column: 7)
!3207 = distinct !DILexicalBlock(scope: !3202, file: !369, line: 757, column: 7)
!3208 = !DILocation(line: 757, column: 7, scope: !3207)
!3209 = !DILocation(line: 756, column: 39, scope: !3202)
!3210 = distinct !{!3210, !3204, !3211}
!3211 = !DILocation(line: 757, column: 7, scope: !3203)
!3212 = !DILocation(line: 759, column: 11, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !2684, file: !369, line: 759, column: 7)
!3214 = !DILocation(line: 759, column: 7, scope: !2684)
!3215 = !DILocation(line: 760, column: 5, scope: !3213)
!3216 = !DILocation(line: 760, column: 17, scope: !3213)
!3217 = !DILocation(line: 763, column: 2, scope: !2684)
!3218 = !DILocation(line: 766, column: 51, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !2684, file: !369, line: 766, column: 7)
!3220 = !DILocation(line: 766, column: 21, scope: !3219)
!3221 = !DILocation(line: 770, column: 42, scope: !2684)
!3222 = !DILocation(line: 768, column: 10, scope: !2684)
!3223 = !DILocation(line: 768, column: 3, scope: !2684)
!3224 = !DILocation(line: 772, column: 1, scope: !2684)
!3225 = distinct !DISubprogram(name: "gettext_quote", scope: !369, file: !369, line: 207, type: !3226, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!37, !37, !11}
!3228 = !{!3229, !3230, !3231, !3232}
!3229 = !DILocalVariable(name: "msgid", arg: 1, scope: !3225, file: !369, line: 207, type: !37)
!3230 = !DILocalVariable(name: "s", arg: 2, scope: !3225, file: !369, line: 207, type: !11)
!3231 = !DILocalVariable(name: "translation", scope: !3225, file: !369, line: 209, type: !37)
!3232 = !DILocalVariable(name: "locale_code", scope: !3225, file: !369, line: 210, type: !37)
!3233 = !DILocation(line: 0, scope: !3225)
!3234 = !DILocation(line: 209, column: 29, scope: !3225)
!3235 = !DILocation(line: 212, column: 19, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3225, file: !369, line: 212, column: 7)
!3237 = !DILocation(line: 212, column: 7, scope: !3225)
!3238 = !DILocation(line: 233, column: 17, scope: !3225)
!3239 = !DILocalVariable(name: "s1", arg: 1, scope: !3240, file: !3241, line: 160, type: !37)
!3240 = distinct !DISubprogram(name: "strcaseeq0", scope: !3241, file: !3241, line: 160, type: !3242, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3244)
!3241 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!39, !37, !37, !36, !36, !36, !36, !36, !36, !36, !36, !36}
!3244 = !{!3239, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254}
!3245 = !DILocalVariable(name: "s2", arg: 2, scope: !3240, file: !3241, line: 160, type: !37)
!3246 = !DILocalVariable(name: "s20", arg: 3, scope: !3240, file: !3241, line: 160, type: !36)
!3247 = !DILocalVariable(name: "s21", arg: 4, scope: !3240, file: !3241, line: 160, type: !36)
!3248 = !DILocalVariable(name: "s22", arg: 5, scope: !3240, file: !3241, line: 160, type: !36)
!3249 = !DILocalVariable(name: "s23", arg: 6, scope: !3240, file: !3241, line: 160, type: !36)
!3250 = !DILocalVariable(name: "s24", arg: 7, scope: !3240, file: !3241, line: 160, type: !36)
!3251 = !DILocalVariable(name: "s25", arg: 8, scope: !3240, file: !3241, line: 160, type: !36)
!3252 = !DILocalVariable(name: "s26", arg: 9, scope: !3240, file: !3241, line: 160, type: !36)
!3253 = !DILocalVariable(name: "s27", arg: 10, scope: !3240, file: !3241, line: 160, type: !36)
!3254 = !DILocalVariable(name: "s28", arg: 11, scope: !3240, file: !3241, line: 160, type: !36)
!3255 = !DILocation(line: 0, scope: !3240, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 234, column: 7, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3225, file: !369, line: 234, column: 7)
!3258 = !DILocation(line: 162, column: 7, scope: !3259, inlinedAt: !3256)
!3259 = distinct !DILexicalBlock(scope: !3240, file: !3241, line: 162, column: 7)
!3260 = !DILocalVariable(name: "s1", arg: 1, scope: !3261, file: !3241, line: 146, type: !37)
!3261 = distinct !DISubprogram(name: "strcaseeq1", scope: !3241, file: !3241, line: 146, type: !3262, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!39, !37, !37, !36, !36, !36, !36, !36, !36, !36, !36}
!3264 = !{!3260, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273}
!3265 = !DILocalVariable(name: "s2", arg: 2, scope: !3261, file: !3241, line: 146, type: !37)
!3266 = !DILocalVariable(name: "s21", arg: 3, scope: !3261, file: !3241, line: 146, type: !36)
!3267 = !DILocalVariable(name: "s22", arg: 4, scope: !3261, file: !3241, line: 146, type: !36)
!3268 = !DILocalVariable(name: "s23", arg: 5, scope: !3261, file: !3241, line: 146, type: !36)
!3269 = !DILocalVariable(name: "s24", arg: 6, scope: !3261, file: !3241, line: 146, type: !36)
!3270 = !DILocalVariable(name: "s25", arg: 7, scope: !3261, file: !3241, line: 146, type: !36)
!3271 = !DILocalVariable(name: "s26", arg: 8, scope: !3261, file: !3241, line: 146, type: !36)
!3272 = !DILocalVariable(name: "s27", arg: 9, scope: !3261, file: !3241, line: 146, type: !36)
!3273 = !DILocalVariable(name: "s28", arg: 10, scope: !3261, file: !3241, line: 146, type: !36)
!3274 = !DILocation(line: 0, scope: !3261, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 167, column: 16, scope: !3276, inlinedAt: !3256)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3241, line: 164, column: 11)
!3277 = distinct !DILexicalBlock(scope: !3259, file: !3241, line: 163, column: 5)
!3278 = !DILocation(line: 148, column: 7, scope: !3279, inlinedAt: !3275)
!3279 = distinct !DILexicalBlock(scope: !3261, file: !3241, line: 148, column: 7)
!3280 = !DILocalVariable(name: "s1", arg: 1, scope: !3281, file: !3241, line: 132, type: !37)
!3281 = distinct !DISubprogram(name: "strcaseeq2", scope: !3241, file: !3241, line: 132, type: !3282, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!39, !37, !37, !36, !36, !36, !36, !36, !36, !36}
!3284 = !{!3280, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292}
!3285 = !DILocalVariable(name: "s2", arg: 2, scope: !3281, file: !3241, line: 132, type: !37)
!3286 = !DILocalVariable(name: "s22", arg: 3, scope: !3281, file: !3241, line: 132, type: !36)
!3287 = !DILocalVariable(name: "s23", arg: 4, scope: !3281, file: !3241, line: 132, type: !36)
!3288 = !DILocalVariable(name: "s24", arg: 5, scope: !3281, file: !3241, line: 132, type: !36)
!3289 = !DILocalVariable(name: "s25", arg: 6, scope: !3281, file: !3241, line: 132, type: !36)
!3290 = !DILocalVariable(name: "s26", arg: 7, scope: !3281, file: !3241, line: 132, type: !36)
!3291 = !DILocalVariable(name: "s27", arg: 8, scope: !3281, file: !3241, line: 132, type: !36)
!3292 = !DILocalVariable(name: "s28", arg: 9, scope: !3281, file: !3241, line: 132, type: !36)
!3293 = !DILocation(line: 0, scope: !3281, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 153, column: 16, scope: !3295, inlinedAt: !3275)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3241, line: 150, column: 11)
!3296 = distinct !DILexicalBlock(scope: !3279, file: !3241, line: 149, column: 5)
!3297 = !DILocation(line: 134, column: 7, scope: !3298, inlinedAt: !3294)
!3298 = distinct !DILexicalBlock(scope: !3281, file: !3241, line: 134, column: 7)
!3299 = !DILocalVariable(name: "s1", arg: 1, scope: !3300, file: !3241, line: 118, type: !37)
!3300 = distinct !DISubprogram(name: "strcaseeq3", scope: !3241, file: !3241, line: 118, type: !3301, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!39, !37, !37, !36, !36, !36, !36, !36, !36}
!3303 = !{!3299, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!3304 = !DILocalVariable(name: "s2", arg: 2, scope: !3300, file: !3241, line: 118, type: !37)
!3305 = !DILocalVariable(name: "s23", arg: 3, scope: !3300, file: !3241, line: 118, type: !36)
!3306 = !DILocalVariable(name: "s24", arg: 4, scope: !3300, file: !3241, line: 118, type: !36)
!3307 = !DILocalVariable(name: "s25", arg: 5, scope: !3300, file: !3241, line: 118, type: !36)
!3308 = !DILocalVariable(name: "s26", arg: 6, scope: !3300, file: !3241, line: 118, type: !36)
!3309 = !DILocalVariable(name: "s27", arg: 7, scope: !3300, file: !3241, line: 118, type: !36)
!3310 = !DILocalVariable(name: "s28", arg: 8, scope: !3300, file: !3241, line: 118, type: !36)
!3311 = !DILocation(line: 0, scope: !3300, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 139, column: 16, scope: !3313, inlinedAt: !3294)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3241, line: 136, column: 11)
!3314 = distinct !DILexicalBlock(scope: !3298, file: !3241, line: 135, column: 5)
!3315 = !DILocation(line: 120, column: 7, scope: !3316, inlinedAt: !3312)
!3316 = distinct !DILexicalBlock(scope: !3300, file: !3241, line: 120, column: 7)
!3317 = !DILocation(line: 120, column: 7, scope: !3300, inlinedAt: !3312)
!3318 = !DILocalVariable(name: "s1", arg: 1, scope: !3319, file: !3241, line: 104, type: !37)
!3319 = distinct !DISubprogram(name: "strcaseeq4", scope: !3241, file: !3241, line: 104, type: !3320, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!39, !37, !37, !36, !36, !36, !36, !36}
!3322 = !{!3318, !3323, !3324, !3325, !3326, !3327, !3328}
!3323 = !DILocalVariable(name: "s2", arg: 2, scope: !3319, file: !3241, line: 104, type: !37)
!3324 = !DILocalVariable(name: "s24", arg: 3, scope: !3319, file: !3241, line: 104, type: !36)
!3325 = !DILocalVariable(name: "s25", arg: 4, scope: !3319, file: !3241, line: 104, type: !36)
!3326 = !DILocalVariable(name: "s26", arg: 5, scope: !3319, file: !3241, line: 104, type: !36)
!3327 = !DILocalVariable(name: "s27", arg: 6, scope: !3319, file: !3241, line: 104, type: !36)
!3328 = !DILocalVariable(name: "s28", arg: 7, scope: !3319, file: !3241, line: 104, type: !36)
!3329 = !DILocation(line: 0, scope: !3319, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 125, column: 16, scope: !3331, inlinedAt: !3312)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !3241, line: 122, column: 11)
!3332 = distinct !DILexicalBlock(scope: !3316, file: !3241, line: 121, column: 5)
!3333 = !DILocation(line: 106, column: 7, scope: !3334, inlinedAt: !3330)
!3334 = distinct !DILexicalBlock(scope: !3319, file: !3241, line: 106, column: 7)
!3335 = !DILocation(line: 106, column: 7, scope: !3319, inlinedAt: !3330)
!3336 = !DILocalVariable(name: "s1", arg: 1, scope: !3337, file: !3241, line: 90, type: !37)
!3337 = distinct !DISubprogram(name: "strcaseeq5", scope: !3241, file: !3241, line: 90, type: !3338, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!39, !37, !37, !36, !36, !36, !36}
!3340 = !{!3336, !3341, !3342, !3343, !3344, !3345}
!3341 = !DILocalVariable(name: "s2", arg: 2, scope: !3337, file: !3241, line: 90, type: !37)
!3342 = !DILocalVariable(name: "s25", arg: 3, scope: !3337, file: !3241, line: 90, type: !36)
!3343 = !DILocalVariable(name: "s26", arg: 4, scope: !3337, file: !3241, line: 90, type: !36)
!3344 = !DILocalVariable(name: "s27", arg: 5, scope: !3337, file: !3241, line: 90, type: !36)
!3345 = !DILocalVariable(name: "s28", arg: 6, scope: !3337, file: !3241, line: 90, type: !36)
!3346 = !DILocation(line: 0, scope: !3337, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 111, column: 16, scope: !3348, inlinedAt: !3330)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !3241, line: 108, column: 11)
!3349 = distinct !DILexicalBlock(scope: !3334, file: !3241, line: 107, column: 5)
!3350 = !DILocation(line: 92, column: 7, scope: !3351, inlinedAt: !3347)
!3351 = distinct !DILexicalBlock(scope: !3337, file: !3241, line: 92, column: 7)
!3352 = !DILocation(line: 92, column: 7, scope: !3337, inlinedAt: !3347)
!3353 = !DILocation(line: 235, column: 12, scope: !3257)
!3354 = !DILocation(line: 235, column: 21, scope: !3257)
!3355 = !DILocation(line: 235, column: 5, scope: !3257)
!3356 = !DILocation(line: 0, scope: !3261, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 167, column: 16, scope: !3276, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 236, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3225, file: !369, line: 236, column: 7)
!3360 = !DILocation(line: 148, column: 7, scope: !3279, inlinedAt: !3357)
!3361 = !DILocation(line: 0, scope: !3281, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 153, column: 16, scope: !3295, inlinedAt: !3357)
!3363 = !DILocation(line: 134, column: 7, scope: !3298, inlinedAt: !3362)
!3364 = !DILocation(line: 134, column: 7, scope: !3281, inlinedAt: !3362)
!3365 = !DILocation(line: 0, scope: !3300, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 139, column: 16, scope: !3313, inlinedAt: !3362)
!3367 = !DILocation(line: 120, column: 7, scope: !3316, inlinedAt: !3366)
!3368 = !DILocation(line: 120, column: 7, scope: !3300, inlinedAt: !3366)
!3369 = !DILocation(line: 0, scope: !3319, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 125, column: 16, scope: !3331, inlinedAt: !3366)
!3371 = !DILocation(line: 106, column: 7, scope: !3334, inlinedAt: !3370)
!3372 = !DILocation(line: 106, column: 7, scope: !3319, inlinedAt: !3370)
!3373 = !DILocation(line: 0, scope: !3337, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 111, column: 16, scope: !3348, inlinedAt: !3370)
!3375 = !DILocation(line: 92, column: 7, scope: !3351, inlinedAt: !3374)
!3376 = !DILocation(line: 92, column: 7, scope: !3337, inlinedAt: !3374)
!3377 = !DILocalVariable(name: "s1", arg: 1, scope: !3378, file: !3241, line: 76, type: !37)
!3378 = distinct !DISubprogram(name: "strcaseeq6", scope: !3241, file: !3241, line: 76, type: !3379, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3381)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!39, !37, !37, !36, !36, !36}
!3381 = !{!3377, !3382, !3383, !3384, !3385}
!3382 = !DILocalVariable(name: "s2", arg: 2, scope: !3378, file: !3241, line: 76, type: !37)
!3383 = !DILocalVariable(name: "s26", arg: 3, scope: !3378, file: !3241, line: 76, type: !36)
!3384 = !DILocalVariable(name: "s27", arg: 4, scope: !3378, file: !3241, line: 76, type: !36)
!3385 = !DILocalVariable(name: "s28", arg: 5, scope: !3378, file: !3241, line: 76, type: !36)
!3386 = !DILocation(line: 0, scope: !3378, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 97, column: 16, scope: !3388, inlinedAt: !3374)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !3241, line: 94, column: 11)
!3389 = distinct !DILexicalBlock(scope: !3351, file: !3241, line: 93, column: 5)
!3390 = !DILocation(line: 78, column: 7, scope: !3391, inlinedAt: !3387)
!3391 = distinct !DILexicalBlock(scope: !3378, file: !3241, line: 78, column: 7)
!3392 = !DILocation(line: 78, column: 7, scope: !3378, inlinedAt: !3387)
!3393 = !DILocalVariable(name: "s1", arg: 1, scope: !3394, file: !3241, line: 62, type: !37)
!3394 = distinct !DISubprogram(name: "strcaseeq7", scope: !3241, file: !3241, line: 62, type: !3395, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!39, !37, !37, !36, !36}
!3397 = !{!3393, !3398, !3399, !3400}
!3398 = !DILocalVariable(name: "s2", arg: 2, scope: !3394, file: !3241, line: 62, type: !37)
!3399 = !DILocalVariable(name: "s27", arg: 3, scope: !3394, file: !3241, line: 62, type: !36)
!3400 = !DILocalVariable(name: "s28", arg: 4, scope: !3394, file: !3241, line: 62, type: !36)
!3401 = !DILocation(line: 0, scope: !3394, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 83, column: 16, scope: !3403, inlinedAt: !3387)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !3241, line: 80, column: 11)
!3404 = distinct !DILexicalBlock(scope: !3391, file: !3241, line: 79, column: 5)
!3405 = !DILocation(line: 64, column: 7, scope: !3406, inlinedAt: !3402)
!3406 = distinct !DILexicalBlock(scope: !3394, file: !3241, line: 64, column: 7)
!3407 = !DILocation(line: 236, column: 7, scope: !3225)
!3408 = !DILocation(line: 237, column: 12, scope: !3359)
!3409 = !DILocation(line: 237, column: 21, scope: !3359)
!3410 = !DILocation(line: 237, column: 5, scope: !3359)
!3411 = !DILocation(line: 239, column: 13, scope: !3225)
!3412 = !DILocation(line: 239, column: 11, scope: !3225)
!3413 = !DILocation(line: 239, column: 3, scope: !3225)
!3414 = !DILocation(line: 240, column: 1, scope: !3225)
!3415 = distinct !DISubprogram(name: "quotearg_alloc", scope: !369, file: !369, line: 799, type: !3416, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!35, !37, !94, !399}
!3418 = !{!3419, !3420, !3421}
!3419 = !DILocalVariable(name: "arg", arg: 1, scope: !3415, file: !369, line: 799, type: !37)
!3420 = !DILocalVariable(name: "argsize", arg: 2, scope: !3415, file: !369, line: 799, type: !94)
!3421 = !DILocalVariable(name: "o", arg: 3, scope: !3415, file: !369, line: 800, type: !399)
!3422 = !DILocation(line: 0, scope: !3415)
!3423 = !DILocalVariable(name: "arg", arg: 1, scope: !3424, file: !369, line: 812, type: !37)
!3424 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !369, file: !369, line: 812, type: !3425, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!35, !37, !94, !552, !399}
!3427 = !{!3423, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435}
!3428 = !DILocalVariable(name: "argsize", arg: 2, scope: !3424, file: !369, line: 812, type: !94)
!3429 = !DILocalVariable(name: "size", arg: 3, scope: !3424, file: !369, line: 812, type: !552)
!3430 = !DILocalVariable(name: "o", arg: 4, scope: !3424, file: !369, line: 813, type: !399)
!3431 = !DILocalVariable(name: "p", scope: !3424, file: !369, line: 815, type: !399)
!3432 = !DILocalVariable(name: "e", scope: !3424, file: !369, line: 816, type: !39)
!3433 = !DILocalVariable(name: "flags", scope: !3424, file: !369, line: 818, type: !39)
!3434 = !DILocalVariable(name: "bufsize", scope: !3424, file: !369, line: 819, type: !94)
!3435 = !DILocalVariable(name: "buf", scope: !3424, file: !369, line: 823, type: !35)
!3436 = !DILocation(line: 0, scope: !3424, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 802, column: 10, scope: !3415)
!3438 = !DILocation(line: 815, column: 37, scope: !3424, inlinedAt: !3437)
!3439 = !DILocation(line: 816, column: 11, scope: !3424, inlinedAt: !3437)
!3440 = !DILocation(line: 818, column: 18, scope: !3424, inlinedAt: !3437)
!3441 = !DILocation(line: 818, column: 24, scope: !3424, inlinedAt: !3437)
!3442 = !DILocation(line: 819, column: 69, scope: !3424, inlinedAt: !3437)
!3443 = !DILocation(line: 820, column: 53, scope: !3424, inlinedAt: !3437)
!3444 = !DILocation(line: 821, column: 49, scope: !3424, inlinedAt: !3437)
!3445 = !DILocation(line: 822, column: 49, scope: !3424, inlinedAt: !3437)
!3446 = !DILocation(line: 819, column: 20, scope: !3424, inlinedAt: !3437)
!3447 = !DILocation(line: 822, column: 62, scope: !3424, inlinedAt: !3437)
!3448 = !DILocalVariable(name: "n", arg: 1, scope: !3449, file: !182, line: 216, type: !94)
!3449 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !3450, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!35, !94}
!3452 = !{!3448}
!3453 = !DILocation(line: 0, scope: !3449, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 823, column: 15, scope: !3424, inlinedAt: !3437)
!3455 = !DILocation(line: 218, column: 10, scope: !3449, inlinedAt: !3454)
!3456 = !DILocation(line: 824, column: 60, scope: !3424, inlinedAt: !3437)
!3457 = !DILocation(line: 826, column: 32, scope: !3424, inlinedAt: !3437)
!3458 = !DILocation(line: 826, column: 47, scope: !3424, inlinedAt: !3437)
!3459 = !DILocation(line: 824, column: 3, scope: !3424, inlinedAt: !3437)
!3460 = !DILocation(line: 827, column: 9, scope: !3424, inlinedAt: !3437)
!3461 = !DILocation(line: 802, column: 3, scope: !3415)
!3462 = !DILocation(line: 0, scope: !3424)
!3463 = !DILocation(line: 815, column: 37, scope: !3424)
!3464 = !DILocation(line: 816, column: 11, scope: !3424)
!3465 = !DILocation(line: 818, column: 18, scope: !3424)
!3466 = !DILocation(line: 818, column: 27, scope: !3424)
!3467 = !DILocation(line: 818, column: 24, scope: !3424)
!3468 = !DILocation(line: 819, column: 69, scope: !3424)
!3469 = !DILocation(line: 820, column: 53, scope: !3424)
!3470 = !DILocation(line: 821, column: 49, scope: !3424)
!3471 = !DILocation(line: 822, column: 49, scope: !3424)
!3472 = !DILocation(line: 819, column: 20, scope: !3424)
!3473 = !DILocation(line: 822, column: 62, scope: !3424)
!3474 = !DILocation(line: 0, scope: !3449, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 823, column: 15, scope: !3424)
!3476 = !DILocation(line: 218, column: 10, scope: !3449, inlinedAt: !3475)
!3477 = !DILocation(line: 824, column: 60, scope: !3424)
!3478 = !DILocation(line: 826, column: 32, scope: !3424)
!3479 = !DILocation(line: 826, column: 47, scope: !3424)
!3480 = !DILocation(line: 824, column: 3, scope: !3424)
!3481 = !DILocation(line: 827, column: 9, scope: !3424)
!3482 = !DILocation(line: 828, column: 7, scope: !3424)
!3483 = !DILocation(line: 829, column: 11, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3424, file: !369, line: 828, column: 7)
!3485 = !DILocation(line: 829, column: 5, scope: !3484)
!3486 = !DILocation(line: 830, column: 3, scope: !3424)
!3487 = distinct !DISubprogram(name: "quotearg_free", scope: !369, file: !369, line: 848, type: !121, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3488)
!3488 = !{!3489, !3490}
!3489 = !DILocalVariable(name: "sv", scope: !3487, file: !369, line: 850, type: !465)
!3490 = !DILocalVariable(name: "i", scope: !3487, file: !369, line: 851, type: !39)
!3491 = !DILocation(line: 850, column: 24, scope: !3487)
!3492 = !DILocation(line: 0, scope: !3487)
!3493 = !DILocation(line: 852, column: 19, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !369, line: 852, column: 3)
!3495 = distinct !DILexicalBlock(scope: !3487, file: !369, line: 852, column: 3)
!3496 = !DILocation(line: 852, column: 17, scope: !3494)
!3497 = !DILocation(line: 852, column: 3, scope: !3495)
!3498 = !DILocation(line: 853, column: 17, scope: !3494)
!3499 = !{!3500, !1212, i64 8}
!3500 = !{!"slotvec", !1752, i64 0, !1212, i64 8}
!3501 = !DILocation(line: 853, column: 5, scope: !3494)
!3502 = !DILocation(line: 852, column: 28, scope: !3494)
!3503 = distinct !{!3503, !3497, !3504}
!3504 = !DILocation(line: 853, column: 20, scope: !3495)
!3505 = !DILocation(line: 854, column: 13, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3487, file: !369, line: 854, column: 7)
!3507 = !DILocation(line: 854, column: 17, scope: !3506)
!3508 = !DILocation(line: 854, column: 7, scope: !3487)
!3509 = !DILocation(line: 856, column: 7, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !369, line: 855, column: 5)
!3511 = !DILocation(line: 857, column: 21, scope: !3510)
!3512 = !{!3500, !1752, i64 0}
!3513 = !DILocation(line: 858, column: 20, scope: !3510)
!3514 = !DILocation(line: 859, column: 5, scope: !3510)
!3515 = !DILocation(line: 860, column: 10, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3487, file: !369, line: 860, column: 7)
!3517 = !DILocation(line: 860, column: 7, scope: !3487)
!3518 = !DILocation(line: 862, column: 13, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3516, file: !369, line: 861, column: 5)
!3520 = !DILocation(line: 862, column: 7, scope: !3519)
!3521 = !DILocation(line: 863, column: 15, scope: !3519)
!3522 = !DILocation(line: 864, column: 5, scope: !3519)
!3523 = !DILocation(line: 865, column: 10, scope: !3487)
!3524 = !DILocation(line: 866, column: 1, scope: !3487)
!3525 = distinct !DISubprogram(name: "quotearg_n", scope: !369, file: !369, line: 931, type: !108, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3526)
!3526 = !{!3527, !3528}
!3527 = !DILocalVariable(name: "n", arg: 1, scope: !3525, file: !369, line: 931, type: !39)
!3528 = !DILocalVariable(name: "arg", arg: 2, scope: !3525, file: !369, line: 931, type: !37)
!3529 = !DILocation(line: 0, scope: !3525)
!3530 = !DILocation(line: 933, column: 10, scope: !3525)
!3531 = !DILocation(line: 933, column: 3, scope: !3525)
!3532 = distinct !DISubprogram(name: "quotearg_n_options", scope: !369, file: !369, line: 877, type: !3533, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!35, !39, !37, !94, !399}
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3545, !3546, !3548, !3549, !3550}
!3536 = !DILocalVariable(name: "n", arg: 1, scope: !3532, file: !369, line: 877, type: !39)
!3537 = !DILocalVariable(name: "arg", arg: 2, scope: !3532, file: !369, line: 877, type: !37)
!3538 = !DILocalVariable(name: "argsize", arg: 3, scope: !3532, file: !369, line: 877, type: !94)
!3539 = !DILocalVariable(name: "options", arg: 4, scope: !3532, file: !369, line: 878, type: !399)
!3540 = !DILocalVariable(name: "e", scope: !3532, file: !369, line: 880, type: !39)
!3541 = !DILocalVariable(name: "sv", scope: !3532, file: !369, line: 882, type: !465)
!3542 = !DILocalVariable(name: "preallocated", scope: !3543, file: !369, line: 889, type: !223)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !369, line: 888, column: 5)
!3544 = distinct !DILexicalBlock(scope: !3532, file: !369, line: 887, column: 7)
!3545 = !DILocalVariable(name: "nmax", scope: !3543, file: !369, line: 890, type: !39)
!3546 = !DILocalVariable(name: "size", scope: !3547, file: !369, line: 903, type: !94)
!3547 = distinct !DILexicalBlock(scope: !3532, file: !369, line: 902, column: 3)
!3548 = !DILocalVariable(name: "val", scope: !3547, file: !369, line: 904, type: !35)
!3549 = !DILocalVariable(name: "flags", scope: !3547, file: !369, line: 906, type: !39)
!3550 = !DILocalVariable(name: "qsize", scope: !3547, file: !369, line: 907, type: !94)
!3551 = !DILocation(line: 0, scope: !3532)
!3552 = !DILocation(line: 880, column: 11, scope: !3532)
!3553 = !DILocation(line: 882, column: 24, scope: !3532)
!3554 = !DILocation(line: 884, column: 9, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3532, file: !369, line: 884, column: 7)
!3556 = !DILocation(line: 884, column: 7, scope: !3532)
!3557 = !DILocation(line: 885, column: 5, scope: !3555)
!3558 = !DILocation(line: 887, column: 7, scope: !3544)
!3559 = !DILocation(line: 887, column: 14, scope: !3544)
!3560 = !DILocation(line: 887, column: 7, scope: !3532)
!3561 = !DILocation(line: 889, column: 31, scope: !3543)
!3562 = !DILocation(line: 0, scope: !3543)
!3563 = !DILocation(line: 892, column: 16, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3543, file: !369, line: 892, column: 11)
!3565 = !DILocation(line: 892, column: 11, scope: !3543)
!3566 = !DILocation(line: 893, column: 9, scope: !3564)
!3567 = !DILocation(line: 895, column: 32, scope: !3543)
!3568 = !DILocation(line: 895, column: 61, scope: !3543)
!3569 = !DILocation(line: 895, column: 58, scope: !3543)
!3570 = !DILocation(line: 895, column: 66, scope: !3543)
!3571 = !DILocation(line: 895, column: 22, scope: !3543)
!3572 = !DILocation(line: 895, column: 15, scope: !3543)
!3573 = !DILocation(line: 896, column: 11, scope: !3543)
!3574 = !DILocation(line: 897, column: 15, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3543, file: !369, line: 896, column: 11)
!3576 = !{i64 0, i64 8, !1823, i64 8, i64 8, !1211}
!3577 = !DILocation(line: 897, column: 9, scope: !3575)
!3578 = !DILocation(line: 898, column: 20, scope: !3543)
!3579 = !DILocation(line: 898, column: 18, scope: !3543)
!3580 = !DILocation(line: 898, column: 15, scope: !3543)
!3581 = !DILocation(line: 898, column: 38, scope: !3543)
!3582 = !DILocation(line: 898, column: 31, scope: !3543)
!3583 = !DILocation(line: 898, column: 48, scope: !3543)
!3584 = !DILocation(line: 0, scope: !2983, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 898, column: 7, scope: !3543)
!3586 = !DILocation(line: 71, column: 10, scope: !2983, inlinedAt: !3585)
!3587 = !DILocation(line: 899, column: 14, scope: !3543)
!3588 = !DILocation(line: 900, column: 5, scope: !3543)
!3589 = !DILocation(line: 903, column: 19, scope: !3547)
!3590 = !DILocation(line: 903, column: 25, scope: !3547)
!3591 = !DILocation(line: 0, scope: !3547)
!3592 = !DILocation(line: 904, column: 23, scope: !3547)
!3593 = !DILocation(line: 906, column: 26, scope: !3547)
!3594 = !DILocation(line: 906, column: 32, scope: !3547)
!3595 = !DILocation(line: 908, column: 55, scope: !3547)
!3596 = !DILocation(line: 909, column: 46, scope: !3547)
!3597 = !DILocation(line: 910, column: 55, scope: !3547)
!3598 = !DILocation(line: 911, column: 55, scope: !3547)
!3599 = !DILocation(line: 907, column: 20, scope: !3547)
!3600 = !DILocation(line: 913, column: 14, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3547, file: !369, line: 913, column: 9)
!3602 = !DILocation(line: 913, column: 9, scope: !3547)
!3603 = !DILocation(line: 915, column: 35, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3601, file: !369, line: 914, column: 7)
!3605 = !DILocation(line: 915, column: 20, scope: !3604)
!3606 = !DILocation(line: 916, column: 17, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !369, line: 916, column: 13)
!3608 = !DILocation(line: 916, column: 13, scope: !3604)
!3609 = !DILocation(line: 917, column: 11, scope: !3607)
!3610 = !DILocation(line: 0, scope: !3449, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 918, column: 27, scope: !3604)
!3612 = !DILocation(line: 218, column: 10, scope: !3449, inlinedAt: !3611)
!3613 = !DILocation(line: 918, column: 19, scope: !3604)
!3614 = !DILocation(line: 919, column: 69, scope: !3604)
!3615 = !DILocation(line: 921, column: 44, scope: !3604)
!3616 = !DILocation(line: 922, column: 44, scope: !3604)
!3617 = !DILocation(line: 919, column: 9, scope: !3604)
!3618 = !DILocation(line: 923, column: 7, scope: !3604)
!3619 = !DILocation(line: 925, column: 11, scope: !3547)
!3620 = !DILocation(line: 926, column: 5, scope: !3547)
!3621 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !369, file: !369, line: 937, type: !3622, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!35, !39, !37, !94}
!3624 = !{!3625, !3626, !3627}
!3625 = !DILocalVariable(name: "n", arg: 1, scope: !3621, file: !369, line: 937, type: !39)
!3626 = !DILocalVariable(name: "arg", arg: 2, scope: !3621, file: !369, line: 937, type: !37)
!3627 = !DILocalVariable(name: "argsize", arg: 3, scope: !3621, file: !369, line: 937, type: !94)
!3628 = !DILocation(line: 0, scope: !3621)
!3629 = !DILocation(line: 939, column: 10, scope: !3621)
!3630 = !DILocation(line: 939, column: 3, scope: !3621)
!3631 = distinct !DISubprogram(name: "quotearg", scope: !369, file: !369, line: 943, type: !114, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3632)
!3632 = !{!3633}
!3633 = !DILocalVariable(name: "arg", arg: 1, scope: !3631, file: !369, line: 943, type: !37)
!3634 = !DILocation(line: 0, scope: !3631)
!3635 = !DILocation(line: 0, scope: !3525, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 945, column: 10, scope: !3631)
!3637 = !DILocation(line: 933, column: 10, scope: !3525, inlinedAt: !3636)
!3638 = !DILocation(line: 945, column: 3, scope: !3631)
!3639 = distinct !DISubprogram(name: "quotearg_mem", scope: !369, file: !369, line: 949, type: !3640, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!35, !37, !94}
!3642 = !{!3643, !3644}
!3643 = !DILocalVariable(name: "arg", arg: 1, scope: !3639, file: !369, line: 949, type: !37)
!3644 = !DILocalVariable(name: "argsize", arg: 2, scope: !3639, file: !369, line: 949, type: !94)
!3645 = !DILocation(line: 0, scope: !3639)
!3646 = !DILocation(line: 0, scope: !3621, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 951, column: 10, scope: !3639)
!3648 = !DILocation(line: 939, column: 10, scope: !3621, inlinedAt: !3647)
!3649 = !DILocation(line: 951, column: 3, scope: !3639)
!3650 = distinct !DISubprogram(name: "quotearg_n_style", scope: !369, file: !369, line: 955, type: !176, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3651)
!3651 = !{!3652, !3653, !3654, !3655}
!3652 = !DILocalVariable(name: "n", arg: 1, scope: !3650, file: !369, line: 955, type: !39)
!3653 = !DILocalVariable(name: "s", arg: 2, scope: !3650, file: !369, line: 955, type: !11)
!3654 = !DILocalVariable(name: "arg", arg: 3, scope: !3650, file: !369, line: 955, type: !37)
!3655 = !DILocalVariable(name: "o", scope: !3650, file: !369, line: 957, type: !400)
!3656 = !DILocation(line: 0, scope: !3650)
!3657 = !DILocation(line: 957, column: 3, scope: !3650)
!3658 = !DILocation(line: 957, column: 32, scope: !3650)
!3659 = !DILocalVariable(name: "style", arg: 1, scope: !3660, file: !369, line: 193, type: !11)
!3660 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !369, file: !369, line: 193, type: !3661, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!401, !11}
!3663 = !{!3659, !3664}
!3664 = !DILocalVariable(name: "o", scope: !3660, file: !369, line: 195, type: !401)
!3665 = !DILocation(line: 0, scope: !3660, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 957, column: 36, scope: !3650)
!3667 = !DILocation(line: 195, column: 26, scope: !3660, inlinedAt: !3666)
!3668 = !{!3669}
!3669 = distinct !{!3669, !3670, !"quoting_options_from_style: argument 0"}
!3670 = distinct !{!3670, !"quoting_options_from_style"}
!3671 = !DILocation(line: 196, column: 13, scope: !3672, inlinedAt: !3666)
!3672 = distinct !DILexicalBlock(scope: !3660, file: !369, line: 196, column: 7)
!3673 = !DILocation(line: 196, column: 7, scope: !3660, inlinedAt: !3666)
!3674 = !DILocation(line: 197, column: 5, scope: !3672, inlinedAt: !3666)
!3675 = !DILocation(line: 198, column: 5, scope: !3660, inlinedAt: !3666)
!3676 = !DILocation(line: 198, column: 11, scope: !3660, inlinedAt: !3666)
!3677 = !DILocation(line: 958, column: 10, scope: !3650)
!3678 = !DILocation(line: 959, column: 1, scope: !3650)
!3679 = !DILocation(line: 958, column: 3, scope: !3650)
!3680 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !369, file: !369, line: 962, type: !3681, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!35, !39, !11, !37, !94}
!3683 = !{!3684, !3685, !3686, !3687, !3688}
!3684 = !DILocalVariable(name: "n", arg: 1, scope: !3680, file: !369, line: 962, type: !39)
!3685 = !DILocalVariable(name: "s", arg: 2, scope: !3680, file: !369, line: 962, type: !11)
!3686 = !DILocalVariable(name: "arg", arg: 3, scope: !3680, file: !369, line: 963, type: !37)
!3687 = !DILocalVariable(name: "argsize", arg: 4, scope: !3680, file: !369, line: 963, type: !94)
!3688 = !DILocalVariable(name: "o", scope: !3680, file: !369, line: 965, type: !400)
!3689 = !DILocation(line: 0, scope: !3680)
!3690 = !DILocation(line: 965, column: 3, scope: !3680)
!3691 = !DILocation(line: 965, column: 32, scope: !3680)
!3692 = !DILocation(line: 0, scope: !3660, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 965, column: 36, scope: !3680)
!3694 = !DILocation(line: 195, column: 26, scope: !3660, inlinedAt: !3693)
!3695 = !{!3696}
!3696 = distinct !{!3696, !3697, !"quoting_options_from_style: argument 0"}
!3697 = distinct !{!3697, !"quoting_options_from_style"}
!3698 = !DILocation(line: 196, column: 13, scope: !3672, inlinedAt: !3693)
!3699 = !DILocation(line: 196, column: 7, scope: !3660, inlinedAt: !3693)
!3700 = !DILocation(line: 197, column: 5, scope: !3672, inlinedAt: !3693)
!3701 = !DILocation(line: 198, column: 5, scope: !3660, inlinedAt: !3693)
!3702 = !DILocation(line: 198, column: 11, scope: !3660, inlinedAt: !3693)
!3703 = !DILocation(line: 966, column: 10, scope: !3680)
!3704 = !DILocation(line: 967, column: 1, scope: !3680)
!3705 = !DILocation(line: 966, column: 3, scope: !3680)
!3706 = distinct !DISubprogram(name: "quotearg_style", scope: !369, file: !369, line: 970, type: !170, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3707)
!3707 = !{!3708, !3709}
!3708 = !DILocalVariable(name: "s", arg: 1, scope: !3706, file: !369, line: 970, type: !11)
!3709 = !DILocalVariable(name: "arg", arg: 2, scope: !3706, file: !369, line: 970, type: !37)
!3710 = !DILocation(line: 195, column: 26, scope: !3660, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 957, column: 36, scope: !3650, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 972, column: 10, scope: !3706)
!3713 = !DILocation(line: 957, column: 32, scope: !3650, inlinedAt: !3712)
!3714 = !DILocation(line: 0, scope: !3706)
!3715 = !DILocation(line: 0, scope: !3650, inlinedAt: !3712)
!3716 = !DILocation(line: 957, column: 3, scope: !3650, inlinedAt: !3712)
!3717 = !DILocation(line: 0, scope: !3660, inlinedAt: !3711)
!3718 = !{!3719}
!3719 = distinct !{!3719, !3720, !"quoting_options_from_style: argument 0"}
!3720 = distinct !{!3720, !"quoting_options_from_style"}
!3721 = !DILocation(line: 196, column: 13, scope: !3672, inlinedAt: !3711)
!3722 = !DILocation(line: 196, column: 7, scope: !3660, inlinedAt: !3711)
!3723 = !DILocation(line: 197, column: 5, scope: !3672, inlinedAt: !3711)
!3724 = !DILocation(line: 198, column: 5, scope: !3660, inlinedAt: !3711)
!3725 = !DILocation(line: 198, column: 11, scope: !3660, inlinedAt: !3711)
!3726 = !DILocation(line: 958, column: 10, scope: !3650, inlinedAt: !3712)
!3727 = !DILocation(line: 959, column: 1, scope: !3650, inlinedAt: !3712)
!3728 = !DILocation(line: 972, column: 3, scope: !3706)
!3729 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !369, file: !369, line: 976, type: !3730, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!35, !11, !37, !94}
!3732 = !{!3733, !3734, !3735}
!3733 = !DILocalVariable(name: "s", arg: 1, scope: !3729, file: !369, line: 976, type: !11)
!3734 = !DILocalVariable(name: "arg", arg: 2, scope: !3729, file: !369, line: 976, type: !37)
!3735 = !DILocalVariable(name: "argsize", arg: 3, scope: !3729, file: !369, line: 976, type: !94)
!3736 = !DILocation(line: 195, column: 26, scope: !3660, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 965, column: 36, scope: !3680, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 978, column: 10, scope: !3729)
!3739 = !DILocation(line: 965, column: 32, scope: !3680, inlinedAt: !3738)
!3740 = !DILocation(line: 0, scope: !3729)
!3741 = !DILocation(line: 0, scope: !3680, inlinedAt: !3738)
!3742 = !DILocation(line: 965, column: 3, scope: !3680, inlinedAt: !3738)
!3743 = !DILocation(line: 0, scope: !3660, inlinedAt: !3737)
!3744 = !{!3745}
!3745 = distinct !{!3745, !3746, !"quoting_options_from_style: argument 0"}
!3746 = distinct !{!3746, !"quoting_options_from_style"}
!3747 = !DILocation(line: 196, column: 13, scope: !3672, inlinedAt: !3737)
!3748 = !DILocation(line: 196, column: 7, scope: !3660, inlinedAt: !3737)
!3749 = !DILocation(line: 197, column: 5, scope: !3672, inlinedAt: !3737)
!3750 = !DILocation(line: 198, column: 5, scope: !3660, inlinedAt: !3737)
!3751 = !DILocation(line: 198, column: 11, scope: !3660, inlinedAt: !3737)
!3752 = !DILocation(line: 966, column: 10, scope: !3680, inlinedAt: !3738)
!3753 = !DILocation(line: 967, column: 1, scope: !3680, inlinedAt: !3738)
!3754 = !DILocation(line: 978, column: 3, scope: !3729)
!3755 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !369, file: !369, line: 982, type: !3756, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!35, !37, !94, !36}
!3758 = !{!3759, !3760, !3761, !3762}
!3759 = !DILocalVariable(name: "arg", arg: 1, scope: !3755, file: !369, line: 982, type: !37)
!3760 = !DILocalVariable(name: "argsize", arg: 2, scope: !3755, file: !369, line: 982, type: !94)
!3761 = !DILocalVariable(name: "ch", arg: 3, scope: !3755, file: !369, line: 982, type: !36)
!3762 = !DILocalVariable(name: "options", scope: !3755, file: !369, line: 984, type: !401)
!3763 = !DILocation(line: 0, scope: !3755)
!3764 = !DILocation(line: 984, column: 3, scope: !3755)
!3765 = !DILocation(line: 984, column: 26, scope: !3755)
!3766 = !DILocation(line: 985, column: 13, scope: !3755)
!3767 = !{i64 0, i64 4, !1497, i64 4, i64 4, !1600, i64 8, i64 32, !1497, i64 40, i64 8, !1211, i64 48, i64 8, !1211}
!3768 = !DILocation(line: 0, scope: !2596, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 986, column: 3, scope: !3755)
!3770 = !DILocation(line: 156, column: 62, scope: !2596, inlinedAt: !3769)
!3771 = !DILocation(line: 156, column: 57, scope: !2596, inlinedAt: !3769)
!3772 = !DILocation(line: 157, column: 15, scope: !2596, inlinedAt: !3769)
!3773 = !DILocation(line: 158, column: 12, scope: !2596, inlinedAt: !3769)
!3774 = !DILocation(line: 158, column: 15, scope: !2596, inlinedAt: !3769)
!3775 = !DILocation(line: 158, column: 25, scope: !2596, inlinedAt: !3769)
!3776 = !DILocation(line: 159, column: 18, scope: !2596, inlinedAt: !3769)
!3777 = !DILocation(line: 159, column: 23, scope: !2596, inlinedAt: !3769)
!3778 = !DILocation(line: 159, column: 6, scope: !2596, inlinedAt: !3769)
!3779 = !DILocation(line: 987, column: 10, scope: !3755)
!3780 = !DILocation(line: 988, column: 1, scope: !3755)
!3781 = !DILocation(line: 987, column: 3, scope: !3755)
!3782 = distinct !DISubprogram(name: "quotearg_char", scope: !369, file: !369, line: 991, type: !3783, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!35, !37, !36}
!3785 = !{!3786, !3787}
!3786 = !DILocalVariable(name: "arg", arg: 1, scope: !3782, file: !369, line: 991, type: !37)
!3787 = !DILocalVariable(name: "ch", arg: 2, scope: !3782, file: !369, line: 991, type: !36)
!3788 = !DILocation(line: 984, column: 26, scope: !3755, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 993, column: 10, scope: !3782)
!3790 = !DILocation(line: 0, scope: !3782)
!3791 = !DILocation(line: 0, scope: !3755, inlinedAt: !3789)
!3792 = !DILocation(line: 984, column: 3, scope: !3755, inlinedAt: !3789)
!3793 = !DILocation(line: 985, column: 13, scope: !3755, inlinedAt: !3789)
!3794 = !DILocation(line: 0, scope: !2596, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 986, column: 3, scope: !3755, inlinedAt: !3789)
!3796 = !DILocation(line: 156, column: 62, scope: !2596, inlinedAt: !3795)
!3797 = !DILocation(line: 156, column: 57, scope: !2596, inlinedAt: !3795)
!3798 = !DILocation(line: 157, column: 15, scope: !2596, inlinedAt: !3795)
!3799 = !DILocation(line: 158, column: 12, scope: !2596, inlinedAt: !3795)
!3800 = !DILocation(line: 158, column: 15, scope: !2596, inlinedAt: !3795)
!3801 = !DILocation(line: 158, column: 25, scope: !2596, inlinedAt: !3795)
!3802 = !DILocation(line: 159, column: 18, scope: !2596, inlinedAt: !3795)
!3803 = !DILocation(line: 159, column: 23, scope: !2596, inlinedAt: !3795)
!3804 = !DILocation(line: 159, column: 6, scope: !2596, inlinedAt: !3795)
!3805 = !DILocation(line: 987, column: 10, scope: !3755, inlinedAt: !3789)
!3806 = !DILocation(line: 988, column: 1, scope: !3755, inlinedAt: !3789)
!3807 = !DILocation(line: 993, column: 3, scope: !3782)
!3808 = distinct !DISubprogram(name: "quotearg_colon", scope: !369, file: !369, line: 997, type: !114, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3809)
!3809 = !{!3810}
!3810 = !DILocalVariable(name: "arg", arg: 1, scope: !3808, file: !369, line: 997, type: !37)
!3811 = !DILocation(line: 984, column: 26, scope: !3755, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 993, column: 10, scope: !3782, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 999, column: 10, scope: !3808)
!3814 = !DILocation(line: 0, scope: !3808)
!3815 = !DILocation(line: 0, scope: !3782, inlinedAt: !3813)
!3816 = !DILocation(line: 0, scope: !3755, inlinedAt: !3812)
!3817 = !DILocation(line: 984, column: 3, scope: !3755, inlinedAt: !3812)
!3818 = !DILocation(line: 985, column: 13, scope: !3755, inlinedAt: !3812)
!3819 = !DILocation(line: 0, scope: !2596, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 986, column: 3, scope: !3755, inlinedAt: !3812)
!3821 = !DILocation(line: 156, column: 57, scope: !2596, inlinedAt: !3820)
!3822 = !DILocation(line: 158, column: 12, scope: !2596, inlinedAt: !3820)
!3823 = !DILocation(line: 159, column: 6, scope: !2596, inlinedAt: !3820)
!3824 = !DILocation(line: 987, column: 10, scope: !3755, inlinedAt: !3812)
!3825 = !DILocation(line: 988, column: 1, scope: !3755, inlinedAt: !3812)
!3826 = !DILocation(line: 999, column: 3, scope: !3808)
!3827 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !369, file: !369, line: 1003, type: !3640, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3828)
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "arg", arg: 1, scope: !3827, file: !369, line: 1003, type: !37)
!3830 = !DILocalVariable(name: "argsize", arg: 2, scope: !3827, file: !369, line: 1003, type: !94)
!3831 = !DILocation(line: 984, column: 26, scope: !3755, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 1005, column: 10, scope: !3827)
!3833 = !DILocation(line: 0, scope: !3827)
!3834 = !DILocation(line: 0, scope: !3755, inlinedAt: !3832)
!3835 = !DILocation(line: 984, column: 3, scope: !3755, inlinedAt: !3832)
!3836 = !DILocation(line: 985, column: 13, scope: !3755, inlinedAt: !3832)
!3837 = !DILocation(line: 0, scope: !2596, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 986, column: 3, scope: !3755, inlinedAt: !3832)
!3839 = !DILocation(line: 156, column: 57, scope: !2596, inlinedAt: !3838)
!3840 = !DILocation(line: 158, column: 12, scope: !2596, inlinedAt: !3838)
!3841 = !DILocation(line: 159, column: 6, scope: !2596, inlinedAt: !3838)
!3842 = !DILocation(line: 987, column: 10, scope: !3755, inlinedAt: !3832)
!3843 = !DILocation(line: 988, column: 1, scope: !3755, inlinedAt: !3832)
!3844 = !DILocation(line: 1005, column: 3, scope: !3827)
!3845 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !369, file: !369, line: 1009, type: !176, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3846)
!3846 = !{!3847, !3848, !3849, !3850}
!3847 = !DILocalVariable(name: "n", arg: 1, scope: !3845, file: !369, line: 1009, type: !39)
!3848 = !DILocalVariable(name: "s", arg: 2, scope: !3845, file: !369, line: 1009, type: !11)
!3849 = !DILocalVariable(name: "arg", arg: 3, scope: !3845, file: !369, line: 1009, type: !37)
!3850 = !DILocalVariable(name: "options", scope: !3845, file: !369, line: 1011, type: !401)
!3851 = !DILocation(line: 195, column: 26, scope: !3660, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 1012, column: 13, scope: !3845)
!3853 = !DILocation(line: 0, scope: !3845)
!3854 = !DILocation(line: 1011, column: 3, scope: !3845)
!3855 = !DILocation(line: 1011, column: 26, scope: !3845)
!3856 = !DILocation(line: 1012, column: 13, scope: !3845)
!3857 = !DILocation(line: 0, scope: !3660, inlinedAt: !3852)
!3858 = !{!3859}
!3859 = distinct !{!3859, !3860, !"quoting_options_from_style: argument 0"}
!3860 = distinct !{!3860, !"quoting_options_from_style"}
!3861 = !DILocation(line: 196, column: 13, scope: !3672, inlinedAt: !3852)
!3862 = !DILocation(line: 196, column: 7, scope: !3660, inlinedAt: !3852)
!3863 = !DILocation(line: 197, column: 5, scope: !3672, inlinedAt: !3852)
!3864 = !DILocation(line: 0, scope: !2596, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 1013, column: 3, scope: !3845)
!3866 = !DILocation(line: 156, column: 57, scope: !2596, inlinedAt: !3865)
!3867 = !DILocation(line: 158, column: 12, scope: !2596, inlinedAt: !3865)
!3868 = !DILocation(line: 159, column: 6, scope: !2596, inlinedAt: !3865)
!3869 = !DILocation(line: 1014, column: 10, scope: !3845)
!3870 = !DILocation(line: 1015, column: 1, scope: !3845)
!3871 = !DILocation(line: 1014, column: 3, scope: !3845)
!3872 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !369, file: !369, line: 1018, type: !3873, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!35, !39, !37, !37, !37}
!3875 = !{!3876, !3877, !3878, !3879}
!3876 = !DILocalVariable(name: "n", arg: 1, scope: !3872, file: !369, line: 1018, type: !39)
!3877 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3872, file: !369, line: 1018, type: !37)
!3878 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3872, file: !369, line: 1019, type: !37)
!3879 = !DILocalVariable(name: "arg", arg: 4, scope: !3872, file: !369, line: 1019, type: !37)
!3880 = !DILocalVariable(name: "o", scope: !3881, file: !369, line: 1030, type: !401)
!3881 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !369, file: !369, line: 1026, type: !3882, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!35, !39, !37, !37, !37, !94}
!3884 = !{!3885, !3886, !3887, !3888, !3889, !3880}
!3885 = !DILocalVariable(name: "n", arg: 1, scope: !3881, file: !369, line: 1026, type: !39)
!3886 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3881, file: !369, line: 1026, type: !37)
!3887 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3881, file: !369, line: 1027, type: !37)
!3888 = !DILocalVariable(name: "arg", arg: 4, scope: !3881, file: !369, line: 1028, type: !37)
!3889 = !DILocalVariable(name: "argsize", arg: 5, scope: !3881, file: !369, line: 1028, type: !94)
!3890 = !DILocation(line: 1030, column: 26, scope: !3881, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 1021, column: 10, scope: !3872)
!3892 = !DILocation(line: 0, scope: !3872)
!3893 = !DILocation(line: 0, scope: !3881, inlinedAt: !3891)
!3894 = !DILocation(line: 1030, column: 3, scope: !3881, inlinedAt: !3891)
!3895 = !DILocation(line: 1030, column: 30, scope: !3881, inlinedAt: !3891)
!3896 = !DILocation(line: 0, scope: !2636, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 1031, column: 3, scope: !3881, inlinedAt: !3891)
!3898 = !DILocation(line: 184, column: 6, scope: !2636, inlinedAt: !3897)
!3899 = !DILocation(line: 184, column: 12, scope: !2636, inlinedAt: !3897)
!3900 = !DILocation(line: 185, column: 8, scope: !2650, inlinedAt: !3897)
!3901 = !DILocation(line: 185, column: 23, scope: !2650, inlinedAt: !3897)
!3902 = !DILocation(line: 185, column: 19, scope: !2650, inlinedAt: !3897)
!3903 = !DILocation(line: 186, column: 5, scope: !2650, inlinedAt: !3897)
!3904 = !DILocation(line: 187, column: 6, scope: !2636, inlinedAt: !3897)
!3905 = !DILocation(line: 187, column: 17, scope: !2636, inlinedAt: !3897)
!3906 = !DILocation(line: 188, column: 6, scope: !2636, inlinedAt: !3897)
!3907 = !DILocation(line: 188, column: 18, scope: !2636, inlinedAt: !3897)
!3908 = !DILocation(line: 1032, column: 10, scope: !3881, inlinedAt: !3891)
!3909 = !DILocation(line: 1033, column: 1, scope: !3881, inlinedAt: !3891)
!3910 = !DILocation(line: 1021, column: 3, scope: !3872)
!3911 = !DILocation(line: 0, scope: !3881)
!3912 = !DILocation(line: 1030, column: 3, scope: !3881)
!3913 = !DILocation(line: 1030, column: 26, scope: !3881)
!3914 = !DILocation(line: 1030, column: 30, scope: !3881)
!3915 = !DILocation(line: 0, scope: !2636, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 1031, column: 3, scope: !3881)
!3917 = !DILocation(line: 184, column: 6, scope: !2636, inlinedAt: !3916)
!3918 = !DILocation(line: 184, column: 12, scope: !2636, inlinedAt: !3916)
!3919 = !DILocation(line: 185, column: 8, scope: !2650, inlinedAt: !3916)
!3920 = !DILocation(line: 185, column: 23, scope: !2650, inlinedAt: !3916)
!3921 = !DILocation(line: 185, column: 19, scope: !2650, inlinedAt: !3916)
!3922 = !DILocation(line: 186, column: 5, scope: !2650, inlinedAt: !3916)
!3923 = !DILocation(line: 187, column: 6, scope: !2636, inlinedAt: !3916)
!3924 = !DILocation(line: 187, column: 17, scope: !2636, inlinedAt: !3916)
!3925 = !DILocation(line: 188, column: 6, scope: !2636, inlinedAt: !3916)
!3926 = !DILocation(line: 188, column: 18, scope: !2636, inlinedAt: !3916)
!3927 = !DILocation(line: 1032, column: 10, scope: !3881)
!3928 = !DILocation(line: 1033, column: 1, scope: !3881)
!3929 = !DILocation(line: 1032, column: 3, scope: !3881)
!3930 = distinct !DISubprogram(name: "quotearg_custom", scope: !369, file: !369, line: 1036, type: !3931, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!35, !37, !37, !37}
!3933 = !{!3934, !3935, !3936}
!3934 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3930, file: !369, line: 1036, type: !37)
!3935 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3930, file: !369, line: 1036, type: !37)
!3936 = !DILocalVariable(name: "arg", arg: 3, scope: !3930, file: !369, line: 1037, type: !37)
!3937 = !DILocation(line: 1030, column: 26, scope: !3881, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 1021, column: 10, scope: !3872, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 1039, column: 10, scope: !3930)
!3940 = !DILocation(line: 0, scope: !3930)
!3941 = !DILocation(line: 0, scope: !3872, inlinedAt: !3939)
!3942 = !DILocation(line: 0, scope: !3881, inlinedAt: !3938)
!3943 = !DILocation(line: 1030, column: 3, scope: !3881, inlinedAt: !3938)
!3944 = !DILocation(line: 1030, column: 30, scope: !3881, inlinedAt: !3938)
!3945 = !DILocation(line: 0, scope: !2636, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 1031, column: 3, scope: !3881, inlinedAt: !3938)
!3947 = !DILocation(line: 184, column: 6, scope: !2636, inlinedAt: !3946)
!3948 = !DILocation(line: 184, column: 12, scope: !2636, inlinedAt: !3946)
!3949 = !DILocation(line: 185, column: 8, scope: !2650, inlinedAt: !3946)
!3950 = !DILocation(line: 185, column: 23, scope: !2650, inlinedAt: !3946)
!3951 = !DILocation(line: 185, column: 19, scope: !2650, inlinedAt: !3946)
!3952 = !DILocation(line: 186, column: 5, scope: !2650, inlinedAt: !3946)
!3953 = !DILocation(line: 187, column: 6, scope: !2636, inlinedAt: !3946)
!3954 = !DILocation(line: 187, column: 17, scope: !2636, inlinedAt: !3946)
!3955 = !DILocation(line: 188, column: 6, scope: !2636, inlinedAt: !3946)
!3956 = !DILocation(line: 188, column: 18, scope: !2636, inlinedAt: !3946)
!3957 = !DILocation(line: 1032, column: 10, scope: !3881, inlinedAt: !3938)
!3958 = !DILocation(line: 1033, column: 1, scope: !3881, inlinedAt: !3938)
!3959 = !DILocation(line: 1039, column: 3, scope: !3930)
!3960 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !369, file: !369, line: 1043, type: !3961, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!35, !37, !37, !37, !94}
!3963 = !{!3964, !3965, !3966, !3967}
!3964 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3960, file: !369, line: 1043, type: !37)
!3965 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3960, file: !369, line: 1043, type: !37)
!3966 = !DILocalVariable(name: "arg", arg: 3, scope: !3960, file: !369, line: 1044, type: !37)
!3967 = !DILocalVariable(name: "argsize", arg: 4, scope: !3960, file: !369, line: 1044, type: !94)
!3968 = !DILocation(line: 1030, column: 26, scope: !3881, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 1046, column: 10, scope: !3960)
!3970 = !DILocation(line: 0, scope: !3960)
!3971 = !DILocation(line: 0, scope: !3881, inlinedAt: !3969)
!3972 = !DILocation(line: 1030, column: 3, scope: !3881, inlinedAt: !3969)
!3973 = !DILocation(line: 1030, column: 30, scope: !3881, inlinedAt: !3969)
!3974 = !DILocation(line: 0, scope: !2636, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 1031, column: 3, scope: !3881, inlinedAt: !3969)
!3976 = !DILocation(line: 184, column: 6, scope: !2636, inlinedAt: !3975)
!3977 = !DILocation(line: 184, column: 12, scope: !2636, inlinedAt: !3975)
!3978 = !DILocation(line: 185, column: 8, scope: !2650, inlinedAt: !3975)
!3979 = !DILocation(line: 185, column: 23, scope: !2650, inlinedAt: !3975)
!3980 = !DILocation(line: 185, column: 19, scope: !2650, inlinedAt: !3975)
!3981 = !DILocation(line: 186, column: 5, scope: !2650, inlinedAt: !3975)
!3982 = !DILocation(line: 187, column: 6, scope: !2636, inlinedAt: !3975)
!3983 = !DILocation(line: 187, column: 17, scope: !2636, inlinedAt: !3975)
!3984 = !DILocation(line: 188, column: 6, scope: !2636, inlinedAt: !3975)
!3985 = !DILocation(line: 188, column: 18, scope: !2636, inlinedAt: !3975)
!3986 = !DILocation(line: 1032, column: 10, scope: !3881, inlinedAt: !3969)
!3987 = !DILocation(line: 1033, column: 1, scope: !3881, inlinedAt: !3969)
!3988 = !DILocation(line: 1046, column: 3, scope: !3960)
!3989 = distinct !DISubprogram(name: "quote_n_mem", scope: !369, file: !369, line: 1061, type: !3990, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!37, !39, !37, !94}
!3992 = !{!3993, !3994, !3995}
!3993 = !DILocalVariable(name: "n", arg: 1, scope: !3989, file: !369, line: 1061, type: !39)
!3994 = !DILocalVariable(name: "arg", arg: 2, scope: !3989, file: !369, line: 1061, type: !37)
!3995 = !DILocalVariable(name: "argsize", arg: 3, scope: !3989, file: !369, line: 1061, type: !94)
!3996 = !DILocation(line: 0, scope: !3989)
!3997 = !DILocation(line: 1063, column: 10, scope: !3989)
!3998 = !DILocation(line: 1063, column: 3, scope: !3989)
!3999 = distinct !DISubprogram(name: "quote_mem", scope: !369, file: !369, line: 1067, type: !4000, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!37, !37, !94}
!4002 = !{!4003, !4004}
!4003 = !DILocalVariable(name: "arg", arg: 1, scope: !3999, file: !369, line: 1067, type: !37)
!4004 = !DILocalVariable(name: "argsize", arg: 2, scope: !3999, file: !369, line: 1067, type: !94)
!4005 = !DILocation(line: 0, scope: !3999)
!4006 = !DILocation(line: 0, scope: !3989, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 1069, column: 10, scope: !3999)
!4008 = !DILocation(line: 1063, column: 10, scope: !3989, inlinedAt: !4007)
!4009 = !DILocation(line: 1069, column: 3, scope: !3999)
!4010 = distinct !DISubprogram(name: "quote_n", scope: !369, file: !369, line: 1073, type: !4011, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!37, !39, !37}
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "n", arg: 1, scope: !4010, file: !369, line: 1073, type: !39)
!4015 = !DILocalVariable(name: "arg", arg: 2, scope: !4010, file: !369, line: 1073, type: !37)
!4016 = !DILocation(line: 0, scope: !4010)
!4017 = !DILocation(line: 0, scope: !3989, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 1075, column: 10, scope: !4010)
!4019 = !DILocation(line: 1063, column: 10, scope: !3989, inlinedAt: !4018)
!4020 = !DILocation(line: 1075, column: 3, scope: !4010)
!4021 = distinct !DISubprogram(name: "quote", scope: !369, file: !369, line: 1079, type: !153, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !4022)
!4022 = !{!4023}
!4023 = !DILocalVariable(name: "arg", arg: 1, scope: !4021, file: !369, line: 1079, type: !37)
!4024 = !DILocation(line: 0, scope: !4021)
!4025 = !DILocation(line: 0, scope: !4010, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 1081, column: 10, scope: !4021)
!4027 = !DILocation(line: 0, scope: !3989, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 1075, column: 10, scope: !4010, inlinedAt: !4026)
!4029 = !DILocation(line: 1063, column: 10, scope: !3989, inlinedAt: !4028)
!4030 = !DILocation(line: 1081, column: 3, scope: !4021)
!4031 = distinct !DISubprogram(name: "safe_read", scope: !497, file: !497, line: 56, type: !2434, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !4032)
!4032 = !{!4033, !4034, !4035, !4036}
!4033 = !DILocalVariable(name: "fd", arg: 1, scope: !4031, file: !497, line: 56, type: !39)
!4034 = !DILocalVariable(name: "buf", arg: 2, scope: !4031, file: !497, line: 56, type: !92)
!4035 = !DILocalVariable(name: "count", arg: 3, scope: !4031, file: !497, line: 56, type: !94)
!4036 = !DILocalVariable(name: "result", scope: !4037, file: !497, line: 60, type: !4040)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !497, line: 59, column: 5)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !497, line: 58, column: 3)
!4039 = distinct !DILexicalBlock(scope: !4031, file: !497, line: 58, column: 3)
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !492, line: 108, baseType: !4041)
!4041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !69, line: 193, baseType: !70)
!4042 = !DILocation(line: 0, scope: !4031)
!4043 = !DILocation(line: 58, column: 3, scope: !4031)
!4044 = !DILocation(line: 62, column: 11, scope: !4037)
!4045 = !DILocation(line: 60, column: 24, scope: !4037)
!4046 = !DILocation(line: 0, scope: !4037)
!4047 = !DILocation(line: 62, column: 13, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4037, file: !497, line: 62, column: 11)
!4049 = !DILocation(line: 64, column: 16, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4048, file: !497, line: 64, column: 16)
!4051 = !DILocation(line: 64, column: 16, scope: !4048)
!4052 = distinct !{!4052, !4053, !4054}
!4053 = !DILocation(line: 58, column: 3, scope: !4039)
!4054 = !DILocation(line: 70, column: 5, scope: !4039)
!4055 = !DILocation(line: 66, column: 22, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4050, file: !497, line: 66, column: 16)
!4057 = !DILocation(line: 66, column: 51, scope: !4056)
!4058 = !DILocation(line: 66, column: 32, scope: !4056)
!4059 = !DILocation(line: 71, column: 1, scope: !4031)
!4060 = distinct !DISubprogram(name: "version_etc_arn", scope: !504, file: !504, line: 61, type: !4061, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4065)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !4063, !37, !37, !37, !155, !94}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2348, line: 7, baseType: !514)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071}
!4066 = !DILocalVariable(name: "stream", arg: 1, scope: !4060, file: !504, line: 61, type: !4063)
!4067 = !DILocalVariable(name: "command_name", arg: 2, scope: !4060, file: !504, line: 62, type: !37)
!4068 = !DILocalVariable(name: "package", arg: 3, scope: !4060, file: !504, line: 62, type: !37)
!4069 = !DILocalVariable(name: "version", arg: 4, scope: !4060, file: !504, line: 63, type: !37)
!4070 = !DILocalVariable(name: "authors", arg: 5, scope: !4060, file: !504, line: 64, type: !155)
!4071 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4060, file: !504, line: 64, type: !94)
!4072 = !DILocation(line: 0, scope: !4060)
!4073 = !DILocation(line: 66, column: 7, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4060, file: !504, line: 66, column: 7)
!4075 = !DILocation(line: 66, column: 7, scope: !4060)
!4076 = !DILocation(line: 67, column: 5, scope: !4074)
!4077 = !DILocation(line: 69, column: 5, scope: !4074)
!4078 = !DILocation(line: 83, column: 3, scope: !4060)
!4079 = !DILocation(line: 85, column: 3, scope: !4060)
!4080 = !DILocation(line: 88, column: 3, scope: !4060)
!4081 = !DILocation(line: 95, column: 3, scope: !4060)
!4082 = !DILocation(line: 97, column: 3, scope: !4060)
!4083 = !DILocation(line: 105, column: 7, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4060, file: !504, line: 98, column: 5)
!4085 = !DILocation(line: 106, column: 7, scope: !4084)
!4086 = !DILocation(line: 109, column: 7, scope: !4084)
!4087 = !DILocation(line: 110, column: 7, scope: !4084)
!4088 = !DILocation(line: 113, column: 7, scope: !4084)
!4089 = !DILocation(line: 115, column: 7, scope: !4084)
!4090 = !DILocation(line: 120, column: 7, scope: !4084)
!4091 = !DILocation(line: 122, column: 7, scope: !4084)
!4092 = !DILocation(line: 127, column: 7, scope: !4084)
!4093 = !DILocation(line: 129, column: 7, scope: !4084)
!4094 = !DILocation(line: 134, column: 7, scope: !4084)
!4095 = !DILocation(line: 137, column: 7, scope: !4084)
!4096 = !DILocation(line: 142, column: 7, scope: !4084)
!4097 = !DILocation(line: 145, column: 7, scope: !4084)
!4098 = !DILocation(line: 150, column: 7, scope: !4084)
!4099 = !DILocation(line: 154, column: 7, scope: !4084)
!4100 = !DILocation(line: 159, column: 7, scope: !4084)
!4101 = !DILocation(line: 163, column: 7, scope: !4084)
!4102 = !DILocation(line: 170, column: 7, scope: !4084)
!4103 = !DILocation(line: 174, column: 7, scope: !4084)
!4104 = !DILocation(line: 176, column: 1, scope: !4060)
!4105 = distinct !DISubprogram(name: "version_etc_ar", scope: !504, file: !504, line: 183, type: !4106, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4108)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{null, !4063, !37, !37, !37, !155}
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114}
!4109 = !DILocalVariable(name: "stream", arg: 1, scope: !4105, file: !504, line: 183, type: !4063)
!4110 = !DILocalVariable(name: "command_name", arg: 2, scope: !4105, file: !504, line: 184, type: !37)
!4111 = !DILocalVariable(name: "package", arg: 3, scope: !4105, file: !504, line: 184, type: !37)
!4112 = !DILocalVariable(name: "version", arg: 4, scope: !4105, file: !504, line: 185, type: !37)
!4113 = !DILocalVariable(name: "authors", arg: 5, scope: !4105, file: !504, line: 185, type: !155)
!4114 = !DILocalVariable(name: "n_authors", scope: !4105, file: !504, line: 187, type: !94)
!4115 = !DILocation(line: 0, scope: !4105)
!4116 = !DILocation(line: 189, column: 8, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4105, file: !504, line: 189, column: 3)
!4118 = !DILocation(line: 0, scope: !4117)
!4119 = !DILocation(line: 189, column: 23, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4117, file: !504, line: 189, column: 3)
!4121 = !DILocation(line: 189, column: 3, scope: !4117)
!4122 = !DILocation(line: 189, column: 52, scope: !4120)
!4123 = distinct !{!4123, !4121, !4124}
!4124 = !DILocation(line: 190, column: 5, scope: !4117)
!4125 = !DILocation(line: 191, column: 3, scope: !4105)
!4126 = !DILocation(line: 192, column: 1, scope: !4105)
!4127 = distinct !DISubprogram(name: "version_etc_va", scope: !504, file: !504, line: 199, type: !4128, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4137)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{null, !4063, !37, !37, !37, !4130}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !504, line: 192, size: 192, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4136}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4131, file: !504, line: 192, baseType: !6, size: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4131, file: !504, line: 192, baseType: !6, size: 32, offset: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4131, file: !504, line: 192, baseType: !92, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4131, file: !504, line: 192, baseType: !92, size: 64, offset: 128)
!4137 = !{!4138, !4139, !4140, !4141, !4142, !4143, !4144}
!4138 = !DILocalVariable(name: "stream", arg: 1, scope: !4127, file: !504, line: 199, type: !4063)
!4139 = !DILocalVariable(name: "command_name", arg: 2, scope: !4127, file: !504, line: 200, type: !37)
!4140 = !DILocalVariable(name: "package", arg: 3, scope: !4127, file: !504, line: 200, type: !37)
!4141 = !DILocalVariable(name: "version", arg: 4, scope: !4127, file: !504, line: 201, type: !37)
!4142 = !DILocalVariable(name: "authors", arg: 5, scope: !4127, file: !504, line: 201, type: !4130)
!4143 = !DILocalVariable(name: "n_authors", scope: !4127, file: !504, line: 203, type: !94)
!4144 = !DILocalVariable(name: "authtab", scope: !4127, file: !504, line: 204, type: !4145)
!4145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !258)
!4146 = !DILocation(line: 0, scope: !4127)
!4147 = !DILocation(line: 204, column: 3, scope: !4127)
!4148 = !DILocation(line: 204, column: 15, scope: !4127)
!4149 = !DILocation(line: 0, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !504, line: 206, column: 3)
!4151 = distinct !DILexicalBlock(scope: !4127, file: !504, line: 206, column: 3)
!4152 = !DILocation(line: 208, column: 35, scope: !4150)
!4153 = !DILocation(line: 208, column: 14, scope: !4150)
!4154 = !DILocation(line: 208, column: 33, scope: !4150)
!4155 = !DILocation(line: 208, column: 67, scope: !4150)
!4156 = !DILocation(line: 206, column: 3, scope: !4151)
!4157 = !DILocation(line: 0, scope: !4151)
!4158 = !DILocation(line: 211, column: 3, scope: !4127)
!4159 = !DILocation(line: 213, column: 1, scope: !4127)
!4160 = distinct !DISubprogram(name: "version_etc", scope: !504, file: !504, line: 230, type: !4161, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !4063, !37, !37, !37, null}
!4163 = !{!4164, !4165, !4166, !4167, !4168}
!4164 = !DILocalVariable(name: "stream", arg: 1, scope: !4160, file: !504, line: 230, type: !4063)
!4165 = !DILocalVariable(name: "command_name", arg: 2, scope: !4160, file: !504, line: 231, type: !37)
!4166 = !DILocalVariable(name: "package", arg: 3, scope: !4160, file: !504, line: 231, type: !37)
!4167 = !DILocalVariable(name: "version", arg: 4, scope: !4160, file: !504, line: 232, type: !37)
!4168 = !DILocalVariable(name: "authors", scope: !4160, file: !504, line: 234, type: !4169)
!4169 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !42, line: 52, baseType: !4170)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4171, line: 32, baseType: !4172)
!4171 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !504, line: 234, baseType: !4173)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4131, size: 192, elements: !77)
!4174 = !DILocation(line: 0, scope: !4160)
!4175 = !DILocation(line: 234, column: 3, scope: !4160)
!4176 = !DILocation(line: 234, column: 11, scope: !4160)
!4177 = !DILocation(line: 236, column: 3, scope: !4160)
!4178 = !DILocation(line: 237, column: 3, scope: !4160)
!4179 = !DILocation(line: 238, column: 3, scope: !4160)
!4180 = !DILocation(line: 239, column: 1, scope: !4160)
!4181 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !504, file: !504, line: 242, type: !121, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !40)
!4182 = !DILocation(line: 244, column: 3, scope: !4181)
!4183 = !DILocation(line: 249, column: 3, scope: !4181)
!4184 = !DILocation(line: 255, column: 3, scope: !4181)
!4185 = !DILocation(line: 260, column: 3, scope: !4181)
!4186 = !DILocation(line: 262, column: 1, scope: !4181)
!4187 = distinct !DISubprogram(name: "xnmalloc", scope: !182, file: !182, line: 99, type: !1649, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4188)
!4188 = !{!4189, !4190}
!4189 = !DILocalVariable(name: "n", arg: 1, scope: !4187, file: !182, line: 99, type: !94)
!4190 = !DILocalVariable(name: "s", arg: 2, scope: !4187, file: !182, line: 99, type: !94)
!4191 = !DILocation(line: 0, scope: !4187)
!4192 = !DILocation(line: 101, column: 7, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4187, file: !182, line: 101, column: 7)
!4194 = !DILocation(line: 101, column: 7, scope: !4187)
!4195 = !DILocation(line: 102, column: 5, scope: !4193)
!4196 = !DILocation(line: 103, column: 21, scope: !4187)
!4197 = !DILocalVariable(name: "n", arg: 1, scope: !4198, file: !546, line: 39, type: !94)
!4198 = distinct !DISubprogram(name: "xmalloc", scope: !546, file: !546, line: 39, type: !4199, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4201)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!92, !94}
!4201 = !{!4197, !4202}
!4202 = !DILocalVariable(name: "p", scope: !4198, file: !546, line: 41, type: !92)
!4203 = !DILocation(line: 0, scope: !4198, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 103, column: 10, scope: !4187)
!4205 = !DILocation(line: 41, column: 13, scope: !4198, inlinedAt: !4204)
!4206 = !DILocation(line: 42, column: 8, scope: !4207, inlinedAt: !4204)
!4207 = distinct !DILexicalBlock(scope: !4198, file: !546, line: 42, column: 7)
!4208 = !DILocation(line: 42, column: 15, scope: !4207, inlinedAt: !4204)
!4209 = !DILocation(line: 42, column: 10, scope: !4207, inlinedAt: !4204)
!4210 = !DILocation(line: 43, column: 5, scope: !4207, inlinedAt: !4204)
!4211 = !DILocation(line: 103, column: 3, scope: !4187)
!4212 = !DILocation(line: 0, scope: !4198)
!4213 = !DILocation(line: 41, column: 13, scope: !4198)
!4214 = !DILocation(line: 42, column: 8, scope: !4207)
!4215 = !DILocation(line: 42, column: 15, scope: !4207)
!4216 = !DILocation(line: 42, column: 10, scope: !4207)
!4217 = !DILocation(line: 43, column: 5, scope: !4207)
!4218 = !DILocation(line: 44, column: 3, scope: !4198)
!4219 = distinct !DISubprogram(name: "xnrealloc", scope: !182, file: !182, line: 112, type: !2098, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4220)
!4220 = !{!4221, !4222, !4223}
!4221 = !DILocalVariable(name: "p", arg: 1, scope: !4219, file: !182, line: 112, type: !92)
!4222 = !DILocalVariable(name: "n", arg: 2, scope: !4219, file: !182, line: 112, type: !94)
!4223 = !DILocalVariable(name: "s", arg: 3, scope: !4219, file: !182, line: 112, type: !94)
!4224 = !DILocation(line: 0, scope: !4219)
!4225 = !DILocation(line: 114, column: 7, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4219, file: !182, line: 114, column: 7)
!4227 = !DILocation(line: 114, column: 7, scope: !4219)
!4228 = !DILocation(line: 115, column: 5, scope: !4226)
!4229 = !DILocation(line: 116, column: 25, scope: !4219)
!4230 = !DILocalVariable(name: "p", arg: 1, scope: !4231, file: !546, line: 51, type: !92)
!4231 = distinct !DISubprogram(name: "xrealloc", scope: !546, file: !546, line: 51, type: !4232, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4234)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!92, !92, !94}
!4234 = !{!4230, !4235}
!4235 = !DILocalVariable(name: "n", arg: 2, scope: !4231, file: !546, line: 51, type: !94)
!4236 = !DILocation(line: 0, scope: !4231, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 116, column: 10, scope: !4219)
!4238 = !DILocation(line: 53, column: 8, scope: !4239, inlinedAt: !4237)
!4239 = distinct !DILexicalBlock(scope: !4231, file: !546, line: 53, column: 7)
!4240 = !DILocation(line: 53, column: 13, scope: !4239, inlinedAt: !4237)
!4241 = !DILocation(line: 53, column: 10, scope: !4239, inlinedAt: !4237)
!4242 = !DILocation(line: 57, column: 7, scope: !4243, inlinedAt: !4237)
!4243 = distinct !DILexicalBlock(scope: !4239, file: !546, line: 54, column: 5)
!4244 = !DILocation(line: 58, column: 7, scope: !4243, inlinedAt: !4237)
!4245 = !DILocation(line: 61, column: 7, scope: !4231, inlinedAt: !4237)
!4246 = !DILocation(line: 62, column: 8, scope: !4247, inlinedAt: !4237)
!4247 = distinct !DILexicalBlock(scope: !4231, file: !546, line: 62, column: 7)
!4248 = !DILocation(line: 62, column: 13, scope: !4247, inlinedAt: !4237)
!4249 = !DILocation(line: 62, column: 10, scope: !4247, inlinedAt: !4237)
!4250 = !DILocation(line: 63, column: 5, scope: !4247, inlinedAt: !4237)
!4251 = !DILocation(line: 116, column: 3, scope: !4219)
!4252 = !DILocation(line: 0, scope: !4231)
!4253 = !DILocation(line: 53, column: 8, scope: !4239)
!4254 = !DILocation(line: 53, column: 13, scope: !4239)
!4255 = !DILocation(line: 53, column: 10, scope: !4239)
!4256 = !DILocation(line: 57, column: 7, scope: !4243)
!4257 = !DILocation(line: 58, column: 7, scope: !4243)
!4258 = !DILocation(line: 61, column: 7, scope: !4231)
!4259 = !DILocation(line: 62, column: 8, scope: !4247)
!4260 = !DILocation(line: 62, column: 13, scope: !4247)
!4261 = !DILocation(line: 62, column: 10, scope: !4247)
!4262 = !DILocation(line: 63, column: 5, scope: !4247)
!4263 = !DILocation(line: 65, column: 1, scope: !4231)
!4264 = !DILocation(line: 0, scope: !549)
!4265 = !DILocation(line: 176, column: 14, scope: !549)
!4266 = !DILocation(line: 178, column: 9, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !549, file: !182, line: 178, column: 7)
!4268 = !DILocation(line: 178, column: 7, scope: !549)
!4269 = !DILocation(line: 180, column: 13, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !182, line: 180, column: 11)
!4271 = distinct !DILexicalBlock(scope: !4267, file: !182, line: 179, column: 5)
!4272 = !DILocation(line: 180, column: 11, scope: !4271)
!4273 = !DILocation(line: 188, column: 30, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4270, file: !182, line: 181, column: 9)
!4275 = !DILocation(line: 189, column: 16, scope: !4274)
!4276 = !DILocation(line: 189, column: 13, scope: !4274)
!4277 = !DILocation(line: 190, column: 9, scope: !4274)
!4278 = !DILocation(line: 191, column: 11, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4271, file: !182, line: 191, column: 11)
!4280 = !DILocation(line: 191, column: 11, scope: !4271)
!4281 = !DILocation(line: 206, column: 7, scope: !549)
!4282 = !DILocation(line: 207, column: 25, scope: !549)
!4283 = !DILocation(line: 0, scope: !4231, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 207, column: 10, scope: !549)
!4285 = !DILocation(line: 53, column: 10, scope: !4239, inlinedAt: !4284)
!4286 = !DILocation(line: 192, column: 9, scope: !4279)
!4287 = !DILocation(line: 200, column: 69, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4289, file: !182, line: 200, column: 11)
!4289 = distinct !DILexicalBlock(scope: !4267, file: !182, line: 195, column: 5)
!4290 = !DILocation(line: 201, column: 11, scope: !4288)
!4291 = !DILocation(line: 200, column: 11, scope: !4289)
!4292 = !DILocation(line: 202, column: 9, scope: !4288)
!4293 = !DILocation(line: 203, column: 14, scope: !4289)
!4294 = !DILocation(line: 203, column: 18, scope: !4289)
!4295 = !DILocation(line: 203, column: 9, scope: !4289)
!4296 = !DILocation(line: 53, column: 8, scope: !4239, inlinedAt: !4284)
!4297 = !DILocation(line: 57, column: 7, scope: !4243, inlinedAt: !4284)
!4298 = !DILocation(line: 58, column: 7, scope: !4243, inlinedAt: !4284)
!4299 = !DILocation(line: 61, column: 7, scope: !4231, inlinedAt: !4284)
!4300 = !DILocation(line: 62, column: 8, scope: !4247, inlinedAt: !4284)
!4301 = !DILocation(line: 62, column: 13, scope: !4247, inlinedAt: !4284)
!4302 = !DILocation(line: 62, column: 10, scope: !4247, inlinedAt: !4284)
!4303 = !DILocation(line: 63, column: 5, scope: !4247, inlinedAt: !4284)
!4304 = !DILocation(line: 207, column: 3, scope: !549)
!4305 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !3450, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4306)
!4306 = !{!4307}
!4307 = !DILocalVariable(name: "n", arg: 1, scope: !4305, file: !182, line: 216, type: !94)
!4308 = !DILocation(line: 0, scope: !4305)
!4309 = !DILocation(line: 0, scope: !4198, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 218, column: 10, scope: !4305)
!4311 = !DILocation(line: 41, column: 13, scope: !4198, inlinedAt: !4310)
!4312 = !DILocation(line: 42, column: 8, scope: !4207, inlinedAt: !4310)
!4313 = !DILocation(line: 42, column: 15, scope: !4207, inlinedAt: !4310)
!4314 = !DILocation(line: 42, column: 10, scope: !4207, inlinedAt: !4310)
!4315 = !DILocation(line: 43, column: 5, scope: !4207, inlinedAt: !4310)
!4316 = !DILocation(line: 218, column: 3, scope: !4305)
!4317 = distinct !DISubprogram(name: "x2realloc", scope: !546, file: !546, line: 74, type: !4318, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4320)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!92, !92, !552}
!4320 = !{!4321, !4322}
!4321 = !DILocalVariable(name: "p", arg: 1, scope: !4317, file: !546, line: 74, type: !92)
!4322 = !DILocalVariable(name: "pn", arg: 2, scope: !4317, file: !546, line: 74, type: !552)
!4323 = !DILocation(line: 0, scope: !4317)
!4324 = !DILocation(line: 0, scope: !549, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 76, column: 10, scope: !4317)
!4326 = !DILocation(line: 176, column: 14, scope: !549, inlinedAt: !4325)
!4327 = !DILocation(line: 178, column: 9, scope: !4267, inlinedAt: !4325)
!4328 = !DILocation(line: 178, column: 7, scope: !549, inlinedAt: !4325)
!4329 = !DILocation(line: 180, column: 13, scope: !4270, inlinedAt: !4325)
!4330 = !DILocation(line: 180, column: 11, scope: !4271, inlinedAt: !4325)
!4331 = !DILocation(line: 191, column: 11, scope: !4279, inlinedAt: !4325)
!4332 = !DILocation(line: 191, column: 11, scope: !4271, inlinedAt: !4325)
!4333 = !DILocation(line: 206, column: 7, scope: !549, inlinedAt: !4325)
!4334 = !DILocation(line: 0, scope: !4231, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 207, column: 10, scope: !549, inlinedAt: !4325)
!4336 = !DILocation(line: 53, column: 10, scope: !4239, inlinedAt: !4335)
!4337 = !DILocation(line: 192, column: 9, scope: !4279, inlinedAt: !4325)
!4338 = !DILocation(line: 201, column: 11, scope: !4288, inlinedAt: !4325)
!4339 = !DILocation(line: 200, column: 11, scope: !4289, inlinedAt: !4325)
!4340 = !DILocation(line: 202, column: 9, scope: !4288, inlinedAt: !4325)
!4341 = !DILocation(line: 203, column: 14, scope: !4289, inlinedAt: !4325)
!4342 = !DILocation(line: 203, column: 18, scope: !4289, inlinedAt: !4325)
!4343 = !DILocation(line: 203, column: 9, scope: !4289, inlinedAt: !4325)
!4344 = !DILocation(line: 53, column: 8, scope: !4239, inlinedAt: !4335)
!4345 = !DILocation(line: 57, column: 7, scope: !4243, inlinedAt: !4335)
!4346 = !DILocation(line: 58, column: 7, scope: !4243, inlinedAt: !4335)
!4347 = !DILocation(line: 61, column: 7, scope: !4231, inlinedAt: !4335)
!4348 = !DILocation(line: 62, column: 8, scope: !4247, inlinedAt: !4335)
!4349 = !DILocation(line: 62, column: 13, scope: !4247, inlinedAt: !4335)
!4350 = !DILocation(line: 62, column: 10, scope: !4247, inlinedAt: !4335)
!4351 = !DILocation(line: 63, column: 5, scope: !4247, inlinedAt: !4335)
!4352 = !DILocation(line: 76, column: 3, scope: !4317)
!4353 = distinct !DISubprogram(name: "xzalloc", scope: !546, file: !546, line: 84, type: !4199, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4354)
!4354 = !{!4355}
!4355 = !DILocalVariable(name: "n", arg: 1, scope: !4353, file: !546, line: 84, type: !94)
!4356 = !DILocation(line: 0, scope: !4353)
!4357 = !DILocalVariable(name: "n", arg: 1, scope: !4358, file: !546, line: 93, type: !94)
!4358 = distinct !DISubprogram(name: "xcalloc", scope: !546, file: !546, line: 93, type: !1649, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4359)
!4359 = !{!4357, !4360, !4361}
!4360 = !DILocalVariable(name: "s", arg: 2, scope: !4358, file: !546, line: 93, type: !94)
!4361 = !DILocalVariable(name: "p", scope: !4358, file: !546, line: 95, type: !92)
!4362 = !DILocation(line: 0, scope: !4358, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 86, column: 10, scope: !4353)
!4364 = !DILocation(line: 100, column: 7, scope: !4365, inlinedAt: !4363)
!4365 = distinct !DILexicalBlock(scope: !4358, file: !546, line: 100, column: 7)
!4366 = !DILocation(line: 101, column: 7, scope: !4365, inlinedAt: !4363)
!4367 = !DILocation(line: 101, column: 18, scope: !4365, inlinedAt: !4363)
!4368 = !DILocation(line: 101, column: 16, scope: !4365, inlinedAt: !4363)
!4369 = !DILocation(line: 100, column: 7, scope: !4358, inlinedAt: !4363)
!4370 = !DILocation(line: 102, column: 5, scope: !4365, inlinedAt: !4363)
!4371 = !DILocation(line: 86, column: 3, scope: !4353)
!4372 = !DILocation(line: 0, scope: !4358)
!4373 = !DILocation(line: 100, column: 7, scope: !4365)
!4374 = !DILocation(line: 101, column: 7, scope: !4365)
!4375 = !DILocation(line: 101, column: 18, scope: !4365)
!4376 = !DILocation(line: 101, column: 16, scope: !4365)
!4377 = !DILocation(line: 100, column: 7, scope: !4358)
!4378 = !DILocation(line: 102, column: 5, scope: !4365)
!4379 = !DILocation(line: 103, column: 3, scope: !4358)
!4380 = distinct !DISubprogram(name: "xmemdup", scope: !546, file: !546, line: 111, type: !4381, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4383)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!92, !195, !94}
!4383 = !{!4384, !4385}
!4384 = !DILocalVariable(name: "p", arg: 1, scope: !4380, file: !546, line: 111, type: !195)
!4385 = !DILocalVariable(name: "s", arg: 2, scope: !4380, file: !546, line: 111, type: !94)
!4386 = !DILocation(line: 0, scope: !4380)
!4387 = !DILocation(line: 0, scope: !4198, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 113, column: 18, scope: !4380)
!4389 = !DILocation(line: 41, column: 13, scope: !4198, inlinedAt: !4388)
!4390 = !DILocation(line: 42, column: 8, scope: !4207, inlinedAt: !4388)
!4391 = !DILocation(line: 42, column: 15, scope: !4207, inlinedAt: !4388)
!4392 = !DILocation(line: 42, column: 10, scope: !4207, inlinedAt: !4388)
!4393 = !DILocation(line: 43, column: 5, scope: !4207, inlinedAt: !4388)
!4394 = !DILocalVariable(name: "__dest", arg: 1, scope: !4395, file: !1811, line: 31, type: !1814)
!4395 = distinct !DISubprogram(name: "memcpy", scope: !1811, file: !1811, line: 31, type: !1812, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4396)
!4396 = !{!4394, !4397, !4398}
!4397 = !DILocalVariable(name: "__src", arg: 2, scope: !4395, file: !1811, line: 31, type: !1815)
!4398 = !DILocalVariable(name: "__len", arg: 3, scope: !4395, file: !1811, line: 31, type: !94)
!4399 = !DILocation(line: 0, scope: !4395, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 113, column: 10, scope: !4380)
!4401 = !DILocation(line: 34, column: 10, scope: !4395, inlinedAt: !4400)
!4402 = !DILocation(line: 113, column: 3, scope: !4380)
!4403 = distinct !DISubprogram(name: "xstrdup", scope: !546, file: !546, line: 119, type: !114, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4404)
!4404 = !{!4405}
!4405 = !DILocalVariable(name: "string", arg: 1, scope: !4403, file: !546, line: 119, type: !37)
!4406 = !DILocation(line: 0, scope: !4403)
!4407 = !DILocation(line: 121, column: 27, scope: !4403)
!4408 = !DILocation(line: 121, column: 43, scope: !4403)
!4409 = !DILocation(line: 0, scope: !4380, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 121, column: 10, scope: !4403)
!4411 = !DILocation(line: 0, scope: !4198, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 113, column: 18, scope: !4380, inlinedAt: !4410)
!4413 = !DILocation(line: 41, column: 13, scope: !4198, inlinedAt: !4412)
!4414 = !DILocation(line: 42, column: 8, scope: !4207, inlinedAt: !4412)
!4415 = !DILocation(line: 42, column: 15, scope: !4207, inlinedAt: !4412)
!4416 = !DILocation(line: 42, column: 10, scope: !4207, inlinedAt: !4412)
!4417 = !DILocation(line: 43, column: 5, scope: !4207, inlinedAt: !4412)
!4418 = !DILocation(line: 0, scope: !4395, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 113, column: 10, scope: !4380, inlinedAt: !4410)
!4420 = !DILocation(line: 34, column: 10, scope: !4395, inlinedAt: !4419)
!4421 = !DILocation(line: 121, column: 3, scope: !4403)
!4422 = distinct !DISubprogram(name: "xalloc_die", scope: !567, file: !567, line: 32, type: !121, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !40)
!4423 = !DILocation(line: 34, column: 10, scope: !4422)
!4424 = !DILocation(line: 34, column: 33, scope: !4422)
!4425 = !DILocation(line: 34, column: 3, scope: !4422)
!4426 = !DILocation(line: 40, column: 3, scope: !4422)
!4427 = distinct !DISubprogram(name: "xnumtoumax", scope: !4428, file: !4428, line: 36, type: !4429, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4431)
!4428 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!227, !37, !39, !227, !227, !37, !37, !39}
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4441}
!4432 = !DILocalVariable(name: "n_str", arg: 1, scope: !4427, file: !4428, line: 36, type: !37)
!4433 = !DILocalVariable(name: "base", arg: 2, scope: !4427, file: !4428, line: 36, type: !39)
!4434 = !DILocalVariable(name: "min", arg: 3, scope: !4427, file: !4428, line: 36, type: !227)
!4435 = !DILocalVariable(name: "max", arg: 4, scope: !4427, file: !4428, line: 36, type: !227)
!4436 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4427, file: !4428, line: 37, type: !37)
!4437 = !DILocalVariable(name: "err", arg: 6, scope: !4427, file: !4428, line: 37, type: !37)
!4438 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4427, file: !4428, line: 37, type: !39)
!4439 = !DILocalVariable(name: "s_err", scope: !4427, file: !4428, line: 39, type: !4440)
!4440 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !573, line: 38, baseType: !572)
!4441 = !DILocalVariable(name: "tnum", scope: !4427, file: !4428, line: 41, type: !227)
!4442 = !DILocation(line: 0, scope: !4427)
!4443 = !DILocation(line: 41, column: 3, scope: !4427)
!4444 = !DILocation(line: 42, column: 11, scope: !4427)
!4445 = !DILocation(line: 44, column: 7, scope: !4427)
!4446 = !DILocation(line: 69, column: 50, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !4428, line: 67, column: 5)
!4448 = distinct !DILexicalBlock(scope: !4427, file: !4428, line: 66, column: 7)
!4449 = !DILocation(line: 46, column: 11, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !4428, line: 46, column: 11)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !4428, line: 45, column: 5)
!4452 = distinct !DILexicalBlock(scope: !4427, file: !4428, line: 44, column: 7)
!4453 = !DILocation(line: 46, column: 16, scope: !4450)
!4454 = !DILocation(line: 46, column: 29, scope: !4450)
!4455 = !DILocation(line: 46, column: 22, scope: !4450)
!4456 = !DILocation(line: 51, column: 20, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !4428, line: 51, column: 15)
!4458 = distinct !DILexicalBlock(scope: !4450, file: !4428, line: 47, column: 9)
!4459 = !DILocation(line: 0, scope: !4457)
!4460 = !DILocation(line: 51, column: 15, scope: !4458)
!4461 = !DILocation(line: 52, column: 19, scope: !4457)
!4462 = !DILocation(line: 66, column: 7, scope: !4427)
!4463 = !DILocation(line: 58, column: 19, scope: !4457)
!4464 = !DILocation(line: 62, column: 5, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4452, file: !4428, line: 61, column: 12)
!4466 = !DILocation(line: 62, column: 11, scope: !4465)
!4467 = !DILocation(line: 64, column: 5, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4465, file: !4428, line: 63, column: 12)
!4469 = !DILocation(line: 64, column: 11, scope: !4468)
!4470 = !DILocation(line: 69, column: 14, scope: !4447)
!4471 = !DILocation(line: 69, column: 56, scope: !4447)
!4472 = !DILocation(line: 70, column: 29, scope: !4447)
!4473 = !DILocation(line: 69, column: 7, scope: !4447)
!4474 = !DILocation(line: 73, column: 10, scope: !4427)
!4475 = !DILocation(line: 71, column: 5, scope: !4447)
!4476 = !DILocation(line: 74, column: 1, scope: !4427)
!4477 = !DILocation(line: 73, column: 3, scope: !4427)
!4478 = distinct !DISubprogram(name: "xdectoumax", scope: !4428, file: !4428, line: 82, type: !4479, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4481)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!227, !37, !227, !227, !37, !37, !39}
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487}
!4482 = !DILocalVariable(name: "n_str", arg: 1, scope: !4478, file: !4428, line: 82, type: !37)
!4483 = !DILocalVariable(name: "min", arg: 2, scope: !4478, file: !4428, line: 82, type: !227)
!4484 = !DILocalVariable(name: "max", arg: 3, scope: !4478, file: !4428, line: 82, type: !227)
!4485 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4478, file: !4428, line: 83, type: !37)
!4486 = !DILocalVariable(name: "err", arg: 5, scope: !4478, file: !4428, line: 83, type: !37)
!4487 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4478, file: !4428, line: 83, type: !39)
!4488 = !DILocation(line: 0, scope: !4478)
!4489 = !DILocation(line: 85, column: 10, scope: !4478)
!4490 = !DILocation(line: 85, column: 3, scope: !4478)
!4491 = distinct !DISubprogram(name: "xstrtoumax", scope: !4492, file: !4492, line: 76, type: !4493, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !4496)
!4492 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!4440, !37, !217, !39, !4495, !37}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!4496 = !{!4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4509, !4510, !4513, !4514}
!4497 = !DILocalVariable(name: "s", arg: 1, scope: !4491, file: !4492, line: 76, type: !37)
!4498 = !DILocalVariable(name: "ptr", arg: 2, scope: !4491, file: !4492, line: 76, type: !217)
!4499 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4491, file: !4492, line: 76, type: !39)
!4500 = !DILocalVariable(name: "val", arg: 4, scope: !4491, file: !4492, line: 77, type: !4495)
!4501 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4491, file: !4492, line: 77, type: !37)
!4502 = !DILocalVariable(name: "t_ptr", scope: !4491, file: !4492, line: 79, type: !35)
!4503 = !DILocalVariable(name: "p", scope: !4491, file: !4492, line: 80, type: !217)
!4504 = !DILocalVariable(name: "tmp", scope: !4491, file: !4492, line: 81, type: !227)
!4505 = !DILocalVariable(name: "err", scope: !4491, file: !4492, line: 82, type: !4440)
!4506 = !DILocalVariable(name: "q", scope: !4507, file: !4492, line: 92, type: !37)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !4492, line: 91, column: 5)
!4508 = distinct !DILexicalBlock(scope: !4491, file: !4492, line: 90, column: 7)
!4509 = !DILocalVariable(name: "ch", scope: !4507, file: !4492, line: 93, type: !200)
!4510 = !DILocalVariable(name: "base", scope: !4511, file: !4492, line: 129, type: !39)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !4492, line: 128, column: 5)
!4512 = distinct !DILexicalBlock(scope: !4491, file: !4492, line: 127, column: 7)
!4513 = !DILocalVariable(name: "suffixes", scope: !4511, file: !4492, line: 130, type: !39)
!4514 = !DILocalVariable(name: "overflow", scope: !4511, file: !4492, line: 131, type: !4440)
!4515 = !DILocation(line: 0, scope: !4491)
!4516 = !DILocation(line: 79, column: 3, scope: !4491)
!4517 = !DILocation(line: 84, column: 3, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !4492, line: 84, column: 3)
!4519 = distinct !DILexicalBlock(scope: !4491, file: !4492, line: 84, column: 3)
!4520 = !DILocation(line: 86, column: 8, scope: !4491)
!4521 = !DILocation(line: 88, column: 3, scope: !4491)
!4522 = !DILocation(line: 88, column: 9, scope: !4491)
!4523 = !DILocation(line: 0, scope: !4507)
!4524 = !DILocation(line: 94, column: 7, scope: !4507)
!4525 = !DILocation(line: 94, column: 14, scope: !4507)
!4526 = !DILocation(line: 95, column: 15, scope: !4507)
!4527 = distinct !{!4527, !4524, !4528}
!4528 = !DILocation(line: 95, column: 17, scope: !4507)
!4529 = !DILocation(line: 96, column: 14, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4507, file: !4492, line: 96, column: 11)
!4531 = !DILocalVariable(name: "nptr", arg: 1, scope: !4532, file: !4533, line: 336, type: !4536)
!4532 = distinct !DISubprogram(name: "strtoumax", scope: !4533, file: !4533, line: 336, type: !4534, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !4538)
!4533 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!227, !4536, !4537, !39}
!4536 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!4537 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !217)
!4538 = !{!4531, !4539, !4540}
!4539 = !DILocalVariable(name: "endptr", arg: 2, scope: !4532, file: !4533, line: 336, type: !4537)
!4540 = !DILocalVariable(name: "base", arg: 3, scope: !4532, file: !4533, line: 336, type: !39)
!4541 = !DILocation(line: 0, scope: !4532, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 100, column: 9, scope: !4491)
!4543 = !DILocation(line: 339, column: 10, scope: !4532, inlinedAt: !4542)
!4544 = !DILocation(line: 102, column: 7, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4491, file: !4492, line: 102, column: 7)
!4546 = !DILocation(line: 102, column: 10, scope: !4545)
!4547 = !DILocation(line: 102, column: 7, scope: !4491)
!4548 = !DILocation(line: 106, column: 11, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !4492, line: 106, column: 11)
!4550 = distinct !DILexicalBlock(scope: !4545, file: !4492, line: 103, column: 5)
!4551 = !DILocation(line: 106, column: 26, scope: !4549)
!4552 = !DILocation(line: 106, column: 29, scope: !4549)
!4553 = !DILocation(line: 106, column: 33, scope: !4549)
!4554 = !DILocation(line: 106, column: 36, scope: !4549)
!4555 = !DILocation(line: 106, column: 11, scope: !4550)
!4556 = !DILocation(line: 111, column: 12, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4545, file: !4492, line: 111, column: 12)
!4558 = !DILocation(line: 111, column: 12, scope: !4545)
!4559 = !DILocation(line: 116, column: 5, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4557, file: !4492, line: 112, column: 5)
!4561 = !DILocation(line: 121, column: 8, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4491, file: !4492, line: 121, column: 7)
!4563 = !DILocation(line: 121, column: 7, scope: !4491)
!4564 = !DILocation(line: 123, column: 12, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4562, file: !4492, line: 122, column: 5)
!4566 = !DILocation(line: 124, column: 7, scope: !4565)
!4567 = !DILocation(line: 127, column: 7, scope: !4512)
!4568 = !DILocation(line: 127, column: 11, scope: !4512)
!4569 = !DILocation(line: 127, column: 7, scope: !4491)
!4570 = !DILocation(line: 0, scope: !4511)
!4571 = !DILocation(line: 133, column: 12, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4511, file: !4492, line: 133, column: 11)
!4573 = !DILocation(line: 133, column: 11, scope: !4511)
!4574 = !DILocation(line: 135, column: 16, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4572, file: !4492, line: 134, column: 9)
!4576 = !DILocation(line: 136, column: 22, scope: !4575)
!4577 = !DILocation(line: 136, column: 11, scope: !4575)
!4578 = !DILocation(line: 139, column: 7, scope: !4511)
!4579 = !DILocation(line: 151, column: 15, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !4492, line: 151, column: 15)
!4581 = distinct !DILexicalBlock(scope: !4511, file: !4492, line: 140, column: 9)
!4582 = !DILocation(line: 151, column: 15, scope: !4581)
!4583 = !DILocation(line: 152, column: 21, scope: !4580)
!4584 = !DILocation(line: 152, column: 13, scope: !4580)
!4585 = !DILocation(line: 155, column: 21, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4587, file: !4492, line: 155, column: 21)
!4587 = distinct !DILexicalBlock(scope: !4580, file: !4492, line: 153, column: 15)
!4588 = !DILocation(line: 155, column: 29, scope: !4586)
!4589 = !DILocation(line: 155, column: 21, scope: !4587)
!4590 = !DILocation(line: 163, column: 17, scope: !4587)
!4591 = !DILocation(line: 167, column: 7, scope: !4511)
!4592 = !DILocalVariable(name: "err", scope: !4593, file: !4492, line: 67, type: !4440)
!4593 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4492, file: !4492, line: 65, type: !4594, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !4596)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!4440, !4495, !39, !39}
!4596 = !{!4597, !4598, !4599, !4592}
!4597 = !DILocalVariable(name: "x", arg: 1, scope: !4593, file: !4492, line: 65, type: !4495)
!4598 = !DILocalVariable(name: "base", arg: 2, scope: !4593, file: !4492, line: 65, type: !39)
!4599 = !DILocalVariable(name: "power", arg: 3, scope: !4593, file: !4492, line: 65, type: !39)
!4600 = !DILocation(line: 0, scope: !4593, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 221, column: 22, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4511, file: !4492, line: 168, column: 9)
!4603 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4604, file: !4492, line: 48, type: !39)
!4604 = distinct !DISubprogram(name: "bkm_scale", scope: !4492, file: !4492, line: 48, type: !4605, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !4607)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!4440, !4495, !39}
!4607 = !{!4608, !4603}
!4608 = !DILocalVariable(name: "x", arg: 1, scope: !4604, file: !4492, line: 48, type: !4495)
!4609 = !DILocation(line: 0, scope: !4604, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 69, column: 12, scope: !4593, inlinedAt: !4601)
!4611 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4610)
!4612 = distinct !DILexicalBlock(scope: !4604, file: !4492, line: 55, column: 7)
!4613 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4610)
!4614 = !DILocation(line: 69, column: 9, scope: !4593, inlinedAt: !4601)
!4615 = !DILocation(line: 229, column: 11, scope: !4511)
!4616 = !DILocation(line: 0, scope: !4593, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 217, column: 22, scope: !4602)
!4618 = !DILocation(line: 0, scope: !4604, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 69, column: 12, scope: !4593, inlinedAt: !4617)
!4620 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4619)
!4621 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4619)
!4622 = !DILocation(line: 69, column: 9, scope: !4593, inlinedAt: !4617)
!4623 = !DILocation(line: 0, scope: !4593, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 204, column: 22, scope: !4602)
!4625 = !DILocation(line: 0, scope: !4604, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 69, column: 12, scope: !4593, inlinedAt: !4624)
!4627 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4626)
!4628 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4626)
!4629 = !DILocation(line: 69, column: 9, scope: !4593, inlinedAt: !4624)
!4630 = !DILocation(line: 0, scope: !4593, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 185, column: 22, scope: !4602)
!4632 = !DILocation(line: 0, scope: !4604, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 69, column: 12, scope: !4593, inlinedAt: !4631)
!4634 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4633)
!4635 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4633)
!4636 = !DILocation(line: 69, column: 9, scope: !4593, inlinedAt: !4631)
!4637 = !DILocation(line: 0, scope: !4604, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 170, column: 22, scope: !4602)
!4639 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4638)
!4640 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4638)
!4641 = !DILocation(line: 171, column: 11, scope: !4602)
!4642 = !DILocation(line: 0, scope: !4604, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 177, column: 22, scope: !4602)
!4644 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4643)
!4645 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4643)
!4646 = !DILocation(line: 178, column: 11, scope: !4602)
!4647 = !DILocation(line: 0, scope: !4593, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 190, column: 22, scope: !4602)
!4649 = !DILocation(line: 0, scope: !4604, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 69, column: 12, scope: !4593, inlinedAt: !4648)
!4651 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4650)
!4652 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4650)
!4653 = !DILocation(line: 69, column: 9, scope: !4593, inlinedAt: !4648)
!4654 = !DILocation(line: 0, scope: !4593, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 195, column: 22, scope: !4602)
!4656 = !DILocation(line: 0, scope: !4604, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 69, column: 12, scope: !4593, inlinedAt: !4655)
!4658 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4657)
!4659 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4657)
!4660 = !DILocation(line: 0, scope: !4593, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 200, column: 22, scope: !4602)
!4662 = !DILocation(line: 0, scope: !4604, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 69, column: 12, scope: !4593, inlinedAt: !4661)
!4664 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4663)
!4665 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4663)
!4666 = !DILocation(line: 69, column: 9, scope: !4593, inlinedAt: !4661)
!4667 = !DILocation(line: 0, scope: !4593, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 209, column: 22, scope: !4602)
!4669 = !DILocation(line: 0, scope: !4604, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 69, column: 12, scope: !4593, inlinedAt: !4668)
!4671 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4670)
!4672 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4670)
!4673 = !DILocation(line: 69, column: 9, scope: !4593, inlinedAt: !4668)
!4674 = !DILocation(line: 0, scope: !4604, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 213, column: 22, scope: !4602)
!4676 = !DILocation(line: 55, column: 39, scope: !4612, inlinedAt: !4675)
!4677 = !DILocation(line: 55, column: 7, scope: !4604, inlinedAt: !4675)
!4678 = !DILocation(line: 214, column: 11, scope: !4602)
!4679 = !DILocation(line: 225, column: 16, scope: !4602)
!4680 = !DILocation(line: 226, column: 22, scope: !4602)
!4681 = !DILocation(line: 226, column: 11, scope: !4602)
!4682 = !DILocation(line: 0, scope: !4602)
!4683 = !DILocation(line: 230, column: 10, scope: !4511)
!4684 = !DILocation(line: 231, column: 11, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4511, file: !4492, line: 231, column: 11)
!4686 = !DILocation(line: 232, column: 13, scope: !4685)
!4687 = !DILocation(line: 231, column: 11, scope: !4511)
!4688 = !DILocation(line: 107, column: 13, scope: !4549)
!4689 = !DILocation(line: 82, column: 16, scope: !4491)
!4690 = !DILocation(line: 235, column: 8, scope: !4491)
!4691 = !DILocation(line: 236, column: 3, scope: !4491)
!4692 = !DILocation(line: 237, column: 1, scope: !4491)
!4693 = distinct !DISubprogram(name: "rpl_calloc", scope: !589, file: !589, line: 42, type: !1649, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4694)
!4694 = !{!4695, !4696, !4697, !4698}
!4695 = !DILocalVariable(name: "n", arg: 1, scope: !4693, file: !589, line: 42, type: !94)
!4696 = !DILocalVariable(name: "s", arg: 2, scope: !4693, file: !589, line: 42, type: !94)
!4697 = !DILocalVariable(name: "result", scope: !4693, file: !589, line: 44, type: !92)
!4698 = !DILocalVariable(name: "bytes", scope: !4699, file: !589, line: 56, type: !94)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !589, line: 53, column: 5)
!4700 = distinct !DILexicalBlock(scope: !4693, file: !589, line: 47, column: 7)
!4701 = !DILocation(line: 0, scope: !4693)
!4702 = !DILocation(line: 47, column: 9, scope: !4700)
!4703 = !DILocation(line: 47, column: 19, scope: !4700)
!4704 = !DILocation(line: 47, column: 14, scope: !4700)
!4705 = !DILocation(line: 0, scope: !4699)
!4706 = !DILocation(line: 57, column: 21, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4699, file: !589, line: 57, column: 11)
!4708 = !DILocation(line: 57, column: 11, scope: !4699)
!4709 = !DILocation(line: 59, column: 11, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4707, file: !589, line: 58, column: 9)
!4711 = !DILocation(line: 59, column: 17, scope: !4710)
!4712 = !DILocation(line: 65, column: 12, scope: !4693)
!4713 = !DILocation(line: 72, column: 3, scope: !4693)
!4714 = !DILocation(line: 73, column: 1, scope: !4693)
!4715 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !592, file: !592, line: 86, type: !4716, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !4722)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!94, !4718, !37, !94, !4719}
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2726, line: 6, baseType: !4721)
!4721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !420, line: 21, baseType: !598)
!4722 = !{!4723, !4724, !4725, !4726, !4727, !4728, !4729}
!4723 = !DILocalVariable(name: "pwc", arg: 1, scope: !4715, file: !592, line: 86, type: !4718)
!4724 = !DILocalVariable(name: "s", arg: 2, scope: !4715, file: !592, line: 86, type: !37)
!4725 = !DILocalVariable(name: "n", arg: 3, scope: !4715, file: !592, line: 86, type: !94)
!4726 = !DILocalVariable(name: "ps", arg: 4, scope: !4715, file: !592, line: 86, type: !4719)
!4727 = !DILocalVariable(name: "ret", scope: !4715, file: !592, line: 88, type: !94)
!4728 = !DILocalVariable(name: "wc", scope: !4715, file: !592, line: 89, type: !2730)
!4729 = !DILocalVariable(name: "uc", scope: !4730, file: !592, line: 156, type: !200)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !592, line: 155, column: 5)
!4731 = distinct !DILexicalBlock(scope: !4715, file: !592, line: 154, column: 7)
!4732 = !DILocation(line: 0, scope: !4715)
!4733 = !DILocation(line: 89, column: 3, scope: !4715)
!4734 = !DILocation(line: 105, column: 9, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4715, file: !592, line: 105, column: 7)
!4736 = !DILocation(line: 105, column: 7, scope: !4715)
!4737 = !DILocation(line: 145, column: 9, scope: !4715)
!4738 = !DILocation(line: 154, column: 19, scope: !4731)
!4739 = !DILocation(line: 154, column: 31, scope: !4731)
!4740 = !DILocation(line: 154, column: 26, scope: !4731)
!4741 = !DILocation(line: 154, column: 41, scope: !4731)
!4742 = !DILocation(line: 154, column: 7, scope: !4715)
!4743 = !DILocation(line: 156, column: 26, scope: !4730)
!4744 = !DILocation(line: 0, scope: !4730)
!4745 = !DILocation(line: 157, column: 14, scope: !4730)
!4746 = !DILocation(line: 157, column: 12, scope: !4730)
!4747 = !DILocation(line: 163, column: 1, scope: !4715)
!4748 = distinct !DISubprogram(name: "close_stream", scope: !611, file: !611, line: 56, type: !4749, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !4753)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!39, !4751}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2348, line: 7, baseType: !618)
!4753 = !{!4754, !4755, !4756, !4757}
!4754 = !DILocalVariable(name: "stream", arg: 1, scope: !4748, file: !611, line: 56, type: !4751)
!4755 = !DILocalVariable(name: "some_pending", scope: !4748, file: !611, line: 58, type: !1430)
!4756 = !DILocalVariable(name: "prev_fail", scope: !4748, file: !611, line: 59, type: !1430)
!4757 = !DILocalVariable(name: "fclose_fail", scope: !4748, file: !611, line: 60, type: !1430)
!4758 = !DILocation(line: 0, scope: !4748)
!4759 = !DILocation(line: 58, column: 30, scope: !4748)
!4760 = !DILocalVariable(name: "__stream", arg: 1, scope: !4761, file: !4762, line: 135, type: !4751)
!4761 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4762, file: !4762, line: 135, type: !4749, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !4763)
!4762 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4763 = !{!4760}
!4764 = !DILocation(line: 0, scope: !4761, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 59, column: 27, scope: !4748)
!4766 = !DILocation(line: 137, column: 10, scope: !4761, inlinedAt: !4765)
!4767 = !{!4768, !1601, i64 0}
!4768 = !{!"_IO_FILE", !1601, i64 0, !1212, i64 8, !1212, i64 16, !1212, i64 24, !1212, i64 32, !1212, i64 40, !1212, i64 48, !1212, i64 56, !1212, i64 64, !1212, i64 72, !1212, i64 80, !1212, i64 88, !1212, i64 96, !1212, i64 104, !1601, i64 112, !1601, i64 116, !1752, i64 120, !2977, i64 128, !1213, i64 130, !1213, i64 131, !1212, i64 136, !1752, i64 144, !1212, i64 152, !1212, i64 160, !1212, i64 168, !1212, i64 176, !1752, i64 184, !1601, i64 192, !1213, i64 196}
!4769 = !DILocation(line: 59, column: 43, scope: !4748)
!4770 = !DILocation(line: 60, column: 29, scope: !4748)
!4771 = !DILocation(line: 60, column: 45, scope: !4748)
!4772 = !DILocation(line: 70, column: 17, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4748, file: !611, line: 70, column: 7)
!4774 = !DILocation(line: 58, column: 50, scope: !4748)
!4775 = !DILocation(line: 70, column: 33, scope: !4773)
!4776 = !DILocation(line: 70, column: 53, scope: !4773)
!4777 = !DILocation(line: 70, column: 59, scope: !4773)
!4778 = !DILocation(line: 70, column: 7, scope: !4748)
!4779 = !DILocation(line: 72, column: 11, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4773, file: !611, line: 71, column: 5)
!4781 = !DILocation(line: 73, column: 9, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4780, file: !611, line: 72, column: 11)
!4783 = !DILocation(line: 73, column: 15, scope: !4782)
!4784 = !DILocation(line: 78, column: 1, scope: !4748)
!4785 = distinct !DISubprogram(name: "hard_locale", scope: !650, file: !650, line: 27, type: !608, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !4786)
!4786 = !{!4787, !4788}
!4787 = !DILocalVariable(name: "category", arg: 1, scope: !4785, file: !650, line: 27, type: !39)
!4788 = !DILocalVariable(name: "locale", scope: !4785, file: !650, line: 29, type: !4789)
!4789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2056, elements: !4790)
!4790 = !{!4791}
!4791 = !DISubrange(count: 257)
!4792 = !DILocation(line: 0, scope: !4785)
!4793 = !DILocation(line: 29, column: 3, scope: !4785)
!4794 = !DILocation(line: 29, column: 8, scope: !4785)
!4795 = !DILocation(line: 31, column: 7, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4785, file: !650, line: 31, column: 7)
!4797 = !DILocation(line: 31, column: 7, scope: !4785)
!4798 = !DILocation(line: 34, column: 12, scope: !4785)
!4799 = !DILocation(line: 34, column: 38, scope: !4785)
!4800 = !DILocation(line: 34, column: 41, scope: !4785)
!4801 = !DILocation(line: 34, column: 66, scope: !4785)
!4802 = !DILocation(line: 35, column: 1, scope: !4785)
!4803 = distinct !DISubprogram(name: "locale_charset", scope: !657, file: !657, line: 831, type: !443, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4804)
!4804 = !{!4805}
!4805 = !DILocalVariable(name: "codeset", scope: !4803, file: !657, line: 833, type: !37)
!4806 = !DILocation(line: 847, column: 13, scope: !4803)
!4807 = !DILocation(line: 0, scope: !4803)
!4808 = !DILocation(line: 911, column: 15, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4803, file: !657, line: 911, column: 7)
!4810 = !DILocation(line: 911, column: 7, scope: !4803)
!4811 = !DILocation(line: 1070, column: 13, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !657, line: 1070, column: 13)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !657, line: 1060, column: 7)
!4814 = distinct !DILexicalBlock(scope: !4803, file: !657, line: 1019, column: 3)
!4815 = !DILocation(line: 1070, column: 24, scope: !4812)
!4816 = !DILocation(line: 1070, column: 13, scope: !4813)
!4817 = !DILocation(line: 1158, column: 3, scope: !4803)
!4818 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1050, file: !1050, line: 269, type: !4819, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !4821)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!39, !39, !35, !94}
!4821 = !{!4822, !4823, !4824}
!4822 = !DILocalVariable(name: "category", arg: 1, scope: !4818, file: !1050, line: 269, type: !39)
!4823 = !DILocalVariable(name: "buf", arg: 2, scope: !4818, file: !1050, line: 269, type: !35)
!4824 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4818, file: !1050, line: 269, type: !94)
!4825 = !DILocation(line: 0, scope: !4818)
!4826 = !DILocalVariable(name: "category", arg: 1, scope: !4827, file: !1050, line: 91, type: !39)
!4827 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1050, file: !1050, line: 91, type: !4819, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !4828)
!4828 = !{!4826, !4829, !4830, !4831, !4832}
!4829 = !DILocalVariable(name: "buf", arg: 2, scope: !4827, file: !1050, line: 91, type: !35)
!4830 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4827, file: !1050, line: 91, type: !94)
!4831 = !DILocalVariable(name: "result", scope: !4827, file: !1050, line: 140, type: !37)
!4832 = !DILocalVariable(name: "length", scope: !4833, file: !1050, line: 154, type: !94)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !1050, line: 153, column: 5)
!4834 = distinct !DILexicalBlock(scope: !4827, file: !1050, line: 142, column: 7)
!4835 = !DILocation(line: 0, scope: !4827, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 274, column: 10, scope: !4818)
!4837 = !DILocalVariable(name: "category", arg: 1, scope: !4838, file: !1050, line: 60, type: !39)
!4838 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1050, file: !1050, line: 60, type: !4839, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !4841)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!37, !39}
!4841 = !{!4837, !4842}
!4842 = !DILocalVariable(name: "result", scope: !4838, file: !1050, line: 62, type: !37)
!4843 = !DILocation(line: 0, scope: !4838, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 140, column: 24, scope: !4827, inlinedAt: !4836)
!4845 = !DILocation(line: 62, column: 24, scope: !4838, inlinedAt: !4844)
!4846 = !DILocation(line: 142, column: 14, scope: !4834, inlinedAt: !4836)
!4847 = !DILocation(line: 142, column: 7, scope: !4827, inlinedAt: !4836)
!4848 = !DILocation(line: 145, column: 19, scope: !4849, inlinedAt: !4836)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !1050, line: 145, column: 11)
!4850 = distinct !DILexicalBlock(scope: !4834, file: !1050, line: 143, column: 5)
!4851 = !DILocation(line: 145, column: 11, scope: !4850, inlinedAt: !4836)
!4852 = !DILocation(line: 149, column: 16, scope: !4849, inlinedAt: !4836)
!4853 = !DILocation(line: 149, column: 9, scope: !4849, inlinedAt: !4836)
!4854 = !DILocation(line: 154, column: 23, scope: !4833, inlinedAt: !4836)
!4855 = !DILocation(line: 0, scope: !4833, inlinedAt: !4836)
!4856 = !DILocation(line: 155, column: 18, scope: !4857, inlinedAt: !4836)
!4857 = distinct !DILexicalBlock(scope: !4833, file: !1050, line: 155, column: 11)
!4858 = !DILocation(line: 155, column: 11, scope: !4833, inlinedAt: !4836)
!4859 = !DILocation(line: 157, column: 39, scope: !4860, inlinedAt: !4836)
!4860 = distinct !DILexicalBlock(scope: !4857, file: !1050, line: 156, column: 9)
!4861 = !DILocalVariable(name: "__dest", arg: 1, scope: !4862, file: !1811, line: 31, type: !1814)
!4862 = distinct !DISubprogram(name: "memcpy", scope: !1811, file: !1811, line: 31, type: !1812, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !4863)
!4863 = !{!4861, !4864, !4865}
!4864 = !DILocalVariable(name: "__src", arg: 2, scope: !4862, file: !1811, line: 31, type: !1815)
!4865 = !DILocalVariable(name: "__len", arg: 3, scope: !4862, file: !1811, line: 31, type: !94)
!4866 = !DILocation(line: 0, scope: !4862, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 157, column: 11, scope: !4860, inlinedAt: !4836)
!4868 = !DILocation(line: 34, column: 10, scope: !4862, inlinedAt: !4867)
!4869 = !DILocation(line: 158, column: 11, scope: !4860, inlinedAt: !4836)
!4870 = !DILocation(line: 162, column: 23, scope: !4871, inlinedAt: !4836)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !1050, line: 162, column: 15)
!4872 = distinct !DILexicalBlock(scope: !4857, file: !1050, line: 161, column: 9)
!4873 = !DILocation(line: 162, column: 15, scope: !4872, inlinedAt: !4836)
!4874 = !DILocation(line: 167, column: 44, scope: !4875, inlinedAt: !4836)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !1050, line: 163, column: 13)
!4876 = !DILocation(line: 0, scope: !4862, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 167, column: 15, scope: !4875, inlinedAt: !4836)
!4878 = !DILocation(line: 34, column: 10, scope: !4862, inlinedAt: !4877)
!4879 = !DILocation(line: 168, column: 15, scope: !4875, inlinedAt: !4836)
!4880 = !DILocation(line: 168, column: 32, scope: !4875, inlinedAt: !4836)
!4881 = !DILocation(line: 169, column: 13, scope: !4875, inlinedAt: !4836)
!4882 = !DILocation(line: 0, scope: !4834, inlinedAt: !4836)
!4883 = !DILocation(line: 274, column: 3, scope: !4818)
!4884 = distinct !DISubprogram(name: "setlocale_null", scope: !1050, file: !1050, line: 301, type: !4839, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !4885)
!4885 = !{!4886}
!4886 = !DILocalVariable(name: "category", arg: 1, scope: !4884, file: !1050, line: 301, type: !39)
!4887 = !DILocation(line: 0, scope: !4884)
!4888 = !DILocation(line: 0, scope: !4838, inlinedAt: !4889)
!4889 = distinct !DILocation(line: 304, column: 10, scope: !4884)
!4890 = !DILocation(line: 62, column: 24, scope: !4838, inlinedAt: !4889)
!4891 = !DILocation(line: 304, column: 3, scope: !4884)
!4892 = distinct !DISubprogram(name: "rpl_fclose", scope: !1053, file: !1053, line: 58, type: !4893, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1052, retainedNodes: !4897)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!39, !4895}
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2348, line: 7, baseType: !1059)
!4897 = !{!4898, !4899, !4900, !4901}
!4898 = !DILocalVariable(name: "fp", arg: 1, scope: !4892, file: !1053, line: 58, type: !4895)
!4899 = !DILocalVariable(name: "saved_errno", scope: !4892, file: !1053, line: 60, type: !39)
!4900 = !DILocalVariable(name: "fd", scope: !4892, file: !1053, line: 61, type: !39)
!4901 = !DILocalVariable(name: "result", scope: !4892, file: !1053, line: 62, type: !39)
!4902 = !DILocation(line: 0, scope: !4892)
!4903 = !DILocation(line: 65, column: 8, scope: !4892)
!4904 = !DILocation(line: 66, column: 10, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4892, file: !1053, line: 66, column: 7)
!4906 = !DILocation(line: 66, column: 7, scope: !4892)
!4907 = !DILocation(line: 67, column: 12, scope: !4905)
!4908 = !DILocation(line: 67, column: 5, scope: !4905)
!4909 = !DILocation(line: 72, column: 9, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4892, file: !1053, line: 72, column: 7)
!4911 = !DILocation(line: 72, column: 23, scope: !4910)
!4912 = !DILocation(line: 72, column: 33, scope: !4910)
!4913 = !DILocation(line: 72, column: 26, scope: !4910)
!4914 = !DILocation(line: 72, column: 59, scope: !4910)
!4915 = !DILocation(line: 73, column: 7, scope: !4910)
!4916 = !DILocation(line: 73, column: 10, scope: !4910)
!4917 = !DILocation(line: 72, column: 7, scope: !4892)
!4918 = !DILocation(line: 100, column: 12, scope: !4892)
!4919 = !DILocation(line: 105, column: 7, scope: !4892)
!4920 = !DILocation(line: 74, column: 19, scope: !4910)
!4921 = !DILocation(line: 105, column: 19, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4892, file: !1053, line: 105, column: 7)
!4923 = !DILocation(line: 107, column: 13, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4922, file: !1053, line: 106, column: 5)
!4925 = !DILocation(line: 109, column: 5, scope: !4924)
!4926 = !DILocation(line: 112, column: 1, scope: !4892)
!4927 = distinct !DISubprogram(name: "rpl_fflush", scope: !1093, file: !1093, line: 129, type: !4928, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1092, retainedNodes: !4932)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!39, !4930}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2348, line: 7, baseType: !1099)
!4932 = !{!4933}
!4933 = !DILocalVariable(name: "stream", arg: 1, scope: !4927, file: !1093, line: 129, type: !4930)
!4934 = !DILocation(line: 0, scope: !4927)
!4935 = !DILocation(line: 150, column: 14, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4927, file: !1093, line: 150, column: 7)
!4937 = !DILocation(line: 150, column: 22, scope: !4936)
!4938 = !DILocation(line: 150, column: 27, scope: !4936)
!4939 = !DILocation(line: 150, column: 7, scope: !4927)
!4940 = !DILocation(line: 151, column: 12, scope: !4936)
!4941 = !DILocation(line: 151, column: 5, scope: !4936)
!4942 = !DILocalVariable(name: "fp", arg: 1, scope: !4943, file: !1093, line: 41, type: !4930)
!4943 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1093, file: !1093, line: 41, type: !4944, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1092, retainedNodes: !4946)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{null, !4930}
!4946 = !{!4942}
!4947 = !DILocation(line: 0, scope: !4943, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 156, column: 3, scope: !4927)
!4949 = !DILocation(line: 43, column: 11, scope: !4950, inlinedAt: !4948)
!4950 = distinct !DILexicalBlock(scope: !4943, file: !1093, line: 43, column: 7)
!4951 = !DILocation(line: 43, column: 18, scope: !4950, inlinedAt: !4948)
!4952 = !DILocation(line: 43, column: 7, scope: !4943, inlinedAt: !4948)
!4953 = !DILocation(line: 45, column: 5, scope: !4950, inlinedAt: !4948)
!4954 = !DILocation(line: 158, column: 10, scope: !4927)
!4955 = !DILocation(line: 158, column: 3, scope: !4927)
!4956 = !DILocation(line: 235, column: 1, scope: !4927)
!4957 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1134, file: !1134, line: 28, type: !4958, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1133, retainedNodes: !4962)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!39, !4960, !146, !39}
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2348, line: 7, baseType: !1140)
!4962 = !{!4963, !4964, !4965, !4966}
!4963 = !DILocalVariable(name: "fp", arg: 1, scope: !4957, file: !1134, line: 28, type: !4960)
!4964 = !DILocalVariable(name: "offset", arg: 2, scope: !4957, file: !1134, line: 28, type: !146)
!4965 = !DILocalVariable(name: "whence", arg: 3, scope: !4957, file: !1134, line: 28, type: !39)
!4966 = !DILocalVariable(name: "pos", scope: !4967, file: !1134, line: 117, type: !146)
!4967 = distinct !DILexicalBlock(scope: !4968, file: !1134, line: 113, column: 5)
!4968 = distinct !DILexicalBlock(scope: !4957, file: !1134, line: 52, column: 7)
!4969 = !DILocation(line: 0, scope: !4957)
!4970 = !DILocation(line: 52, column: 11, scope: !4968)
!4971 = !{!4768, !1212, i64 16}
!4972 = !DILocation(line: 52, column: 31, scope: !4968)
!4973 = !{!4768, !1212, i64 8}
!4974 = !DILocation(line: 52, column: 24, scope: !4968)
!4975 = !DILocation(line: 53, column: 7, scope: !4968)
!4976 = !DILocation(line: 53, column: 14, scope: !4968)
!4977 = !{!4768, !1212, i64 40}
!4978 = !DILocation(line: 53, column: 35, scope: !4968)
!4979 = !{!4768, !1212, i64 32}
!4980 = !DILocation(line: 53, column: 28, scope: !4968)
!4981 = !DILocation(line: 54, column: 7, scope: !4968)
!4982 = !DILocation(line: 54, column: 14, scope: !4968)
!4983 = !{!4768, !1212, i64 72}
!4984 = !DILocation(line: 54, column: 28, scope: !4968)
!4985 = !DILocation(line: 52, column: 7, scope: !4957)
!4986 = !DILocation(line: 117, column: 26, scope: !4967)
!4987 = !DILocation(line: 117, column: 19, scope: !4967)
!4988 = !DILocation(line: 0, scope: !4967)
!4989 = !DILocation(line: 118, column: 15, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4967, file: !1134, line: 118, column: 11)
!4991 = !DILocation(line: 118, column: 11, scope: !4967)
!4992 = !DILocation(line: 129, column: 11, scope: !4967)
!4993 = !DILocation(line: 129, column: 18, scope: !4967)
!4994 = !DILocation(line: 130, column: 11, scope: !4967)
!4995 = !DILocation(line: 130, column: 19, scope: !4967)
!4996 = !{!4768, !1752, i64 144}
!4997 = !DILocation(line: 161, column: 7, scope: !4967)
!4998 = !DILocation(line: 163, column: 10, scope: !4957)
!4999 = !DILocation(line: 163, column: 3, scope: !4957)
!5000 = !DILocation(line: 164, column: 1, scope: !4957)
