; ModuleID = 'coreutils-8.32/src/truncate.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [275 x i8] c"Shrink or extend the size of each FILE to the specified size\0A\0AA FILE argument that does not exist is created.\0A\0AIf a FILE is larger than the specified size, the extra data is lost.\0AIf a FILE is shorter, it is extended and the sparse extended part (hole)\0Areads as zero bytes.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"  -c, --no-create        do not create any files\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"  -o, --io-blocks        treat SIZE as number of IO blocks instead of bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [112 x i8] c"  -r, --reference=RFILE  base size on RFILE\0A  -s, --size=SIZE        set or adjust the file size by SIZE bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.32 = private unnamed_addr constant [212 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0A\00", align 1
@.str.8 = private unnamed_addr constant [191 x i8] c"\0ASIZE may also be prefixed by one of the following modifying characters:\0A'+' extend by, '-' reduce by, '<' at most, '>' at least,\0A'/' round down to multiple of, '%' round up to multiple of.\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cor:s:\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@no_create = internal unnamed_addr global i1 false, align 1, !dbg !87
@block_mode = internal unnamed_addr global i1 false, align 1, !dbg !88
@ref_file = internal unnamed_addr global i8* null, align 8, !dbg !71
@.str.14 = private unnamed_addr constant [38 x i8] c"multiple relative modifiers specified\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Invalid number\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"EgGkKmMPtTYZ0\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"you must specify either %s or %s\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--size\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"--reference\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"you must specify a relative %s with %s\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"%s was specified but %s was not\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"--io-blocks\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"cannot get the size of %s\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"cannot open %s for writing\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"overflow in %ld * %ld byte blocks for file %s\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"%s has unusable, apparently negative size\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"overflow extending size of file %s\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"failed to truncate %s at %ld bytes\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"io-blocks\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), align 8, !dbg !89
@.str.59 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !95
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !100
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.63 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.64 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !102
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !108
@.str.71 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.72 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.73 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.77, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.83, i32 0, i32 0), i8* null], align 16, !dbg !114
@.str.74 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.75 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.76 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.77 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.78 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.79 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.80 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.81 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.82 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.83 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !126
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !132
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !144
@.str.11.84 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.85 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.86 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.87 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.88 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.89 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.90 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !151
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !158
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !146
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !160
@.str.97 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.98 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.99 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.100 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.101 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.102 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.115 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.116 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.117 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.118 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.119 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.120 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.121 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !166
@.str.1.132 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.139 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.140 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.1.149 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.152 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.153 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !625 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !629, metadata !DIExpression()), !dbg !630
  %3 = icmp eq i32 %0, 0, !dbg !631
  br i1 %3, label %9, label %4, !dbg !633

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !634, !tbaa !636
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !634
  %7 = load i8*, i8** @program_name, align 8, !dbg !634, !tbaa !636
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !634
  br label %76, !dbg !634

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !640
  %11 = load i8*, i8** @program_name, align 8, !dbg !640, !tbaa !636
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #25, !dbg !640
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !642
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !636
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !642
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0), i32 5) #25, !dbg !643
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !636
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #25, !dbg !643
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !649
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !649, !tbaa !636
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !649
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !650
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !650, !tbaa !636
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !650
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.5, i64 0, i64 0), i32 5) #25, !dbg !651
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !636
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !651
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #25, !dbg !652
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !636
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !652
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #25, !dbg !653
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !636
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !653
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.32, i64 0, i64 0), i32 5) #25, !dbg !654
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !654, !tbaa !636
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35) #25, !dbg !654
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.8, i64 0, i64 0), i32 5) #25, !dbg !657
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !636
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !657
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), metadata !658, metadata !DIExpression()) #25, !dbg !674
  %40 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !676
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %40) #25, !dbg !676
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !663, metadata !DIExpression()) #25, !dbg !677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %40, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !677
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), metadata !670, metadata !DIExpression()) #25, !dbg !674
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !671, metadata !DIExpression()) #25, !dbg !674
  %41 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !678
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !671, metadata !DIExpression()) #25, !dbg !674
  br label %42, !dbg !679

42:                                               ; preds = %47, %9
  %43 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), %9 ]
  %44 = phi %struct.infomap* [ %48, %47 ], [ %41, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !671, metadata !DIExpression()) #25, !dbg !674
  %45 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %43) #26, !dbg !680
  %46 = icmp eq i32 %45, 0, !dbg !680
  br i1 %46, label %52, label %47, !dbg !679

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 1, !dbg !681
  call void @llvm.dbg.value(metadata %struct.infomap* %48, metadata !671, metadata !DIExpression()) #25, !dbg !674
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 0, i32 0, !dbg !682
  %50 = load i8*, i8** %49, align 8, !dbg !682, !tbaa !683
  %51 = icmp eq i8* %50, null, !dbg !685
  br i1 %51, label %52, label %42, !dbg !686, !llvm.loop !687

52:                                               ; preds = %47, %42
  %53 = phi %struct.infomap* [ %44, %42 ], [ %48, %47 ]
  %54 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 0, i32 1, !dbg !689
  %55 = load i8*, i8** %54, align 8, !dbg !689, !tbaa !691
  %56 = icmp eq i8* %55, null, !dbg !692
  %57 = select i1 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %55, !dbg !693
  call void @llvm.dbg.value(metadata i8* %57, metadata !670, metadata !DIExpression()) #25, !dbg !674
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 5) #25, !dbg !694
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0)) #25, !dbg !694
  %60 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !695
  call void @llvm.dbg.value(metadata i8* %60, metadata !673, metadata !DIExpression()) #25, !dbg !674
  %61 = icmp eq i8* %60, null, !dbg !696
  br i1 %61, label %69, label %62, !dbg !698

62:                                               ; preds = %52
  %63 = tail call i32 @strncmp(i8* nonnull %60, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 3) #26, !dbg !699
  %64 = icmp eq i32 %63, 0, !dbg !699
  br i1 %64, label %69, label %65, !dbg !700

65:                                               ; preds = %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0), i32 5) #25, !dbg !701
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !636
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #25, !dbg !701
  br label %69, !dbg !703

69:                                               ; preds = %52, %62, %65
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 5) #25, !dbg !704
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #25, !dbg !704
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 5) #25, !dbg !705
  %73 = icmp eq i8* %57, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), !dbg !705
  %74 = select i1 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !705
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* %57, i8* %74) #25, !dbg !705
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %40) #25, !dbg !706
  br label %76

76:                                               ; preds = %69, %4
  tail call void @exit(i32 %0) #27, !dbg !707
  unreachable, !dbg !707
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !708 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !712 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !763 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !767 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !772, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i8** %1, metadata !773, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i8 0, metadata !774, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i8 0, metadata !775, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i64 -1, metadata !777, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i32 0, metadata !778, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i32 -1, metadata !781, metadata !DIExpression()), !dbg !831
  %5 = load i8*, i8** %1, align 8, !dbg !832, !tbaa !636
  tail call void @set_program_name(i8* %5) #25, !dbg !833
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #25, !dbg !834
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #25, !dbg !835
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #25, !dbg !836
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !837
  br label %10, !dbg !838

10:                                               ; preds = %78, %2
  %11 = phi i32 [ %79, %78 ], [ 0, %2 ]
  %12 = phi i64 [ %81, %78 ], [ undef, %2 ]
  %13 = phi i1 [ false, %78 ], [ true, %2 ]
  br label %14, !dbg !838

14:                                               ; preds = %30, %10
  call void @llvm.dbg.value(metadata i8 undef, metadata !774, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i64 %12, metadata !776, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i32 %11, metadata !778, metadata !DIExpression()), !dbg !831
  %15 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #25, !dbg !839
  call void @llvm.dbg.value(metadata i32 %15, metadata !780, metadata !DIExpression()), !dbg !831
  switch i32 %15, label %92 [
    i32 -1, label %93
    i32 99, label %26
    i32 111, label %27
    i32 114, label %28
    i32 115, label %16
    i32 -130, label %88
    i32 -131, label %89
  ], !dbg !838

16:                                               ; preds = %14
  %17 = tail call i16** @__ctype_b_loc() #28, !dbg !840
  %18 = load i16*, i16** %17, align 8, !dbg !840, !tbaa !636
  %19 = load i8*, i8** @optarg, align 8, !dbg !840, !tbaa !636
  %20 = load i8, i8* %19, align 1, !dbg !840, !tbaa !843
  %21 = zext i8 %20 to i64, !dbg !840
  %22 = getelementptr inbounds i16, i16* %18, i64 %21, !dbg !840
  %23 = load i16, i16* %22, align 2, !dbg !840, !tbaa !844
  %24 = and i16 %23, 8192, !dbg !840
  %25 = icmp eq i16 %24, 0, !dbg !846
  br i1 %25, label %41, label %31, !dbg !846

26:                                               ; preds = %14
  store i1 true, i1* @no_create, align 1, !dbg !847
  br label %30, !dbg !848

27:                                               ; preds = %14
  store i1 true, i1* @block_mode, align 1, !dbg !849
  br label %30, !dbg !850

28:                                               ; preds = %14
  %29 = load i8*, i8** @optarg, align 8, !dbg !851, !tbaa !636
  store i8* %29, i8** @ref_file, align 8, !dbg !852, !tbaa !636
  br label %30, !dbg !853

30:                                               ; preds = %28, %27, %26
  br label %14, !dbg !831, !llvm.loop !854

31:                                               ; preds = %16, %31
  %32 = phi i8* [ %33, %31 ], [ %19, %16 ]
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !856
  store i8* %33, i8** @optarg, align 8, !dbg !856, !tbaa !636
  %34 = load i16*, i16** %17, align 8, !dbg !840, !tbaa !636
  %35 = load i8, i8* %33, align 1, !dbg !840, !tbaa !843
  %36 = zext i8 %35 to i64, !dbg !840
  %37 = getelementptr inbounds i16, i16* %34, i64 %36, !dbg !840
  %38 = load i16, i16* %37, align 2, !dbg !840, !tbaa !844
  %39 = and i16 %38, 8192, !dbg !840
  %40 = icmp eq i16 %39, 0, !dbg !846
  br i1 %40, label %41, label %31, !dbg !846, !llvm.loop !857

41:                                               ; preds = %31, %16
  %42 = phi i8* [ %19, %16 ], [ %33, %31 ], !dbg !840
  %43 = phi i8 [ %20, %16 ], [ %35, %31 ], !dbg !840
  %44 = sext i8 %43 to i32, !dbg !858
  switch i32 %44, label %51 [
    i32 60, label %48
    i32 62, label %45
    i32 47, label %46
    i32 37, label %47
  ], !dbg !859

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 2, metadata !778, metadata !DIExpression()), !dbg !831
  br label %48, !dbg !860

46:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 4, metadata !778, metadata !DIExpression()), !dbg !831
  br label %48, !dbg !862

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 5, metadata !778, metadata !DIExpression()), !dbg !831
  br label %48, !dbg !863

48:                                               ; preds = %41, %45, %46, %47
  %49 = phi i32 [ 5, %47 ], [ 4, %46 ], [ 2, %45 ], [ 3, %41 ]
  %50 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !864
  store i8* %50, i8** @optarg, align 8, !dbg !864, !tbaa !636
  br label %51, !dbg !865

51:                                               ; preds = %48, %41
  %52 = phi i8* [ %42, %41 ], [ %50, %48 ], !dbg !865
  %53 = phi i32 [ %11, %41 ], [ %49, %48 ], !dbg !831
  call void @llvm.dbg.value(metadata i32 %53, metadata !778, metadata !DIExpression()), !dbg !831
  %54 = load i16*, i16** %17, align 8, !dbg !865, !tbaa !636
  %55 = load i8, i8* %52, align 1, !dbg !865, !tbaa !843
  %56 = zext i8 %55 to i64, !dbg !865
  %57 = getelementptr inbounds i16, i16* %54, i64 %56, !dbg !865
  %58 = load i16, i16* %57, align 2, !dbg !865, !tbaa !844
  %59 = and i16 %58, 8192, !dbg !865
  %60 = icmp eq i16 %59, 0, !dbg !866
  br i1 %60, label %71, label %61, !dbg !866

61:                                               ; preds = %51, %61
  %62 = phi i8* [ %63, %61 ], [ %52, %51 ]
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !867
  store i8* %63, i8** @optarg, align 8, !dbg !867, !tbaa !636
  %64 = load i16*, i16** %17, align 8, !dbg !865, !tbaa !636
  %65 = load i8, i8* %63, align 1, !dbg !865, !tbaa !843
  %66 = zext i8 %65 to i64, !dbg !865
  %67 = getelementptr inbounds i16, i16* %64, i64 %66, !dbg !865
  %68 = load i16, i16* %67, align 2, !dbg !865, !tbaa !844
  %69 = and i16 %68, 8192, !dbg !865
  %70 = icmp eq i16 %69, 0, !dbg !866
  br i1 %70, label %71, label %61, !dbg !866, !llvm.loop !868

71:                                               ; preds = %61, %51
  %72 = phi i8* [ %52, %51 ], [ %63, %61 ], !dbg !865
  %73 = phi i8 [ %55, %51 ], [ %65, %61 ], !dbg !865
  switch i8 %73, label %78 [
    i8 43, label %74
    i8 45, label %74
  ], !dbg !869

74:                                               ; preds = %71, %71
  %75 = icmp eq i32 %53, 0, !dbg !871
  br i1 %75, label %78, label %76, !dbg !874

76:                                               ; preds = %74
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 5) #25, !dbg !875
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77) #25, !dbg !877
  tail call void @usage(i32 1) #29, !dbg !878
  unreachable, !dbg !878

78:                                               ; preds = %74, %71
  %79 = phi i32 [ %53, %71 ], [ 1, %74 ], !dbg !831
  call void @llvm.dbg.value(metadata i32 %79, metadata !778, metadata !DIExpression()), !dbg !831
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 5) #25, !dbg !879
  %81 = tail call i64 @xdectoimax(i8* nonnull %72, i64 -9223372036854775808, i64 9223372036854775807, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %80, i32 0) #25, !dbg !880
  call void @llvm.dbg.value(metadata i64 %81, metadata !776, metadata !DIExpression()), !dbg !831
  %82 = and i32 %79, -2, !dbg !881
  %83 = icmp eq i32 %82, 4, !dbg !881
  %84 = icmp eq i64 %81, 0
  %85 = and i1 %83, %84, !dbg !881
  br i1 %85, label %86, label %10, !dbg !881, !llvm.loop !854

86:                                               ; preds = %78
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #25, !dbg !883
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %87) #25, !dbg !883
  unreachable, !dbg !883

88:                                               ; preds = %14
  tail call void @usage(i32 0) #29, !dbg !884
  unreachable, !dbg !884

89:                                               ; preds = %14
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !885, !tbaa !636
  %91 = load i8*, i8** @Version, align 8, !dbg !885, !tbaa !636
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* null) #25, !dbg !885
  tail call void @exit(i32 0) #27, !dbg !885
  unreachable, !dbg !885

92:                                               ; preds = %14
  tail call void @usage(i32 1) #29, !dbg !886
  unreachable, !dbg !886

93:                                               ; preds = %14
  %94 = load i32, i32* @optind, align 4, !dbg !887, !tbaa !888
  %95 = sext i32 %94 to i64, !dbg !890
  %96 = getelementptr inbounds i8*, i8** %1, i64 %95, !dbg !890
  call void @llvm.dbg.value(metadata i8** %96, metadata !773, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i32 undef, metadata !772, metadata !DIExpression()), !dbg !831
  %97 = load i8*, i8** @ref_file, align 8, !dbg !891, !tbaa !636
  %98 = icmp eq i8* %97, null, !dbg !891
  %99 = and i1 %13, %98, !dbg !893
  br i1 %99, label %100, label %104, !dbg !893

100:                                              ; preds = %93
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #25, !dbg !894
  %102 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #25, !dbg !896
  %103 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #25, !dbg !897
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101, i8* %102, i8* %103) #25, !dbg !898
  tail call void @usage(i32 1) #29, !dbg !899
  unreachable, !dbg !899

104:                                              ; preds = %93
  %105 = icmp ne i32 %11, 0
  %106 = or i1 %105, %13
  %107 = or i1 %106, %98, !dbg !900
  br i1 %107, label %112, label %108, !dbg !900

108:                                              ; preds = %104
  %109 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 5) #25, !dbg !902
  %110 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #25, !dbg !904
  %111 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #25, !dbg !905
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %109, i8* %110, i8* %111) #25, !dbg !906
  tail call void @usage(i32 1) #29, !dbg !907
  unreachable, !dbg !907

112:                                              ; preds = %104
  %113 = load i1, i1* @block_mode, align 1, !dbg !908
  %114 = and i1 %13, %113, !dbg !910
  br i1 %114, label %115, label %119, !dbg !910

115:                                              ; preds = %112
  %116 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 5) #25, !dbg !911
  %117 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #25, !dbg !913
  %118 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #25, !dbg !914
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %116, i8* %117, i8* %118) #25, !dbg !915
  tail call void @usage(i32 1) #29, !dbg !916
  unreachable, !dbg !916

119:                                              ; preds = %112
  %120 = icmp slt i32 %94, %0, !dbg !917
  br i1 %120, label %123, label %121, !dbg !919

121:                                              ; preds = %119
  %122 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 5) #25, !dbg !920
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %122) #25, !dbg !922
  tail call void @usage(i32 1) #29, !dbg !923
  unreachable, !dbg !923

123:                                              ; preds = %119
  br i1 %98, label %164, label %124, !dbg !924

124:                                              ; preds = %123
  %125 = bitcast %struct.stat* %4 to i8*, !dbg !925
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %125) #25, !dbg !925
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !784, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 -1, metadata !823, metadata !DIExpression()), !dbg !927
  %126 = call i32 @stat(i8* nonnull %97, %struct.stat* nonnull %4) #25, !dbg !928
  %127 = icmp eq i32 %126, 0, !dbg !930
  br i1 %127, label %134, label %128, !dbg !931

128:                                              ; preds = %124
  %129 = tail call i32* @__errno_location() #28, !dbg !932
  %130 = load i32, i32* %129, align 4, !dbg !932, !tbaa !888
  %131 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 5) #25, !dbg !932
  %132 = load i8*, i8** @ref_file, align 8, !dbg !932, !tbaa !636
  %133 = tail call i8* @quotearg_style(i32 4, i8* %132) #25, !dbg !932
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %130, i8* %131, i8* %133) #25, !dbg !932
  unreachable, !dbg !932

134:                                              ; preds = %124
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !933, metadata !DIExpression()), !dbg !940
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !942
  %136 = load i32, i32* %135, align 8, !dbg !942, !tbaa !943
  %137 = trunc i32 %136 to i16, !dbg !947
  %138 = and i16 %137, -4096, !dbg !947
  switch i16 %138, label %139 [
    i16 -32768, label %150
    i16 -24576, label %150
  ], !dbg !947

139:                                              ; preds = %134
  %140 = load i8*, i8** @ref_file, align 8, !dbg !948, !tbaa !636
  %141 = tail call i32 (i8*, i32, ...) @open(i8* %140, i32 0) #25, !dbg !949
  call void @llvm.dbg.value(metadata i32 %141, metadata !824, metadata !DIExpression()), !dbg !950
  %142 = icmp sgt i32 %141, -1, !dbg !951
  br i1 %142, label %143, label %154, !dbg !952

143:                                              ; preds = %139
  %144 = tail call i64 @lseek(i32 %141, i64 0, i32 2) #25, !dbg !953
  call void @llvm.dbg.value(metadata i64 %144, metadata !827, metadata !DIExpression()), !dbg !954
  %145 = tail call i32* @__errno_location() #28, !dbg !955
  %146 = load i32, i32* %145, align 4, !dbg !955, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %146, metadata !830, metadata !DIExpression()), !dbg !954
  %147 = tail call i32 @close(i32 %141) #25, !dbg !956
  %148 = icmp sgt i64 %144, -1, !dbg !957
  br i1 %148, label %160, label %149, !dbg !959

149:                                              ; preds = %143
  store i32 %146, i32* %145, align 4, !dbg !960, !tbaa !888
  br label %154

150:                                              ; preds = %134, %134
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !962
  %152 = load i64, i64* %151, align 8, !dbg !962, !tbaa !963
  call void @llvm.dbg.value(metadata i64 %152, metadata !823, metadata !DIExpression()), !dbg !927
  %153 = icmp slt i64 %152, 0, !dbg !964
  br i1 %153, label %154, label %160, !dbg !966

154:                                              ; preds = %149, %139, %150
  %155 = tail call i32* @__errno_location() #28, !dbg !967
  %156 = load i32, i32* %155, align 4, !dbg !967, !tbaa !888
  %157 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #25, !dbg !967
  %158 = load i8*, i8** @ref_file, align 8, !dbg !967, !tbaa !636
  %159 = tail call i8* @quotearg_style(i32 4, i8* %158) #25, !dbg !967
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %156, i8* %157, i8* %159) #25, !dbg !967
  unreachable, !dbg !967

160:                                              ; preds = %143, %150
  %161 = phi i64 [ %152, %150 ], [ %144, %143 ]
  %162 = select i1 %13, i64 -1, i64 %161, !dbg !968
  %163 = select i1 %13, i64 %161, i64 %12, !dbg !968
  call void @llvm.dbg.value(metadata i64 %163, metadata !776, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i64 %162, metadata !777, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %125) #25, !dbg !969
  br label %164, !dbg !970

164:                                              ; preds = %160, %123
  %165 = phi i64 [ %162, %160 ], [ -1, %123 ], !dbg !831
  %166 = phi i64 [ %163, %160 ], [ %12, %123 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !776, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i64 %165, metadata !777, metadata !DIExpression()), !dbg !831
  %167 = load i1, i1* @no_create, align 1, !dbg !971
  %168 = select i1 %167, i32 2049, i32 2113, !dbg !972
  call void @llvm.dbg.value(metadata i32 %168, metadata !782, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i8 0, metadata !775, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i8** %96, metadata !773, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !831
  %169 = load i8*, i8** %96, align 8, !dbg !973, !tbaa !636
  call void @llvm.dbg.value(metadata i8* %169, metadata !783, metadata !DIExpression()), !dbg !831
  %170 = icmp eq i8* %169, null, !dbg !974
  br i1 %170, label %302, label %171, !dbg !975

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i8** %96, metadata !773, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !831
  %172 = bitcast %struct.stat* %3 to i8*
  %173 = icmp slt i64 %165, 0
  %174 = and i1 %105, %173
  %175 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 9
  %176 = icmp slt i64 %166, 0
  %177 = icmp eq i64 %166, -1
  %178 = sub i64 0, %166
  %179 = icmp eq i32 %11, 0
  %180 = icmp sgt i64 %165, -1
  %181 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %182 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  br label %183, !dbg !975

183:                                              ; preds = %171, %200
  %184 = phi i8* [ %169, %171 ], [ %202, %200 ]
  %185 = phi i8** [ %96, %171 ], [ %187, %200 ]
  %186 = phi i8 [ 0, %171 ], [ %201, %200 ]
  %187 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !976
  call void @llvm.dbg.value(metadata i8 %186, metadata !775, metadata !DIExpression()), !dbg !831
  %188 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %184, i32 %168, i32 438) #25, !dbg !977
  call void @llvm.dbg.value(metadata i32 %188, metadata !781, metadata !DIExpression()), !dbg !831
  %189 = icmp eq i32 %188, -1, !dbg !980
  br i1 %189, label %190, label %204, !dbg !981

190:                                              ; preds = %183
  %191 = load i1, i1* @no_create, align 1, !dbg !982
  %192 = tail call i32* @__errno_location() #28, !dbg !985
  br i1 %191, label %193, label %196, !dbg !986

193:                                              ; preds = %190
  %194 = load i32, i32* %192, align 4, !dbg !987, !tbaa !888
  %195 = icmp eq i32 %194, 2, !dbg !988
  br i1 %195, label %200, label %196, !dbg !989

196:                                              ; preds = %190, %193
  %197 = load i32, i32* %192, align 4, !dbg !990, !tbaa !888
  %198 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #25, !dbg !992
  %199 = tail call i8* @quotearg_style(i32 4, i8* nonnull %184) #25, !dbg !993
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %197, i8* %198, i8* %199) #25, !dbg !994
  call void @llvm.dbg.value(metadata i8 1, metadata !775, metadata !DIExpression()), !dbg !831
  br label %200, !dbg !995

200:                                              ; preds = %297, %291, %193, %196
  %201 = phi i8 [ %186, %193 ], [ 1, %196 ], [ 1, %297 ], [ %294, %291 ]
  call void @llvm.dbg.value(metadata i8 %201, metadata !775, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i8** %187, metadata !773, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !831
  %202 = load i8*, i8** %187, align 8, !dbg !973, !tbaa !636
  call void @llvm.dbg.value(metadata i8* %202, metadata !783, metadata !DIExpression()), !dbg !831
  %203 = icmp eq i8* %202, null, !dbg !974
  br i1 %203, label %302, label %183, !dbg !975, !llvm.loop !996

204:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i32 %188, metadata !998, metadata !DIExpression()) #25, !dbg !1024
  call void @llvm.dbg.value(metadata i8* %184, metadata !1003, metadata !DIExpression()) #25, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %166, metadata !1004, metadata !DIExpression()) #25, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %165, metadata !1005, metadata !DIExpression()) #25, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %11, metadata !1006, metadata !DIExpression()) #25, !dbg !1024
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %172) #25, !dbg !1028
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1007, metadata !DIExpression()) #25, !dbg !1029
  %205 = load i1, i1* @block_mode, align 1, !dbg !1030
  %206 = or i1 %205, %174, !dbg !1032
  br i1 %206, label %207, label %235, !dbg !1032

207:                                              ; preds = %204
  %208 = call i32 @fstat(i32 %188, %struct.stat* nonnull %3) #25, !dbg !1033
  %209 = icmp eq i32 %208, 0, !dbg !1034
  br i1 %209, label %215, label %210, !dbg !1035

210:                                              ; preds = %207
  %211 = tail call i32* @__errno_location() #28, !dbg !1036
  %212 = load i32, i32* %211, align 4, !dbg !1036, !tbaa !888
  %213 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i32 5) #25, !dbg !1038
  %214 = tail call i8* @quotearg_style(i32 4, i8* nonnull %184) #25, !dbg !1039
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %212, i8* %213, i8* %214) #25, !dbg !1040
  br label %291, !dbg !1041

215:                                              ; preds = %207
  %216 = load i1, i1* @block_mode, align 1, !dbg !1042
  br i1 %216, label %217, label %235, !dbg !1043

217:                                              ; preds = %215
  %218 = load i64, i64* %175, align 8, !dbg !1044, !tbaa !1045
  %219 = icmp sgt i64 %218, 0, !dbg !1044
  %220 = icmp ult i64 %218, 2305843009213693953, !dbg !1044
  %221 = and i1 %219, %220, !dbg !1044
  %222 = select i1 %221, i64 %218, i64 512, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %222, metadata !1009, metadata !DIExpression()) #25, !dbg !1046
  call void @llvm.dbg.value(metadata i64 %166, metadata !1013, metadata !DIExpression()) #25, !dbg !1046
  br i1 %176, label %223, label %227, !dbg !1047

223:                                              ; preds = %217
  br i1 %177, label %230, label %224, !dbg !1047

224:                                              ; preds = %223
  %225 = udiv i64 -9223372036854775808, %178, !dbg !1047
  %226 = icmp slt i64 %225, %222, !dbg !1047
  br i1 %226, label %232, label %230, !dbg !1047

227:                                              ; preds = %217
  %228 = sdiv i64 9223372036854775807, %222, !dbg !1047
  %229 = icmp slt i64 %228, %166, !dbg !1047
  br i1 %229, label %232, label %230, !dbg !1047

230:                                              ; preds = %227, %224, %223
  %231 = mul i64 %222, %166, !dbg !1047
  call void @llvm.dbg.value(metadata i64 undef, metadata !1004, metadata !DIExpression()) #25, !dbg !1024
  br label %235

232:                                              ; preds = %227, %224
  call void @llvm.dbg.value(metadata i64 undef, metadata !1004, metadata !DIExpression()) #25, !dbg !1024
  %233 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i64 0, i64 0), i32 5) #25, !dbg !1049
  %234 = tail call i8* @quotearg_style(i32 4, i8* nonnull %184) #25, !dbg !1051
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %233, i64 %166, i64 %222, i8* %234) #25, !dbg !1052
  br label %291

235:                                              ; preds = %204, %230, %215
  %236 = phi i64 [ %166, %215 ], [ %231, %230 ], [ %166, %204 ]
  call void @llvm.dbg.value(metadata i64 %236, metadata !1004, metadata !DIExpression()) #25, !dbg !1024
  br i1 %179, label %280, label %237, !dbg !1053

237:                                              ; preds = %235
  br i1 %180, label %256, label %238, !dbg !1054

238:                                              ; preds = %237
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !933, metadata !DIExpression()) #25, !dbg !1055
  %239 = load i32, i32* %181, align 8, !dbg !1060, !tbaa !943
  %240 = trunc i32 %239 to i16, !dbg !1061
  %241 = and i16 %240, -4096, !dbg !1061
  switch i16 %241, label %248 [
    i16 -32768, label %242
    i16 -24576, label %242
  ], !dbg !1061

242:                                              ; preds = %238, %238
  %243 = load i64, i64* %182, align 8, !dbg !1062, !tbaa !963
  call void @llvm.dbg.value(metadata i64 %243, metadata !1014, metadata !DIExpression()) #25, !dbg !1064
  %244 = icmp slt i64 %243, 0, !dbg !1065
  br i1 %244, label %245, label %256, !dbg !1067

245:                                              ; preds = %242
  %246 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i64 0, i64 0), i32 5) #25, !dbg !1068
  %247 = tail call i8* @quotearg_style(i32 4, i8* nonnull %184) #25, !dbg !1070
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %246, i8* %247) #25, !dbg !1071
  br label %291, !dbg !1072

248:                                              ; preds = %238
  %249 = tail call i64 @lseek(i32 %188, i64 0, i32 2) #25, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %249, metadata !1014, metadata !DIExpression()) #25, !dbg !1064
  %250 = icmp slt i64 %249, 0, !dbg !1075
  br i1 %250, label %251, label %256, !dbg !1077

251:                                              ; preds = %248
  %252 = tail call i32* @__errno_location() #28, !dbg !1078
  %253 = load i32, i32* %252, align 4, !dbg !1078, !tbaa !888
  %254 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #25, !dbg !1080
  %255 = tail call i8* @quotearg_style(i32 4, i8* nonnull %184) #25, !dbg !1081
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %253, i8* %254, i8* %255) #25, !dbg !1082
  br label %291, !dbg !1083

256:                                              ; preds = %248, %242, %237
  %257 = phi i64 [ %243, %242 ], [ %249, %248 ], [ %165, %237 ], !dbg !1084
  call void @llvm.dbg.value(metadata i64 %257, metadata !1014, metadata !DIExpression()) #25, !dbg !1064
  switch i32 %11, label %272 [
    i32 2, label %258
    i32 3, label %261
    i32 4, label %264
    i32 5, label %267
  ], !dbg !1085

258:                                              ; preds = %256
  %259 = icmp sgt i64 %257, %236, !dbg !1086
  %260 = select i1 %259, i64 %257, i64 %236, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %260, metadata !1008, metadata !DIExpression()) #25, !dbg !1024
  br label %280, !dbg !1087

261:                                              ; preds = %256
  %262 = icmp slt i64 %257, %236, !dbg !1088
  %263 = select i1 %262, i64 %257, i64 %236, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %263, metadata !1008, metadata !DIExpression()) #25, !dbg !1024
  br label %280, !dbg !1089

264:                                              ; preds = %256
  %265 = srem i64 %257, %236, !dbg !1090
  %266 = sub nsw i64 %257, %265, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %266, metadata !1008, metadata !DIExpression()) #25, !dbg !1024
  br label %280, !dbg !1092

267:                                              ; preds = %256
  %268 = srem i64 %257, %236, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %268, metadata !1017, metadata !DIExpression()) #25, !dbg !1094
  %269 = icmp eq i64 %268, 0, !dbg !1095
  %270 = sub nsw i64 %236, %268, !dbg !1096
  %271 = select i1 %269, i64 0, i64 %270, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %271, metadata !1004, metadata !DIExpression()) #25, !dbg !1024
  br label %272, !dbg !1097

272:                                              ; preds = %267, %256
  %273 = phi i64 [ %271, %267 ], [ %236, %256 ], !dbg !1024
  call void @llvm.dbg.value(metadata i64 %273, metadata !1004, metadata !DIExpression()) #25, !dbg !1024
  %274 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %257, i64 %273) #25, !dbg !1098
  %275 = extractvalue { i64, i1 } %274, 1, !dbg !1098
  %276 = extractvalue { i64, i1 } %274, 0, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %276, metadata !1008, metadata !DIExpression()) #25, !dbg !1024
  br i1 %275, label %277, label %280, !dbg !1100

277:                                              ; preds = %272
  %278 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i32 5) #25, !dbg !1101
  %279 = tail call i8* @quotearg_style(i32 4, i8* nonnull %184) #25, !dbg !1103
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %278, i8* %279) #25, !dbg !1104
  br label %291, !dbg !1105

280:                                              ; preds = %272, %264, %261, %258, %235
  %281 = phi i64 [ %236, %235 ], [ %276, %272 ], [ %266, %264 ], [ %263, %261 ], [ %260, %258 ], !dbg !1106
  call void @llvm.dbg.value(metadata i64 %281, metadata !1008, metadata !DIExpression()) #25, !dbg !1024
  %282 = icmp sgt i64 %281, 0, !dbg !1107
  %283 = select i1 %282, i64 %281, i64 0, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %283, metadata !1008, metadata !DIExpression()) #25, !dbg !1024
  %284 = tail call i32 @ftruncate(i32 %188, i64 %283) #25, !dbg !1108
  %285 = icmp eq i32 %284, -1, !dbg !1110
  br i1 %285, label %286, label %291, !dbg !1111

286:                                              ; preds = %280
  %287 = tail call i32* @__errno_location() #28, !dbg !1112
  %288 = load i32, i32* %287, align 4, !dbg !1112, !tbaa !888
  %289 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0), i32 5) #25, !dbg !1114
  %290 = tail call i8* @quotearg_style(i32 4, i8* nonnull %184) #25, !dbg !1115
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %288, i8* %289, i8* %290, i64 %283) #25, !dbg !1116
  br label %291, !dbg !1117

291:                                              ; preds = %210, %232, %245, %251, %277, %280, %286
  %292 = phi i8 [ 1, %210 ], [ 1, %286 ], [ 1, %232 ], [ 0, %280 ], [ 1, %277 ], [ 1, %251 ], [ 1, %245 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %172) #25, !dbg !1118
  %293 = and i8 %186, 1, !dbg !1119
  %294 = or i8 %292, %293, !dbg !1119
  call void @llvm.dbg.value(metadata i8 %294, metadata !775, metadata !DIExpression()), !dbg !831
  %295 = tail call i32 @close(i32 %188) #25, !dbg !1120
  %296 = icmp eq i32 %295, 0, !dbg !1122
  br i1 %296, label %200, label %297, !dbg !1123

297:                                              ; preds = %291
  %298 = tail call i32* @__errno_location() #28, !dbg !1124
  %299 = load i32, i32* %298, align 4, !dbg !1124, !tbaa !888
  %300 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 5) #25, !dbg !1126
  %301 = tail call i8* @quotearg_style(i32 4, i8* nonnull %184) #25, !dbg !1127
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %299, i8* %300, i8* %301) #25, !dbg !1128
  call void @llvm.dbg.value(metadata i8 1, metadata !775, metadata !DIExpression()), !dbg !831
  br label %200, !dbg !1129

302:                                              ; preds = %200, %164
  %303 = phi i8 [ 0, %164 ], [ %201, %200 ], !dbg !831
  %304 = and i8 %303, 1, !dbg !1130
  %305 = zext i8 %304 to i32, !dbg !1130
  ret i32 %305, !dbg !1131
}

; Function Attrs: nounwind
declare !dbg !1132 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1135 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1138 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1143 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

declare !dbg !1149 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1153 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1158 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1162 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare !dbg !1166 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1169 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !1172 i32 @ftruncate(i32, i64) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1175 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i8* %0, i8** @file_name, align 8, !dbg !1179, !tbaa !636
  ret void, !dbg !1180
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1181 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1185, metadata !DIExpression()), !dbg !1186
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1187, !tbaa !1188
  ret void, !dbg !1190
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1191 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1196, !tbaa !636
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !1197
  %3 = icmp eq i32 %2, 0, !dbg !1198
  br i1 %3, label %22, label %4, !dbg !1199

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1200, !tbaa !1188, !range !1201
  %6 = icmp eq i8 %5, 0, !dbg !1200
  br i1 %6, label %11, label %7, !dbg !1202

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !1203
  %9 = load i32, i32* %8, align 4, !dbg !1203, !tbaa !888
  %10 = icmp eq i32 %9, 32, !dbg !1204
  br i1 %10, label %22, label %11, !dbg !1205

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 5) #25, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %12, metadata !1193, metadata !DIExpression()), !dbg !1207
  %13 = load i8*, i8** @file_name, align 8, !dbg !1208, !tbaa !636
  %14 = icmp eq i8* %13, null, !dbg !1208
  %15 = tail call i32* @__errno_location() #28, !dbg !1210
  %16 = load i32, i32* %15, align 4, !dbg !1210, !tbaa !888
  br i1 %14, label %19, label %17, !dbg !1211

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !1212
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.63, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !1213
  br label %20, !dbg !1213

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.64, i64 0, i64 0), i8* %12) #25, !dbg !1214
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1215, !tbaa !888
  tail call void @_exit(i32 %21) #27, !dbg !1216
  unreachable, !dbg !1216

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1217, !tbaa !636
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !1219
  %25 = icmp eq i32 %24, 0, !dbg !1220
  br i1 %25, label %28, label %26, !dbg !1221

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1222, !tbaa !888
  tail call void @_exit(i32 %27) #27, !dbg !1223
  unreachable, !dbg !1223

28:                                               ; preds = %22
  ret void, !dbg !1224
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1227, metadata !DIExpression()), !dbg !1230
  %2 = icmp eq i8* %0, null, !dbg !1231
  br i1 %2, label %3, label %6, !dbg !1233

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1234, !tbaa !636
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !1236
  tail call void @abort() #27, !dbg !1237
  unreachable, !dbg !1237

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %7, metadata !1228, metadata !DIExpression()), !dbg !1230
  %8 = icmp eq i8* %7, null, !dbg !1239
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1240
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1240
  call void @llvm.dbg.value(metadata i8* %10, metadata !1229, metadata !DIExpression()), !dbg !1230
  %11 = ptrtoint i8* %10 to i64, !dbg !1241
  %12 = ptrtoint i8* %0 to i64, !dbg !1241
  %13 = sub i64 %11, %12, !dbg !1241
  %14 = icmp sgt i64 %13, 6, !dbg !1243
  br i1 %14, label %15, label %24, !dbg !1244

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1245
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.72, i64 0, i64 0), i64 7) #26, !dbg !1246
  %18 = icmp eq i32 %17, 0, !dbg !1247
  br i1 %18, label %19, label %24, !dbg !1248

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1227, metadata !DIExpression()), !dbg !1230
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.73, i64 0, i64 0), i64 3) #26, !dbg !1249
  %21 = icmp eq i32 %20, 0, !dbg !1252
  br i1 %21, label %22, label %24, !dbg !1253

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %23, metadata !1227, metadata !DIExpression()), !dbg !1230
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1256, !tbaa !636
  br label %24, !dbg !1257

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1227, metadata !DIExpression()), !dbg !1230
  store i8* %25, i8** @program_name, align 8, !dbg !1258, !tbaa !636
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1259, !tbaa !636
  ret void, !dbg !1260
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1261 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1266, metadata !DIExpression()), !dbg !1269
  %2 = tail call i32* @__errno_location() #28, !dbg !1270
  %3 = load i32, i32* %2, align 4, !dbg !1270, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %3, metadata !1267, metadata !DIExpression()), !dbg !1269
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1271
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1271
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1271
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !1272
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1272
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1268, metadata !DIExpression()), !dbg !1269
  store i32 %3, i32* %2, align 4, !dbg !1273, !tbaa !888
  ret %struct.quoting_options* %8, !dbg !1274
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1275 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1281, metadata !DIExpression()), !dbg !1282
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1283
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1283
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1284
  %5 = load i32, i32* %4, align 8, !dbg !1284, !tbaa !1285
  ret i32 %5, !dbg !1287
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1288 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1292, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i32 %1, metadata !1293, metadata !DIExpression()), !dbg !1294
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1295
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1295
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1296
  store i32 %1, i32* %5, align 8, !dbg !1297, !tbaa !1285
  ret void, !dbg !1298
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1299 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1303, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i8 %1, metadata !1304, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %2, metadata !1305, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i8 %1, metadata !1306, metadata !DIExpression()), !dbg !1311
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1312
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1312
  %6 = lshr i8 %1, 5, !dbg !1313
  %7 = zext i8 %6 to i64, !dbg !1313
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1314
  call void @llvm.dbg.value(metadata i32* %8, metadata !1307, metadata !DIExpression()), !dbg !1311
  %9 = and i8 %1, 31, !dbg !1315
  %10 = zext i8 %9 to i32, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %10, metadata !1309, metadata !DIExpression()), !dbg !1311
  %11 = load i32, i32* %8, align 4, !dbg !1316, !tbaa !888
  %12 = lshr i32 %11, %10, !dbg !1317
  %13 = and i32 %12, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i32 %13, metadata !1310, metadata !DIExpression()), !dbg !1311
  %14 = and i32 %2, 1, !dbg !1319
  %15 = xor i32 %13, %14, !dbg !1320
  %16 = shl i32 %15, %10, !dbg !1321
  %17 = xor i32 %16, %11, !dbg !1322
  store i32 %17, i32* %8, align 4, !dbg !1322, !tbaa !888
  ret i32 %13, !dbg !1323
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1324 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1328, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 %1, metadata !1329, metadata !DIExpression()), !dbg !1331
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1332
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1328, metadata !DIExpression()), !dbg !1331
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1335
  %6 = load i32, i32* %5, align 4, !dbg !1335, !tbaa !1336
  call void @llvm.dbg.value(metadata i32 %6, metadata !1330, metadata !DIExpression()), !dbg !1331
  store i32 %1, i32* %5, align 4, !dbg !1337, !tbaa !1336
  ret i32 %6, !dbg !1338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1339 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1343, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i8* %1, metadata !1344, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i8* %2, metadata !1345, metadata !DIExpression()), !dbg !1346
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1347
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1343, metadata !DIExpression()), !dbg !1346
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1350
  store i32 10, i32* %6, align 8, !dbg !1351, !tbaa !1285
  %7 = icmp ne i8* %1, null, !dbg !1352
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1354
  br i1 %9, label %11, label %10, !dbg !1354

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !1355
  unreachable, !dbg !1355

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1356
  store i8* %1, i8** %12, align 8, !dbg !1357, !tbaa !1358
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1359
  store i8* %2, i8** %13, align 8, !dbg !1360, !tbaa !1361
  ret void, !dbg !1362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1367, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %1, metadata !1368, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata i8* %2, metadata !1369, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata i64 %3, metadata !1370, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1371, metadata !DIExpression()), !dbg !1375
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1376
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1376
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1372, metadata !DIExpression()), !dbg !1375
  %8 = tail call i32* @__errno_location() #28, !dbg !1377
  %9 = load i32, i32* %8, align 4, !dbg !1377, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %9, metadata !1373, metadata !DIExpression()), !dbg !1375
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1378
  %11 = load i32, i32* %10, align 8, !dbg !1378, !tbaa !1285
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1379
  %13 = load i32, i32* %12, align 4, !dbg !1379, !tbaa !1336
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1380
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1381
  %16 = load i8*, i8** %15, align 8, !dbg !1381, !tbaa !1358
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1382
  %18 = load i8*, i8** %17, align 8, !dbg !1382, !tbaa !1361
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %19, metadata !1374, metadata !DIExpression()), !dbg !1375
  store i32 %9, i32* %8, align 4, !dbg !1384, !tbaa !888
  ret i64 %19, !dbg !1385
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1386 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1392, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %1, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %2, metadata !1394, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %3, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %4, metadata !1396, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %5, metadata !1397, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32* %6, metadata !1398, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %7, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %8, metadata !1400, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 0, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 0, metadata !1403, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* null, metadata !1404, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 0, metadata !1405, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1406, metadata !DIExpression()), !dbg !1462
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !1463
  %14 = icmp eq i64 %13, 1, !dbg !1464
  call void @llvm.dbg.value(metadata i1 %14, metadata !1407, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1462
  %15 = lshr i32 %5, 1, !dbg !1465
  %16 = trunc i32 %15 to i8, !dbg !1465
  %17 = and i8 %16, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i8 %17, metadata !1408, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1410, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1411, metadata !DIExpression()), !dbg !1462
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1466

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1467
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1468
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1469
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1470
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1462
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1471
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1472
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1473
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %38, metadata !1411, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %37, metadata !1410, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %36, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %35, metadata !1408, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %34, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %33, metadata !1406, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %32, metadata !1405, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %31, metadata !1404, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %30, metadata !1403, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 0, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %29, metadata !1400, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %28, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %27, metadata !1396, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.label(metadata !1456), !dbg !1474
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
  ], !dbg !1475

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1408, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 5, metadata !1396, metadata !DIExpression()), !dbg !1462
  br label %92, !dbg !1476

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1408, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 5, metadata !1396, metadata !DIExpression()), !dbg !1462
  %42 = and i8 %35, 1, !dbg !1478
  %43 = icmp eq i8 %42, 0, !dbg !1478
  br i1 %43, label %44, label %92, !dbg !1476

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1480
  br i1 %45, label %92, label %46, !dbg !1483

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1480, !tbaa !843
  br label %92, !dbg !1480

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.84, i64 0, i64 0), i32 %27), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %48, metadata !1399, metadata !DIExpression()), !dbg !1462
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), i32 %27), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %49, metadata !1400, metadata !DIExpression()), !dbg !1462
  br label %50, !dbg !1489

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1400, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %51, metadata !1399, metadata !DIExpression()), !dbg !1462
  %53 = and i8 %35, 1, !dbg !1490
  %54 = icmp eq i8 %53, 0, !dbg !1490
  br i1 %54, label %55, label %70, !dbg !1492

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1404, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 0, metadata !1402, metadata !DIExpression()), !dbg !1462
  %56 = load i8, i8* %51, align 1, !dbg !1493, !tbaa !843
  %57 = icmp eq i8 %56, 0, !dbg !1496
  br i1 %57, label %70, label %58, !dbg !1496

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1404, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %61, metadata !1402, metadata !DIExpression()), !dbg !1462
  %62 = icmp ult i64 %61, %39, !dbg !1497
  br i1 %62, label %63, label %65, !dbg !1500

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1497
  store i8 %59, i8* %64, align 1, !dbg !1497, !tbaa !843
  br label %65, !dbg !1497

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %66, metadata !1402, metadata !DIExpression()), !dbg !1462
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %67, metadata !1404, metadata !DIExpression()), !dbg !1462
  %68 = load i8, i8* %67, align 1, !dbg !1493, !tbaa !843
  %69 = icmp eq i8 %68, 0, !dbg !1496
  br i1 %69, label %70, label %58, !dbg !1496, !llvm.loop !1502

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1504
  call void @llvm.dbg.value(metadata i64 %71, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1406, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %52, metadata !1404, metadata !DIExpression()), !dbg !1462
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %72, metadata !1405, metadata !DIExpression()), !dbg !1462
  br label %92, !dbg !1506

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1406, metadata !DIExpression()), !dbg !1462
  br label %74, !dbg !1507

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1462
  call void @llvm.dbg.value(metadata i8 %75, metadata !1406, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1408, metadata !DIExpression()), !dbg !1462
  br label %76, !dbg !1508

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1470
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1462
  call void @llvm.dbg.value(metadata i8 %78, metadata !1408, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %77, metadata !1406, metadata !DIExpression()), !dbg !1462
  %79 = and i8 %78, 1, !dbg !1509
  %80 = icmp eq i8 %79, 0, !dbg !1509
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1511
  br label %82, !dbg !1511

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1462
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1465
  call void @llvm.dbg.value(metadata i8 %84, metadata !1408, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %83, metadata !1406, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 2, metadata !1396, metadata !DIExpression()), !dbg !1462
  %85 = and i8 %84, 1, !dbg !1512
  %86 = icmp eq i8 %85, 0, !dbg !1512
  br i1 %86, label %87, label %92, !dbg !1514

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1515
  br i1 %88, label %92, label %89, !dbg !1518

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1515, !tbaa !843
  br label %92, !dbg !1515

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1408, metadata !DIExpression()), !dbg !1462
  br label %92, !dbg !1519

91:                                               ; preds = %26
  call void @abort() #27, !dbg !1520
  unreachable, !dbg !1520

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1504
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %40 ], !dbg !1462
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1462
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1462
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1462
  call void @llvm.dbg.value(metadata i8 %100, metadata !1408, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %99, metadata !1406, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %98, metadata !1405, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %97, metadata !1404, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %96, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %95, metadata !1400, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %94, metadata !1399, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %93, metadata !1396, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 0, metadata !1401, metadata !DIExpression()), !dbg !1462
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
  br label %121, !dbg !1521

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1522
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1504
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1467
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1471
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1472
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1473
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %128, metadata !1411, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %127, metadata !1410, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %126, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %125, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %124, metadata !1403, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %122, metadata !1401, metadata !DIExpression()), !dbg !1462
  %130 = icmp eq i64 %125, -1, !dbg !1523
  br i1 %130, label %131, label %135, !dbg !1524

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1525
  %133 = load i8, i8* %132, align 1, !dbg !1525, !tbaa !843
  %134 = icmp eq i8 %133, 0, !dbg !1526
  br i1 %134, label %587, label %137, !dbg !1527

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1528
  br i1 %136, label %587, label %137, !dbg !1527

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1417, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 0, metadata !1418, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 0, metadata !1419, metadata !DIExpression()), !dbg !1529
  br i1 %106, label %138, label %153, !dbg !1530

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1532
  %140 = and i1 %107, %130, !dbg !1533
  br i1 %140, label %141, label %143, !dbg !1533

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %142, metadata !1395, metadata !DIExpression()), !dbg !1462
  br label %143, !dbg !1535

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1535
  call void @llvm.dbg.value(metadata i64 %144, metadata !1395, metadata !DIExpression()), !dbg !1462
  %145 = icmp ugt i64 %139, %144, !dbg !1536
  br i1 %145, label %153, label %146, !dbg !1537

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1538
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1539
  %149 = icmp ne i32 %148, 0, !dbg !1540
  %150 = or i1 %149, %109, !dbg !1541
  %151 = xor i1 %149, true, !dbg !1541
  %152 = zext i1 %151 to i8, !dbg !1541
  br i1 %150, label %153, label %646, !dbg !1541

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1529
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1529
  call void @llvm.dbg.value(metadata i8 %156, metadata !1417, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 %154, metadata !1395, metadata !DIExpression()), !dbg !1462
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1542
  %158 = load i8, i8* %157, align 1, !dbg !1542, !tbaa !843
  call void @llvm.dbg.value(metadata i8 %158, metadata !1412, metadata !DIExpression()), !dbg !1529
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
  ], !dbg !1543

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1544

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1545

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1418, metadata !DIExpression()), !dbg !1529
  %162 = and i8 %126, 1, !dbg !1549
  %163 = icmp eq i8 %162, 0, !dbg !1549
  %164 = and i1 %110, %163, !dbg !1549
  br i1 %164, label %165, label %181, !dbg !1549

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1551
  br i1 %166, label %167, label %169, !dbg !1555

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1551
  store i8 39, i8* %168, align 1, !dbg !1551, !tbaa !843
  br label %169, !dbg !1551

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %170, metadata !1402, metadata !DIExpression()), !dbg !1462
  %171 = icmp ult i64 %170, %129, !dbg !1556
  br i1 %171, label %172, label %174, !dbg !1559

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1556
  store i8 36, i8* %173, align 1, !dbg !1556, !tbaa !843
  br label %174, !dbg !1556

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %175, metadata !1402, metadata !DIExpression()), !dbg !1462
  %176 = icmp ult i64 %175, %129, !dbg !1560
  br i1 %176, label %177, label %179, !dbg !1563

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1560
  store i8 39, i8* %178, align 1, !dbg !1560, !tbaa !843
  br label %179, !dbg !1560

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %180, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1409, metadata !DIExpression()), !dbg !1462
  br label %181, !dbg !1564

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1462
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1462
  call void @llvm.dbg.value(metadata i8 %183, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %182, metadata !1402, metadata !DIExpression()), !dbg !1462
  %184 = icmp ult i64 %182, %129, !dbg !1565
  br i1 %184, label %185, label %187, !dbg !1568

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1565
  store i8 92, i8* %186, align 1, !dbg !1565, !tbaa !843
  br label %187, !dbg !1565

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %188, metadata !1402, metadata !DIExpression()), !dbg !1462
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1569
  br i1 %191, label %192, label %473, !dbg !1569

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1571
  %194 = load i8, i8* %193, align 1, !dbg !1571, !tbaa !843
  %195 = add i8 %194, -48, !dbg !1572
  %196 = icmp ult i8 %195, 10, !dbg !1572
  br i1 %196, label %197, label %473, !dbg !1572

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1573
  br i1 %198, label %199, label %201, !dbg !1577

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1573
  store i8 48, i8* %200, align 1, !dbg !1573, !tbaa !843
  br label %201, !dbg !1573

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %202, metadata !1402, metadata !DIExpression()), !dbg !1462
  %203 = icmp ult i64 %202, %129, !dbg !1578
  br i1 %203, label %204, label %206, !dbg !1581

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1578
  store i8 48, i8* %205, align 1, !dbg !1578, !tbaa !843
  br label %206, !dbg !1578

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %207, metadata !1402, metadata !DIExpression()), !dbg !1462
  br label %473, !dbg !1582

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1583

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1584

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1585

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1587
  br i1 %214, label %215, label %473, !dbg !1587

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1589
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1590
  %218 = load i8, i8* %217, align 1, !dbg !1590, !tbaa !843
  %219 = icmp eq i8 %218, 63, !dbg !1591
  br i1 %219, label %220, label %473, !dbg !1592

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1593
  %222 = load i8, i8* %221, align 1, !dbg !1593, !tbaa !843
  %223 = sext i8 %222 to i32, !dbg !1593
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
  ], !dbg !1594

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1595

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1412, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 undef, metadata !1401, metadata !DIExpression()), !dbg !1462
  %226 = icmp ult i64 %123, %129, !dbg !1597
  br i1 %226, label %227, label %229, !dbg !1600

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1597
  store i8 63, i8* %228, align 1, !dbg !1597, !tbaa !843
  br label %229, !dbg !1597

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %230, metadata !1402, metadata !DIExpression()), !dbg !1462
  %231 = icmp ult i64 %230, %129, !dbg !1601
  br i1 %231, label %232, label %234, !dbg !1604

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1601
  store i8 34, i8* %233, align 1, !dbg !1601, !tbaa !843
  br label %234, !dbg !1601

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %235, metadata !1402, metadata !DIExpression()), !dbg !1462
  %236 = icmp ult i64 %235, %129, !dbg !1605
  br i1 %236, label %237, label %239, !dbg !1608

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1605
  store i8 34, i8* %238, align 1, !dbg !1605, !tbaa !843
  br label %239, !dbg !1605

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %240, metadata !1402, metadata !DIExpression()), !dbg !1462
  %241 = icmp ult i64 %240, %129, !dbg !1609
  br i1 %241, label %242, label %244, !dbg !1612

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1609
  store i8 63, i8* %243, align 1, !dbg !1609, !tbaa !843
  br label %244, !dbg !1609

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %245, metadata !1402, metadata !DIExpression()), !dbg !1462
  br label %473, !dbg !1613

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1416, metadata !DIExpression()), !dbg !1529
  br label %256, !dbg !1614

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1416, metadata !DIExpression()), !dbg !1529
  br label %256, !dbg !1615

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1416, metadata !DIExpression()), !dbg !1529
  br label %254, !dbg !1616

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1416, metadata !DIExpression()), !dbg !1529
  br label %254, !dbg !1617

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1416, metadata !DIExpression()), !dbg !1529
  br label %256, !dbg !1618

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1416, metadata !DIExpression()), !dbg !1529
  br i1 %110, label %252, label %253, !dbg !1619

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1620

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1623

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1625
  call void @llvm.dbg.value(metadata i8 %255, metadata !1416, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.label(metadata !1457), !dbg !1626
  br i1 %111, label %256, label %631, !dbg !1627

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1625
  call void @llvm.dbg.value(metadata i8 %257, metadata !1416, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.label(metadata !1458), !dbg !1629
  br i1 %102, label %495, label %473, !dbg !1630

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1631

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1632, !tbaa !843
  %261 = icmp eq i8 %260, 0, !dbg !1634
  br i1 %261, label %262, label %473, !dbg !1635

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1636
  br i1 %263, label %264, label %473, !dbg !1638

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1419, metadata !DIExpression()), !dbg !1529
  br label %265, !dbg !1639

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1529
  call void @llvm.dbg.value(metadata i8 %266, metadata !1419, metadata !DIExpression()), !dbg !1529
  br i1 %111, label %473, label %631, !dbg !1640

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1410, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1419, metadata !DIExpression()), !dbg !1529
  br i1 %110, label %268, label %473, !dbg !1642

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1643

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1646
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1648
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1648
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %274, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %273, metadata !1403, metadata !DIExpression()), !dbg !1462
  %275 = icmp ult i64 %123, %274, !dbg !1649
  br i1 %275, label %276, label %278, !dbg !1652

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1649
  store i8 39, i8* %277, align 1, !dbg !1649, !tbaa !843
  br label %278, !dbg !1649

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %279, metadata !1402, metadata !DIExpression()), !dbg !1462
  %280 = icmp ult i64 %279, %274, !dbg !1653
  br i1 %280, label %281, label %283, !dbg !1656

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1653
  store i8 92, i8* %282, align 1, !dbg !1653, !tbaa !843
  br label %283, !dbg !1653

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %284, metadata !1402, metadata !DIExpression()), !dbg !1462
  %285 = icmp ult i64 %284, %274, !dbg !1657
  br i1 %285, label %286, label %288, !dbg !1660

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1657
  store i8 39, i8* %287, align 1, !dbg !1657, !tbaa !843
  br label %288, !dbg !1657

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %289, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1409, metadata !DIExpression()), !dbg !1462
  br label %473, !dbg !1661

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1662

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1420, metadata !DIExpression()), !dbg !1663
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1664
  %293 = load i16*, i16** %292, align 8, !dbg !1664, !tbaa !636
  %294 = zext i8 %158 to i64, !dbg !1664
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1664
  %296 = load i16, i16* %295, align 2, !dbg !1664, !tbaa !844
  %297 = lshr i16 %296, 14, !dbg !1666
  %298 = trunc i16 %297 to i8, !dbg !1666
  %299 = and i8 %298, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i8 %354, metadata !1423, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %355, metadata !1420, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %306, metadata !1395, metadata !DIExpression()), !dbg !1462
  %300 = icmp eq i8 %299, 0, !dbg !1667
  call void @llvm.dbg.value(metadata i1 %357, metadata !1419, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1529
  br label %359, !dbg !1668

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1669
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1424, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8* %23, metadata !1671, metadata !DIExpression()) #25, !dbg !1679
  call void @llvm.dbg.value(metadata i32 0, metadata !1677, metadata !DIExpression()) #25, !dbg !1679
  call void @llvm.dbg.value(metadata i64 8, metadata !1678, metadata !DIExpression()) #25, !dbg !1679
  store i64 0, i64* %10, align 8, !dbg !1681
  call void @llvm.dbg.value(metadata i64 0, metadata !1420, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1663
  %302 = icmp eq i64 %154, -1, !dbg !1682
  br i1 %302, label %303, label %305, !dbg !1684

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %304, metadata !1395, metadata !DIExpression()), !dbg !1462
  br label %305, !dbg !1686

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1529
  call void @llvm.dbg.value(metadata i64 %306, metadata !1395, metadata !DIExpression()), !dbg !1462
  br label %307, !dbg !1687

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1688
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1689
  call void @llvm.dbg.value(metadata i8 %309, metadata !1423, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %308, metadata !1420, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1690
  %310 = add i64 %308, %122, !dbg !1691
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1692
  %312 = sub i64 %306, %310, !dbg !1693
  call void @llvm.dbg.value(metadata i32* %12, metadata !1442, metadata !DIExpression(DW_OP_deref)), !dbg !1694
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %313, metadata !1445, metadata !DIExpression()), !dbg !1694
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1696

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1420, metadata !DIExpression()), !dbg !1663
  %315 = icmp ugt i64 %306, %310, !dbg !1697
  br i1 %315, label %316, label %341, !dbg !1699

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1700
  br label %318, !dbg !1700

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1420, metadata !DIExpression()), !dbg !1663
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1701
  %322 = load i8, i8* %321, align 1, !dbg !1701, !tbaa !843
  %323 = icmp eq i8 %322, 0, !dbg !1699
  br i1 %323, label %341, label %324, !dbg !1700

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %325, metadata !1420, metadata !DIExpression()), !dbg !1663
  %326 = add i64 %325, %122, !dbg !1703
  %327 = icmp ult i64 %326, %306, !dbg !1697
  br i1 %327, label %318, label %341, !dbg !1699, !llvm.loop !1704

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1705
  call void @llvm.dbg.value(metadata i64 1, metadata !1446, metadata !DIExpression()), !dbg !1706
  br i1 %330, label %331, label %344, !dbg !1705

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1446, metadata !DIExpression()), !dbg !1706
  %333 = add i64 %332, %310, !dbg !1707
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1710
  %335 = load i8, i8* %334, align 1, !dbg !1710, !tbaa !843
  %336 = sext i8 %335 to i32, !dbg !1710
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1711

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %338, metadata !1446, metadata !DIExpression()), !dbg !1706
  %339 = icmp eq i64 %338, %313, !dbg !1713
  br i1 %339, label %344, label %331, !dbg !1714, !llvm.loop !1715

340:                                              ; preds = %307
  br label %341, !dbg !1717

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1423, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 undef, metadata !1420, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1717
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1718, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %345, metadata !1442, metadata !DIExpression()), !dbg !1694
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !1720
  %347 = icmp eq i32 %346, 0, !dbg !1720
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1721
  call void @llvm.dbg.value(metadata i8 %348, metadata !1423, metadata !DIExpression()), !dbg !1663
  %349 = add i64 %313, %308, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %349, metadata !1420, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1717
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1723
  %351 = icmp eq i32 %350, 0, !dbg !1724
  br i1 %351, label %307, label %353, !dbg !1725, !llvm.loop !1726

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1423, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 undef, metadata !1420, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1717
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1728
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1728
  call void @llvm.dbg.value(metadata i8 %354, metadata !1423, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %355, metadata !1420, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 %306, metadata !1395, metadata !DIExpression()), !dbg !1462
  %356 = and i8 %354, 1, !dbg !1667
  %357 = icmp eq i8 %356, 0, !dbg !1667
  call void @llvm.dbg.value(metadata i1 %357, metadata !1419, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1529
  %358 = icmp ugt i64 %355, 1, !dbg !1729
  br i1 %358, label %367, label %359, !dbg !1668

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1730
  br i1 %364, label %367, label %365, !dbg !1730

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1529
  call void @llvm.dbg.value(metadata i8 %472, metadata !1419, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %441, metadata !1418, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %440, metadata !1417, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %439, metadata !1412, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %438, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %371, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %437, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %375, metadata !1401, metadata !DIExpression()), !dbg !1462
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %372, metadata !1453, metadata !DIExpression()), !dbg !1732
  %373 = and i1 %102, %368
  br label %374, !dbg !1733

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1522
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1462
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1471
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1529
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1529
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1734
  call void @llvm.dbg.value(metadata i8 %380, metadata !1418, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %379, metadata !1417, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %378, metadata !1412, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %377, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %376, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %375, metadata !1401, metadata !DIExpression()), !dbg !1462
  br i1 %373, label %381, label %427, !dbg !1735

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1740

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1418, metadata !DIExpression()), !dbg !1529
  %383 = and i8 %377, 1, !dbg !1743
  %384 = icmp eq i8 %383, 0, !dbg !1743
  %385 = and i1 %110, %384, !dbg !1743
  br i1 %385, label %386, label %402, !dbg !1743

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1745
  br i1 %387, label %388, label %390, !dbg !1749

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1745
  store i8 39, i8* %389, align 1, !dbg !1745, !tbaa !843
  br label %390, !dbg !1745

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %391, metadata !1402, metadata !DIExpression()), !dbg !1462
  %392 = icmp ult i64 %391, %129, !dbg !1750
  br i1 %392, label %393, label %395, !dbg !1753

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1750
  store i8 36, i8* %394, align 1, !dbg !1750, !tbaa !843
  br label %395, !dbg !1750

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %396, metadata !1402, metadata !DIExpression()), !dbg !1462
  %397 = icmp ult i64 %396, %129, !dbg !1754
  br i1 %397, label %398, label %400, !dbg !1757

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1754
  store i8 39, i8* %399, align 1, !dbg !1754, !tbaa !843
  br label %400, !dbg !1754

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %401, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1409, metadata !DIExpression()), !dbg !1462
  br label %402, !dbg !1758

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1462
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1462
  call void @llvm.dbg.value(metadata i8 %404, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %403, metadata !1402, metadata !DIExpression()), !dbg !1462
  %405 = icmp ult i64 %403, %129, !dbg !1759
  br i1 %405, label %406, label %408, !dbg !1762

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1759
  store i8 92, i8* %407, align 1, !dbg !1759, !tbaa !843
  br label %408, !dbg !1759

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %409, metadata !1402, metadata !DIExpression()), !dbg !1462
  %410 = icmp ult i64 %409, %129, !dbg !1763
  br i1 %410, label %411, label %415, !dbg !1766

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1763
  %413 = or i8 %412, 48, !dbg !1763
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1763
  store i8 %413, i8* %414, align 1, !dbg !1763, !tbaa !843
  br label %415, !dbg !1763

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %416, metadata !1402, metadata !DIExpression()), !dbg !1462
  %417 = icmp ult i64 %416, %129, !dbg !1767
  br i1 %417, label %418, label %423, !dbg !1770

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1767
  %420 = and i8 %419, 7, !dbg !1767
  %421 = or i8 %420, 48, !dbg !1767
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1767
  store i8 %421, i8* %422, align 1, !dbg !1767, !tbaa !843
  br label %423, !dbg !1767

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %424, metadata !1402, metadata !DIExpression()), !dbg !1462
  %425 = and i8 %378, 7, !dbg !1771
  %426 = or i8 %425, 48, !dbg !1772
  call void @llvm.dbg.value(metadata i8 %426, metadata !1412, metadata !DIExpression()), !dbg !1529
  br label %436, !dbg !1773

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1774
  %429 = icmp eq i8 %428, 0, !dbg !1774
  br i1 %429, label %436, label %430, !dbg !1776

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1777
  br i1 %431, label %432, label %434, !dbg !1781

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1777
  store i8 92, i8* %433, align 1, !dbg !1777, !tbaa !843
  br label %434, !dbg !1777

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %435, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1417, metadata !DIExpression()), !dbg !1529
  br label %436, !dbg !1782

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1462
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1471
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1529
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1529
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1529
  call void @llvm.dbg.value(metadata i8 %441, metadata !1418, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %440, metadata !1417, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %439, metadata !1412, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %438, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %437, metadata !1402, metadata !DIExpression()), !dbg !1462
  %442 = add i64 %375, 1, !dbg !1783
  %443 = icmp ugt i64 %372, %442, !dbg !1785
  br i1 %443, label %444, label %471, !dbg !1786

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1787
  %446 = icmp ne i8 %445, 0, !dbg !1787
  %447 = and i8 %441, 1, !dbg !1787
  %448 = icmp eq i8 %447, 0, !dbg !1787
  %449 = and i1 %446, %448, !dbg !1787
  br i1 %449, label %450, label %461, !dbg !1787

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1790
  br i1 %451, label %452, label %454, !dbg !1794

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1790
  store i8 39, i8* %453, align 1, !dbg !1790, !tbaa !843
  br label %454, !dbg !1790

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %455, metadata !1402, metadata !DIExpression()), !dbg !1462
  %456 = icmp ult i64 %455, %129, !dbg !1795
  br i1 %456, label %457, label %459, !dbg !1798

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1795
  store i8 39, i8* %458, align 1, !dbg !1795, !tbaa !843
  br label %459, !dbg !1795

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %460, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1409, metadata !DIExpression()), !dbg !1462
  br label %461, !dbg !1799

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1800
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1462
  call void @llvm.dbg.value(metadata i8 %463, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %462, metadata !1402, metadata !DIExpression()), !dbg !1462
  %464 = icmp ult i64 %462, %129, !dbg !1801
  br i1 %464, label %465, label %467, !dbg !1804

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1801
  store i8 %439, i8* %466, align 1, !dbg !1801, !tbaa !843
  br label %467, !dbg !1801

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %468, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %442, metadata !1401, metadata !DIExpression()), !dbg !1462
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1805
  %470 = load i8, i8* %469, align 1, !dbg !1805, !tbaa !843
  call void @llvm.dbg.value(metadata i8 %470, metadata !1412, metadata !DIExpression()), !dbg !1529
  br label %374, !dbg !1806, !llvm.loop !1807

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1529
  call void @llvm.dbg.value(metadata i8 %472, metadata !1419, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %441, metadata !1418, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %440, metadata !1417, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %439, metadata !1412, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %438, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %371, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %437, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %375, metadata !1401, metadata !DIExpression()), !dbg !1462
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1522
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1462
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1467
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1810
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1462
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1462
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1529
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1529
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1529
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %482, metadata !1419, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %481, metadata !1418, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %156, metadata !1417, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %480, metadata !1412, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %479, metadata !1410, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %478, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %477, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %476, metadata !1403, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %475, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %474, metadata !1401, metadata !DIExpression()), !dbg !1462
  br i1 %116, label %494, label %484, !dbg !1811

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1813
  %486 = zext i8 %485 to i64, !dbg !1813
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1814
  %488 = load i32, i32* %487, align 4, !dbg !1814, !tbaa !888
  %489 = and i8 %480, 31, !dbg !1815
  %490 = zext i8 %489 to i32, !dbg !1815
  %491 = shl nuw i32 1, %490, !dbg !1816
  %492 = and i32 %488, %491, !dbg !1816
  %493 = icmp eq i32 %492, 0, !dbg !1816
  br i1 %493, label %494, label %495, !dbg !1817

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1818

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1819
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1462
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1467
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1810
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1471
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1472
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1529
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1529
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %503, metadata !1419, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %502, metadata !1412, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %501, metadata !1410, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %500, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %499, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %498, metadata !1403, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %497, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %496, metadata !1401, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.label(metadata !1459), !dbg !1820
  br i1 %109, label %505, label %635, !dbg !1821

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1418, metadata !DIExpression()), !dbg !1529
  %506 = and i8 %500, 1, !dbg !1823
  %507 = icmp eq i8 %506, 0, !dbg !1823
  %508 = and i1 %110, %507, !dbg !1823
  br i1 %508, label %509, label %525, !dbg !1823

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1825
  br i1 %510, label %511, label %513, !dbg !1829

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1825
  store i8 39, i8* %512, align 1, !dbg !1825, !tbaa !843
  br label %513, !dbg !1825

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %514, metadata !1402, metadata !DIExpression()), !dbg !1462
  %515 = icmp ult i64 %514, %504, !dbg !1830
  br i1 %515, label %516, label %518, !dbg !1833

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1830
  store i8 36, i8* %517, align 1, !dbg !1830, !tbaa !843
  br label %518, !dbg !1830

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %519, metadata !1402, metadata !DIExpression()), !dbg !1462
  %520 = icmp ult i64 %519, %504, !dbg !1834
  br i1 %520, label %521, label %523, !dbg !1837

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1834
  store i8 39, i8* %522, align 1, !dbg !1834, !tbaa !843
  br label %523, !dbg !1834

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %524, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, metadata !1409, metadata !DIExpression()), !dbg !1462
  br label %525, !dbg !1838

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1529
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1462
  call void @llvm.dbg.value(metadata i8 %527, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %526, metadata !1402, metadata !DIExpression()), !dbg !1462
  %528 = icmp ult i64 %526, %504, !dbg !1839
  br i1 %528, label %529, label %531, !dbg !1842

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1839
  store i8 92, i8* %530, align 1, !dbg !1839, !tbaa !843
  br label %531, !dbg !1839

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %543, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %542, metadata !1419, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %541, metadata !1418, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %540, metadata !1412, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %539, metadata !1410, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %538, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %537, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %536, metadata !1403, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %535, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %534, metadata !1401, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.label(metadata !1460), !dbg !1843
  br label %560, !dbg !1844

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1819
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1462
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1467
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1810
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1471
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1472
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1847
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1529
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1529
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %542, metadata !1419, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %541, metadata !1418, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %540, metadata !1412, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %539, metadata !1410, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %538, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %537, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %536, metadata !1403, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %535, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %534, metadata !1401, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.label(metadata !1460), !dbg !1843
  %544 = and i8 %538, 1, !dbg !1844
  %545 = icmp ne i8 %544, 0, !dbg !1844
  %546 = and i8 %541, 1, !dbg !1844
  %547 = icmp eq i8 %546, 0, !dbg !1844
  %548 = and i1 %545, %547, !dbg !1844
  br i1 %548, label %549, label %560, !dbg !1844

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1848
  br i1 %550, label %551, label %553, !dbg !1852

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1848
  store i8 39, i8* %552, align 1, !dbg !1848, !tbaa !843
  br label %553, !dbg !1848

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %554, metadata !1402, metadata !DIExpression()), !dbg !1462
  %555 = icmp ult i64 %554, %543, !dbg !1853
  br i1 %555, label %556, label %558, !dbg !1856

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1853
  store i8 39, i8* %557, align 1, !dbg !1853, !tbaa !843
  br label %558, !dbg !1853

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %559, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 0, metadata !1409, metadata !DIExpression()), !dbg !1462
  br label %560, !dbg !1857

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1529
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1462
  call void @llvm.dbg.value(metadata i8 %569, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %568, metadata !1402, metadata !DIExpression()), !dbg !1462
  %570 = icmp ult i64 %568, %561, !dbg !1858
  br i1 %570, label %571, label %573, !dbg !1861

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1858
  store i8 %563, i8* %572, align 1, !dbg !1858, !tbaa !843
  br label %573, !dbg !1858

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %574, metadata !1402, metadata !DIExpression()), !dbg !1462
  %575 = icmp eq i8 %562, 0, !dbg !1862
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1864
  call void @llvm.dbg.value(metadata i8 %576, metadata !1411, metadata !DIExpression()), !dbg !1462
  br label %577, !dbg !1865

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1819
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1462
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1467
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1810
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1471
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1462
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1473
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %584, metadata !1411, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %583, metadata !1410, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %582, metadata !1409, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %581, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %580, metadata !1403, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %579, metadata !1402, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %578, metadata !1401, metadata !DIExpression()), !dbg !1462
  %586 = add i64 %578, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %586, metadata !1401, metadata !DIExpression()), !dbg !1462
  br label %121, !dbg !1867, !llvm.loop !1868

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1870
  %590 = and i1 %110, %589, !dbg !1872
  %591 = xor i1 %590, true, !dbg !1872
  %592 = or i1 %109, %591, !dbg !1872
  br i1 %592, label %593, label %635, !dbg !1872

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1873
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1873
  br i1 %597, label %598, label %607, !dbg !1873

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1875
  %600 = icmp eq i8 %599, 0, !dbg !1875
  br i1 %600, label %603, label %601, !dbg !1878

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1879
  br label %652, !dbg !1880

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1881
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1883
  br i1 %606, label %26, label %607, !dbg !1883

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1884
  %610 = and i1 %609, %608, !dbg !1886
  br i1 %610, label %611, label %626, !dbg !1886

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1404, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %123, metadata !1402, metadata !DIExpression()), !dbg !1462
  %612 = load i8, i8* %97, align 1, !dbg !1887, !tbaa !843
  %613 = icmp eq i8 %612, 0, !dbg !1890
  br i1 %613, label %626, label %614, !dbg !1890

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1404, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %617, metadata !1402, metadata !DIExpression()), !dbg !1462
  %618 = icmp ult i64 %617, %129, !dbg !1891
  br i1 %618, label %619, label %621, !dbg !1894

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1891
  store i8 %615, i8* %620, align 1, !dbg !1891, !tbaa !843
  br label %621, !dbg !1891

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %622, metadata !1402, metadata !DIExpression()), !dbg !1462
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1895
  call void @llvm.dbg.value(metadata i8* %623, metadata !1404, metadata !DIExpression()), !dbg !1462
  %624 = load i8, i8* %623, align 1, !dbg !1887, !tbaa !843
  %625 = icmp eq i8 %624, 0, !dbg !1890
  br i1 %625, label %626, label %614, !dbg !1890, !llvm.loop !1896

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1504
  call void @llvm.dbg.value(metadata i64 %627, metadata !1402, metadata !DIExpression()), !dbg !1462
  %628 = icmp ult i64 %627, %129, !dbg !1898
  br i1 %628, label %629, label %652, !dbg !1900

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1901
  store i8 0, i8* %630, align 1, !dbg !1902, !tbaa !843
  br label %652, !dbg !1901

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %637, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.label(metadata !1461), !dbg !1903
  %633 = icmp eq i8 %101, 0, !dbg !1904
  %634 = select i1 %633, i32 2, i32 4, !dbg !1904
  br label %642, !dbg !1904

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1393, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %637, metadata !1395, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.label(metadata !1461), !dbg !1903
  %639 = icmp eq i32 %93, 2, !dbg !1906
  %640 = icmp eq i8 %636, 0, !dbg !1904
  %641 = select i1 %640, i32 2, i32 4, !dbg !1904
  br i1 %639, label %642, label %646, !dbg !1904

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1904

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1396, metadata !DIExpression()), !dbg !1462
  %650 = and i32 %5, -3, !dbg !1907
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1908
  br label %652, !dbg !1909

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1910
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1915, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i32 %1, metadata !1916, metadata !DIExpression()), !dbg !1919
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %3, metadata !1917, metadata !DIExpression()), !dbg !1919
  %4 = icmp eq i8* %3, %0, !dbg !1921
  br i1 %4, label %5, label %72, !dbg !1923

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !1924
  call void @llvm.dbg.value(metadata i8* %6, metadata !1918, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8* %6, metadata !1925, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8* undef, metadata !1931, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 85, metadata !1932, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 84, metadata !1933, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 70, metadata !1934, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 45, metadata !1935, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 56, metadata !1936, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1937, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1938, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1939, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1940, metadata !DIExpression()), !dbg !1941
  %7 = load i8, i8* %6, align 1, !dbg !1944, !tbaa !843
  %8 = and i8 %7, -33, !dbg !1944
  %9 = sext i8 %8 to i32, !dbg !1944
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1944

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1946, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* undef, metadata !1951, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 84, metadata !1952, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 70, metadata !1953, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 45, metadata !1954, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 56, metadata !1955, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 0, metadata !1956, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 0, metadata !1957, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 0, metadata !1958, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 0, metadata !1959, metadata !DIExpression()), !dbg !1960
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1964
  %12 = load i8, i8* %11, align 1, !dbg !1964, !tbaa !843
  %13 = and i8 %12, -33, !dbg !1964
  %14 = icmp eq i8 %13, 84, !dbg !1964
  br i1 %14, label %15, label %69, !dbg !1964

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1966, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8* undef, metadata !1971, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 70, metadata !1972, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 45, metadata !1973, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 56, metadata !1974, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !1979
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1983
  %17 = load i8, i8* %16, align 1, !dbg !1983, !tbaa !843
  %18 = and i8 %17, -33, !dbg !1983
  %19 = icmp eq i8 %18, 70, !dbg !1983
  br i1 %19, label %20, label %69, !dbg !1983

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1985, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* undef, metadata !1990, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8 45, metadata !1991, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8 56, metadata !1992, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8 0, metadata !1994, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8 0, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !1997
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2001
  %22 = load i8, i8* %21, align 1, !dbg !2001, !tbaa !843
  %23 = icmp eq i8 %22, 45, !dbg !2001
  br i1 %23, label %24, label %69, !dbg !2003

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2004, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8* undef, metadata !2009, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 56, metadata !2010, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 0, metadata !2011, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 0, metadata !2012, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2015
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2019
  %26 = load i8, i8* %25, align 1, !dbg !2019, !tbaa !843
  %27 = icmp eq i8 %26, 56, !dbg !2019
  br i1 %27, label %28, label %69, !dbg !2021

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2022, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8* undef, metadata !2027, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !2028, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !2029, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !2031, metadata !DIExpression()), !dbg !2032
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2036
  %30 = load i8, i8* %29, align 1, !dbg !2036, !tbaa !843
  %31 = icmp eq i8 %30, 0, !dbg !2036
  br i1 %31, label %32, label %69, !dbg !2038

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2039, !tbaa !843
  %34 = icmp eq i8 %33, 96, !dbg !2040
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.87, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.88, i64 0, i64 0), !dbg !2039
  br label %72, !dbg !2041

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1946, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8* undef, metadata !1951, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 66, metadata !1952, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 49, metadata !1953, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 56, metadata !1954, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 48, metadata !1955, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 51, metadata !1956, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 48, metadata !1957, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !1958, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !1959, metadata !DIExpression()), !dbg !2042
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2046
  %38 = load i8, i8* %37, align 1, !dbg !2046, !tbaa !843
  %39 = and i8 %38, -33, !dbg !2046
  %40 = icmp eq i8 %39, 66, !dbg !2046
  br i1 %40, label %41, label %69, !dbg !2046

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1966, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8* undef, metadata !1971, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8 49, metadata !1972, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8 56, metadata !1973, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8 48, metadata !1974, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8 51, metadata !1975, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8 48, metadata !1976, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8 0, metadata !1977, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2047
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2049
  %43 = load i8, i8* %42, align 1, !dbg !2049, !tbaa !843
  %44 = icmp eq i8 %43, 49, !dbg !2049
  br i1 %44, label %45, label %69, !dbg !2050

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1985, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8* undef, metadata !1990, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 56, metadata !1991, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 48, metadata !1992, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 51, metadata !1993, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 48, metadata !1994, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 0, metadata !1995, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2051
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2053
  %47 = load i8, i8* %46, align 1, !dbg !2053, !tbaa !843
  %48 = icmp eq i8 %47, 56, !dbg !2053
  br i1 %48, label %49, label %69, !dbg !2054

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2004, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* undef, metadata !2009, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 48, metadata !2010, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 51, metadata !2011, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 48, metadata !2012, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2055
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2057
  %51 = load i8, i8* %50, align 1, !dbg !2057, !tbaa !843
  %52 = icmp eq i8 %51, 48, !dbg !2057
  br i1 %52, label %53, label %69, !dbg !2058

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2022, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8* undef, metadata !2027, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 51, metadata !2028, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 48, metadata !2029, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 0, metadata !2031, metadata !DIExpression()), !dbg !2059
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2061
  %55 = load i8, i8* %54, align 1, !dbg !2061, !tbaa !843
  %56 = icmp eq i8 %55, 51, !dbg !2061
  br i1 %56, label %57, label %69, !dbg !2062

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2063, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* undef, metadata !2068, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 48, metadata !2069, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 0, metadata !2070, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 0, metadata !2071, metadata !DIExpression()), !dbg !2072
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2076
  %59 = load i8, i8* %58, align 1, !dbg !2076, !tbaa !843
  %60 = icmp eq i8 %59, 48, !dbg !2076
  br i1 %60, label %61, label %69, !dbg !2078

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2079, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* undef, metadata !2084, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 0, metadata !2085, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 0, metadata !2086, metadata !DIExpression()), !dbg !2087
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2091
  %63 = load i8, i8* %62, align 1, !dbg !2091, !tbaa !843
  %64 = icmp eq i8 %63, 0, !dbg !2091
  br i1 %64, label %65, label %69, !dbg !2093

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2094, !tbaa !843
  %67 = icmp eq i8 %66, 96, !dbg !2095
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.89, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.90, i64 0, i64 0), !dbg !2094
  br label %72, !dbg !2096

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2097
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), !dbg !2098
  br label %72, !dbg !2099

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1919
  ret i8* %73, !dbg !2100
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !2101 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2105 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2115, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %1, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2117, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %0, metadata !2119, metadata !DIExpression()) #25, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %1, metadata !2124, metadata !DIExpression()) #25, !dbg !2132
  call void @llvm.dbg.value(metadata i64* null, metadata !2125, metadata !DIExpression()) #25, !dbg !2132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2126, metadata !DIExpression()) #25, !dbg !2132
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2134
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2134
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2127, metadata !DIExpression()) #25, !dbg !2132
  %6 = tail call i32* @__errno_location() #28, !dbg !2135
  %7 = load i32, i32* %6, align 4, !dbg !2135, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %7, metadata !2128, metadata !DIExpression()) #25, !dbg !2132
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2136
  %9 = load i32, i32* %8, align 4, !dbg !2136, !tbaa !1336
  %10 = or i32 %9, 1, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %10, metadata !2129, metadata !DIExpression()) #25, !dbg !2132
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2138
  %12 = load i32, i32* %11, align 8, !dbg !2138, !tbaa !1285
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2139
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2140
  %15 = load i8*, i8** %14, align 8, !dbg !2140, !tbaa !1358
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2141
  %17 = load i8*, i8** %16, align 8, !dbg !2141, !tbaa !1361
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !2142
  %19 = add i64 %18, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %19, metadata !2130, metadata !DIExpression()) #25, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %19, metadata !2144, metadata !DIExpression()) #25, !dbg !2149
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !2151
  call void @llvm.dbg.value(metadata i8* %20, metadata !2131, metadata !DIExpression()) #25, !dbg !2132
  %21 = load i32, i32* %11, align 8, !dbg !2152, !tbaa !1285
  %22 = load i8*, i8** %14, align 8, !dbg !2153, !tbaa !1358
  %23 = load i8*, i8** %16, align 8, !dbg !2154, !tbaa !1361
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !2155
  store i32 %7, i32* %6, align 4, !dbg !2156, !tbaa !888
  ret i8* %20, !dbg !2157
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2120 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2119, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i64 %1, metadata !2124, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i64* %2, metadata !2125, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2126, metadata !DIExpression()), !dbg !2158
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2159
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2127, metadata !DIExpression()), !dbg !2158
  %7 = tail call i32* @__errno_location() #28, !dbg !2160
  %8 = load i32, i32* %7, align 4, !dbg !2160, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %8, metadata !2128, metadata !DIExpression()), !dbg !2158
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2161
  %10 = load i32, i32* %9, align 4, !dbg !2161, !tbaa !1336
  %11 = icmp eq i64* %2, null, !dbg !2162
  %12 = zext i1 %11 to i32, !dbg !2162
  %13 = or i32 %10, %12, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %13, metadata !2129, metadata !DIExpression()), !dbg !2158
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2164
  %15 = load i32, i32* %14, align 8, !dbg !2164, !tbaa !1285
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2165
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2166
  %18 = load i8*, i8** %17, align 8, !dbg !2166, !tbaa !1358
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2167
  %20 = load i8*, i8** %19, align 8, !dbg !2167, !tbaa !1361
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2168
  %22 = add i64 %21, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %22, metadata !2130, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i64 %22, metadata !2144, metadata !DIExpression()) #25, !dbg !2170
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !2172
  call void @llvm.dbg.value(metadata i8* %23, metadata !2131, metadata !DIExpression()), !dbg !2158
  %24 = load i32, i32* %14, align 8, !dbg !2173, !tbaa !1285
  %25 = load i8*, i8** %17, align 8, !dbg !2174, !tbaa !1358
  %26 = load i8*, i8** %19, align 8, !dbg !2175, !tbaa !1361
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2176
  store i32 %8, i32* %7, align 4, !dbg !2177, !tbaa !888
  br i1 %11, label %29, label %28, !dbg !2178

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2179, !tbaa !2181
  br label %29, !dbg !2182

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2183
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2184 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2188, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2186, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i32 1, metadata !2187, metadata !DIExpression()), !dbg !2189
  %2 = load i32, i32* @nslots, align 4, !dbg !2190, !tbaa !888
  %3 = icmp sgt i32 %2, 1, !dbg !2193
  br i1 %3, label %4, label %12, !dbg !2194

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2193
  br label %6, !dbg !2194

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2187, metadata !DIExpression()), !dbg !2189
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2195
  %9 = load i8*, i8** %8, align 8, !dbg !2195, !tbaa !2196
  tail call void @free(i8* %9) #25, !dbg !2198
  %10 = add nuw nsw i64 %7, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %10, metadata !2187, metadata !DIExpression()), !dbg !2189
  %11 = icmp eq i64 %10, %5, !dbg !2193
  br i1 %11, label %12, label %6, !dbg !2194, !llvm.loop !2200

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2202
  %14 = load i8*, i8** %13, align 8, !dbg !2202, !tbaa !2196
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2204
  br i1 %15, label %17, label %16, !dbg !2205

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !2206
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2208, !tbaa !2209
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2210, !tbaa !2196
  br label %17, !dbg !2211

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2212
  br i1 %18, label %21, label %19, !dbg !2214

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2215
  tail call void @free(i8* %20) #25, !dbg !2217
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2218, !tbaa !636
  br label %21, !dbg !2219

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2220, !tbaa !888
  ret void, !dbg !2221
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2222 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %1, metadata !2225, metadata !DIExpression()), !dbg !2226
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2227
  ret i8* %3, !dbg !2228
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2229 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2233, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %1, metadata !2234, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %2, metadata !2235, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2236, metadata !DIExpression()), !dbg !2248
  %5 = tail call i32* @__errno_location() #28, !dbg !2249
  %6 = load i32, i32* %5, align 4, !dbg !2249, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %6, metadata !2237, metadata !DIExpression()), !dbg !2248
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2250, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2238, metadata !DIExpression()), !dbg !2248
  %8 = icmp slt i32 %0, 0, !dbg !2251
  br i1 %8, label %9, label %10, !dbg !2253

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2254
  unreachable, !dbg !2254

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2255, !tbaa !888
  %12 = icmp sgt i32 %11, %0, !dbg !2256
  br i1 %12, label %34, label %13, !dbg !2257

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2258
  call void @llvm.dbg.value(metadata i1 %14, metadata !2239, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2259
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2242, metadata !DIExpression()), !dbg !2259
  %15 = icmp eq i32 %0, 2147483647, !dbg !2260
  br i1 %15, label %16, label %17, !dbg !2262

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2263
  unreachable, !dbg !2263

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2264
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2264
  %20 = add nuw nsw i32 %0, 1, !dbg !2265
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2266
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !2267
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2267
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2238, metadata !DIExpression()), !dbg !2248
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2268, !tbaa !636
  br i1 %14, label %25, label %26, !dbg !2269

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2270, !tbaa.struct !2272
  br label %26, !dbg !2273

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2274, !tbaa !888
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2275
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2276
  %31 = sub nsw i32 %20, %27, !dbg !2277
  %32 = sext i32 %31 to i64, !dbg !2278
  %33 = shl nsw i64 %32, 4, !dbg !2279
  call void @llvm.dbg.value(metadata i8* %30, metadata !1671, metadata !DIExpression()) #25, !dbg !2280
  call void @llvm.dbg.value(metadata i32 0, metadata !1677, metadata !DIExpression()) #25, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %33, metadata !1678, metadata !DIExpression()) #25, !dbg !2280
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !2282
  store i32 %20, i32* @nslots, align 4, !dbg !2283, !tbaa !888
  br label %34, !dbg !2284

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2248
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2238, metadata !DIExpression()), !dbg !2248
  %36 = zext i32 %0 to i64, !dbg !2285
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2286
  %38 = load i64, i64* %37, align 8, !dbg !2286, !tbaa !2209
  call void @llvm.dbg.value(metadata i64 %38, metadata !2243, metadata !DIExpression()), !dbg !2287
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2288
  %40 = load i8*, i8** %39, align 8, !dbg !2288, !tbaa !2196
  call void @llvm.dbg.value(metadata i8* %40, metadata !2245, metadata !DIExpression()), !dbg !2287
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2289
  %42 = load i32, i32* %41, align 4, !dbg !2289, !tbaa !1336
  %43 = or i32 %42, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i32 %43, metadata !2246, metadata !DIExpression()), !dbg !2287
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2291
  %45 = load i32, i32* %44, align 8, !dbg !2291, !tbaa !1285
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2292
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2293
  %48 = load i8*, i8** %47, align 8, !dbg !2293, !tbaa !1358
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2294
  %50 = load i8*, i8** %49, align 8, !dbg !2294, !tbaa !1361
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %51, metadata !2247, metadata !DIExpression()), !dbg !2287
  %52 = icmp ugt i64 %38, %51, !dbg !2296
  br i1 %52, label %63, label %53, !dbg !2298

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %54, metadata !2243, metadata !DIExpression()), !dbg !2287
  store i64 %54, i64* %37, align 8, !dbg !2301, !tbaa !2209
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2302
  br i1 %55, label %57, label %56, !dbg !2304

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !2305
  br label %57, !dbg !2305

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2144, metadata !DIExpression()) #25, !dbg !2306
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %58, metadata !2245, metadata !DIExpression()), !dbg !2287
  store i8* %58, i8** %39, align 8, !dbg !2309, !tbaa !2196
  %59 = load i32, i32* %44, align 8, !dbg !2310, !tbaa !1285
  %60 = load i8*, i8** %47, align 8, !dbg !2311, !tbaa !1358
  %61 = load i8*, i8** %49, align 8, !dbg !2312, !tbaa !1361
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2313
  br label %63, !dbg !2314

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2287
  call void @llvm.dbg.value(metadata i8* %64, metadata !2245, metadata !DIExpression()), !dbg !2287
  store i32 %6, i32* %5, align 4, !dbg !2315, !tbaa !888
  ret i8* %64, !dbg !2316
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2321, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %1, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %2, metadata !2323, metadata !DIExpression()), !dbg !2324
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2325
  ret i8* %4, !dbg !2326
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2327 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2329, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 0, metadata !2224, metadata !DIExpression()) #25, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %0, metadata !2225, metadata !DIExpression()) #25, !dbg !2331
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2333
  ret i8* %2, !dbg !2334
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %1, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 0, metadata !2321, metadata !DIExpression()) #25, !dbg !2342
  call void @llvm.dbg.value(metadata i8* %0, metadata !2322, metadata !DIExpression()) #25, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %1, metadata !2323, metadata !DIExpression()) #25, !dbg !2342
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2344
  ret i8* %3, !dbg !2345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2346 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2350, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 %1, metadata !2351, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %2, metadata !2352, metadata !DIExpression()), !dbg !2354
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2355
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2355
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2353, metadata !DIExpression()), !dbg !2356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2357), !dbg !2360
  call void @llvm.dbg.value(metadata i32 %1, metadata !2361, metadata !DIExpression()) #25, !dbg !2367
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2366, metadata !DIExpression()) #25, !dbg !2369
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2369, !alias.scope !2357
  %6 = icmp eq i32 %1, 10, !dbg !2370
  br i1 %6, label %7, label %8, !dbg !2372

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2373, !noalias !2357
  unreachable, !dbg !2373

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2374
  store i32 %1, i32* %9, align 8, !dbg !2375, !tbaa !1285, !alias.scope !2357
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2376
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2377
  ret i8* %10, !dbg !2378
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2379 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2383, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 %1, metadata !2384, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %2, metadata !2385, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %3, metadata !2386, metadata !DIExpression()), !dbg !2388
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2389
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2389
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2387, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2391), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %1, metadata !2361, metadata !DIExpression()) #25, !dbg !2395
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2366, metadata !DIExpression()) #25, !dbg !2397
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !2397, !alias.scope !2391
  %7 = icmp eq i32 %1, 10, !dbg !2398
  br i1 %7, label %8, label %9, !dbg !2399

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2400, !noalias !2391
  unreachable, !dbg !2400

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2401
  store i32 %1, i32* %10, align 8, !dbg !2402, !tbaa !1285, !alias.scope !2391
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2403
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2404
  ret i8* %11, !dbg !2405
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2406 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %1, metadata !2411, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 0, metadata !2350, metadata !DIExpression()) #25, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %0, metadata !2351, metadata !DIExpression()) #25, !dbg !2413
  call void @llvm.dbg.value(metadata i8* %1, metadata !2352, metadata !DIExpression()) #25, !dbg !2413
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2415
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2415
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2353, metadata !DIExpression()) #25, !dbg !2416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2417) #25, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %0, metadata !2361, metadata !DIExpression()) #25, !dbg !2421
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2366, metadata !DIExpression()) #25, !dbg !2423
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !2423, !alias.scope !2417
  %5 = icmp eq i32 %0, 10, !dbg !2424
  br i1 %5, label %6, label %7, !dbg !2425

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !2426, !noalias !2417
  unreachable, !dbg !2426

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2427
  store i32 %0, i32* %8, align 8, !dbg !2428, !tbaa !1285, !alias.scope !2417
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2429
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2430
  ret i8* %9, !dbg !2431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2432 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8* %1, metadata !2437, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %2, metadata !2438, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 0, metadata !2383, metadata !DIExpression()) #25, !dbg !2440
  call void @llvm.dbg.value(metadata i32 %0, metadata !2384, metadata !DIExpression()) #25, !dbg !2440
  call void @llvm.dbg.value(metadata i8* %1, metadata !2385, metadata !DIExpression()) #25, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %2, metadata !2386, metadata !DIExpression()) #25, !dbg !2440
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2442
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2442
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2387, metadata !DIExpression()) #25, !dbg !2443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444) #25, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %0, metadata !2361, metadata !DIExpression()) #25, !dbg !2448
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2366, metadata !DIExpression()) #25, !dbg !2450
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2450, !alias.scope !2444
  %6 = icmp eq i32 %0, 10, !dbg !2451
  br i1 %6, label %7, label %8, !dbg !2452

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2453, !noalias !2444
  unreachable, !dbg !2453

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2454
  store i32 %0, i32* %9, align 8, !dbg !2455, !tbaa !1285, !alias.scope !2444
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !2456
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2457
  ret i8* %10, !dbg !2458
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2459 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2463, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %1, metadata !2464, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 %2, metadata !2465, metadata !DIExpression()), !dbg !2467
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2468
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2468
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2470, !tbaa.struct !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1303, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 %2, metadata !1304, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 1, metadata !1305, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 %2, metadata !1306, metadata !DIExpression()), !dbg !2472
  %6 = lshr i8 %2, 5, !dbg !2474
  %7 = zext i8 %6 to i64, !dbg !2474
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2475
  call void @llvm.dbg.value(metadata i32* %8, metadata !1307, metadata !DIExpression()), !dbg !2472
  %9 = and i8 %2, 31, !dbg !2476
  %10 = zext i8 %9 to i32, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %10, metadata !1309, metadata !DIExpression()), !dbg !2472
  %11 = load i32, i32* %8, align 4, !dbg !2477, !tbaa !888
  %12 = lshr i32 %11, %10, !dbg !2478
  %13 = and i32 %12, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %13, metadata !1310, metadata !DIExpression()), !dbg !2472
  %14 = xor i32 %13, 1, !dbg !2480
  %15 = shl i32 %14, %10, !dbg !2481
  %16 = xor i32 %15, %11, !dbg !2482
  store i32 %16, i32* %8, align 4, !dbg !2482, !tbaa !888
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2484
  ret i8* %17, !dbg !2485
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2486 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2490, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 %1, metadata !2491, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %0, metadata !2463, metadata !DIExpression()) #25, !dbg !2493
  call void @llvm.dbg.value(metadata i64 -1, metadata !2464, metadata !DIExpression()) #25, !dbg !2493
  call void @llvm.dbg.value(metadata i8 %1, metadata !2465, metadata !DIExpression()) #25, !dbg !2493
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2495
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2495
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2466, metadata !DIExpression()) #25, !dbg !2496
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2497, !tbaa.struct !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1303, metadata !DIExpression()) #25, !dbg !2498
  call void @llvm.dbg.value(metadata i8 %1, metadata !1304, metadata !DIExpression()) #25, !dbg !2498
  call void @llvm.dbg.value(metadata i32 1, metadata !1305, metadata !DIExpression()) #25, !dbg !2498
  call void @llvm.dbg.value(metadata i8 %1, metadata !1306, metadata !DIExpression()) #25, !dbg !2498
  %5 = lshr i8 %1, 5, !dbg !2500
  %6 = zext i8 %5 to i64, !dbg !2500
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2501
  call void @llvm.dbg.value(metadata i32* %7, metadata !1307, metadata !DIExpression()) #25, !dbg !2498
  %8 = and i8 %1, 31, !dbg !2502
  %9 = zext i8 %8 to i32, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %9, metadata !1309, metadata !DIExpression()) #25, !dbg !2498
  %10 = load i32, i32* %7, align 4, !dbg !2503, !tbaa !888
  %11 = lshr i32 %10, %9, !dbg !2504
  %12 = and i32 %11, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %12, metadata !1310, metadata !DIExpression()) #25, !dbg !2498
  %13 = xor i32 %12, 1, !dbg !2506
  %14 = shl i32 %13, %9, !dbg !2507
  %15 = xor i32 %14, %10, !dbg !2508
  store i32 %15, i32* %7, align 4, !dbg !2508, !tbaa !888
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2509
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2510
  ret i8* %16, !dbg !2511
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2512 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2514, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8* %0, metadata !2490, metadata !DIExpression()) #25, !dbg !2516
  call void @llvm.dbg.value(metadata i8 58, metadata !2491, metadata !DIExpression()) #25, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %0, metadata !2463, metadata !DIExpression()) #25, !dbg !2518
  call void @llvm.dbg.value(metadata i64 -1, metadata !2464, metadata !DIExpression()) #25, !dbg !2518
  call void @llvm.dbg.value(metadata i8 58, metadata !2465, metadata !DIExpression()) #25, !dbg !2518
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2520
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2520
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2466, metadata !DIExpression()) #25, !dbg !2521
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2522, !tbaa.struct !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1303, metadata !DIExpression()) #25, !dbg !2523
  call void @llvm.dbg.value(metadata i8 58, metadata !1304, metadata !DIExpression()) #25, !dbg !2523
  call void @llvm.dbg.value(metadata i32 1, metadata !1305, metadata !DIExpression()) #25, !dbg !2523
  call void @llvm.dbg.value(metadata i8 58, metadata !1306, metadata !DIExpression()) #25, !dbg !2523
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2525
  call void @llvm.dbg.value(metadata i32* %4, metadata !1307, metadata !DIExpression()) #25, !dbg !2523
  call void @llvm.dbg.value(metadata i32 26, metadata !1309, metadata !DIExpression()) #25, !dbg !2523
  %5 = load i32, i32* %4, align 4, !dbg !2526, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %5, metadata !1310, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2523
  %6 = or i32 %5, 67108864, !dbg !2527
  store i32 %6, i32* %4, align 4, !dbg !2527, !tbaa !888
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !2528
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2529
  ret i8* %7, !dbg !2530
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2531 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2533, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %1, metadata !2534, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %0, metadata !2463, metadata !DIExpression()) #25, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %1, metadata !2464, metadata !DIExpression()) #25, !dbg !2536
  call void @llvm.dbg.value(metadata i8 58, metadata !2465, metadata !DIExpression()) #25, !dbg !2536
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2538
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2466, metadata !DIExpression()) #25, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2540, !tbaa.struct !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1303, metadata !DIExpression()) #25, !dbg !2541
  call void @llvm.dbg.value(metadata i8 58, metadata !1304, metadata !DIExpression()) #25, !dbg !2541
  call void @llvm.dbg.value(metadata i32 1, metadata !1305, metadata !DIExpression()) #25, !dbg !2541
  call void @llvm.dbg.value(metadata i8 58, metadata !1306, metadata !DIExpression()) #25, !dbg !2541
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2543
  call void @llvm.dbg.value(metadata i32* %5, metadata !1307, metadata !DIExpression()) #25, !dbg !2541
  call void @llvm.dbg.value(metadata i32 26, metadata !1309, metadata !DIExpression()) #25, !dbg !2541
  %6 = load i32, i32* %5, align 4, !dbg !2544, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %6, metadata !1310, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2541
  %7 = or i32 %6, 67108864, !dbg !2545
  store i32 %7, i32* %5, align 4, !dbg !2545, !tbaa !888
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !2546
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2547
  ret i8* %8, !dbg !2548
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2549 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2366, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2555
  call void @llvm.dbg.value(metadata i32 %0, metadata !2551, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i32 %1, metadata !2552, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8* %2, metadata !2553, metadata !DIExpression()), !dbg !2557
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2558
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2558
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2554, metadata !DIExpression()), !dbg !2559
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2560
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2561), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %1, metadata !2361, metadata !DIExpression()) #25, !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2564
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2555, !alias.scope !2561
  %8 = icmp eq i32 %1, 10, !dbg !2565
  br i1 %8, label %9, label %10, !dbg !2566

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2567, !noalias !2561
  unreachable, !dbg !2567

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2564
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2560
  store i32 %1, i32* %11, align 8, !dbg !2560, !tbaa.struct !2471
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2560
  %13 = bitcast i32* %12 to i8*, !dbg !2560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2560, !tbaa.struct !2568
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1303, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 58, metadata !1304, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 1, metadata !1305, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 58, metadata !1306, metadata !DIExpression()), !dbg !2569
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2571
  call void @llvm.dbg.value(metadata i32* %14, metadata !1307, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 26, metadata !1309, metadata !DIExpression()), !dbg !2569
  %15 = load i32, i32* %14, align 4, !dbg !2572, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %15, metadata !1310, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2569
  %16 = or i32 %15, 67108864, !dbg !2573
  store i32 %16, i32* %14, align 4, !dbg !2573, !tbaa !888
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2574
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2575
  ret i8* %17, !dbg !2576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2577 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2581, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %2, metadata !2583, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %3, metadata !2584, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()) #25, !dbg !2596
  call void @llvm.dbg.value(metadata i8* %1, metadata !2591, metadata !DIExpression()) #25, !dbg !2596
  call void @llvm.dbg.value(metadata i8* %2, metadata !2592, metadata !DIExpression()) #25, !dbg !2596
  call void @llvm.dbg.value(metadata i8* %3, metadata !2593, metadata !DIExpression()) #25, !dbg !2596
  call void @llvm.dbg.value(metadata i64 -1, metadata !2594, metadata !DIExpression()) #25, !dbg !2596
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2598
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2598
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2595, metadata !DIExpression()) #25, !dbg !2599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2600, !tbaa.struct !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1343, metadata !DIExpression()) #25, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %1, metadata !1344, metadata !DIExpression()) #25, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %2, metadata !1345, metadata !DIExpression()) #25, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1343, metadata !DIExpression()) #25, !dbg !2601
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2603
  store i32 10, i32* %7, align 8, !dbg !2604, !tbaa !1285
  %8 = icmp ne i8* %1, null, !dbg !2605
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2606
  br i1 %10, label %12, label %11, !dbg !2606

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2607
  unreachable, !dbg !2607

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2608
  store i8* %1, i8** %13, align 8, !dbg !2609, !tbaa !1358
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2610
  store i8* %2, i8** %14, align 8, !dbg !2611, !tbaa !1361
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2613
  ret i8* %15, !dbg !2614
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2587 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* %1, metadata !2591, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* %2, metadata !2592, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* %3, metadata !2593, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %4, metadata !2594, metadata !DIExpression()), !dbg !2615
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2616
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2616
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2595, metadata !DIExpression()), !dbg !2617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2618, !tbaa.struct !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1343, metadata !DIExpression()) #25, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !1344, metadata !DIExpression()) #25, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %2, metadata !1345, metadata !DIExpression()) #25, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1343, metadata !DIExpression()) #25, !dbg !2619
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2621
  store i32 10, i32* %8, align 8, !dbg !2622, !tbaa !1285
  %9 = icmp ne i8* %1, null, !dbg !2623
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2624
  br i1 %11, label %13, label %12, !dbg !2624

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !2625
  unreachable, !dbg !2625

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2626
  store i8* %1, i8** %14, align 8, !dbg !2627, !tbaa !1358
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2628
  store i8* %2, i8** %15, align 8, !dbg !2629, !tbaa !1361
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2630
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2631
  ret i8* %16, !dbg !2632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2633 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2637, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %1, metadata !2638, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %2, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 0, metadata !2581, metadata !DIExpression()) #25, !dbg !2641
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()) #25, !dbg !2641
  call void @llvm.dbg.value(metadata i8* %1, metadata !2583, metadata !DIExpression()) #25, !dbg !2641
  call void @llvm.dbg.value(metadata i8* %2, metadata !2584, metadata !DIExpression()) #25, !dbg !2641
  call void @llvm.dbg.value(metadata i32 0, metadata !2586, metadata !DIExpression()) #25, !dbg !2643
  call void @llvm.dbg.value(metadata i8* %0, metadata !2591, metadata !DIExpression()) #25, !dbg !2643
  call void @llvm.dbg.value(metadata i8* %1, metadata !2592, metadata !DIExpression()) #25, !dbg !2643
  call void @llvm.dbg.value(metadata i8* %2, metadata !2593, metadata !DIExpression()) #25, !dbg !2643
  call void @llvm.dbg.value(metadata i64 -1, metadata !2594, metadata !DIExpression()) #25, !dbg !2643
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2645
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2645
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2595, metadata !DIExpression()) #25, !dbg !2646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2647, !tbaa.struct !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1343, metadata !DIExpression()) #25, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %0, metadata !1344, metadata !DIExpression()) #25, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %1, metadata !1345, metadata !DIExpression()) #25, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1343, metadata !DIExpression()) #25, !dbg !2648
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2650
  store i32 10, i32* %6, align 8, !dbg !2651, !tbaa !1285
  %7 = icmp ne i8* %0, null, !dbg !2652
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2653
  br i1 %9, label %11, label %10, !dbg !2653

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2654
  unreachable, !dbg !2654

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2655
  store i8* %0, i8** %12, align 8, !dbg !2656, !tbaa !1358
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2657
  store i8* %1, i8** %13, align 8, !dbg !2658, !tbaa !1361
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !2659
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2660
  ret i8* %14, !dbg !2661
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2662 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* %1, metadata !2667, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* %2, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i64 %3, metadata !2669, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 0, metadata !2586, metadata !DIExpression()) #25, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %0, metadata !2591, metadata !DIExpression()) #25, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %1, metadata !2592, metadata !DIExpression()) #25, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %2, metadata !2593, metadata !DIExpression()) #25, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %3, metadata !2594, metadata !DIExpression()) #25, !dbg !2671
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2673
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2673
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2595, metadata !DIExpression()) #25, !dbg !2674
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2675, !tbaa.struct !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1343, metadata !DIExpression()) #25, !dbg !2676
  call void @llvm.dbg.value(metadata i8* %0, metadata !1344, metadata !DIExpression()) #25, !dbg !2676
  call void @llvm.dbg.value(metadata i8* %1, metadata !1345, metadata !DIExpression()) #25, !dbg !2676
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1343, metadata !DIExpression()) #25, !dbg !2676
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2678
  store i32 10, i32* %7, align 8, !dbg !2679, !tbaa !1285
  %8 = icmp ne i8* %0, null, !dbg !2680
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2681
  br i1 %10, label %12, label %11, !dbg !2681

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2682
  unreachable, !dbg !2682

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2683
  store i8* %0, i8** %13, align 8, !dbg !2684, !tbaa !1358
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2685
  store i8* %1, i8** %14, align 8, !dbg !2686, !tbaa !1361
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !2687
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2688
  ret i8* %15, !dbg !2689
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2694, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %1, metadata !2695, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %2, metadata !2696, metadata !DIExpression()), !dbg !2697
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2698
  ret i8* %4, !dbg !2699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2700 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2704, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 %1, metadata !2705, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 0, metadata !2694, metadata !DIExpression()) #25, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()) #25, !dbg !2707
  call void @llvm.dbg.value(metadata i64 %1, metadata !2696, metadata !DIExpression()) #25, !dbg !2707
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2709
  ret i8* %3, !dbg !2710
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2715, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %1, metadata !2716, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 %0, metadata !2694, metadata !DIExpression()) #25, !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !2695, metadata !DIExpression()) #25, !dbg !2718
  call void @llvm.dbg.value(metadata i64 -1, metadata !2696, metadata !DIExpression()) #25, !dbg !2718
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2720
  ret i8* %3, !dbg !2721
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2722 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 0, metadata !2715, metadata !DIExpression()) #25, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %0, metadata !2716, metadata !DIExpression()) #25, !dbg !2728
  call void @llvm.dbg.value(metadata i32 0, metadata !2694, metadata !DIExpression()) #25, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()) #25, !dbg !2730
  call void @llvm.dbg.value(metadata i64 -1, metadata !2696, metadata !DIExpression()) #25, !dbg !2730
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2732
  ret i8* %2, !dbg !2733
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2734 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2774, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %1, metadata !2775, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %2, metadata !2776, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8* %3, metadata !2777, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8** %4, metadata !2778, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %5, metadata !2779, metadata !DIExpression()), !dbg !2780
  %7 = icmp eq i8* %1, null, !dbg !2781
  br i1 %7, label %10, label %8, !dbg !2783

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !2784
  br label %12, !dbg !2784

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.98, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !2785
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.99, i64 0, i64 0), i32 5) #25, !dbg !2786
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !2786
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.100, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2787
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.101, i64 0, i64 0), i32 5) #25, !dbg !2788
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.102, i64 0, i64 0)) #25, !dbg !2788
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.100, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2789
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
  ], !dbg !2790

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.103, i64 0, i64 0), i32 5) #25, !dbg !2791
  %21 = load i8*, i8** %4, align 8, !dbg !2791, !tbaa !636
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !2791
  br label %147, !dbg !2793

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.104, i64 0, i64 0), i32 5) #25, !dbg !2794
  %25 = load i8*, i8** %4, align 8, !dbg !2794, !tbaa !636
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2794
  %27 = load i8*, i8** %26, align 8, !dbg !2794, !tbaa !636
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !2794
  br label %147, !dbg !2795

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.105, i64 0, i64 0), i32 5) #25, !dbg !2796
  %31 = load i8*, i8** %4, align 8, !dbg !2796, !tbaa !636
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2796
  %33 = load i8*, i8** %32, align 8, !dbg !2796, !tbaa !636
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2796
  %35 = load i8*, i8** %34, align 8, !dbg !2796, !tbaa !636
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !2796
  br label %147, !dbg !2797

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.106, i64 0, i64 0), i32 5) #25, !dbg !2798
  %39 = load i8*, i8** %4, align 8, !dbg !2798, !tbaa !636
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2798
  %41 = load i8*, i8** %40, align 8, !dbg !2798, !tbaa !636
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2798
  %43 = load i8*, i8** %42, align 8, !dbg !2798, !tbaa !636
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2798
  %45 = load i8*, i8** %44, align 8, !dbg !2798, !tbaa !636
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !2798
  br label %147, !dbg !2799

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.107, i64 0, i64 0), i32 5) #25, !dbg !2800
  %49 = load i8*, i8** %4, align 8, !dbg !2800, !tbaa !636
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2800
  %51 = load i8*, i8** %50, align 8, !dbg !2800, !tbaa !636
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2800
  %53 = load i8*, i8** %52, align 8, !dbg !2800, !tbaa !636
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2800
  %55 = load i8*, i8** %54, align 8, !dbg !2800, !tbaa !636
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2800
  %57 = load i8*, i8** %56, align 8, !dbg !2800, !tbaa !636
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !2800
  br label %147, !dbg !2801

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.108, i64 0, i64 0), i32 5) #25, !dbg !2802
  %61 = load i8*, i8** %4, align 8, !dbg !2802, !tbaa !636
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2802
  %63 = load i8*, i8** %62, align 8, !dbg !2802, !tbaa !636
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2802
  %65 = load i8*, i8** %64, align 8, !dbg !2802, !tbaa !636
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2802
  %67 = load i8*, i8** %66, align 8, !dbg !2802, !tbaa !636
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2802
  %69 = load i8*, i8** %68, align 8, !dbg !2802, !tbaa !636
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2802
  %71 = load i8*, i8** %70, align 8, !dbg !2802, !tbaa !636
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !2802
  br label %147, !dbg !2803

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.109, i64 0, i64 0), i32 5) #25, !dbg !2804
  %75 = load i8*, i8** %4, align 8, !dbg !2804, !tbaa !636
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2804
  %77 = load i8*, i8** %76, align 8, !dbg !2804, !tbaa !636
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2804
  %79 = load i8*, i8** %78, align 8, !dbg !2804, !tbaa !636
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2804
  %81 = load i8*, i8** %80, align 8, !dbg !2804, !tbaa !636
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2804
  %83 = load i8*, i8** %82, align 8, !dbg !2804, !tbaa !636
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2804
  %85 = load i8*, i8** %84, align 8, !dbg !2804, !tbaa !636
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2804
  %87 = load i8*, i8** %86, align 8, !dbg !2804, !tbaa !636
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !2804
  br label %147, !dbg !2805

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.110, i64 0, i64 0), i32 5) #25, !dbg !2806
  %91 = load i8*, i8** %4, align 8, !dbg !2806, !tbaa !636
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2806
  %93 = load i8*, i8** %92, align 8, !dbg !2806, !tbaa !636
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2806
  %95 = load i8*, i8** %94, align 8, !dbg !2806, !tbaa !636
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2806
  %97 = load i8*, i8** %96, align 8, !dbg !2806, !tbaa !636
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2806
  %99 = load i8*, i8** %98, align 8, !dbg !2806, !tbaa !636
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2806
  %101 = load i8*, i8** %100, align 8, !dbg !2806, !tbaa !636
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2806
  %103 = load i8*, i8** %102, align 8, !dbg !2806, !tbaa !636
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2806
  %105 = load i8*, i8** %104, align 8, !dbg !2806, !tbaa !636
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !2806
  br label %147, !dbg !2807

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.111, i64 0, i64 0), i32 5) #25, !dbg !2808
  %109 = load i8*, i8** %4, align 8, !dbg !2808, !tbaa !636
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2808
  %111 = load i8*, i8** %110, align 8, !dbg !2808, !tbaa !636
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2808
  %113 = load i8*, i8** %112, align 8, !dbg !2808, !tbaa !636
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2808
  %115 = load i8*, i8** %114, align 8, !dbg !2808, !tbaa !636
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2808
  %117 = load i8*, i8** %116, align 8, !dbg !2808, !tbaa !636
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2808
  %119 = load i8*, i8** %118, align 8, !dbg !2808, !tbaa !636
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2808
  %121 = load i8*, i8** %120, align 8, !dbg !2808, !tbaa !636
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2808
  %123 = load i8*, i8** %122, align 8, !dbg !2808, !tbaa !636
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2808
  %125 = load i8*, i8** %124, align 8, !dbg !2808, !tbaa !636
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !2808
  br label %147, !dbg !2809

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.112, i64 0, i64 0), i32 5) #25, !dbg !2810
  %129 = load i8*, i8** %4, align 8, !dbg !2810, !tbaa !636
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2810
  %131 = load i8*, i8** %130, align 8, !dbg !2810, !tbaa !636
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2810
  %133 = load i8*, i8** %132, align 8, !dbg !2810, !tbaa !636
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2810
  %135 = load i8*, i8** %134, align 8, !dbg !2810, !tbaa !636
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2810
  %137 = load i8*, i8** %136, align 8, !dbg !2810, !tbaa !636
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2810
  %139 = load i8*, i8** %138, align 8, !dbg !2810, !tbaa !636
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2810
  %141 = load i8*, i8** %140, align 8, !dbg !2810, !tbaa !636
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2810
  %143 = load i8*, i8** %142, align 8, !dbg !2810, !tbaa !636
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2810
  %145 = load i8*, i8** %144, align 8, !dbg !2810, !tbaa !636
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !2810
  br label %147, !dbg !2811

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2813 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2817, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %1, metadata !2818, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %2, metadata !2819, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %3, metadata !2820, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8** %4, metadata !2821, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i64 0, metadata !2822, metadata !DIExpression()), !dbg !2823
  br label %6, !dbg !2824

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2826
  call void @llvm.dbg.value(metadata i64 %7, metadata !2822, metadata !DIExpression()), !dbg !2823
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2827
  %9 = load i8*, i8** %8, align 8, !dbg !2827, !tbaa !636
  %10 = icmp eq i8* %9, null, !dbg !2829
  %11 = add i64 %7, 1, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %11, metadata !2822, metadata !DIExpression()), !dbg !2823
  br i1 %10, label %12, label %6, !dbg !2829, !llvm.loop !2831

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2833
  ret void, !dbg !2834
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2835 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2846, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %1, metadata !2847, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %2, metadata !2848, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %3, metadata !2849, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2850, metadata !DIExpression()), !dbg !2854
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2855
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2855
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2852, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 0, metadata !2851, metadata !DIExpression()), !dbg !2854
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2851, metadata !DIExpression()), !dbg !2854
  %11 = load i32, i32* %8, align 8, !dbg !2857
  %12 = icmp ult i32 %11, 41, !dbg !2857
  br i1 %12, label %13, label %18, !dbg !2857

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2857
  %15 = zext i32 %11 to i64, !dbg !2857
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2857
  %17 = add nuw nsw i32 %11, 8, !dbg !2857
  store i32 %17, i32* %8, align 8, !dbg !2857
  br label %21, !dbg !2857

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2857
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2857
  store i8* %20, i8** %9, align 8, !dbg !2857
  br label %21, !dbg !2857

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2857
  %25 = load i8*, i8** %24, align 8, !dbg !2857
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2860
  store i8* %25, i8** %26, align 16, !dbg !2861, !tbaa !636
  %27 = icmp eq i8* %25, null, !dbg !2862
  br i1 %27, label %30, label %28, !dbg !2863

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 1, metadata !2851, metadata !DIExpression()), !dbg !2854
  %29 = icmp ult i32 %22, 41, !dbg !2857
  br i1 %29, label %35, label %32, !dbg !2857

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2864
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2865
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2866
  ret void, !dbg !2866

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2857
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2857
  store i8* %34, i8** %9, align 8, !dbg !2857
  br label %40, !dbg !2857

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2857
  %37 = zext i32 %22 to i64, !dbg !2857
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2857
  %39 = add nuw nsw i32 %22, 8, !dbg !2857
  store i32 %39, i32* %8, align 8, !dbg !2857
  br label %40, !dbg !2857

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2857
  %44 = load i8*, i8** %43, align 8, !dbg !2857
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2860
  store i8* %44, i8** %45, align 8, !dbg !2861, !tbaa !636
  %46 = icmp eq i8* %44, null, !dbg !2862
  br i1 %46, label %30, label %47, !dbg !2863

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 2, metadata !2851, metadata !DIExpression()), !dbg !2854
  %48 = icmp ult i32 %41, 41, !dbg !2857
  br i1 %48, label %52, label %49, !dbg !2857

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2857
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2857
  store i8* %51, i8** %9, align 8, !dbg !2857
  br label %57, !dbg !2857

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2857
  %54 = zext i32 %41 to i64, !dbg !2857
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2857
  %56 = add nuw nsw i32 %41, 8, !dbg !2857
  store i32 %56, i32* %8, align 8, !dbg !2857
  br label %57, !dbg !2857

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2857
  %61 = load i8*, i8** %60, align 8, !dbg !2857
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2860
  store i8* %61, i8** %62, align 16, !dbg !2861, !tbaa !636
  %63 = icmp eq i8* %61, null, !dbg !2862
  br i1 %63, label %30, label %64, !dbg !2863

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 3, metadata !2851, metadata !DIExpression()), !dbg !2854
  %65 = icmp ult i32 %58, 41, !dbg !2857
  br i1 %65, label %69, label %66, !dbg !2857

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2857
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2857
  store i8* %68, i8** %9, align 8, !dbg !2857
  br label %74, !dbg !2857

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2857
  %71 = zext i32 %58 to i64, !dbg !2857
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2857
  %73 = add nuw nsw i32 %58, 8, !dbg !2857
  store i32 %73, i32* %8, align 8, !dbg !2857
  br label %74, !dbg !2857

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2857
  %78 = load i8*, i8** %77, align 8, !dbg !2857
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2860
  store i8* %78, i8** %79, align 8, !dbg !2861, !tbaa !636
  %80 = icmp eq i8* %78, null, !dbg !2862
  br i1 %80, label %30, label %81, !dbg !2863

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 4, metadata !2851, metadata !DIExpression()), !dbg !2854
  %82 = icmp ult i32 %75, 41, !dbg !2857
  br i1 %82, label %86, label %83, !dbg !2857

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2857
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2857
  store i8* %85, i8** %9, align 8, !dbg !2857
  br label %91, !dbg !2857

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2857
  %88 = zext i32 %75 to i64, !dbg !2857
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2857
  %90 = add nuw nsw i32 %75, 8, !dbg !2857
  store i32 %90, i32* %8, align 8, !dbg !2857
  br label %91, !dbg !2857

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2857
  %95 = load i8*, i8** %94, align 8, !dbg !2857
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2860
  store i8* %95, i8** %96, align 16, !dbg !2861, !tbaa !636
  %97 = icmp eq i8* %95, null, !dbg !2862
  br i1 %97, label %30, label %98, !dbg !2863

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 5, metadata !2851, metadata !DIExpression()), !dbg !2854
  %99 = icmp ult i32 %92, 41, !dbg !2857
  br i1 %99, label %103, label %100, !dbg !2857

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2857
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2857
  store i8* %102, i8** %9, align 8, !dbg !2857
  br label %108, !dbg !2857

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2857
  %105 = zext i32 %92 to i64, !dbg !2857
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2857
  %107 = add nuw nsw i32 %92, 8, !dbg !2857
  store i32 %107, i32* %8, align 8, !dbg !2857
  br label %108, !dbg !2857

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2857
  %111 = load i8*, i8** %110, align 8, !dbg !2857
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2860
  store i8* %111, i8** %112, align 8, !dbg !2861, !tbaa !636
  %113 = icmp eq i8* %111, null, !dbg !2862
  br i1 %113, label %30, label %114, !dbg !2863

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2851, metadata !DIExpression()), !dbg !2854
  %115 = load i8*, i8** %9, align 8, !dbg !2857
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2857
  store i8* %116, i8** %9, align 8, !dbg !2857
  %117 = bitcast i8* %115 to i8**, !dbg !2857
  %118 = load i8*, i8** %117, align 8, !dbg !2857
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2860
  store i8* %118, i8** %119, align 16, !dbg !2861, !tbaa !636
  %120 = icmp eq i8* %118, null, !dbg !2862
  br i1 %120, label %30, label %121, !dbg !2863

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2851, metadata !DIExpression()), !dbg !2854
  %122 = load i8*, i8** %9, align 8, !dbg !2857
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2857
  store i8* %123, i8** %9, align 8, !dbg !2857
  %124 = bitcast i8* %122 to i8**, !dbg !2857
  %125 = load i8*, i8** %124, align 8, !dbg !2857
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2860
  store i8* %125, i8** %126, align 8, !dbg !2861, !tbaa !636
  %127 = icmp eq i8* %125, null, !dbg !2862
  br i1 %127, label %30, label %128, !dbg !2863

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2851, metadata !DIExpression()), !dbg !2854
  %129 = load i8*, i8** %9, align 8, !dbg !2857
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2857
  store i8* %130, i8** %9, align 8, !dbg !2857
  %131 = bitcast i8* %129 to i8**, !dbg !2857
  %132 = load i8*, i8** %131, align 8, !dbg !2857
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2860
  store i8* %132, i8** %133, align 16, !dbg !2861, !tbaa !636
  %134 = icmp eq i8* %132, null, !dbg !2862
  br i1 %134, label %30, label %135, !dbg !2863

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2851, metadata !DIExpression()), !dbg !2854
  %136 = load i8*, i8** %9, align 8, !dbg !2857
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2857
  store i8* %137, i8** %9, align 8, !dbg !2857
  %138 = bitcast i8* %136 to i8**, !dbg !2857
  %139 = load i8*, i8** %138, align 8, !dbg !2857
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2860
  store i8* %139, i8** %140, align 8, !dbg !2861, !tbaa !636
  %141 = icmp eq i8* %139, null, !dbg !2862
  %142 = select i1 %141, i64 9, i64 10, !dbg !2863
  br label %30, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2867 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2871, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %1, metadata !2872, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %2, metadata !2873, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %3, metadata !2874, metadata !DIExpression()), !dbg !2881
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2882
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2875, metadata !DIExpression()), !dbg !2883
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2884
  call void @llvm.va_start(i8* nonnull %6), !dbg !2884
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2885
  call void @llvm.va_end(i8* nonnull %6), !dbg !2886
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2887
  ret void, !dbg !2887
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2888 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2889, !tbaa !636
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.100, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2889
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.115, i64 0, i64 0), i32 5) #25, !dbg !2890
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.116, i64 0, i64 0)) #25, !dbg !2890
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.117, i64 0, i64 0), i32 5) #25, !dbg !2891
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.118, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.119, i64 0, i64 0)) #25, !dbg !2891
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.120, i64 0, i64 0), i32 5) #25, !dbg !2892
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.121, i64 0, i64 0)) #25, !dbg !2892
  ret void, !dbg !2893
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !2894 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %1, metadata !2899, metadata !DIExpression()), !dbg !2900
  %3 = udiv i64 9223372036854775807, %1, !dbg !2901
  %4 = icmp ult i64 %3, %0, !dbg !2901
  br i1 %4, label %5, label %6, !dbg !2903

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !2904
  unreachable, !dbg !2904

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %7, metadata !2906, metadata !DIExpression()) #25, !dbg !2912
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !2914
  call void @llvm.dbg.value(metadata i8* %8, metadata !2911, metadata !DIExpression()) #25, !dbg !2912
  %9 = icmp eq i8* %8, null, !dbg !2915
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2917
  br i1 %11, label %12, label %13, !dbg !2917

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !2918
  unreachable, !dbg !2918

13:                                               ; preds = %6
  ret i8* %8, !dbg !2919
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2907 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2906, metadata !DIExpression()), !dbg !2920
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2921
  call void @llvm.dbg.value(metadata i8* %2, metadata !2911, metadata !DIExpression()), !dbg !2920
  %3 = icmp eq i8* %2, null, !dbg !2922
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2923
  br i1 %5, label %6, label %7, !dbg !2923

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2924
  unreachable, !dbg !2924

7:                                                ; preds = %1
  ret i8* %2, !dbg !2925
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !2926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %2, metadata !2932, metadata !DIExpression()), !dbg !2933
  %4 = udiv i64 9223372036854775807, %2, !dbg !2934
  %5 = icmp ult i64 %4, %1, !dbg !2934
  br i1 %5, label %6, label %7, !dbg !2936

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !2937
  unreachable, !dbg !2937

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %0, metadata !2939, metadata !DIExpression()) #25, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %8, metadata !2944, metadata !DIExpression()) #25, !dbg !2945
  %9 = icmp eq i64 %8, 0, !dbg !2947
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2949
  br i1 %11, label %12, label %13, !dbg !2949

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !2950
  br label %19, !dbg !2952

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %14, metadata !2939, metadata !DIExpression()) #25, !dbg !2945
  %15 = icmp eq i8* %14, null, !dbg !2954
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2956
  br i1 %17, label %18, label %19, !dbg !2956

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2957
  unreachable, !dbg !2957

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2945
  ret i8* %20, !dbg !2958
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2940 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2939, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()), !dbg !2959
  %3 = icmp eq i64 %1, 0, !dbg !2960
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2961
  br i1 %5, label %6, label %7, !dbg !2961

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !2962
  br label %13, !dbg !2963

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %8, metadata !2939, metadata !DIExpression()), !dbg !2959
  %9 = icmp eq i8* %8, null, !dbg !2965
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2966
  br i1 %11, label %12, label %13, !dbg !2966

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !2967
  unreachable, !dbg !2967

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2959
  ret i8* %14, !dbg !2968
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !186 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !191, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64* %1, metadata !192, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %2, metadata !193, metadata !DIExpression()), !dbg !2969
  %4 = load i64, i64* %1, align 8, !dbg !2970, !tbaa !2181
  call void @llvm.dbg.value(metadata i64 %4, metadata !194, metadata !DIExpression()), !dbg !2969
  %5 = icmp eq i8* %0, null, !dbg !2971
  br i1 %5, label %6, label %20, !dbg !2973

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2974
  br i1 %7, label %8, label %13, !dbg !2977

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %9, metadata !194, metadata !DIExpression()), !dbg !2969
  %10 = icmp ugt i64 %2, 128, !dbg !2980
  %11 = zext i1 %10 to i64, !dbg !2980
  %12 = add nuw nsw i64 %9, %11, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %12, metadata !194, metadata !DIExpression()), !dbg !2969
  br label %13, !dbg !2982

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2969
  call void @llvm.dbg.value(metadata i64 %14, metadata !194, metadata !DIExpression()), !dbg !2969
  %15 = udiv i64 9223372036854775807, %2, !dbg !2983
  %16 = icmp ult i64 %15, %14, !dbg !2983
  br i1 %16, label %19, label %17, !dbg !2985

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !194, metadata !DIExpression()), !dbg !2969
  store i64 %14, i64* %1, align 8, !dbg !2986, !tbaa !2181
  %18 = mul i64 %14, %2, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %0, metadata !2939, metadata !DIExpression()) #25, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %28, metadata !2944, metadata !DIExpression()) #25, !dbg !2988
  br label %31, !dbg !2990

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2991
  unreachable, !dbg !2991

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2992
  %22 = icmp ugt i64 %21, %4, !dbg !2995
  br i1 %22, label %24, label %23, !dbg !2996

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !2997
  unreachable, !dbg !2997

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2998
  %26 = add nuw i64 %4, 1, !dbg !2999
  %27 = add i64 %26, %25, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %27, metadata !194, metadata !DIExpression()), !dbg !2969
  store i64 %27, i64* %1, align 8, !dbg !2986, !tbaa !2181
  %28 = mul i64 %27, %2, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %0, metadata !2939, metadata !DIExpression()) #25, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %28, metadata !2944, metadata !DIExpression()) #25, !dbg !2988
  %29 = icmp eq i64 %28, 0, !dbg !3001
  br i1 %29, label %30, label %31, !dbg !2990

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !3002
  br label %38, !dbg !3003

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %33, metadata !2939, metadata !DIExpression()) #25, !dbg !2988
  %34 = icmp eq i8* %33, null, !dbg !3005
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3006
  br i1 %36, label %37, label %38, !dbg !3006

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !3007
  unreachable, !dbg !3007

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2988
  ret i8* %39, !dbg !3008
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !3009 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %0, metadata !2906, metadata !DIExpression()) #25, !dbg !3013
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3015
  call void @llvm.dbg.value(metadata i8* %2, metadata !2911, metadata !DIExpression()) #25, !dbg !3013
  %3 = icmp eq i8* %2, null, !dbg !3016
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3017
  br i1 %5, label %6, label %7, !dbg !3017

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3018
  unreachable, !dbg !3018

7:                                                ; preds = %1
  ret i8* %2, !dbg !3019
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3020 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3024, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64* %1, metadata !3025, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %0, metadata !191, metadata !DIExpression()) #25, !dbg !3027
  call void @llvm.dbg.value(metadata i64* %1, metadata !192, metadata !DIExpression()) #25, !dbg !3027
  call void @llvm.dbg.value(metadata i64 1, metadata !193, metadata !DIExpression()) #25, !dbg !3027
  %3 = load i64, i64* %1, align 8, !dbg !3029, !tbaa !2181
  call void @llvm.dbg.value(metadata i64 %3, metadata !194, metadata !DIExpression()) #25, !dbg !3027
  %4 = icmp eq i8* %0, null, !dbg !3030
  br i1 %4, label %5, label %10, !dbg !3031

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3032
  br i1 %6, label %17, label %7, !dbg !3033

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !194, metadata !DIExpression()) #25, !dbg !3027
  %8 = icmp slt i64 %3, 0, !dbg !3034
  br i1 %8, label %9, label %17, !dbg !3035

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3036
  unreachable, !dbg !3036

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3037
  br i1 %11, label %13, label %12, !dbg !3038

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !3039
  unreachable, !dbg !3039

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3040
  %15 = add nuw nsw i64 %3, 1, !dbg !3041
  %16 = add nuw nsw i64 %15, %14, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %16, metadata !194, metadata !DIExpression()) #25, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %0, metadata !2939, metadata !DIExpression()) #25, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %16, metadata !2944, metadata !DIExpression()) #25, !dbg !3043
  br label %17, !dbg !3045

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3046
  store i64 %18, i64* %1, align 8, !dbg !3046, !tbaa !2181
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %19, metadata !2939, metadata !DIExpression()) #25, !dbg !3043
  %20 = icmp eq i8* %19, null, !dbg !3048
  br i1 %20, label %21, label %22, !dbg !3049

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !3050
  unreachable, !dbg !3050

22:                                               ; preds = %17
  ret i8* %19, !dbg !3051
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3052 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %0, metadata !3056, metadata !DIExpression()) #25, !dbg !3061
  call void @llvm.dbg.value(metadata i64 1, metadata !3059, metadata !DIExpression()) #25, !dbg !3061
  %2 = icmp slt i64 %0, 0, !dbg !3063
  br i1 %2, label %6, label %3, !dbg !3065

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %4, metadata !3060, metadata !DIExpression()) #25, !dbg !3061
  %5 = icmp eq i8* %4, null, !dbg !3067
  br i1 %5, label %6, label %7, !dbg !3068

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !3069
  unreachable, !dbg !3069

7:                                                ; preds = %3
  ret i8* %4, !dbg !3070
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3057 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3056, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()), !dbg !3071
  %3 = udiv i64 9223372036854775807, %1, !dbg !3072
  %4 = icmp ult i64 %3, %0, !dbg !3072
  br i1 %4, label %8, label %5, !dbg !3073

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %6, metadata !3060, metadata !DIExpression()), !dbg !3071
  %7 = icmp eq i8* %6, null, !dbg !3075
  br i1 %7, label %8, label %9, !dbg !3076

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !3077
  unreachable, !dbg !3077

9:                                                ; preds = %5
  ret i8* %6, !dbg !3078
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3079 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3085, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %1, metadata !3086, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %1, metadata !2906, metadata !DIExpression()) #25, !dbg !3088
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !3090
  call void @llvm.dbg.value(metadata i8* %3, metadata !2911, metadata !DIExpression()) #25, !dbg !3088
  %4 = icmp eq i8* %3, null, !dbg !3091
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3092
  br i1 %6, label %7, label %8, !dbg !3092

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3093
  unreachable, !dbg !3093

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3094, metadata !DIExpression()) #25, !dbg !3103
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()) #25, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %1, metadata !3102, metadata !DIExpression()) #25, !dbg !3103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !3105
  ret i8* %3, !dbg !3106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()), !dbg !3110
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !3111
  %3 = add i64 %2, 1, !dbg !3112
  call void @llvm.dbg.value(metadata i8* %0, metadata !3085, metadata !DIExpression()) #25, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %3, metadata !3086, metadata !DIExpression()) #25, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %3, metadata !2906, metadata !DIExpression()) #25, !dbg !3115
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %4, metadata !2911, metadata !DIExpression()) #25, !dbg !3115
  %5 = icmp eq i8* %4, null, !dbg !3118
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3119
  br i1 %7, label %8, label %9, !dbg !3119

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3120
  unreachable, !dbg !3120

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3094, metadata !DIExpression()) #25, !dbg !3121
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()) #25, !dbg !3121
  call void @llvm.dbg.value(metadata i64 %3, metadata !3102, metadata !DIExpression()) #25, !dbg !3121
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !3123
  ret i8* %4, !dbg !3124
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3125 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3126, !tbaa !888
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.132, i64 0, i64 0), i32 5) #25, !dbg !3127
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* %2) #25, !dbg !3128
  tail call void @abort() #27, !dbg !3129
  unreachable, !dbg !3129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoimax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !3130 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3135, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 %1, metadata !3136, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %2, metadata !3137, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %3, metadata !3138, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8* %4, metadata !3139, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8* %5, metadata !3140, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 %6, metadata !3141, metadata !DIExpression()), !dbg !3145
  %9 = bitcast i64* %8 to i8*, !dbg !3146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #25, !dbg !3146
  call void @llvm.dbg.value(metadata i64* %8, metadata !3144, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #25, !dbg !3147
  call void @llvm.dbg.value(metadata i32 %10, metadata !3142, metadata !DIExpression()), !dbg !3145
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %27
    i32 3, label %29
  ], !dbg !3148

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #28, !dbg !3149
  br label %31, !dbg !3148

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3152, !tbaa !2181
  call void @llvm.dbg.value(metadata i64 %14, metadata !3144, metadata !DIExpression()), !dbg !3145
  %15 = icmp slt i64 %14, %2, !dbg !3156
  %16 = icmp sgt i64 %14, %3
  %17 = or i1 %15, %16, !dbg !3157
  br i1 %17, label %18, label %40, !dbg !3157

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3142, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %14, metadata !3144, metadata !DIExpression()), !dbg !3145
  %19 = icmp sgt i64 %14, 1073741823, !dbg !3158
  br i1 %19, label %20, label %22, !dbg !3161

20:                                               ; preds = %18
  %21 = tail call i32* @__errno_location() #28, !dbg !3162
  store i32 75, i32* %21, align 4, !dbg !3163, !tbaa !888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3142, metadata !DIExpression()), !dbg !3145
  br label %31, !dbg !3164

22:                                               ; preds = %18
  %23 = icmp slt i64 %14, -1073741824, !dbg !3165
  %24 = tail call i32* @__errno_location() #28, !dbg !3167
  br i1 %23, label %25, label %26, !dbg !3168

25:                                               ; preds = %22
  store i32 75, i32* %24, align 4, !dbg !3169, !tbaa !888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3142, metadata !DIExpression()), !dbg !3145
  br label %31, !dbg !3164

26:                                               ; preds = %22
  store i32 34, i32* %24, align 4, !dbg !3170, !tbaa !888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3142, metadata !DIExpression()), !dbg !3145
  br label %31, !dbg !3164

27:                                               ; preds = %7
  %28 = tail call i32* @__errno_location() #28, !dbg !3171
  store i32 75, i32* %28, align 4, !dbg !3173, !tbaa !888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3142, metadata !DIExpression()), !dbg !3145
  br label %31, !dbg !3164

29:                                               ; preds = %7
  %30 = tail call i32* @__errno_location() #28, !dbg !3174
  store i32 0, i32* %30, align 4, !dbg !3176, !tbaa !888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3142, metadata !DIExpression()), !dbg !3145
  br label %31, !dbg !3164

31:                                               ; preds = %11, %20, %26, %25, %29, %27
  %32 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %26 ], [ %24, %25 ], [ %30, %29 ], [ %28, %27 ], !dbg !3149
  %33 = icmp eq i32 %6, 0, !dbg !3177
  %34 = select i1 %33, i32 1, i32 %6, !dbg !3177
  %35 = load i32, i32* %32, align 4, !dbg !3149, !tbaa !888
  %36 = icmp eq i32 %35, 22, !dbg !3178
  %37 = select i1 %36, i32 0, i32 %35, !dbg !3149
  %38 = call i8* @quote(i8* %0) #25, !dbg !3179
  call void (i32, i32, i8*, ...) @error(i32 %34, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i64 0, i64 0), i8* %5, i8* %38) #25, !dbg !3180
  %39 = load i64, i64* %8, align 8, !dbg !3181, !tbaa !2181
  br label %40, !dbg !3182

40:                                               ; preds = %13, %31
  %41 = phi i64 [ %14, %13 ], [ %39, %31 ], !dbg !3181
  call void @llvm.dbg.value(metadata i64 %41, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #25, !dbg !3183
  ret i64 %41, !dbg !3184
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoimax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !3185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3189, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %1, metadata !3190, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %2, metadata !3191, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %3, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %4, metadata !3193, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32 %5, metadata !3194, metadata !DIExpression()), !dbg !3195
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3196
  ret i64 %7, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoimax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3198 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8** %1, metadata !3205, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %2, metadata !3206, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64* %3, metadata !3207, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %4, metadata !3208, metadata !DIExpression()), !dbg !3218
  %7 = bitcast i8** %6 to i8*, !dbg !3219
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #25, !dbg !3219
  call void @llvm.dbg.value(metadata i32 0, metadata !3212, metadata !DIExpression()), !dbg !3218
  %8 = icmp ult i32 %2, 37, !dbg !3220
  br i1 %8, label %10, label %9, !dbg !3220

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.139, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.140, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #27, !dbg !3220
  unreachable, !dbg !3220

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3223
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !3223
  call void @llvm.dbg.value(metadata i8** %12, metadata !3210, metadata !DIExpression()), !dbg !3218
  %13 = tail call i32* @__errno_location() #28, !dbg !3224
  store i32 0, i32* %13, align 4, !dbg !3225, !tbaa !888
  %14 = call i64 @strtoimax(i8* %0, i8** %12, i32 %2) #25, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %14, metadata !3211, metadata !DIExpression()), !dbg !3218
  %15 = load i8*, i8** %12, align 8, !dbg !3227, !tbaa !636
  %16 = icmp eq i8* %15, %0, !dbg !3229
  br i1 %16, label %17, label %26, !dbg !3230

17:                                               ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3231
  br i1 %18, label %204, label %19, !dbg !3234

19:                                               ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3235, !tbaa !843
  %21 = icmp eq i8 %20, 0, !dbg !3235
  br i1 %21, label %204, label %22, !dbg !3236

22:                                               ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3235
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #26, !dbg !3237
  %25 = icmp eq i8* %24, null, !dbg !3237
  br i1 %25, label %204, label %33, !dbg !3238

26:                                               ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3239, !tbaa !888
  switch i32 %27, label %204 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3241

28:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, metadata !3212, metadata !DIExpression()), !dbg !3218
  br label %29, !dbg !3242

29:                                               ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ %27, %26 ], !dbg !3218
  call void @llvm.dbg.value(metadata i32 %30, metadata !3212, metadata !DIExpression()), !dbg !3218
  %31 = icmp eq i8* %4, null, !dbg !3244
  br i1 %31, label %32, label %33, !dbg !3246

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, metadata !3211, metadata !DIExpression()), !dbg !3218
  store i64 %14, i64* %3, align 8, !dbg !3247, !tbaa !2181
  br label %204, !dbg !3249

33:                                               ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3250, !tbaa !843
  %37 = sext i8 %36 to i32, !dbg !3250
  %38 = icmp eq i8 %36, 0, !dbg !3251
  br i1 %38, label %201, label %39, !dbg !3252

39:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 1024, metadata !3213, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 1, metadata !3216, metadata !DIExpression()), !dbg !3253
  %40 = call i8* @strchr(i8* nonnull %4, i32 %37) #26, !dbg !3254
  %41 = icmp eq i8* %40, null, !dbg !3254
  br i1 %41, label %42, label %44, !dbg !3256

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %14, metadata !3211, metadata !DIExpression()), !dbg !3218
  store i64 %35, i64* %3, align 8, !dbg !3257, !tbaa !2181
  %43 = or i32 %34, 2, !dbg !3259
  br label %204, !dbg !3260

44:                                               ; preds = %39
  switch i32 %37, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !3261

45:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #26, !dbg !3262
  %47 = icmp eq i8* %46, null, !dbg !3262
  br i1 %47, label %58, label %48, !dbg !3265

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3266
  %50 = load i8, i8* %49, align 1, !dbg !3266, !tbaa !843
  %51 = sext i8 %50 to i32, !dbg !3266
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3267

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3268
  %54 = load i8, i8* %53, align 1, !dbg !3268, !tbaa !843
  %55 = icmp eq i8 %54, 66, !dbg !3271
  %56 = select i1 %55, i64 3, i64 1, !dbg !3272
  br label %58, !dbg !3272

57:                                               ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, metadata !3213, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 2, metadata !3216, metadata !DIExpression()), !dbg !3253
  br label %58, !dbg !3273

58:                                               ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3216, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 undef, metadata !3213, metadata !DIExpression()), !dbg !3253
  switch i32 %37, label %190 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %192
    i32 69, label %75
    i32 71, label %89
    i32 103, label %89
    i32 107, label %103
    i32 75, label %103
    i32 77, label %113
    i32 109, label %113
    i32 80, label %127
    i32 84, label %141
    i32 116, label %141
    i32 119, label %155
    i32 89, label %162
    i32 90, label %176
  ], !dbg !3274

61:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 512, metadata !3280, metadata !DIExpression()), !dbg !3281
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3284
  br i1 %62, label %192, label %63, !dbg !3286

63:                                               ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3287
  %65 = shl nsw i64 %35, 9
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3289
  %67 = zext i1 %64 to i32, !dbg !3289
  br label %192, !dbg !3289

68:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 1024, metadata !3280, metadata !DIExpression()), !dbg !3290
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3292
  br i1 %69, label %192, label %70, !dbg !3293

70:                                               ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3294
  %72 = shl nsw i64 %35, 10
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3295
  %74 = zext i1 %71 to i32, !dbg !3295
  br label %192, !dbg !3295

75:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3296, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 undef, metadata !3301, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 6, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3304
  %76 = udiv i64 -9223372036854775808, %59
  %77 = sub i64 0, %76
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 6, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 5, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3306
  %78 = icmp slt i64 %35, %77, !dbg !3308
  br i1 %78, label %85, label %79, !dbg !3309

79:                                               ; preds = %75
  %80 = udiv i64 9223372036854775807, %59, !dbg !3310
  %81 = icmp slt i64 %80, %35, !dbg !3311
  %82 = mul nsw i64 %35, %59
  %83 = select i1 %81, i64 9223372036854775807, i64 %82, !dbg !3312
  %84 = zext i1 %81 to i32, !dbg !3312
  br label %85, !dbg !3312

85:                                               ; preds = %79, %75
  %86 = phi i64 [ -9223372036854775808, %75 ], [ %83, %79 ], !dbg !3306
  %87 = phi i32 [ 1, %75 ], [ %84, %79 ], !dbg !3306
  call void @llvm.dbg.value(metadata i32 %87, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 5, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %87, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 5, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 4, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3306
  %88 = icmp slt i64 %86, %77, !dbg !3308
  br i1 %88, label %212, label %206, !dbg !3309

89:                                               ; preds = %58, %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3296, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 undef, metadata !3301, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 3, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3313
  %90 = udiv i64 -9223372036854775808, %59
  %91 = sub i64 0, %90
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 3, metadata !3302, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 2, metadata !3302, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3315
  %92 = icmp slt i64 %35, %91, !dbg !3317
  br i1 %92, label %99, label %93, !dbg !3318

93:                                               ; preds = %89
  %94 = udiv i64 9223372036854775807, %59, !dbg !3319
  %95 = icmp slt i64 %94, %35, !dbg !3320
  %96 = mul nsw i64 %35, %59
  %97 = select i1 %95, i64 9223372036854775807, i64 %96, !dbg !3321
  %98 = zext i1 %95 to i32, !dbg !3321
  br label %99, !dbg !3321

99:                                               ; preds = %93, %89
  %100 = phi i64 [ -9223372036854775808, %89 ], [ %97, %93 ], !dbg !3315
  %101 = phi i32 [ 1, %89 ], [ %98, %93 ], !dbg !3315
  call void @llvm.dbg.value(metadata i32 %101, metadata !3303, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 2, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3313
  call void @llvm.dbg.value(metadata i32 %101, metadata !3303, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 2, metadata !3302, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 1, metadata !3302, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3315
  %102 = icmp slt i64 %100, %91, !dbg !3317
  br i1 %102, label %266, label %260, !dbg !3318

103:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3296, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 undef, metadata !3301, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 1, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3322
  %104 = udiv i64 -9223372036854775808, %59
  %105 = sub i64 0, %104
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 undef, metadata !3302, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 undef, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3322
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3324
  %106 = icmp slt i64 %35, %105, !dbg !3326
  br i1 %106, label %192, label %107, !dbg !3327

107:                                              ; preds = %103
  %108 = udiv i64 9223372036854775807, %59, !dbg !3328
  %109 = icmp slt i64 %108, %35, !dbg !3329
  %110 = mul nsw i64 %35, %59
  %111 = select i1 %109, i64 9223372036854775807, i64 %110, !dbg !3330
  %112 = zext i1 %109 to i32, !dbg !3330
  br label %192, !dbg !3330

113:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3296, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 undef, metadata !3301, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 2, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3331
  %114 = udiv i64 -9223372036854775808, %59
  %115 = sub i64 0, %114
  call void @llvm.dbg.value(metadata i32 1, metadata !3302, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3333
  %116 = icmp slt i64 %35, %115, !dbg !3335
  br i1 %116, label %123, label %117, !dbg !3336

117:                                              ; preds = %113
  %118 = udiv i64 9223372036854775807, %59, !dbg !3337
  %119 = icmp slt i64 %118, %35, !dbg !3338
  %120 = mul nsw i64 %35, %59
  %121 = select i1 %119, i64 9223372036854775807, i64 %120, !dbg !3339
  %122 = zext i1 %119 to i32, !dbg !3339
  br label %123, !dbg !3339

123:                                              ; preds = %117, %113
  %124 = phi i64 [ -9223372036854775808, %113 ], [ %121, %117 ], !dbg !3333
  %125 = phi i32 [ 1, %113 ], [ %122, %117 ], !dbg !3333
  call void @llvm.dbg.value(metadata i32 %125, metadata !3303, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3333
  %126 = icmp slt i64 %124, %115, !dbg !3335
  br i1 %126, label %287, label %281, !dbg !3336

127:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3296, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 undef, metadata !3301, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 5, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3340
  %128 = udiv i64 -9223372036854775808, %59
  %129 = sub i64 0, %128
  call void @llvm.dbg.value(metadata i32 4, metadata !3302, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3342
  %130 = icmp slt i64 %35, %129, !dbg !3344
  br i1 %130, label %137, label %131, !dbg !3345

131:                                              ; preds = %127
  %132 = udiv i64 9223372036854775807, %59, !dbg !3346
  %133 = icmp slt i64 %132, %35, !dbg !3347
  %134 = mul nsw i64 %35, %59
  %135 = select i1 %133, i64 9223372036854775807, i64 %134, !dbg !3348
  %136 = zext i1 %133 to i32, !dbg !3348
  br label %137, !dbg !3348

137:                                              ; preds = %131, %127
  %138 = phi i64 [ -9223372036854775808, %127 ], [ %135, %131 ], !dbg !3342
  %139 = phi i32 [ 1, %127 ], [ %136, %131 ], !dbg !3342
  call void @llvm.dbg.value(metadata i32 %139, metadata !3303, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 3, metadata !3302, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3342
  %140 = icmp slt i64 %138, %129, !dbg !3344
  br i1 %140, label %297, label %291, !dbg !3345

141:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3296, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 undef, metadata !3301, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 4, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3349
  %142 = udiv i64 -9223372036854775808, %59
  %143 = sub i64 0, %142
  call void @llvm.dbg.value(metadata i32 3, metadata !3302, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3351
  %144 = icmp slt i64 %35, %143, !dbg !3353
  br i1 %144, label %151, label %145, !dbg !3354

145:                                              ; preds = %141
  %146 = udiv i64 9223372036854775807, %59, !dbg !3355
  %147 = icmp slt i64 %146, %35, !dbg !3356
  %148 = mul nsw i64 %35, %59
  %149 = select i1 %147, i64 9223372036854775807, i64 %148, !dbg !3357
  %150 = zext i1 %147 to i32, !dbg !3357
  br label %151, !dbg !3357

151:                                              ; preds = %145, %141
  %152 = phi i64 [ -9223372036854775808, %141 ], [ %149, %145 ], !dbg !3351
  %153 = phi i32 [ 1, %141 ], [ %150, %145 ], !dbg !3351
  call void @llvm.dbg.value(metadata i32 %153, metadata !3303, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 2, metadata !3302, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3351
  %154 = icmp slt i64 %152, %143, !dbg !3353
  br i1 %154, label %340, label %334, !dbg !3354

155:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 2, metadata !3280, metadata !DIExpression()), !dbg !3358
  %156 = icmp slt i64 %35, -4611686018427387904, !dbg !3360
  br i1 %156, label %192, label %157, !dbg !3361

157:                                              ; preds = %155
  %158 = icmp sgt i64 %35, 4611686018427387903, !dbg !3362
  %159 = shl nsw i64 %35, 1
  %160 = select i1 %158, i64 9223372036854775807, i64 %159, !dbg !3363
  %161 = zext i1 %158 to i32, !dbg !3363
  br label %192, !dbg !3363

162:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3296, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 undef, metadata !3301, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 8, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3364
  %163 = udiv i64 -9223372036854775808, %59
  %164 = sub i64 0, %163
  call void @llvm.dbg.value(metadata i32 7, metadata !3302, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3366
  %165 = icmp slt i64 %35, %164, !dbg !3368
  br i1 %165, label %172, label %166, !dbg !3369

166:                                              ; preds = %162
  %167 = udiv i64 9223372036854775807, %59, !dbg !3370
  %168 = icmp slt i64 %167, %35, !dbg !3371
  %169 = mul nsw i64 %35, %59
  %170 = select i1 %168, i64 9223372036854775807, i64 %169, !dbg !3372
  %171 = zext i1 %168 to i32, !dbg !3372
  br label %172, !dbg !3372

172:                                              ; preds = %166, %162
  %173 = phi i64 [ -9223372036854775808, %162 ], [ %170, %166 ], !dbg !3366
  %174 = phi i32 [ 1, %162 ], [ %171, %166 ], !dbg !3366
  call void @llvm.dbg.value(metadata i32 %174, metadata !3303, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 6, metadata !3302, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3366
  %175 = icmp slt i64 %173, %164, !dbg !3368
  br i1 %175, label %372, label %366, !dbg !3369

176:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !3296, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 undef, metadata !3301, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 0, metadata !3303, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 7, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3373
  %177 = udiv i64 -9223372036854775808, %59
  %178 = sub i64 0, %177
  call void @llvm.dbg.value(metadata i32 6, metadata !3302, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3375
  %179 = icmp slt i64 %35, %178, !dbg !3377
  br i1 %179, label %186, label %180, !dbg !3378

180:                                              ; preds = %176
  %181 = udiv i64 9223372036854775807, %59, !dbg !3379
  %182 = icmp slt i64 %181, %35, !dbg !3380
  %183 = mul nsw i64 %35, %59
  %184 = select i1 %182, i64 9223372036854775807, i64 %183, !dbg !3381
  %185 = zext i1 %182 to i32, !dbg !3381
  br label %186, !dbg !3381

186:                                              ; preds = %180, %176
  %187 = phi i64 [ -9223372036854775808, %176 ], [ %184, %180 ], !dbg !3375
  %188 = phi i32 [ 1, %176 ], [ %185, %180 ], !dbg !3375
  call void @llvm.dbg.value(metadata i32 %188, metadata !3303, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 5, metadata !3302, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3375
  %189 = icmp slt i64 %187, %178, !dbg !3377
  br i1 %189, label %448, label %442, !dbg !3378

190:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, metadata !3211, metadata !DIExpression()), !dbg !3218
  store i64 %35, i64* %3, align 8, !dbg !3382, !tbaa !2181
  %191 = or i32 %34, 2, !dbg !3383
  br label %204, !dbg !3384

192:                                              ; preds = %107, %103, %503, %438, %362, %330, %287, %277, %256, %157, %70, %63, %58, %61, %68, %155
  %193 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ -9223372036854775808, %68 ], [ -9223372036854775808, %155 ], [ %66, %63 ], [ %73, %70 ], [ %160, %157 ], [ %257, %256 ], [ %278, %277 ], [ %288, %287 ], [ %331, %330 ], [ %363, %362 ], [ %439, %438 ], [ %504, %503 ], [ -9223372036854775808, %103 ], [ %111, %107 ], !dbg !3218
  %194 = phi i32 [ 0, %58 ], [ 1, %61 ], [ 1, %68 ], [ 1, %155 ], [ %67, %63 ], [ %74, %70 ], [ %161, %157 ], [ %259, %256 ], [ %280, %277 ], [ %290, %287 ], [ %333, %330 ], [ %365, %362 ], [ %441, %438 ], [ %506, %503 ], [ 1, %103 ], [ %112, %107 ], !dbg !3385
  call void @llvm.dbg.value(metadata i32 %194, metadata !3217, metadata !DIExpression()), !dbg !3253
  %195 = or i32 %194, %34, !dbg !3386
  call void @llvm.dbg.value(metadata i32 %195, metadata !3212, metadata !DIExpression()), !dbg !3218
  %196 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3387
  store i8* %196, i8** %12, align 8, !dbg !3387, !tbaa !636
  %197 = load i8, i8* %196, align 1, !dbg !3388, !tbaa !843
  %198 = icmp eq i8 %197, 0, !dbg !3388
  %199 = or i32 %195, 2
  %200 = select i1 %198, i32 %195, i32 %199, !dbg !3390
  call void @llvm.dbg.value(metadata i32 %200, metadata !3212, metadata !DIExpression()), !dbg !3218
  br label %201

201:                                              ; preds = %192, %33
  %202 = phi i64 [ %35, %33 ], [ %193, %192 ], !dbg !3391
  %203 = phi i32 [ %34, %33 ], [ %200, %192 ], !dbg !3392
  call void @llvm.dbg.value(metadata i32 %203, metadata !3212, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %202, metadata !3211, metadata !DIExpression()), !dbg !3218
  store i64 %202, i64* %3, align 8, !dbg !3393, !tbaa !2181
  br label %204, !dbg !3394

204:                                              ; preds = %42, %190, %26, %17, %19, %22, %201, %32
  %205 = phi i32 [ %203, %201 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %191, %190 ], !dbg !3218
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #25, !dbg !3395
  ret i32 %205, !dbg !3395

206:                                              ; preds = %85
  %207 = udiv i64 9223372036854775807, %59, !dbg !3310
  %208 = icmp slt i64 %207, %86, !dbg !3311
  %209 = mul nsw i64 %86, %59
  %210 = select i1 %208, i64 9223372036854775807, i64 %209, !dbg !3312
  %211 = zext i1 %208 to i32, !dbg !3312
  br label %212, !dbg !3312

212:                                              ; preds = %206, %85
  %213 = phi i64 [ -9223372036854775808, %85 ], [ %210, %206 ], !dbg !3306
  %214 = phi i32 [ 1, %85 ], [ %211, %206 ], !dbg !3306
  %215 = or i32 %214, %87, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %215, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 3, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3306
  %216 = icmp slt i64 %213, %77, !dbg !3308
  br i1 %216, label %223, label %217, !dbg !3309

217:                                              ; preds = %212
  %218 = udiv i64 9223372036854775807, %59, !dbg !3310
  %219 = icmp slt i64 %218, %213, !dbg !3311
  %220 = mul nsw i64 %213, %59
  %221 = select i1 %219, i64 9223372036854775807, i64 %220, !dbg !3312
  %222 = zext i1 %219 to i32, !dbg !3312
  br label %223, !dbg !3312

223:                                              ; preds = %217, %212
  %224 = phi i64 [ -9223372036854775808, %212 ], [ %221, %217 ], !dbg !3306
  %225 = phi i32 [ 1, %212 ], [ %222, %217 ], !dbg !3306
  %226 = or i32 %225, %215, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %226, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 2, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3306
  %227 = icmp slt i64 %224, %77, !dbg !3308
  br i1 %227, label %234, label %228, !dbg !3309

228:                                              ; preds = %223
  %229 = udiv i64 9223372036854775807, %59, !dbg !3310
  %230 = icmp slt i64 %229, %224, !dbg !3311
  %231 = mul nsw i64 %224, %59
  %232 = select i1 %230, i64 9223372036854775807, i64 %231, !dbg !3312
  %233 = zext i1 %230 to i32, !dbg !3312
  br label %234, !dbg !3312

234:                                              ; preds = %228, %223
  %235 = phi i64 [ -9223372036854775808, %223 ], [ %232, %228 ], !dbg !3306
  %236 = phi i32 [ 1, %223 ], [ %233, %228 ], !dbg !3306
  %237 = or i32 %236, %226, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %237, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 1, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3306
  %238 = icmp slt i64 %235, %77, !dbg !3308
  br i1 %238, label %245, label %239, !dbg !3309

239:                                              ; preds = %234
  %240 = udiv i64 9223372036854775807, %59, !dbg !3310
  %241 = icmp slt i64 %240, %235, !dbg !3311
  %242 = mul nsw i64 %235, %59
  %243 = select i1 %241, i64 9223372036854775807, i64 %242, !dbg !3312
  %244 = zext i1 %241 to i32, !dbg !3312
  br label %245, !dbg !3312

245:                                              ; preds = %239, %234
  %246 = phi i64 [ -9223372036854775808, %234 ], [ %243, %239 ], !dbg !3306
  %247 = phi i32 [ 1, %234 ], [ %244, %239 ], !dbg !3306
  %248 = or i32 %247, %237, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %248, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3306
  %249 = icmp slt i64 %246, %77, !dbg !3308
  br i1 %249, label %256, label %250, !dbg !3309

250:                                              ; preds = %245
  %251 = udiv i64 9223372036854775807, %59, !dbg !3310
  %252 = icmp slt i64 %251, %246, !dbg !3311
  %253 = mul nsw i64 %246, %59
  %254 = select i1 %252, i64 9223372036854775807, i64 %253, !dbg !3312
  %255 = zext i1 %252 to i32, !dbg !3312
  br label %256, !dbg !3312

256:                                              ; preds = %250, %245
  %257 = phi i64 [ -9223372036854775808, %245 ], [ %254, %250 ], !dbg !3306
  %258 = phi i32 [ 1, %245 ], [ %255, %250 ], !dbg !3306
  %259 = or i32 %258, %248, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %259, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3304
  br label %192, !dbg !3386

260:                                              ; preds = %99
  %261 = udiv i64 9223372036854775807, %59, !dbg !3319
  %262 = icmp slt i64 %261, %100, !dbg !3320
  %263 = mul nsw i64 %100, %59
  %264 = select i1 %262, i64 9223372036854775807, i64 %263, !dbg !3321
  %265 = zext i1 %262 to i32, !dbg !3321
  br label %266, !dbg !3321

266:                                              ; preds = %260, %99
  %267 = phi i64 [ -9223372036854775808, %99 ], [ %264, %260 ], !dbg !3315
  %268 = phi i32 [ 1, %99 ], [ %265, %260 ], !dbg !3315
  %269 = or i32 %268, %101, !dbg !3397
  call void @llvm.dbg.value(metadata i32 %269, metadata !3303, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3315
  %270 = icmp slt i64 %267, %91, !dbg !3317
  br i1 %270, label %277, label %271, !dbg !3318

271:                                              ; preds = %266
  %272 = udiv i64 9223372036854775807, %59, !dbg !3319
  %273 = icmp slt i64 %272, %267, !dbg !3320
  %274 = mul nsw i64 %267, %59
  %275 = select i1 %273, i64 9223372036854775807, i64 %274, !dbg !3321
  %276 = zext i1 %273 to i32, !dbg !3321
  br label %277, !dbg !3321

277:                                              ; preds = %271, %266
  %278 = phi i64 [ -9223372036854775808, %266 ], [ %275, %271 ], !dbg !3315
  %279 = phi i32 [ 1, %266 ], [ %276, %271 ], !dbg !3315
  %280 = or i32 %279, %269, !dbg !3397
  call void @llvm.dbg.value(metadata i32 %280, metadata !3303, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3313
  br label %192, !dbg !3386

281:                                              ; preds = %123
  %282 = udiv i64 9223372036854775807, %59, !dbg !3337
  %283 = icmp slt i64 %282, %124, !dbg !3338
  %284 = mul nsw i64 %124, %59
  %285 = select i1 %283, i64 9223372036854775807, i64 %284, !dbg !3339
  %286 = zext i1 %283 to i32, !dbg !3339
  br label %287, !dbg !3339

287:                                              ; preds = %281, %123
  %288 = phi i64 [ -9223372036854775808, %123 ], [ %285, %281 ], !dbg !3333
  %289 = phi i32 [ 1, %123 ], [ %286, %281 ], !dbg !3333
  %290 = or i32 %289, %125, !dbg !3398
  call void @llvm.dbg.value(metadata i32 %290, metadata !3303, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3331
  br label %192, !dbg !3386

291:                                              ; preds = %137
  %292 = udiv i64 9223372036854775807, %59, !dbg !3346
  %293 = icmp slt i64 %292, %138, !dbg !3347
  %294 = mul nsw i64 %138, %59
  %295 = select i1 %293, i64 9223372036854775807, i64 %294, !dbg !3348
  %296 = zext i1 %293 to i32, !dbg !3348
  br label %297, !dbg !3348

297:                                              ; preds = %291, %137
  %298 = phi i64 [ -9223372036854775808, %137 ], [ %295, %291 ], !dbg !3342
  %299 = phi i32 [ 1, %137 ], [ %296, %291 ], !dbg !3342
  %300 = or i32 %299, %139, !dbg !3399
  call void @llvm.dbg.value(metadata i32 %300, metadata !3303, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 2, metadata !3302, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3342
  %301 = icmp slt i64 %298, %129, !dbg !3344
  br i1 %301, label %308, label %302, !dbg !3345

302:                                              ; preds = %297
  %303 = udiv i64 9223372036854775807, %59, !dbg !3346
  %304 = icmp slt i64 %303, %298, !dbg !3347
  %305 = mul nsw i64 %298, %59
  %306 = select i1 %304, i64 9223372036854775807, i64 %305, !dbg !3348
  %307 = zext i1 %304 to i32, !dbg !3348
  br label %308, !dbg !3348

308:                                              ; preds = %302, %297
  %309 = phi i64 [ -9223372036854775808, %297 ], [ %306, %302 ], !dbg !3342
  %310 = phi i32 [ 1, %297 ], [ %307, %302 ], !dbg !3342
  %311 = or i32 %310, %300, !dbg !3399
  call void @llvm.dbg.value(metadata i32 %311, metadata !3303, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 1, metadata !3302, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3342
  %312 = icmp slt i64 %309, %129, !dbg !3344
  br i1 %312, label %319, label %313, !dbg !3345

313:                                              ; preds = %308
  %314 = udiv i64 9223372036854775807, %59, !dbg !3346
  %315 = icmp slt i64 %314, %309, !dbg !3347
  %316 = mul nsw i64 %309, %59
  %317 = select i1 %315, i64 9223372036854775807, i64 %316, !dbg !3348
  %318 = zext i1 %315 to i32, !dbg !3348
  br label %319, !dbg !3348

319:                                              ; preds = %313, %308
  %320 = phi i64 [ -9223372036854775808, %308 ], [ %317, %313 ], !dbg !3342
  %321 = phi i32 [ 1, %308 ], [ %318, %313 ], !dbg !3342
  %322 = or i32 %321, %311, !dbg !3399
  call void @llvm.dbg.value(metadata i32 %322, metadata !3303, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3342
  %323 = icmp slt i64 %320, %129, !dbg !3344
  br i1 %323, label %330, label %324, !dbg !3345

324:                                              ; preds = %319
  %325 = udiv i64 9223372036854775807, %59, !dbg !3346
  %326 = icmp slt i64 %325, %320, !dbg !3347
  %327 = mul nsw i64 %320, %59
  %328 = select i1 %326, i64 9223372036854775807, i64 %327, !dbg !3348
  %329 = zext i1 %326 to i32, !dbg !3348
  br label %330, !dbg !3348

330:                                              ; preds = %324, %319
  %331 = phi i64 [ -9223372036854775808, %319 ], [ %328, %324 ], !dbg !3342
  %332 = phi i32 [ 1, %319 ], [ %329, %324 ], !dbg !3342
  %333 = or i32 %332, %322, !dbg !3399
  call void @llvm.dbg.value(metadata i32 %333, metadata !3303, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3340
  br label %192, !dbg !3386

334:                                              ; preds = %151
  %335 = udiv i64 9223372036854775807, %59, !dbg !3355
  %336 = icmp slt i64 %335, %152, !dbg !3356
  %337 = mul nsw i64 %152, %59
  %338 = select i1 %336, i64 9223372036854775807, i64 %337, !dbg !3357
  %339 = zext i1 %336 to i32, !dbg !3357
  br label %340, !dbg !3357

340:                                              ; preds = %334, %151
  %341 = phi i64 [ -9223372036854775808, %151 ], [ %338, %334 ], !dbg !3351
  %342 = phi i32 [ 1, %151 ], [ %339, %334 ], !dbg !3351
  %343 = or i32 %342, %153, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %343, metadata !3303, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 1, metadata !3302, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3351
  %344 = icmp slt i64 %341, %143, !dbg !3353
  br i1 %344, label %351, label %345, !dbg !3354

345:                                              ; preds = %340
  %346 = udiv i64 9223372036854775807, %59, !dbg !3355
  %347 = icmp slt i64 %346, %341, !dbg !3356
  %348 = mul nsw i64 %341, %59
  %349 = select i1 %347, i64 9223372036854775807, i64 %348, !dbg !3357
  %350 = zext i1 %347 to i32, !dbg !3357
  br label %351, !dbg !3357

351:                                              ; preds = %345, %340
  %352 = phi i64 [ -9223372036854775808, %340 ], [ %349, %345 ], !dbg !3351
  %353 = phi i32 [ 1, %340 ], [ %350, %345 ], !dbg !3351
  %354 = or i32 %353, %343, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %354, metadata !3303, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3351
  %355 = icmp slt i64 %352, %143, !dbg !3353
  br i1 %355, label %362, label %356, !dbg !3354

356:                                              ; preds = %351
  %357 = udiv i64 9223372036854775807, %59, !dbg !3355
  %358 = icmp slt i64 %357, %352, !dbg !3356
  %359 = mul nsw i64 %352, %59
  %360 = select i1 %358, i64 9223372036854775807, i64 %359, !dbg !3357
  %361 = zext i1 %358 to i32, !dbg !3357
  br label %362, !dbg !3357

362:                                              ; preds = %356, %351
  %363 = phi i64 [ -9223372036854775808, %351 ], [ %360, %356 ], !dbg !3351
  %364 = phi i32 [ 1, %351 ], [ %361, %356 ], !dbg !3351
  %365 = or i32 %364, %354, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %365, metadata !3303, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3349
  br label %192, !dbg !3386

366:                                              ; preds = %172
  %367 = udiv i64 9223372036854775807, %59, !dbg !3370
  %368 = icmp slt i64 %367, %173, !dbg !3371
  %369 = mul nsw i64 %173, %59
  %370 = select i1 %368, i64 9223372036854775807, i64 %369, !dbg !3372
  %371 = zext i1 %368 to i32, !dbg !3372
  br label %372, !dbg !3372

372:                                              ; preds = %366, %172
  %373 = phi i64 [ -9223372036854775808, %172 ], [ %370, %366 ], !dbg !3366
  %374 = phi i32 [ 1, %172 ], [ %371, %366 ], !dbg !3366
  %375 = or i32 %374, %174, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %375, metadata !3303, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 5, metadata !3302, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3366
  %376 = icmp slt i64 %373, %164, !dbg !3368
  br i1 %376, label %383, label %377, !dbg !3369

377:                                              ; preds = %372
  %378 = udiv i64 9223372036854775807, %59, !dbg !3370
  %379 = icmp slt i64 %378, %373, !dbg !3371
  %380 = mul nsw i64 %373, %59
  %381 = select i1 %379, i64 9223372036854775807, i64 %380, !dbg !3372
  %382 = zext i1 %379 to i32, !dbg !3372
  br label %383, !dbg !3372

383:                                              ; preds = %377, %372
  %384 = phi i64 [ -9223372036854775808, %372 ], [ %381, %377 ], !dbg !3366
  %385 = phi i32 [ 1, %372 ], [ %382, %377 ], !dbg !3366
  %386 = or i32 %385, %375, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %386, metadata !3303, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 4, metadata !3302, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3366
  %387 = icmp slt i64 %384, %164, !dbg !3368
  br i1 %387, label %394, label %388, !dbg !3369

388:                                              ; preds = %383
  %389 = udiv i64 9223372036854775807, %59, !dbg !3370
  %390 = icmp slt i64 %389, %384, !dbg !3371
  %391 = mul nsw i64 %384, %59
  %392 = select i1 %390, i64 9223372036854775807, i64 %391, !dbg !3372
  %393 = zext i1 %390 to i32, !dbg !3372
  br label %394, !dbg !3372

394:                                              ; preds = %388, %383
  %395 = phi i64 [ -9223372036854775808, %383 ], [ %392, %388 ], !dbg !3366
  %396 = phi i32 [ 1, %383 ], [ %393, %388 ], !dbg !3366
  %397 = or i32 %396, %386, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %397, metadata !3303, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 3, metadata !3302, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3366
  %398 = icmp slt i64 %395, %164, !dbg !3368
  br i1 %398, label %405, label %399, !dbg !3369

399:                                              ; preds = %394
  %400 = udiv i64 9223372036854775807, %59, !dbg !3370
  %401 = icmp slt i64 %400, %395, !dbg !3371
  %402 = mul nsw i64 %395, %59
  %403 = select i1 %401, i64 9223372036854775807, i64 %402, !dbg !3372
  %404 = zext i1 %401 to i32, !dbg !3372
  br label %405, !dbg !3372

405:                                              ; preds = %399, %394
  %406 = phi i64 [ -9223372036854775808, %394 ], [ %403, %399 ], !dbg !3366
  %407 = phi i32 [ 1, %394 ], [ %404, %399 ], !dbg !3366
  %408 = or i32 %407, %397, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %408, metadata !3303, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 2, metadata !3302, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3366
  %409 = icmp slt i64 %406, %164, !dbg !3368
  br i1 %409, label %416, label %410, !dbg !3369

410:                                              ; preds = %405
  %411 = udiv i64 9223372036854775807, %59, !dbg !3370
  %412 = icmp slt i64 %411, %406, !dbg !3371
  %413 = mul nsw i64 %406, %59
  %414 = select i1 %412, i64 9223372036854775807, i64 %413, !dbg !3372
  %415 = zext i1 %412 to i32, !dbg !3372
  br label %416, !dbg !3372

416:                                              ; preds = %410, %405
  %417 = phi i64 [ -9223372036854775808, %405 ], [ %414, %410 ], !dbg !3366
  %418 = phi i32 [ 1, %405 ], [ %415, %410 ], !dbg !3366
  %419 = or i32 %418, %408, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %419, metadata !3303, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 1, metadata !3302, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3366
  %420 = icmp slt i64 %417, %164, !dbg !3368
  br i1 %420, label %427, label %421, !dbg !3369

421:                                              ; preds = %416
  %422 = udiv i64 9223372036854775807, %59, !dbg !3370
  %423 = icmp slt i64 %422, %417, !dbg !3371
  %424 = mul nsw i64 %417, %59
  %425 = select i1 %423, i64 9223372036854775807, i64 %424, !dbg !3372
  %426 = zext i1 %423 to i32, !dbg !3372
  br label %427, !dbg !3372

427:                                              ; preds = %421, %416
  %428 = phi i64 [ -9223372036854775808, %416 ], [ %425, %421 ], !dbg !3366
  %429 = phi i32 [ 1, %416 ], [ %426, %421 ], !dbg !3366
  %430 = or i32 %429, %419, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %430, metadata !3303, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3366
  %431 = icmp slt i64 %428, %164, !dbg !3368
  br i1 %431, label %438, label %432, !dbg !3369

432:                                              ; preds = %427
  %433 = udiv i64 9223372036854775807, %59, !dbg !3370
  %434 = icmp slt i64 %433, %428, !dbg !3371
  %435 = mul nsw i64 %428, %59
  %436 = select i1 %434, i64 9223372036854775807, i64 %435, !dbg !3372
  %437 = zext i1 %434 to i32, !dbg !3372
  br label %438, !dbg !3372

438:                                              ; preds = %432, %427
  %439 = phi i64 [ -9223372036854775808, %427 ], [ %436, %432 ], !dbg !3366
  %440 = phi i32 [ 1, %427 ], [ %437, %432 ], !dbg !3366
  %441 = or i32 %440, %430, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %441, metadata !3303, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3364
  br label %192, !dbg !3386

442:                                              ; preds = %186
  %443 = udiv i64 9223372036854775807, %59, !dbg !3379
  %444 = icmp slt i64 %443, %187, !dbg !3380
  %445 = mul nsw i64 %187, %59
  %446 = select i1 %444, i64 9223372036854775807, i64 %445, !dbg !3381
  %447 = zext i1 %444 to i32, !dbg !3381
  br label %448, !dbg !3381

448:                                              ; preds = %442, %186
  %449 = phi i64 [ -9223372036854775808, %186 ], [ %446, %442 ], !dbg !3375
  %450 = phi i32 [ 1, %186 ], [ %447, %442 ], !dbg !3375
  %451 = or i32 %450, %188, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %451, metadata !3303, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 4, metadata !3302, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3375
  %452 = icmp slt i64 %449, %178, !dbg !3377
  br i1 %452, label %459, label %453, !dbg !3378

453:                                              ; preds = %448
  %454 = udiv i64 9223372036854775807, %59, !dbg !3379
  %455 = icmp slt i64 %454, %449, !dbg !3380
  %456 = mul nsw i64 %449, %59
  %457 = select i1 %455, i64 9223372036854775807, i64 %456, !dbg !3381
  %458 = zext i1 %455 to i32, !dbg !3381
  br label %459, !dbg !3381

459:                                              ; preds = %453, %448
  %460 = phi i64 [ -9223372036854775808, %448 ], [ %457, %453 ], !dbg !3375
  %461 = phi i32 [ 1, %448 ], [ %458, %453 ], !dbg !3375
  %462 = or i32 %461, %451, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %462, metadata !3303, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 3, metadata !3302, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3375
  %463 = icmp slt i64 %460, %178, !dbg !3377
  br i1 %463, label %470, label %464, !dbg !3378

464:                                              ; preds = %459
  %465 = udiv i64 9223372036854775807, %59, !dbg !3379
  %466 = icmp slt i64 %465, %460, !dbg !3380
  %467 = mul nsw i64 %460, %59
  %468 = select i1 %466, i64 9223372036854775807, i64 %467, !dbg !3381
  %469 = zext i1 %466 to i32, !dbg !3381
  br label %470, !dbg !3381

470:                                              ; preds = %464, %459
  %471 = phi i64 [ -9223372036854775808, %459 ], [ %468, %464 ], !dbg !3375
  %472 = phi i32 [ 1, %459 ], [ %469, %464 ], !dbg !3375
  %473 = or i32 %472, %462, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %473, metadata !3303, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 2, metadata !3302, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3375
  %474 = icmp slt i64 %471, %178, !dbg !3377
  br i1 %474, label %481, label %475, !dbg !3378

475:                                              ; preds = %470
  %476 = udiv i64 9223372036854775807, %59, !dbg !3379
  %477 = icmp slt i64 %476, %471, !dbg !3380
  %478 = mul nsw i64 %471, %59
  %479 = select i1 %477, i64 9223372036854775807, i64 %478, !dbg !3381
  %480 = zext i1 %477 to i32, !dbg !3381
  br label %481, !dbg !3381

481:                                              ; preds = %475, %470
  %482 = phi i64 [ -9223372036854775808, %470 ], [ %479, %475 ], !dbg !3375
  %483 = phi i32 [ 1, %470 ], [ %480, %475 ], !dbg !3375
  %484 = or i32 %483, %473, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %484, metadata !3303, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 1, metadata !3302, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3375
  %485 = icmp slt i64 %482, %178, !dbg !3377
  br i1 %485, label %492, label %486, !dbg !3378

486:                                              ; preds = %481
  %487 = udiv i64 9223372036854775807, %59, !dbg !3379
  %488 = icmp slt i64 %487, %482, !dbg !3380
  %489 = mul nsw i64 %482, %59
  %490 = select i1 %488, i64 9223372036854775807, i64 %489, !dbg !3381
  %491 = zext i1 %488 to i32, !dbg !3381
  br label %492, !dbg !3381

492:                                              ; preds = %486, %481
  %493 = phi i64 [ -9223372036854775808, %481 ], [ %490, %486 ], !dbg !3375
  %494 = phi i32 [ 1, %481 ], [ %491, %486 ], !dbg !3375
  %495 = or i32 %494, %484, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %495, metadata !3303, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64* undef, metadata !3275, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 undef, metadata !3280, metadata !DIExpression()), !dbg !3375
  %496 = icmp slt i64 %493, %178, !dbg !3377
  br i1 %496, label %503, label %497, !dbg !3378

497:                                              ; preds = %492
  %498 = udiv i64 9223372036854775807, %59, !dbg !3379
  %499 = icmp slt i64 %498, %493, !dbg !3380
  %500 = mul nsw i64 %493, %59
  %501 = select i1 %499, i64 9223372036854775807, i64 %500, !dbg !3381
  %502 = zext i1 %499 to i32, !dbg !3381
  br label %503, !dbg !3381

503:                                              ; preds = %497, %492
  %504 = phi i64 [ -9223372036854775808, %492 ], [ %501, %497 ], !dbg !3375
  %505 = phi i32 [ 1, %492 ], [ %502, %497 ], !dbg !3375
  %506 = or i32 %505, %495, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %506, metadata !3303, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 0, metadata !3302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3373
  br label %192, !dbg !3386
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3403 i64 @strtoimax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3407 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3409, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %1, metadata !3410, metadata !DIExpression()), !dbg !3415
  %3 = icmp eq i64 %0, 0, !dbg !3416
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3417
  br i1 %5, label %11, label %6, !dbg !3417

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3412, metadata !DIExpression()), !dbg !3418
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3419
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3419
  br i1 %8, label %9, label %11, !dbg !3421

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !3422
  store i32 12, i32* %10, align 4, !dbg !3424, !tbaa !888
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3409, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %12, metadata !3410, metadata !DIExpression()), !dbg !3415
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %14, metadata !3411, metadata !DIExpression()), !dbg !3415
  br label %15, !dbg !3426

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3415
  ret i8* %16, !dbg !3427
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3428 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3444, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8* %1, metadata !3445, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %2, metadata !3446, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3447, metadata !DIExpression()), !dbg !3453
  %6 = bitcast i32* %5 to i8*, !dbg !3454
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3454
  %7 = icmp eq i32* %0, null, !dbg !3455
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3457
  call void @llvm.dbg.value(metadata i32* %8, metadata !3444, metadata !DIExpression()), !dbg !3453
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %9, metadata !3448, metadata !DIExpression()), !dbg !3453
  %10 = icmp ugt i64 %9, -3, !dbg !3459
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3460
  br i1 %12, label %13, label %18, !dbg !3460

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !3461
  br i1 %14, label %18, label %15, !dbg !3462

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3463, !tbaa !843
  call void @llvm.dbg.value(metadata i8 %16, metadata !3450, metadata !DIExpression()), !dbg !3464
  %17 = zext i8 %16 to i32, !dbg !3465
  store i32 %17, i32* %8, align 4, !dbg !3466, !tbaa !888
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3453
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3467
  ret i64 %19, !dbg !3467
}

; Function Attrs: nounwind
declare !dbg !3468 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3472 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3510, metadata !DIExpression()), !dbg !3515
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !3516
  call void @llvm.dbg.value(metadata i1 undef, metadata !3511, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3515
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3517, metadata !DIExpression()), !dbg !3521
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3523
  %4 = load i32, i32* %3, align 8, !dbg !3523, !tbaa !3524
  %5 = and i32 %4, 32, !dbg !3526
  %6 = icmp eq i32 %5, 0, !dbg !3526
  call void @llvm.dbg.value(metadata i1 %6, metadata !3513, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3515
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !3527
  %8 = icmp eq i32 %7, 0, !dbg !3528
  call void @llvm.dbg.value(metadata i1 %8, metadata !3514, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3515
  br i1 %6, label %9, label %19, !dbg !3529

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3531
  call void @llvm.dbg.value(metadata i1 %10, metadata !3511, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3515
  %11 = or i1 %10, %8, !dbg !3532
  %12 = xor i1 %8, true, !dbg !3532
  %13 = sext i1 %12 to i32, !dbg !3532
  br i1 %11, label %22, label %14, !dbg !3532

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !3533
  %16 = load i32, i32* %15, align 4, !dbg !3533, !tbaa !888
  %17 = icmp ne i32 %16, 9, !dbg !3534
  %18 = sext i1 %17 to i32, !dbg !3535
  br label %22, !dbg !3535

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3536

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !3538
  store i32 0, i32* %21, align 4, !dbg !3540, !tbaa !888
  br label %22, !dbg !3538

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3515
  ret i32 %23, !dbg !3541
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3542 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3546, metadata !DIExpression()), !dbg !3551
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3552
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3552
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3547, metadata !DIExpression()), !dbg !3553
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !3554
  %5 = icmp eq i32 %4, 0, !dbg !3554
  br i1 %5, label %6, label %13, !dbg !3556

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3557
  %8 = load i16, i16* %7, align 16, !dbg !3557
  %9 = icmp eq i16 %8, 67, !dbg !3557
  br i1 %9, label %13, label %10, !dbg !3558

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.149, i64 0, i64 0), i64 6), !dbg !3559
  %12 = icmp ne i32 %11, 0, !dbg !3560
  br label %13, !dbg !3558

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3551
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3561
  ret i1 %14, !dbg !3561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3562 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %1, metadata !3566, metadata !DIExpression()), !dbg !3568
  %2 = icmp eq i8* %1, null, !dbg !3569
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), i8* %1, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %3, metadata !3566, metadata !DIExpression()), !dbg !3568
  %4 = load i8, i8* %3, align 1, !dbg !3572, !tbaa !843
  %5 = icmp eq i8 %4, 0, !dbg !3576
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0), i8* %3, !dbg !3577
  call void @llvm.dbg.value(metadata i8* %6, metadata !3566, metadata !DIExpression()), !dbg !3568
  ret i8* %6, !dbg !3578
}

; Function Attrs: nounwind
declare !dbg !3579 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3586, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8* %1, metadata !3587, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %2, metadata !3588, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %0, metadata !3590, metadata !DIExpression()) #25, !dbg !3599
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()) #25, !dbg !3599
  call void @llvm.dbg.value(metadata i64 %2, metadata !3594, metadata !DIExpression()) #25, !dbg !3599
  call void @llvm.dbg.value(metadata i32 %0, metadata !3601, metadata !DIExpression()) #25, !dbg !3607
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %4, metadata !3606, metadata !DIExpression()) #25, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %4, metadata !3595, metadata !DIExpression()) #25, !dbg !3599
  %5 = icmp eq i8* %4, null, !dbg !3610
  br i1 %5, label %6, label %9, !dbg !3611

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3612
  br i1 %7, label %19, label %8, !dbg !3615

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3616, !tbaa !843
  br label %19, !dbg !3617

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %10, metadata !3596, metadata !DIExpression()) #25, !dbg !3619
  %11 = icmp ult i64 %10, %2, !dbg !3620
  br i1 %11, label %12, label %14, !dbg !3622

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3623
  call void @llvm.dbg.value(metadata i8* %1, metadata !3625, metadata !DIExpression()) #25, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %4, metadata !3628, metadata !DIExpression()) #25, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %13, metadata !3629, metadata !DIExpression()) #25, !dbg !3630
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !3632
  br label %19, !dbg !3633

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3634
  br i1 %15, label %19, label %16, !dbg !3637

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3638
  call void @llvm.dbg.value(metadata i8* %1, metadata !3625, metadata !DIExpression()) #25, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %4, metadata !3628, metadata !DIExpression()) #25, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %17, metadata !3629, metadata !DIExpression()) #25, !dbg !3640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !3642
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3643
  store i8 0, i8* %18, align 1, !dbg !3644, !tbaa !843
  br label %19, !dbg !3645

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3646
  ret i32 %20, !dbg !3647
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3650, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %0, metadata !3601, metadata !DIExpression()) #25, !dbg !3652
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3654
  call void @llvm.dbg.value(metadata i8* %2, metadata !3606, metadata !DIExpression()) #25, !dbg !3652
  ret i8* %2, !dbg !3655
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3656 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3694, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i32 0, metadata !3697, metadata !DIExpression()), !dbg !3698
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %2, metadata !3696, metadata !DIExpression()), !dbg !3698
  %3 = icmp slt i32 %2, 0, !dbg !3700
  br i1 %3, label %4, label %6, !dbg !3702

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3703
  br label %24, !dbg !3704

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3705
  %8 = icmp eq i32 %7, 0, !dbg !3705
  br i1 %8, label %13, label %9, !dbg !3707

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3708
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !3709
  %12 = icmp eq i64 %11, -1, !dbg !3710
  br i1 %12, label %16, label %13, !dbg !3711

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !3712
  %15 = icmp eq i32 %14, 0, !dbg !3712
  br i1 %15, label %16, label %18, !dbg !3713

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3695, metadata !DIExpression()), !dbg !3698
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3714
  call void @llvm.dbg.value(metadata i32 %21, metadata !3697, metadata !DIExpression()), !dbg !3698
  br label %24, !dbg !3715

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3716
  %20 = load i32, i32* %19, align 4, !dbg !3716, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %20, metadata !3695, metadata !DIExpression()), !dbg !3698
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3714
  call void @llvm.dbg.value(metadata i32 %21, metadata !3697, metadata !DIExpression()), !dbg !3698
  %22 = icmp eq i32 %20, 0, !dbg !3717
  br i1 %22, label %24, label %23, !dbg !3715

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3719, !tbaa !888
  call void @llvm.dbg.value(metadata i32 -1, metadata !3697, metadata !DIExpression()), !dbg !3698
  br label %24, !dbg !3721

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3698
  ret i32 %25, !dbg !3722
}

; Function Attrs: nofree nounwind
declare !dbg !3723 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3726 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3727 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3765, metadata !DIExpression()), !dbg !3766
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3767
  br i1 %2, label %6, label %3, !dbg !3769

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3770
  %5 = icmp eq i32 %4, 0, !dbg !3770
  br i1 %5, label %6, label %8, !dbg !3771

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3772
  br label %17, !dbg !3773

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3774, metadata !DIExpression()) #25, !dbg !3779
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3781
  %10 = load i32, i32* %9, align 8, !dbg !3781, !tbaa !3524
  %11 = and i32 %10, 256, !dbg !3783
  %12 = icmp eq i32 %11, 0, !dbg !3783
  br i1 %12, label %15, label %13, !dbg !3784

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !3785
  br label %15, !dbg !3785

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3786
  br label %17, !dbg !3787

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3766
  ret i32 %18, !dbg !3788
}

; Function Attrs: nofree nounwind
declare !dbg !3789 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3792 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3830, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 %1, metadata !3831, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i32 %2, metadata !3832, metadata !DIExpression()), !dbg !3836
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3837
  %5 = load i8*, i8** %4, align 8, !dbg !3837, !tbaa !3838
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3839
  %7 = load i8*, i8** %6, align 8, !dbg !3839, !tbaa !3840
  %8 = icmp eq i8* %5, %7, !dbg !3841
  br i1 %8, label %9, label %28, !dbg !3842

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3843
  %11 = load i8*, i8** %10, align 8, !dbg !3843, !tbaa !3844
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3845
  %13 = load i8*, i8** %12, align 8, !dbg !3845, !tbaa !3846
  %14 = icmp eq i8* %11, %13, !dbg !3847
  br i1 %14, label %15, label %28, !dbg !3848

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3849
  %17 = load i8*, i8** %16, align 8, !dbg !3849, !tbaa !3850
  %18 = icmp eq i8* %17, null, !dbg !3851
  br i1 %18, label %19, label %28, !dbg !3852

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3853
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !3854
  call void @llvm.dbg.value(metadata i64 %21, metadata !3833, metadata !DIExpression()), !dbg !3855
  %22 = icmp eq i64 %21, -1, !dbg !3856
  br i1 %22, label %30, label %23, !dbg !3858

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3859
  %25 = load i32, i32* %24, align 8, !dbg !3860, !tbaa !3524
  %26 = and i32 %25, -17, !dbg !3860
  store i32 %26, i32* %24, align 8, !dbg !3860, !tbaa !3524
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3861
  store i64 %21, i64* %27, align 8, !dbg !3862, !tbaa !3863
  br label %30, !dbg !3864

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3865
  br label %30, !dbg !3866

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3836
  ret i32 %31, !dbg !3867
}

; Function Attrs: nofree nounwind
declare !dbg !3868 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #21 = { nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind readnone willreturn }
attributes #29 = { noreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !91, !97, !104, !110, !116, !174, !168, !181, !198, !200, !211, !213, !215, !218, !220, !222, !611, !613, !615, !617}
!llvm.ident = !{!619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619, !619}
!llvm.module.flags = !{!620, !621, !622, !623, !624}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !75, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !65, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/truncate.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !14, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 60, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "rm_abs", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "rm_rel", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "rm_min", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "rm_max", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "rm_rdn", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "rm_rup", value: 5, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !6, size: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!17 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!18 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !30, line: 32, baseType: !6, size: 32, elements: !31)
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
!43 = !{!44, !45, !46, !51, !53, !54, !57, !6, !58, !59, !50, !56, !60, !61, !62}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !47, line: 63, baseType: !48)
!47 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !49, line: 152, baseType: !50)
!49 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!60 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!61 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !63, line: 101, baseType: !64)
!63 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !49, line: 72, baseType: !50)
!65 = !{!66, !69, !71, !0}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "no_create", scope: !2, file: !3, line: 41, type: !68, isLocal: true, isDefinition: true)
!68 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "block_mode", scope: !2, file: !3, line: 44, type: !68, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "ref_file", scope: !2, file: !3, line: 47, type: !73, isLocal: true, isDefinition: true)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1792, elements: !85)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !78, line: 50, size: 256, elements: !79)
!78 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!79 = !{!80, !81, !82, !84}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !77, file: !78, line: 52, baseType: !73, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !77, file: !78, line: 55, baseType: !44, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !77, file: !78, line: 56, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !78, line: 57, baseType: !44, size: 32, offset: 192)
!85 = !{!86}
!86 = !DISubrange(count: 7)
!87 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!88 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "Version", scope: !91, file: !92, line: 2, type: !73, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !94, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!93 = !{}
!94 = !{!89}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "file_name", scope: !97, file: !98, line: 46, type: !73, isLocal: true, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !99, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!99 = !{!95, !100}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !97, file: !98, line: 56, type: !68, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "exit_failure", scope: !104, file: !105, line: 24, type: !107, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !106, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!106 = !{!102}
!107 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "program_name", scope: !110, file: !111, line: 33, type: !73, isLocal: false, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !112, globals: !113, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!112 = !{!53, !51}
!113 = !{!108}
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !116, file: !117, line: 85, type: !162, isLocal: false, isDefinition: true)
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !118, retainedTypes: !124, globals: !125, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !{!29, !119, !14}
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !30, line: 242, baseType: !6, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!123 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!124 = !{!44, !45, !54, !51}
!125 = !{!114, !126, !132, !144, !146, !151, !158, !160}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !116, file: !117, line: 101, type: !128, isLocal: false, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 320, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!130 = !{!131}
!131 = !DISubrange(count: 10)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !116, file: !117, line: 1052, type: !134, isLocal: false, isDefinition: true)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !117, line: 65, size: 448, elements: !135)
!135 = !{!136, !137, !138, !142, !143}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !134, file: !117, line: 68, baseType: !29, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !117, line: 71, baseType: !44, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !134, file: !117, line: 75, baseType: !139, size: 256, offset: 64)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !134, file: !117, line: 78, baseType: !73, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !134, file: !117, line: 81, baseType: !73, size: 64, offset: 384)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !116, file: !117, line: 116, type: !134, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "slot0", scope: !116, file: !117, line: 842, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 256)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "slotvec", scope: !116, file: !117, line: 845, type: !153, isLocal: true, isDefinition: true)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !117, line: 834, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !154, file: !117, line: 836, baseType: !54, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !154, file: !117, line: 837, baseType: !51, size: 64, offset: 64)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "nslots", scope: !116, file: !117, line: 843, type: !44, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "slotvec0", scope: !116, file: !117, line: 844, type: !154, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 704, elements: !164)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!164 = !{!165}
!165 = !DISubrange(count: 11)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !168, file: !169, line: 26, type: !171, isLocal: false, isDefinition: true)
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, globals: !170, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !{!166}
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 376, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 47)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !176, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !{!177}
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 40, baseType: !6, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!180 = !{!53}
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !197, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !{!184}
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !186, file: !185, line: 186, baseType: !6, size: 32, elements: !195)
!185 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = distinct !DISubprogram(name: "x2nrealloc", scope: !185, file: !185, line: 174, type: !187, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !190)
!187 = !DISubroutineType(types: !188)
!188 = !{!53, !53, !189, !54}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!190 = !{!191, !192, !193, !194}
!191 = !DILocalVariable(name: "p", arg: 1, scope: !186, file: !185, line: 174, type: !53)
!192 = !DILocalVariable(name: "pn", arg: 2, scope: !186, file: !185, line: 174, type: !189)
!193 = !DILocalVariable(name: "s", arg: 3, scope: !186, file: !185, line: 174, type: !54)
!194 = !DILocalVariable(name: "n", scope: !186, file: !185, line: 176, type: !54)
!195 = !{!196}
!196 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!197 = !{!54, !51, !53}
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/xdectoimax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !{!203}
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !204, line: 25, baseType: !6, size: 32, elements: !205)
!204 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!207 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!208 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!209 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!210 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !217, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!217 = !{!54}
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !224, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!223 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!224 = !{!225}
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !226, line: 41, baseType: !6, size: 32, elements: !227)
!226 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!228 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!229 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!230 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!231 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!232 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!233 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!234 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!235 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!236 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!237 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!238 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!239 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!240 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!241 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!246 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!248 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!252 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!253 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!258 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!260 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!264 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!265 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!266 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!267 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!268 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!269 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!270 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!271 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!272 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!273 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!274 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!275 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!276 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!277 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!336 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!343 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!345 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!349 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!350 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!423 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!496 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!497 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!498 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!499 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!500 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!501 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!502 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!503 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!504 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!505 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!506 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!507 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!508 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!509 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!510 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!512 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!513 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!514 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!515 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!516 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!517 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!543 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!544 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!545 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!546 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!547 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!552 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!553 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!554 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!555 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!612 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, splitDebugInlining: false, nameTableKind: None)
!614 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!616 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !93, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!618 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!619 = !{!"clang version 12.0.1"}
!620 = !{i32 7, !"Dwarf Version", i32 4}
!621 = !{i32 2, !"Debug Info Version", i32 3}
!622 = !{i32 1, !"wchar_size", i32 4}
!623 = !{i32 7, !"PIC Level", i32 2}
!624 = !{i32 7, !"PIE Level", i32 2}
!625 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 64, type: !626, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !44}
!628 = !{!629}
!629 = !DILocalVariable(name: "status", arg: 1, scope: !625, file: !3, line: 64, type: !44)
!630 = !DILocation(line: 0, scope: !625)
!631 = !DILocation(line: 66, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !625, file: !3, line: 66, column: 7)
!633 = !DILocation(line: 66, column: 7, scope: !625)
!634 = !DILocation(line: 67, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !3, line: 67, column: 5)
!636 = !{!637, !637, i64 0}
!637 = !{!"any pointer", !638, i64 0}
!638 = !{!"omnipotent char", !639, i64 0}
!639 = !{!"Simple C/C++ TBAA"}
!640 = !DILocation(line: 70, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !632, file: !3, line: 69, column: 5)
!642 = !DILocation(line: 71, column: 7, scope: !641)
!643 = !DILocation(line: 590, column: 3, scope: !644, inlinedAt: !648)
!644 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !645, file: !645, line: 588, type: !646, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!645 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!646 = !DISubroutineType(types: !647)
!647 = !{null}
!648 = distinct !DILocation(line: 81, column: 7, scope: !641)
!649 = !DILocation(line: 83, column: 7, scope: !641)
!650 = !DILocation(line: 86, column: 7, scope: !641)
!651 = !DILocation(line: 89, column: 7, scope: !641)
!652 = !DILocation(line: 92, column: 7, scope: !641)
!653 = !DILocation(line: 93, column: 7, scope: !641)
!654 = !DILocation(line: 598, column: 3, scope: !655, inlinedAt: !656)
!655 = distinct !DISubprogram(name: "emit_size_note", scope: !645, file: !645, line: 596, type: !646, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!656 = distinct !DILocation(line: 94, column: 7, scope: !641)
!657 = !DILocation(line: 95, column: 7, scope: !641)
!658 = !DILocalVariable(name: "program", arg: 1, scope: !659, file: !645, line: 634, type: !73)
!659 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !645, file: !645, line: 634, type: !660, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !73}
!662 = !{!658, !663, !670, !671, !673}
!663 = !DILocalVariable(name: "infomap", scope: !659, file: !645, line: 636, type: !664)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 896, elements: !85)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !659, file: !645, line: 636, size: 128, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !666, file: !645, line: 636, baseType: !73, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !666, file: !645, line: 636, baseType: !73, size: 64, offset: 64)
!670 = !DILocalVariable(name: "node", scope: !659, file: !645, line: 646, type: !73)
!671 = !DILocalVariable(name: "map_prog", scope: !659, file: !645, line: 647, type: !672)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!673 = !DILocalVariable(name: "lc_messages", scope: !659, file: !645, line: 659, type: !73)
!674 = !DILocation(line: 0, scope: !659, inlinedAt: !675)
!675 = distinct !DILocation(line: 99, column: 7, scope: !641)
!676 = !DILocation(line: 636, column: 3, scope: !659, inlinedAt: !675)
!677 = !DILocation(line: 636, column: 67, scope: !659, inlinedAt: !675)
!678 = !DILocation(line: 647, column: 36, scope: !659, inlinedAt: !675)
!679 = !DILocation(line: 649, column: 3, scope: !659, inlinedAt: !675)
!680 = !DILocation(line: 649, column: 33, scope: !659, inlinedAt: !675)
!681 = !DILocation(line: 650, column: 13, scope: !659, inlinedAt: !675)
!682 = !DILocation(line: 649, column: 20, scope: !659, inlinedAt: !675)
!683 = !{!684, !637, i64 0}
!684 = !{!"infomap", !637, i64 0, !637, i64 8}
!685 = !DILocation(line: 649, column: 10, scope: !659, inlinedAt: !675)
!686 = !DILocation(line: 649, column: 28, scope: !659, inlinedAt: !675)
!687 = distinct !{!687, !679, !681, !688}
!688 = !{!"llvm.loop.mustprogress"}
!689 = !DILocation(line: 652, column: 17, scope: !690, inlinedAt: !675)
!690 = distinct !DILexicalBlock(scope: !659, file: !645, line: 652, column: 7)
!691 = !{!684, !637, i64 8}
!692 = !DILocation(line: 652, column: 7, scope: !690, inlinedAt: !675)
!693 = !DILocation(line: 652, column: 7, scope: !659, inlinedAt: !675)
!694 = !DILocation(line: 655, column: 3, scope: !659, inlinedAt: !675)
!695 = !DILocation(line: 659, column: 29, scope: !659, inlinedAt: !675)
!696 = !DILocation(line: 660, column: 7, scope: !697, inlinedAt: !675)
!697 = distinct !DILexicalBlock(scope: !659, file: !645, line: 660, column: 7)
!698 = !DILocation(line: 660, column: 19, scope: !697, inlinedAt: !675)
!699 = !DILocation(line: 660, column: 22, scope: !697, inlinedAt: !675)
!700 = !DILocation(line: 660, column: 7, scope: !659, inlinedAt: !675)
!701 = !DILocation(line: 666, column: 7, scope: !702, inlinedAt: !675)
!702 = distinct !DILexicalBlock(scope: !697, file: !645, line: 661, column: 5)
!703 = !DILocation(line: 668, column: 5, scope: !702, inlinedAt: !675)
!704 = !DILocation(line: 669, column: 3, scope: !659, inlinedAt: !675)
!705 = !DILocation(line: 671, column: 3, scope: !659, inlinedAt: !675)
!706 = !DILocation(line: 673, column: 1, scope: !659, inlinedAt: !675)
!707 = !DILocation(line: 101, column: 3, scope: !625)
!708 = !DISubprogram(name: "dcgettext", scope: !709, file: !709, line: 51, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!709 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!710 = !DISubroutineType(types: !711)
!711 = !{!51, !73, !73, !44}
!712 = !DISubprogram(name: "fputs_unlocked", scope: !47, file: !47, line: 667, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!713 = !DISubroutineType(types: !714)
!714 = !{!44, !73, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !718)
!717 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !734, !735, !736, !737, !738, !739, !740, !744, !747, !749, !752, !755, !756, !757, !758, !759}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !716, file: !717, line: 51, baseType: !44, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !716, file: !717, line: 54, baseType: !51, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !716, file: !717, line: 55, baseType: !51, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !716, file: !717, line: 56, baseType: !51, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !716, file: !717, line: 57, baseType: !51, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !716, file: !717, line: 58, baseType: !51, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !716, file: !717, line: 59, baseType: !51, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !716, file: !717, line: 60, baseType: !51, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !716, file: !717, line: 61, baseType: !51, size: 64, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !716, file: !717, line: 64, baseType: !51, size: 64, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !716, file: !717, line: 65, baseType: !51, size: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !716, file: !717, line: 66, baseType: !51, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !716, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !717, line: 36, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !716, file: !717, line: 70, baseType: !715, size: 64, offset: 832)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !716, file: !717, line: 72, baseType: !44, size: 32, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !716, file: !717, line: 73, baseType: !44, size: 32, offset: 928)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !716, file: !717, line: 74, baseType: !48, size: 64, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !716, file: !717, line: 77, baseType: !45, size: 16, offset: 1024)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !716, file: !717, line: 78, baseType: !57, size: 8, offset: 1040)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !716, file: !717, line: 79, baseType: !741, size: 8, offset: 1048)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 1)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !716, file: !717, line: 81, baseType: !745, size: 64, offset: 1088)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !717, line: 43, baseType: null)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !716, file: !717, line: 89, baseType: !748, size: 64, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !49, line: 153, baseType: !50)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !716, file: !717, line: 91, baseType: !750, size: 64, offset: 1216)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !717, line: 37, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !716, file: !717, line: 92, baseType: !753, size: 64, offset: 1280)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !717, line: 38, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !716, file: !717, line: 93, baseType: !715, size: 64, offset: 1344)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !716, file: !717, line: 94, baseType: !53, size: 64, offset: 1408)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !716, file: !717, line: 95, baseType: !54, size: 64, offset: 1472)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !716, file: !717, line: 96, baseType: !44, size: 32, offset: 1536)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !716, file: !717, line: 98, baseType: !760, size: 160, offset: 1568)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 20)
!763 = !DISubprogram(name: "setlocale", scope: !764, file: !764, line: 122, type: !765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!764 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!765 = !DISubroutineType(types: !766)
!766 = !{!51, !44, !73}
!767 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 202, type: !768, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !771)
!768 = !DISubroutineType(types: !769)
!769 = !{!44, !44, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !780, !781, !782, !783, !784, !823, !824, !827, !830}
!772 = !DILocalVariable(name: "argc", arg: 1, scope: !767, file: !3, line: 202, type: !44)
!773 = !DILocalVariable(name: "argv", arg: 2, scope: !767, file: !3, line: 202, type: !770)
!774 = !DILocalVariable(name: "got_size", scope: !767, file: !3, line: 204, type: !68)
!775 = !DILocalVariable(name: "errors", scope: !767, file: !3, line: 205, type: !68)
!776 = !DILocalVariable(name: "size", scope: !767, file: !3, line: 206, type: !46)
!777 = !DILocalVariable(name: "rsize", scope: !767, file: !3, line: 207, type: !46)
!778 = !DILocalVariable(name: "rel_mode", scope: !767, file: !3, line: 208, type: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !3, line: 61, baseType: !5)
!780 = !DILocalVariable(name: "c", scope: !767, file: !3, line: 209, type: !44)
!781 = !DILocalVariable(name: "fd", scope: !767, file: !3, line: 209, type: !44)
!782 = !DILocalVariable(name: "oflags", scope: !767, file: !3, line: 209, type: !44)
!783 = !DILocalVariable(name: "fname", scope: !767, file: !3, line: 210, type: !73)
!784 = !DILocalVariable(name: "sb", scope: !785, file: !3, line: 324, type: !787)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 323, column: 5)
!786 = distinct !DILexicalBlock(scope: !767, file: !3, line: 322, column: 7)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !788, line: 26, size: 1152, elements: !789)
!788 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!789 = !{!790, !792, !794, !796, !798, !800, !802, !803, !804, !805, !807, !809, !817, !818, !819}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !787, file: !788, line: 28, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !49, line: 145, baseType: !56)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !787, file: !788, line: 33, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !49, line: 148, baseType: !56)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !787, file: !788, line: 41, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !49, line: 151, baseType: !56)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !787, file: !788, line: 42, baseType: !797, size: 32, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !49, line: 150, baseType: !6)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !787, file: !788, line: 44, baseType: !799, size: 32, offset: 224)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !49, line: 146, baseType: !6)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !787, file: !788, line: 45, baseType: !801, size: 32, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !49, line: 147, baseType: !6)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !787, file: !788, line: 47, baseType: !44, size: 32, offset: 288)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !787, file: !788, line: 49, baseType: !791, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !787, file: !788, line: 54, baseType: !48, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !787, file: !788, line: 58, baseType: !806, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !49, line: 175, baseType: !50)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !787, file: !788, line: 60, baseType: !808, size: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !49, line: 180, baseType: !50)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !787, file: !788, line: 71, baseType: !810, size: 128, offset: 576)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !811, line: 10, size: 128, elements: !812)
!811 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!812 = !{!813, !815}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !810, file: !811, line: 12, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !49, line: 160, baseType: !50)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !810, file: !811, line: 16, baseType: !816, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !49, line: 197, baseType: !50)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !787, file: !788, line: 72, baseType: !810, size: 128, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !787, file: !788, line: 73, baseType: !810, size: 128, offset: 832)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !787, file: !788, line: 86, baseType: !820, size: 192, offset: 960)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 192, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 3)
!823 = !DILocalVariable(name: "file_size", scope: !785, file: !3, line: 325, type: !46)
!824 = !DILocalVariable(name: "ref_fd", scope: !825, file: !3, line: 332, type: !44)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 331, column: 9)
!826 = distinct !DILexicalBlock(scope: !785, file: !3, line: 328, column: 11)
!827 = !DILocalVariable(name: "file_end", scope: !828, file: !3, line: 335, type: !46)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 334, column: 13)
!829 = distinct !DILexicalBlock(scope: !825, file: !3, line: 333, column: 15)
!830 = !DILocalVariable(name: "saved_errno", scope: !828, file: !3, line: 336, type: !44)
!831 = !DILocation(line: 0, scope: !767)
!832 = !DILocation(line: 213, column: 21, scope: !767)
!833 = !DILocation(line: 213, column: 3, scope: !767)
!834 = !DILocation(line: 214, column: 3, scope: !767)
!835 = !DILocation(line: 215, column: 3, scope: !767)
!836 = !DILocation(line: 216, column: 3, scope: !767)
!837 = !DILocation(line: 218, column: 3, scope: !767)
!838 = !DILocation(line: 220, column: 3, scope: !767)
!839 = !DILocation(line: 220, column: 15, scope: !767)
!840 = !DILocation(line: 238, column: 18, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 223, column: 9)
!842 = distinct !DILexicalBlock(scope: !767, file: !3, line: 221, column: 5)
!843 = !{!638, !638, i64 0}
!844 = !{!845, !845, i64 0}
!845 = !{!"short", !638, i64 0}
!846 = !DILocation(line: 238, column: 11, scope: !841)
!847 = !DILocation(line: 225, column: 21, scope: !841)
!848 = !DILocation(line: 226, column: 11, scope: !841)
!849 = !DILocation(line: 229, column: 22, scope: !841)
!850 = !DILocation(line: 230, column: 11, scope: !841)
!851 = !DILocation(line: 233, column: 22, scope: !841)
!852 = !DILocation(line: 233, column: 20, scope: !841)
!853 = !DILocation(line: 234, column: 11, scope: !841)
!854 = distinct !{!854, !838, !855, !688}
!855 = !DILocation(line: 289, column: 5, scope: !767)
!856 = !DILocation(line: 239, column: 19, scope: !841)
!857 = distinct !{!857, !846, !856, !688}
!858 = !DILocation(line: 240, column: 19, scope: !841)
!859 = !DILocation(line: 240, column: 11, scope: !841)
!860 = !DILocation(line: 249, column: 15, scope: !861)
!861 = distinct !DILexicalBlock(scope: !841, file: !3, line: 241, column: 13)
!862 = !DILocation(line: 253, column: 15, scope: !861)
!863 = !DILocation(line: 257, column: 15, scope: !861)
!864 = !DILocation(line: 0, scope: !861)
!865 = !DILocation(line: 260, column: 18, scope: !841)
!866 = !DILocation(line: 260, column: 11, scope: !841)
!867 = !DILocation(line: 261, column: 19, scope: !841)
!868 = distinct !{!868, !866, !867, !688}
!869 = !DILocation(line: 262, column: 30, scope: !870)
!870 = distinct !DILexicalBlock(scope: !841, file: !3, line: 262, column: 15)
!871 = !DILocation(line: 264, column: 19, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 264, column: 19)
!873 = distinct !DILexicalBlock(scope: !870, file: !3, line: 263, column: 13)
!874 = !DILocation(line: 264, column: 19, scope: !873)
!875 = !DILocation(line: 266, column: 32, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 265, column: 17)
!877 = !DILocation(line: 266, column: 19, scope: !876)
!878 = !DILocation(line: 268, column: 19, scope: !876)
!879 = !DILocation(line: 275, column: 30, scope: !841)
!880 = !DILocation(line: 274, column: 18, scope: !841)
!881 = !DILocation(line: 277, column: 35, scope: !882)
!882 = distinct !DILexicalBlock(scope: !841, file: !3, line: 277, column: 15)
!883 = !DILocation(line: 278, column: 13, scope: !882)
!884 = !DILocation(line: 282, column: 9, scope: !841)
!885 = !DILocation(line: 284, column: 9, scope: !841)
!886 = !DILocation(line: 287, column: 11, scope: !841)
!887 = !DILocation(line: 291, column: 11, scope: !767)
!888 = !{!889, !889, i64 0}
!889 = !{!"int", !638, i64 0}
!890 = !DILocation(line: 291, column: 8, scope: !767)
!891 = !DILocation(line: 295, column: 8, scope: !892)
!892 = distinct !DILexicalBlock(scope: !767, file: !3, line: 295, column: 7)
!893 = !DILocation(line: 295, column: 17, scope: !892)
!894 = !DILocation(line: 297, column: 20, scope: !895)
!895 = distinct !DILexicalBlock(scope: !892, file: !3, line: 296, column: 5)
!896 = !DILocation(line: 298, column: 14, scope: !895)
!897 = !DILocation(line: 298, column: 37, scope: !895)
!898 = !DILocation(line: 297, column: 7, scope: !895)
!899 = !DILocation(line: 299, column: 7, scope: !895)
!900 = !DILocation(line: 302, column: 16, scope: !901)
!901 = distinct !DILexicalBlock(scope: !767, file: !3, line: 302, column: 7)
!902 = !DILocation(line: 304, column: 20, scope: !903)
!903 = distinct !DILexicalBlock(scope: !901, file: !3, line: 303, column: 5)
!904 = !DILocation(line: 305, column: 14, scope: !903)
!905 = !DILocation(line: 305, column: 37, scope: !903)
!906 = !DILocation(line: 304, column: 7, scope: !903)
!907 = !DILocation(line: 306, column: 7, scope: !903)
!908 = !DILocation(line: 309, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !767, file: !3, line: 309, column: 7)
!910 = !DILocation(line: 309, column: 18, scope: !909)
!911 = !DILocation(line: 311, column: 20, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !3, line: 310, column: 5)
!913 = !DILocation(line: 312, column: 14, scope: !912)
!914 = !DILocation(line: 312, column: 42, scope: !912)
!915 = !DILocation(line: 311, column: 7, scope: !912)
!916 = !DILocation(line: 313, column: 7, scope: !912)
!917 = !DILocation(line: 316, column: 12, scope: !918)
!918 = distinct !DILexicalBlock(scope: !767, file: !3, line: 316, column: 7)
!919 = !DILocation(line: 316, column: 7, scope: !767)
!920 = !DILocation(line: 318, column: 20, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !3, line: 317, column: 5)
!922 = !DILocation(line: 318, column: 7, scope: !921)
!923 = !DILocation(line: 319, column: 7, scope: !921)
!924 = !DILocation(line: 322, column: 7, scope: !767)
!925 = !DILocation(line: 324, column: 7, scope: !785)
!926 = !DILocation(line: 324, column: 19, scope: !785)
!927 = !DILocation(line: 0, scope: !785)
!928 = !DILocation(line: 326, column: 11, scope: !929)
!929 = distinct !DILexicalBlock(scope: !785, file: !3, line: 326, column: 11)
!930 = !DILocation(line: 326, column: 32, scope: !929)
!931 = !DILocation(line: 326, column: 11, scope: !785)
!932 = !DILocation(line: 327, column: 9, scope: !929)
!933 = !DILocalVariable(name: "sb", arg: 1, scope: !934, file: !645, line: 705, type: !937)
!934 = distinct !DISubprogram(name: "usable_st_size", scope: !645, file: !645, line: 705, type: !935, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !939)
!935 = !DISubroutineType(types: !936)
!936 = !{!68, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!939 = !{!933}
!940 = !DILocation(line: 0, scope: !934, inlinedAt: !941)
!941 = distinct !DILocation(line: 328, column: 11, scope: !826)
!942 = !DILocation(line: 707, column: 11, scope: !934, inlinedAt: !941)
!943 = !{!944, !889, i64 24}
!944 = !{!"stat", !945, i64 0, !945, i64 8, !945, i64 16, !889, i64 24, !889, i64 28, !889, i64 32, !889, i64 36, !945, i64 40, !945, i64 48, !945, i64 56, !945, i64 64, !946, i64 72, !946, i64 88, !946, i64 104, !638, i64 120}
!945 = !{!"long", !638, i64 0}
!946 = !{!"timespec", !945, i64 0, !945, i64 8}
!947 = !DILocation(line: 707, column: 33, scope: !934, inlinedAt: !941)
!948 = !DILocation(line: 332, column: 30, scope: !825)
!949 = !DILocation(line: 332, column: 24, scope: !825)
!950 = !DILocation(line: 0, scope: !825)
!951 = !DILocation(line: 333, column: 17, scope: !829)
!952 = !DILocation(line: 333, column: 15, scope: !825)
!953 = !DILocation(line: 335, column: 32, scope: !828)
!954 = !DILocation(line: 0, scope: !828)
!955 = !DILocation(line: 336, column: 33, scope: !828)
!956 = !DILocation(line: 337, column: 15, scope: !828)
!957 = !DILocation(line: 338, column: 21, scope: !958)
!958 = distinct !DILexicalBlock(scope: !828, file: !3, line: 338, column: 19)
!959 = !DILocation(line: 338, column: 19, scope: !828)
!960 = !DILocation(line: 343, column: 25, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 341, column: 17)
!962 = !DILocation(line: 329, column: 24, scope: !826)
!963 = !{!944, !945, i64 48}
!964 = !DILocation(line: 347, column: 21, scope: !965)
!965 = distinct !DILexicalBlock(scope: !785, file: !3, line: 347, column: 11)
!966 = !DILocation(line: 347, column: 11, scope: !785)
!967 = !DILocation(line: 348, column: 9, scope: !965)
!968 = !DILocation(line: 350, column: 11, scope: !785)
!969 = !DILocation(line: 354, column: 5, scope: !786)
!970 = !DILocation(line: 354, column: 5, scope: !785)
!971 = !DILocation(line: 356, column: 24, scope: !767)
!972 = !DILocation(line: 356, column: 49, scope: !767)
!973 = !DILocation(line: 358, column: 19, scope: !767)
!974 = !DILocation(line: 358, column: 28, scope: !767)
!975 = !DILocation(line: 358, column: 3, scope: !767)
!976 = !DILocation(line: 358, column: 24, scope: !767)
!977 = !DILocation(line: 360, column: 17, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 360, column: 11)
!979 = distinct !DILexicalBlock(scope: !767, file: !3, line: 359, column: 5)
!980 = !DILocation(line: 360, column: 52, scope: !978)
!981 = !DILocation(line: 360, column: 11, scope: !979)
!982 = !DILocation(line: 366, column: 17, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 366, column: 15)
!984 = distinct !DILexicalBlock(scope: !978, file: !3, line: 361, column: 9)
!985 = !DILocation(line: 0, scope: !983)
!986 = !DILocation(line: 366, column: 27, scope: !983)
!987 = !DILocation(line: 366, column: 30, scope: !983)
!988 = !DILocation(line: 366, column: 36, scope: !983)
!989 = !DILocation(line: 366, column: 15, scope: !984)
!990 = !DILocation(line: 368, column: 25, scope: !991)
!991 = distinct !DILexicalBlock(scope: !983, file: !3, line: 367, column: 13)
!992 = !DILocation(line: 368, column: 32, scope: !991)
!993 = !DILocation(line: 369, column: 22, scope: !991)
!994 = !DILocation(line: 368, column: 15, scope: !991)
!995 = !DILocation(line: 371, column: 13, scope: !991)
!996 = distinct !{!996, !975, !997, !688}
!997 = !DILocation(line: 385, column: 5, scope: !767)
!998 = !DILocalVariable(name: "fd", arg: 1, scope: !999, file: !3, line: 106, type: !44)
!999 = distinct !DISubprogram(name: "do_ftruncate", scope: !3, file: !3, line: 106, type: !1000, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!68, !44, !73, !46, !46, !779}
!1002 = !{!998, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1013, !1014, !1017}
!1003 = !DILocalVariable(name: "fname", arg: 2, scope: !999, file: !3, line: 106, type: !73)
!1004 = !DILocalVariable(name: "ssize", arg: 3, scope: !999, file: !3, line: 106, type: !46)
!1005 = !DILocalVariable(name: "rsize", arg: 4, scope: !999, file: !3, line: 106, type: !46)
!1006 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !999, file: !3, line: 107, type: !779)
!1007 = !DILocalVariable(name: "sb", scope: !999, file: !3, line: 109, type: !787)
!1008 = !DILocalVariable(name: "nsize", scope: !999, file: !3, line: 110, type: !46)
!1009 = !DILocalVariable(name: "blksize", scope: !1010, file: !3, line: 119, type: !1012)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 118, column: 5)
!1011 = distinct !DILexicalBlock(scope: !999, file: !3, line: 117, column: 7)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !55, line: 35, baseType: !50)
!1013 = !DILocalVariable(name: "ssize0", scope: !1010, file: !3, line: 120, type: !62)
!1014 = !DILocalVariable(name: "fsize", scope: !1015, file: !3, line: 132, type: !46)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 131, column: 5)
!1016 = distinct !DILexicalBlock(scope: !999, file: !3, line: 130, column: 7)
!1017 = !DILocalVariable(name: "r", scope: !1018, file: !3, line: 174, type: !46)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 172, column: 13)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 171, column: 15)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 170, column: 9)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 166, column: 16)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 164, column: 16)
!1023 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 162, column: 11)
!1024 = !DILocation(line: 0, scope: !999, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 378, column: 22, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 377, column: 9)
!1027 = distinct !DILexicalBlock(scope: !979, file: !3, line: 376, column: 11)
!1028 = !DILocation(line: 109, column: 3, scope: !999, inlinedAt: !1025)
!1029 = !DILocation(line: 109, column: 15, scope: !999, inlinedAt: !1025)
!1030 = !DILocation(line: 112, column: 8, scope: !1031, inlinedAt: !1025)
!1031 = distinct !DILexicalBlock(scope: !999, file: !3, line: 112, column: 7)
!1032 = !DILocation(line: 112, column: 19, scope: !1031, inlinedAt: !1025)
!1033 = !DILocation(line: 112, column: 50, scope: !1031, inlinedAt: !1025)
!1034 = !DILocation(line: 112, column: 66, scope: !1031, inlinedAt: !1025)
!1035 = !DILocation(line: 112, column: 7, scope: !999, inlinedAt: !1025)
!1036 = !DILocation(line: 114, column: 17, scope: !1037, inlinedAt: !1025)
!1037 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 113, column: 5)
!1038 = !DILocation(line: 114, column: 24, scope: !1037, inlinedAt: !1025)
!1039 = !DILocation(line: 114, column: 46, scope: !1037, inlinedAt: !1025)
!1040 = !DILocation(line: 114, column: 7, scope: !1037, inlinedAt: !1025)
!1041 = !DILocation(line: 115, column: 7, scope: !1037, inlinedAt: !1025)
!1042 = !DILocation(line: 117, column: 7, scope: !1011, inlinedAt: !1025)
!1043 = !DILocation(line: 117, column: 7, scope: !999, inlinedAt: !1025)
!1044 = !DILocation(line: 119, column: 27, scope: !1010, inlinedAt: !1025)
!1045 = !{!944, !945, i64 56}
!1046 = !DILocation(line: 0, scope: !1010, inlinedAt: !1025)
!1047 = !DILocation(line: 121, column: 11, scope: !1048, inlinedAt: !1025)
!1048 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 121, column: 11)
!1049 = !DILocation(line: 124, column: 18, scope: !1050, inlinedAt: !1025)
!1050 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 122, column: 9)
!1051 = !DILocation(line: 126, column: 35, scope: !1050, inlinedAt: !1025)
!1052 = !DILocation(line: 123, column: 11, scope: !1050, inlinedAt: !1025)
!1053 = !DILocation(line: 130, column: 7, scope: !999, inlinedAt: !1025)
!1054 = !DILocation(line: 134, column: 11, scope: !1015, inlinedAt: !1025)
!1055 = !DILocation(line: 0, scope: !934, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 138, column: 15, scope: !1057, inlinedAt: !1025)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 138, column: 15)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 137, column: 9)
!1059 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 134, column: 11)
!1060 = !DILocation(line: 707, column: 11, scope: !934, inlinedAt: !1056)
!1061 = !DILocation(line: 707, column: 33, scope: !934, inlinedAt: !1056)
!1062 = !DILocation(line: 140, column: 26, scope: !1063, inlinedAt: !1025)
!1063 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 139, column: 13)
!1064 = !DILocation(line: 0, scope: !1015, inlinedAt: !1025)
!1065 = !DILocation(line: 141, column: 25, scope: !1066, inlinedAt: !1025)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 141, column: 19)
!1067 = !DILocation(line: 141, column: 19, scope: !1063, inlinedAt: !1025)
!1068 = !DILocation(line: 145, column: 32, scope: !1069, inlinedAt: !1025)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 142, column: 17)
!1070 = !DILocation(line: 146, column: 26, scope: !1069, inlinedAt: !1025)
!1071 = !DILocation(line: 145, column: 19, scope: !1069, inlinedAt: !1025)
!1072 = !DILocation(line: 147, column: 19, scope: !1069, inlinedAt: !1025)
!1073 = !DILocation(line: 152, column: 23, scope: !1074, inlinedAt: !1025)
!1074 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 151, column: 13)
!1075 = !DILocation(line: 153, column: 25, scope: !1076, inlinedAt: !1025)
!1076 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 153, column: 19)
!1077 = !DILocation(line: 153, column: 19, scope: !1074, inlinedAt: !1025)
!1078 = !DILocation(line: 155, column: 29, scope: !1079, inlinedAt: !1025)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 154, column: 17)
!1080 = !DILocation(line: 155, column: 36, scope: !1079, inlinedAt: !1025)
!1081 = !DILocation(line: 156, column: 26, scope: !1079, inlinedAt: !1025)
!1082 = !DILocation(line: 155, column: 19, scope: !1079, inlinedAt: !1025)
!1083 = !DILocation(line: 157, column: 19, scope: !1079, inlinedAt: !1025)
!1084 = !DILocation(line: 0, scope: !1059, inlinedAt: !1025)
!1085 = !DILocation(line: 162, column: 11, scope: !1015, inlinedAt: !1025)
!1086 = !DILocation(line: 163, column: 17, scope: !1023, inlinedAt: !1025)
!1087 = !DILocation(line: 163, column: 9, scope: !1023, inlinedAt: !1025)
!1088 = !DILocation(line: 165, column: 17, scope: !1022, inlinedAt: !1025)
!1089 = !DILocation(line: 165, column: 9, scope: !1022, inlinedAt: !1025)
!1090 = !DILocation(line: 168, column: 31, scope: !1021, inlinedAt: !1025)
!1091 = !DILocation(line: 168, column: 23, scope: !1021, inlinedAt: !1025)
!1092 = !DILocation(line: 168, column: 9, scope: !1021, inlinedAt: !1025)
!1093 = !DILocation(line: 174, column: 31, scope: !1018, inlinedAt: !1025)
!1094 = !DILocation(line: 0, scope: !1018, inlinedAt: !1025)
!1095 = !DILocation(line: 175, column: 25, scope: !1018, inlinedAt: !1025)
!1096 = !DILocation(line: 175, column: 23, scope: !1018, inlinedAt: !1025)
!1097 = !DILocation(line: 176, column: 13, scope: !1018, inlinedAt: !1025)
!1098 = !DILocation(line: 177, column: 15, scope: !1099, inlinedAt: !1025)
!1099 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 177, column: 15)
!1100 = !DILocation(line: 177, column: 15, scope: !1020, inlinedAt: !1025)
!1101 = !DILocation(line: 179, column: 28, scope: !1102, inlinedAt: !1025)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 178, column: 13)
!1103 = !DILocation(line: 180, column: 22, scope: !1102, inlinedAt: !1025)
!1104 = !DILocation(line: 179, column: 15, scope: !1102, inlinedAt: !1025)
!1105 = !DILocation(line: 181, column: 15, scope: !1102, inlinedAt: !1025)
!1106 = !DILocation(line: 0, scope: !1016, inlinedAt: !1025)
!1107 = !DILocation(line: 187, column: 7, scope: !999, inlinedAt: !1025)
!1108 = !DILocation(line: 190, column: 7, scope: !1109, inlinedAt: !1025)
!1109 = distinct !DILexicalBlock(scope: !999, file: !3, line: 190, column: 7)
!1110 = !DILocation(line: 190, column: 29, scope: !1109, inlinedAt: !1025)
!1111 = !DILocation(line: 190, column: 7, scope: !999, inlinedAt: !1025)
!1112 = !DILocation(line: 192, column: 17, scope: !1113, inlinedAt: !1025)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 191, column: 5)
!1114 = !DILocation(line: 193, column: 14, scope: !1113, inlinedAt: !1025)
!1115 = !DILocation(line: 193, column: 64, scope: !1113, inlinedAt: !1025)
!1116 = !DILocation(line: 192, column: 7, scope: !1113, inlinedAt: !1025)
!1117 = !DILocation(line: 195, column: 7, scope: !1113, inlinedAt: !1025)
!1118 = !DILocation(line: 199, column: 1, scope: !999, inlinedAt: !1025)
!1119 = !DILocation(line: 378, column: 18, scope: !1026)
!1120 = !DILocation(line: 379, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 379, column: 15)
!1122 = !DILocation(line: 379, column: 26, scope: !1121)
!1123 = !DILocation(line: 379, column: 15, scope: !1026)
!1124 = !DILocation(line: 381, column: 25, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 380, column: 13)
!1126 = !DILocation(line: 381, column: 32, scope: !1125)
!1127 = !DILocation(line: 381, column: 57, scope: !1125)
!1128 = !DILocation(line: 381, column: 15, scope: !1125)
!1129 = !DILocation(line: 383, column: 13, scope: !1125)
!1130 = !DILocation(line: 387, column: 10, scope: !767)
!1131 = !DILocation(line: 388, column: 1, scope: !767)
!1132 = !DISubprogram(name: "bindtextdomain", scope: !709, file: !709, line: 86, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!51, !73, !73}
!1135 = !DISubprogram(name: "textdomain", scope: !709, file: !709, line: 82, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!51, !73}
!1138 = !DISubprogram(name: "atexit", scope: !1139, file: !1139, line: 595, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1139 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!44, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!1143 = !DISubprogram(name: "getopt_long", scope: !78, file: !78, line: 66, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!44, !44, !1146, !73, !1148, !83}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1149 = !DISubprogram(name: "error", scope: !1150, file: !1150, line: 52, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1150 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !44, !44, !73, null}
!1153 = !DISubprogram(name: "stat", scope: !1154, file: !1154, line: 205, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1154 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!44, !73, !1157}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!1158 = !DISubprogram(name: "open", scope: !1159, file: !1159, line: 196, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1159 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!44, !73, !44, null}
!1162 = !DISubprogram(name: "lseek", scope: !1163, file: !1163, line: 334, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1163 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!50, !44, !50, !44}
!1166 = !DISubprogram(name: "close", scope: !1163, file: !1163, line: 353, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!44, !44}
!1169 = !DISubprogram(name: "fstat", scope: !1154, file: !1154, line: 210, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!44, !44, !1157}
!1172 = !DISubprogram(name: "ftruncate", scope: !1163, file: !1163, line: 1028, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!44, !44, !50}
!1175 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !98, file: !98, line: 51, type: !660, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !1176)
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "file", arg: 1, scope: !1175, file: !98, line: 51, type: !73)
!1178 = !DILocation(line: 0, scope: !1175)
!1179 = !DILocation(line: 53, column: 13, scope: !1175)
!1180 = !DILocation(line: 54, column: 1, scope: !1175)
!1181 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !98, file: !98, line: 88, type: !1182, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !68}
!1184 = !{!1185}
!1185 = !DILocalVariable(name: "ignore", arg: 1, scope: !1181, file: !98, line: 88, type: !68)
!1186 = !DILocation(line: 0, scope: !1181)
!1187 = !DILocation(line: 90, column: 16, scope: !1181)
!1188 = !{!1189, !1189, i64 0}
!1189 = !{!"_Bool", !638, i64 0}
!1190 = !DILocation(line: 91, column: 1, scope: !1181)
!1191 = distinct !DISubprogram(name: "close_stdout", scope: !98, file: !98, line: 117, type: !646, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !1192)
!1192 = !{!1193}
!1193 = !DILocalVariable(name: "write_error", scope: !1194, file: !98, line: 122, type: !73)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !98, line: 121, column: 5)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !98, line: 119, column: 7)
!1196 = !DILocation(line: 119, column: 21, scope: !1195)
!1197 = !DILocation(line: 119, column: 7, scope: !1195)
!1198 = !DILocation(line: 119, column: 29, scope: !1195)
!1199 = !DILocation(line: 120, column: 7, scope: !1195)
!1200 = !DILocation(line: 120, column: 12, scope: !1195)
!1201 = !{i8 0, i8 2}
!1202 = !DILocation(line: 120, column: 25, scope: !1195)
!1203 = !DILocation(line: 120, column: 28, scope: !1195)
!1204 = !DILocation(line: 120, column: 34, scope: !1195)
!1205 = !DILocation(line: 119, column: 7, scope: !1191)
!1206 = !DILocation(line: 122, column: 33, scope: !1194)
!1207 = !DILocation(line: 0, scope: !1194)
!1208 = !DILocation(line: 123, column: 11, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1194, file: !98, line: 123, column: 11)
!1210 = !DILocation(line: 0, scope: !1209)
!1211 = !DILocation(line: 123, column: 11, scope: !1194)
!1212 = !DILocation(line: 124, column: 36, scope: !1209)
!1213 = !DILocation(line: 124, column: 9, scope: !1209)
!1214 = !DILocation(line: 127, column: 9, scope: !1209)
!1215 = !DILocation(line: 129, column: 14, scope: !1194)
!1216 = !DILocation(line: 129, column: 7, scope: !1194)
!1217 = !DILocation(line: 134, column: 42, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1191, file: !98, line: 134, column: 7)
!1219 = !DILocation(line: 134, column: 28, scope: !1218)
!1220 = !DILocation(line: 134, column: 50, scope: !1218)
!1221 = !DILocation(line: 134, column: 7, scope: !1191)
!1222 = !DILocation(line: 135, column: 12, scope: !1218)
!1223 = !DILocation(line: 135, column: 5, scope: !1218)
!1224 = !DILocation(line: 136, column: 1, scope: !1191)
!1225 = distinct !DISubprogram(name: "set_program_name", scope: !111, file: !111, line: 39, type: !660, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !110, retainedNodes: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DILocalVariable(name: "argv0", arg: 1, scope: !1225, file: !111, line: 39, type: !73)
!1228 = !DILocalVariable(name: "slash", scope: !1225, file: !111, line: 46, type: !73)
!1229 = !DILocalVariable(name: "base", scope: !1225, file: !111, line: 47, type: !73)
!1230 = !DILocation(line: 0, scope: !1225)
!1231 = !DILocation(line: 51, column: 13, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1225, file: !111, line: 51, column: 7)
!1233 = !DILocation(line: 51, column: 7, scope: !1225)
!1234 = !DILocation(line: 55, column: 14, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !111, line: 52, column: 5)
!1236 = !DILocation(line: 54, column: 7, scope: !1235)
!1237 = !DILocation(line: 56, column: 7, scope: !1235)
!1238 = !DILocation(line: 59, column: 11, scope: !1225)
!1239 = !DILocation(line: 60, column: 17, scope: !1225)
!1240 = !DILocation(line: 60, column: 11, scope: !1225)
!1241 = !DILocation(line: 61, column: 12, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1225, file: !111, line: 61, column: 7)
!1243 = !DILocation(line: 61, column: 20, scope: !1242)
!1244 = !DILocation(line: 61, column: 25, scope: !1242)
!1245 = !DILocation(line: 61, column: 42, scope: !1242)
!1246 = !DILocation(line: 61, column: 28, scope: !1242)
!1247 = !DILocation(line: 61, column: 61, scope: !1242)
!1248 = !DILocation(line: 61, column: 7, scope: !1225)
!1249 = !DILocation(line: 64, column: 11, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !111, line: 64, column: 11)
!1251 = distinct !DILexicalBlock(scope: !1242, file: !111, line: 62, column: 5)
!1252 = !DILocation(line: 64, column: 36, scope: !1250)
!1253 = !DILocation(line: 64, column: 11, scope: !1251)
!1254 = !DILocation(line: 66, column: 24, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !111, line: 65, column: 9)
!1256 = !DILocation(line: 70, column: 41, scope: !1255)
!1257 = !DILocation(line: 72, column: 9, scope: !1255)
!1258 = !DILocation(line: 84, column: 16, scope: !1225)
!1259 = !DILocation(line: 90, column: 27, scope: !1225)
!1260 = !DILocation(line: 92, column: 1, scope: !1225)
!1261 = distinct !DISubprogram(name: "clone_quoting_options", scope: !117, file: !117, line: 122, type: !1262, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1265)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!1264, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1265 = !{!1266, !1267, !1268}
!1266 = !DILocalVariable(name: "o", arg: 1, scope: !1261, file: !117, line: 122, type: !1264)
!1267 = !DILocalVariable(name: "e", scope: !1261, file: !117, line: 124, type: !44)
!1268 = !DILocalVariable(name: "p", scope: !1261, file: !117, line: 125, type: !1264)
!1269 = !DILocation(line: 0, scope: !1261)
!1270 = !DILocation(line: 124, column: 11, scope: !1261)
!1271 = !DILocation(line: 125, column: 40, scope: !1261)
!1272 = !DILocation(line: 125, column: 31, scope: !1261)
!1273 = !DILocation(line: 127, column: 9, scope: !1261)
!1274 = !DILocation(line: 128, column: 3, scope: !1261)
!1275 = distinct !DISubprogram(name: "get_quoting_style", scope: !117, file: !117, line: 133, type: !1276, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1280)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!29, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1280 = !{!1281}
!1281 = !DILocalVariable(name: "o", arg: 1, scope: !1275, file: !117, line: 133, type: !1278)
!1282 = !DILocation(line: 0, scope: !1275)
!1283 = !DILocation(line: 135, column: 11, scope: !1275)
!1284 = !DILocation(line: 135, column: 46, scope: !1275)
!1285 = !{!1286, !638, i64 0}
!1286 = !{!"quoting_options", !638, i64 0, !889, i64 4, !638, i64 8, !637, i64 40, !637, i64 48}
!1287 = !DILocation(line: 135, column: 3, scope: !1275)
!1288 = distinct !DISubprogram(name: "set_quoting_style", scope: !117, file: !117, line: 141, type: !1289, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1264, !29}
!1291 = !{!1292, !1293}
!1292 = !DILocalVariable(name: "o", arg: 1, scope: !1288, file: !117, line: 141, type: !1264)
!1293 = !DILocalVariable(name: "s", arg: 2, scope: !1288, file: !117, line: 141, type: !29)
!1294 = !DILocation(line: 0, scope: !1288)
!1295 = !DILocation(line: 143, column: 4, scope: !1288)
!1296 = !DILocation(line: 143, column: 39, scope: !1288)
!1297 = !DILocation(line: 143, column: 45, scope: !1288)
!1298 = !DILocation(line: 144, column: 1, scope: !1288)
!1299 = distinct !DISubprogram(name: "set_char_quoting", scope: !117, file: !117, line: 152, type: !1300, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!44, !1264, !52, !44}
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1309, !1310}
!1303 = !DILocalVariable(name: "o", arg: 1, scope: !1299, file: !117, line: 152, type: !1264)
!1304 = !DILocalVariable(name: "c", arg: 2, scope: !1299, file: !117, line: 152, type: !52)
!1305 = !DILocalVariable(name: "i", arg: 3, scope: !1299, file: !117, line: 152, type: !44)
!1306 = !DILocalVariable(name: "uc", scope: !1299, file: !117, line: 154, type: !58)
!1307 = !DILocalVariable(name: "p", scope: !1299, file: !117, line: 155, type: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1309 = !DILocalVariable(name: "shift", scope: !1299, file: !117, line: 157, type: !44)
!1310 = !DILocalVariable(name: "r", scope: !1299, file: !117, line: 158, type: !44)
!1311 = !DILocation(line: 0, scope: !1299)
!1312 = !DILocation(line: 156, column: 6, scope: !1299)
!1313 = !DILocation(line: 156, column: 62, scope: !1299)
!1314 = !DILocation(line: 156, column: 57, scope: !1299)
!1315 = !DILocation(line: 157, column: 15, scope: !1299)
!1316 = !DILocation(line: 158, column: 12, scope: !1299)
!1317 = !DILocation(line: 158, column: 15, scope: !1299)
!1318 = !DILocation(line: 158, column: 25, scope: !1299)
!1319 = !DILocation(line: 159, column: 13, scope: !1299)
!1320 = !DILocation(line: 159, column: 18, scope: !1299)
!1321 = !DILocation(line: 159, column: 23, scope: !1299)
!1322 = !DILocation(line: 159, column: 6, scope: !1299)
!1323 = !DILocation(line: 160, column: 3, scope: !1299)
!1324 = distinct !DISubprogram(name: "set_quoting_flags", scope: !117, file: !117, line: 168, type: !1325, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!44, !1264, !44}
!1327 = !{!1328, !1329, !1330}
!1328 = !DILocalVariable(name: "o", arg: 1, scope: !1324, file: !117, line: 168, type: !1264)
!1329 = !DILocalVariable(name: "i", arg: 2, scope: !1324, file: !117, line: 168, type: !44)
!1330 = !DILocalVariable(name: "r", scope: !1324, file: !117, line: 170, type: !44)
!1331 = !DILocation(line: 0, scope: !1324)
!1332 = !DILocation(line: 171, column: 8, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1324, file: !117, line: 171, column: 7)
!1334 = !DILocation(line: 171, column: 7, scope: !1324)
!1335 = !DILocation(line: 173, column: 10, scope: !1324)
!1336 = !{!1286, !889, i64 4}
!1337 = !DILocation(line: 174, column: 12, scope: !1324)
!1338 = !DILocation(line: 175, column: 3, scope: !1324)
!1339 = distinct !DISubprogram(name: "set_custom_quoting", scope: !117, file: !117, line: 179, type: !1340, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !1264, !73, !73}
!1342 = !{!1343, !1344, !1345}
!1343 = !DILocalVariable(name: "o", arg: 1, scope: !1339, file: !117, line: 179, type: !1264)
!1344 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1339, file: !117, line: 180, type: !73)
!1345 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1339, file: !117, line: 180, type: !73)
!1346 = !DILocation(line: 0, scope: !1339)
!1347 = !DILocation(line: 182, column: 8, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1339, file: !117, line: 182, column: 7)
!1349 = !DILocation(line: 182, column: 7, scope: !1339)
!1350 = !DILocation(line: 184, column: 6, scope: !1339)
!1351 = !DILocation(line: 184, column: 12, scope: !1339)
!1352 = !DILocation(line: 185, column: 8, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1339, file: !117, line: 185, column: 7)
!1354 = !DILocation(line: 185, column: 19, scope: !1353)
!1355 = !DILocation(line: 186, column: 5, scope: !1353)
!1356 = !DILocation(line: 187, column: 6, scope: !1339)
!1357 = !DILocation(line: 187, column: 17, scope: !1339)
!1358 = !{!1286, !637, i64 40}
!1359 = !DILocation(line: 188, column: 6, scope: !1339)
!1360 = !DILocation(line: 188, column: 18, scope: !1339)
!1361 = !{!1286, !637, i64 48}
!1362 = !DILocation(line: 189, column: 1, scope: !1339)
!1363 = distinct !DISubprogram(name: "quotearg_buffer", scope: !117, file: !117, line: 784, type: !1364, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!54, !51, !54, !73, !54, !1278}
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374}
!1367 = !DILocalVariable(name: "buffer", arg: 1, scope: !1363, file: !117, line: 784, type: !51)
!1368 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1363, file: !117, line: 784, type: !54)
!1369 = !DILocalVariable(name: "arg", arg: 3, scope: !1363, file: !117, line: 785, type: !73)
!1370 = !DILocalVariable(name: "argsize", arg: 4, scope: !1363, file: !117, line: 785, type: !54)
!1371 = !DILocalVariable(name: "o", arg: 5, scope: !1363, file: !117, line: 786, type: !1278)
!1372 = !DILocalVariable(name: "p", scope: !1363, file: !117, line: 788, type: !1278)
!1373 = !DILocalVariable(name: "e", scope: !1363, file: !117, line: 789, type: !44)
!1374 = !DILocalVariable(name: "r", scope: !1363, file: !117, line: 790, type: !54)
!1375 = !DILocation(line: 0, scope: !1363)
!1376 = !DILocation(line: 788, column: 37, scope: !1363)
!1377 = !DILocation(line: 789, column: 11, scope: !1363)
!1378 = !DILocation(line: 791, column: 43, scope: !1363)
!1379 = !DILocation(line: 791, column: 53, scope: !1363)
!1380 = !DILocation(line: 791, column: 60, scope: !1363)
!1381 = !DILocation(line: 792, column: 43, scope: !1363)
!1382 = !DILocation(line: 792, column: 58, scope: !1363)
!1383 = !DILocation(line: 790, column: 14, scope: !1363)
!1384 = !DILocation(line: 793, column: 9, scope: !1363)
!1385 = !DILocation(line: 794, column: 3, scope: !1363)
!1386 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !117, file: !117, line: 256, type: !1387, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1391)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!54, !51, !54, !73, !54, !29, !44, !1389, !73, !73}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1416, !1417, !1418, !1419, !1420, !1423, !1424, !1442, !1445, !1446, !1453, !1456, !1457, !1458, !1459, !1460, !1461}
!1392 = !DILocalVariable(name: "buffer", arg: 1, scope: !1386, file: !117, line: 256, type: !51)
!1393 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1386, file: !117, line: 256, type: !54)
!1394 = !DILocalVariable(name: "arg", arg: 3, scope: !1386, file: !117, line: 257, type: !73)
!1395 = !DILocalVariable(name: "argsize", arg: 4, scope: !1386, file: !117, line: 257, type: !54)
!1396 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1386, file: !117, line: 258, type: !29)
!1397 = !DILocalVariable(name: "flags", arg: 6, scope: !1386, file: !117, line: 258, type: !44)
!1398 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1386, file: !117, line: 259, type: !1389)
!1399 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1386, file: !117, line: 260, type: !73)
!1400 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1386, file: !117, line: 261, type: !73)
!1401 = !DILocalVariable(name: "i", scope: !1386, file: !117, line: 263, type: !54)
!1402 = !DILocalVariable(name: "len", scope: !1386, file: !117, line: 264, type: !54)
!1403 = !DILocalVariable(name: "orig_buffersize", scope: !1386, file: !117, line: 265, type: !54)
!1404 = !DILocalVariable(name: "quote_string", scope: !1386, file: !117, line: 266, type: !73)
!1405 = !DILocalVariable(name: "quote_string_len", scope: !1386, file: !117, line: 267, type: !54)
!1406 = !DILocalVariable(name: "backslash_escapes", scope: !1386, file: !117, line: 268, type: !68)
!1407 = !DILocalVariable(name: "unibyte_locale", scope: !1386, file: !117, line: 269, type: !68)
!1408 = !DILocalVariable(name: "elide_outer_quotes", scope: !1386, file: !117, line: 270, type: !68)
!1409 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1386, file: !117, line: 271, type: !68)
!1410 = !DILocalVariable(name: "encountered_single_quote", scope: !1386, file: !117, line: 272, type: !68)
!1411 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1386, file: !117, line: 273, type: !68)
!1412 = !DILocalVariable(name: "c", scope: !1413, file: !117, line: 402, type: !58)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !117, line: 401, column: 5)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !117, line: 400, column: 3)
!1415 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 400, column: 3)
!1416 = !DILocalVariable(name: "esc", scope: !1413, file: !117, line: 403, type: !58)
!1417 = !DILocalVariable(name: "is_right_quote", scope: !1413, file: !117, line: 404, type: !68)
!1418 = !DILocalVariable(name: "escaping", scope: !1413, file: !117, line: 405, type: !68)
!1419 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1413, file: !117, line: 406, type: !68)
!1420 = !DILocalVariable(name: "m", scope: !1421, file: !117, line: 610, type: !54)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 608, column: 11)
!1422 = distinct !DILexicalBlock(scope: !1413, file: !117, line: 426, column: 9)
!1423 = !DILocalVariable(name: "printable", scope: !1421, file: !117, line: 612, type: !68)
!1424 = !DILocalVariable(name: "mbstate", scope: !1425, file: !117, line: 621, type: !1427)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !117, line: 620, column: 15)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !117, line: 614, column: 17)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1428, line: 6, baseType: !1429)
!1428 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1430, line: 21, baseType: !1431)
!1430 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1430, line: 13, size: 64, elements: !1432)
!1432 = !{!1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1431, file: !1430, line: 15, baseType: !44, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1431, file: !1430, line: 20, baseType: !1435, size: 32, offset: 32)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1431, file: !1430, line: 16, size: 32, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1435, file: !1430, line: 18, baseType: !6, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1435, file: !1430, line: 19, baseType: !1439, size: 32)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 4)
!1442 = !DILocalVariable(name: "w", scope: !1443, file: !117, line: 631, type: !1444)
!1443 = distinct !DILexicalBlock(scope: !1425, file: !117, line: 630, column: 19)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !55, line: 74, baseType: !44)
!1445 = !DILocalVariable(name: "bytes", scope: !1443, file: !117, line: 632, type: !54)
!1446 = !DILocalVariable(name: "j", scope: !1447, file: !117, line: 657, type: !54)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !117, line: 656, column: 27)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !117, line: 654, column: 29)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !117, line: 649, column: 23)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !117, line: 641, column: 30)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !117, line: 636, column: 30)
!1452 = distinct !DILexicalBlock(scope: !1443, file: !117, line: 634, column: 25)
!1453 = !DILocalVariable(name: "ilim", scope: !1454, file: !117, line: 684, type: !54)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !117, line: 681, column: 15)
!1455 = distinct !DILexicalBlock(scope: !1421, file: !117, line: 680, column: 17)
!1456 = !DILabel(scope: !1386, name: "process_input", file: !117, line: 314)
!1457 = !DILabel(scope: !1422, name: "c_and_shell_escape", file: !117, line: 512)
!1458 = !DILabel(scope: !1422, name: "c_escape", file: !117, line: 517)
!1459 = !DILabel(scope: !1413, name: "store_escape", file: !117, line: 719)
!1460 = !DILabel(scope: !1413, name: "store_c", file: !117, line: 722)
!1461 = !DILabel(scope: !1386, name: "force_outer_quoting_style", file: !117, line: 763)
!1462 = !DILocation(line: 0, scope: !1386)
!1463 = !DILocation(line: 269, column: 25, scope: !1386)
!1464 = !DILocation(line: 269, column: 36, scope: !1386)
!1465 = !DILocation(line: 270, column: 8, scope: !1386)
!1466 = !DILocation(line: 273, column: 3, scope: !1386)
!1467 = !DILocation(line: 265, column: 10, scope: !1386)
!1468 = !DILocation(line: 266, column: 15, scope: !1386)
!1469 = !DILocation(line: 267, column: 10, scope: !1386)
!1470 = !DILocation(line: 268, column: 8, scope: !1386)
!1471 = !DILocation(line: 271, column: 8, scope: !1386)
!1472 = !DILocation(line: 272, column: 8, scope: !1386)
!1473 = !DILocation(line: 273, column: 8, scope: !1386)
!1474 = !DILocation(line: 314, column: 2, scope: !1386)
!1475 = !DILocation(line: 316, column: 3, scope: !1386)
!1476 = !DILocation(line: 323, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 317, column: 5)
!1478 = !DILocation(line: 323, column: 12, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1477, file: !117, line: 323, column: 11)
!1480 = !DILocation(line: 324, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !117, line: 324, column: 9)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !117, line: 324, column: 9)
!1483 = !DILocation(line: 324, column: 9, scope: !1482)
!1484 = !DILocation(line: 362, column: 26, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !117, line: 340, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !117, line: 339, column: 13)
!1487 = distinct !DILexicalBlock(scope: !1477, file: !117, line: 338, column: 7)
!1488 = !DILocation(line: 363, column: 27, scope: !1485)
!1489 = !DILocation(line: 364, column: 11, scope: !1485)
!1490 = !DILocation(line: 365, column: 14, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !117, line: 365, column: 13)
!1492 = !DILocation(line: 365, column: 13, scope: !1487)
!1493 = !DILocation(line: 366, column: 43, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !117, line: 366, column: 11)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !117, line: 366, column: 11)
!1496 = !DILocation(line: 366, column: 11, scope: !1495)
!1497 = !DILocation(line: 367, column: 13, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !117, line: 367, column: 13)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !117, line: 367, column: 13)
!1500 = !DILocation(line: 367, column: 13, scope: !1499)
!1501 = !DILocation(line: 366, column: 70, scope: !1494)
!1502 = distinct !{!1502, !1496, !1503, !688}
!1503 = !DILocation(line: 367, column: 13, scope: !1495)
!1504 = !DILocation(line: 264, column: 10, scope: !1386)
!1505 = !DILocation(line: 370, column: 28, scope: !1487)
!1506 = !DILocation(line: 372, column: 7, scope: !1477)
!1507 = !DILocation(line: 376, column: 7, scope: !1477)
!1508 = !DILocation(line: 379, column: 7, scope: !1477)
!1509 = !DILocation(line: 381, column: 12, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1477, file: !117, line: 381, column: 11)
!1511 = !DILocation(line: 381, column: 11, scope: !1477)
!1512 = !DILocation(line: 386, column: 12, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1477, file: !117, line: 386, column: 11)
!1514 = !DILocation(line: 386, column: 11, scope: !1477)
!1515 = !DILocation(line: 387, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !117, line: 387, column: 9)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !117, line: 387, column: 9)
!1518 = !DILocation(line: 387, column: 9, scope: !1517)
!1519 = !DILocation(line: 394, column: 7, scope: !1477)
!1520 = !DILocation(line: 397, column: 7, scope: !1477)
!1521 = !DILocation(line: 400, column: 8, scope: !1415)
!1522 = !DILocation(line: 0, scope: !1415)
!1523 = !DILocation(line: 400, column: 27, scope: !1414)
!1524 = !DILocation(line: 400, column: 19, scope: !1414)
!1525 = !DILocation(line: 400, column: 41, scope: !1414)
!1526 = !DILocation(line: 400, column: 48, scope: !1414)
!1527 = !DILocation(line: 400, column: 3, scope: !1415)
!1528 = !DILocation(line: 400, column: 60, scope: !1414)
!1529 = !DILocation(line: 0, scope: !1413)
!1530 = !DILocation(line: 409, column: 11, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1413, file: !117, line: 408, column: 11)
!1532 = !DILocation(line: 411, column: 17, scope: !1531)
!1533 = !DILocation(line: 412, column: 39, scope: !1531)
!1534 = !DILocation(line: 416, column: 32, scope: !1531)
!1535 = !DILocation(line: 412, column: 19, scope: !1531)
!1536 = !DILocation(line: 412, column: 15, scope: !1531)
!1537 = !DILocation(line: 417, column: 11, scope: !1531)
!1538 = !DILocation(line: 417, column: 26, scope: !1531)
!1539 = !DILocation(line: 417, column: 14, scope: !1531)
!1540 = !DILocation(line: 417, column: 63, scope: !1531)
!1541 = !DILocation(line: 408, column: 11, scope: !1413)
!1542 = !DILocation(line: 424, column: 11, scope: !1413)
!1543 = !DILocation(line: 425, column: 7, scope: !1413)
!1544 = !DILocation(line: 428, column: 15, scope: !1422)
!1545 = !DILocation(line: 430, column: 15, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !117, line: 430, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !117, line: 429, column: 13)
!1548 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 428, column: 15)
!1549 = !DILocation(line: 430, column: 15, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !117, line: 430, column: 15)
!1551 = !DILocation(line: 430, column: 15, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !117, line: 430, column: 15)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !117, line: 430, column: 15)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !117, line: 430, column: 15)
!1555 = !DILocation(line: 430, column: 15, scope: !1553)
!1556 = !DILocation(line: 430, column: 15, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !117, line: 430, column: 15)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !117, line: 430, column: 15)
!1559 = !DILocation(line: 430, column: 15, scope: !1558)
!1560 = !DILocation(line: 430, column: 15, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !117, line: 430, column: 15)
!1562 = distinct !DILexicalBlock(scope: !1554, file: !117, line: 430, column: 15)
!1563 = !DILocation(line: 430, column: 15, scope: !1562)
!1564 = !DILocation(line: 430, column: 15, scope: !1554)
!1565 = !DILocation(line: 430, column: 15, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !117, line: 430, column: 15)
!1567 = distinct !DILexicalBlock(scope: !1546, file: !117, line: 430, column: 15)
!1568 = !DILocation(line: 430, column: 15, scope: !1567)
!1569 = !DILocation(line: 438, column: 19, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1547, file: !117, line: 437, column: 19)
!1571 = !DILocation(line: 438, column: 48, scope: !1570)
!1572 = !DILocation(line: 438, column: 59, scope: !1570)
!1573 = !DILocation(line: 440, column: 19, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !117, line: 440, column: 19)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !117, line: 440, column: 19)
!1576 = distinct !DILexicalBlock(scope: !1570, file: !117, line: 439, column: 17)
!1577 = !DILocation(line: 440, column: 19, scope: !1575)
!1578 = !DILocation(line: 441, column: 19, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !117, line: 441, column: 19)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !117, line: 441, column: 19)
!1581 = !DILocation(line: 441, column: 19, scope: !1580)
!1582 = !DILocation(line: 442, column: 17, scope: !1576)
!1583 = !DILocation(line: 449, column: 20, scope: !1548)
!1584 = !DILocation(line: 454, column: 11, scope: !1422)
!1585 = !DILocation(line: 457, column: 19, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 455, column: 13)
!1587 = !DILocation(line: 463, column: 19, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1586, file: !117, line: 462, column: 19)
!1589 = !DILocation(line: 463, column: 47, scope: !1588)
!1590 = !DILocation(line: 463, column: 41, scope: !1588)
!1591 = !DILocation(line: 463, column: 52, scope: !1588)
!1592 = !DILocation(line: 462, column: 19, scope: !1586)
!1593 = !DILocation(line: 464, column: 25, scope: !1588)
!1594 = !DILocation(line: 464, column: 17, scope: !1588)
!1595 = !DILocation(line: 471, column: 25, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1588, file: !117, line: 465, column: 19)
!1597 = !DILocation(line: 475, column: 21, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !117, line: 475, column: 21)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !117, line: 475, column: 21)
!1600 = !DILocation(line: 475, column: 21, scope: !1599)
!1601 = !DILocation(line: 476, column: 21, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !117, line: 476, column: 21)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !117, line: 476, column: 21)
!1604 = !DILocation(line: 476, column: 21, scope: !1603)
!1605 = !DILocation(line: 477, column: 21, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !117, line: 477, column: 21)
!1607 = distinct !DILexicalBlock(scope: !1596, file: !117, line: 477, column: 21)
!1608 = !DILocation(line: 477, column: 21, scope: !1607)
!1609 = !DILocation(line: 478, column: 21, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !117, line: 478, column: 21)
!1611 = distinct !DILexicalBlock(scope: !1596, file: !117, line: 478, column: 21)
!1612 = !DILocation(line: 478, column: 21, scope: !1611)
!1613 = !DILocation(line: 479, column: 21, scope: !1596)
!1614 = !DILocation(line: 492, column: 31, scope: !1422)
!1615 = !DILocation(line: 493, column: 31, scope: !1422)
!1616 = !DILocation(line: 495, column: 31, scope: !1422)
!1617 = !DILocation(line: 496, column: 31, scope: !1422)
!1618 = !DILocation(line: 497, column: 31, scope: !1422)
!1619 = !DILocation(line: 500, column: 15, scope: !1422)
!1620 = !DILocation(line: 502, column: 19, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !117, line: 501, column: 13)
!1622 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 500, column: 15)
!1623 = !DILocation(line: 509, column: 33, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 509, column: 15)
!1625 = !DILocation(line: 0, scope: !1422)
!1626 = !DILocation(line: 512, column: 9, scope: !1422)
!1627 = !DILocation(line: 514, column: 15, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 513, column: 15)
!1629 = !DILocation(line: 517, column: 9, scope: !1422)
!1630 = !DILocation(line: 518, column: 15, scope: !1422)
!1631 = !DILocation(line: 526, column: 15, scope: !1422)
!1632 = !DILocation(line: 526, column: 40, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 526, column: 15)
!1634 = !DILocation(line: 526, column: 47, scope: !1633)
!1635 = !DILocation(line: 526, column: 18, scope: !1633)
!1636 = !DILocation(line: 530, column: 17, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 530, column: 15)
!1638 = !DILocation(line: 530, column: 15, scope: !1422)
!1639 = !DILocation(line: 535, column: 11, scope: !1422)
!1640 = !DILocation(line: 549, column: 15, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 548, column: 15)
!1642 = !DILocation(line: 556, column: 15, scope: !1422)
!1643 = !DILocation(line: 558, column: 19, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !117, line: 557, column: 13)
!1645 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 556, column: 15)
!1646 = !DILocation(line: 561, column: 19, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !117, line: 561, column: 19)
!1648 = !DILocation(line: 561, column: 30, scope: !1647)
!1649 = !DILocation(line: 570, column: 15, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !117, line: 570, column: 15)
!1651 = distinct !DILexicalBlock(scope: !1644, file: !117, line: 570, column: 15)
!1652 = !DILocation(line: 570, column: 15, scope: !1651)
!1653 = !DILocation(line: 571, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !117, line: 571, column: 15)
!1655 = distinct !DILexicalBlock(scope: !1644, file: !117, line: 571, column: 15)
!1656 = !DILocation(line: 571, column: 15, scope: !1655)
!1657 = !DILocation(line: 572, column: 15, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !117, line: 572, column: 15)
!1659 = distinct !DILexicalBlock(scope: !1644, file: !117, line: 572, column: 15)
!1660 = !DILocation(line: 572, column: 15, scope: !1659)
!1661 = !DILocation(line: 574, column: 13, scope: !1644)
!1662 = !DILocation(line: 614, column: 17, scope: !1421)
!1663 = !DILocation(line: 0, scope: !1421)
!1664 = !DILocation(line: 617, column: 29, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1426, file: !117, line: 615, column: 15)
!1666 = !DILocation(line: 617, column: 27, scope: !1665)
!1667 = !DILocation(line: 678, column: 40, scope: !1421)
!1668 = !DILocation(line: 680, column: 23, scope: !1455)
!1669 = !DILocation(line: 621, column: 17, scope: !1425)
!1670 = !DILocation(line: 621, column: 27, scope: !1425)
!1671 = !DILocalVariable(name: "__dest", arg: 1, scope: !1672, file: !1673, line: 57, type: !53)
!1672 = distinct !DISubprogram(name: "memset", scope: !1673, file: !1673, line: 57, type: !1674, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1676)
!1673 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!53, !53, !44, !54}
!1676 = !{!1671, !1677, !1678}
!1677 = !DILocalVariable(name: "__ch", arg: 2, scope: !1672, file: !1673, line: 57, type: !44)
!1678 = !DILocalVariable(name: "__len", arg: 3, scope: !1672, file: !1673, line: 57, type: !54)
!1679 = !DILocation(line: 0, scope: !1672, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 622, column: 17, scope: !1425)
!1681 = !DILocation(line: 59, column: 10, scope: !1672, inlinedAt: !1680)
!1682 = !DILocation(line: 626, column: 29, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1425, file: !117, line: 626, column: 21)
!1684 = !DILocation(line: 626, column: 21, scope: !1425)
!1685 = !DILocation(line: 627, column: 29, scope: !1683)
!1686 = !DILocation(line: 627, column: 19, scope: !1683)
!1687 = !DILocation(line: 629, column: 17, scope: !1425)
!1688 = !DILocation(line: 624, column: 19, scope: !1425)
!1689 = !DILocation(line: 625, column: 27, scope: !1425)
!1690 = !DILocation(line: 631, column: 21, scope: !1443)
!1691 = !DILocation(line: 632, column: 56, scope: !1443)
!1692 = !DILocation(line: 632, column: 50, scope: !1443)
!1693 = !DILocation(line: 633, column: 53, scope: !1443)
!1694 = !DILocation(line: 0, scope: !1443)
!1695 = !DILocation(line: 632, column: 36, scope: !1443)
!1696 = !DILocation(line: 634, column: 25, scope: !1443)
!1697 = !DILocation(line: 644, column: 38, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1450, file: !117, line: 642, column: 23)
!1699 = !DILocation(line: 644, column: 48, scope: !1698)
!1700 = !DILocation(line: 644, column: 25, scope: !1698)
!1701 = !DILocation(line: 644, column: 51, scope: !1698)
!1702 = !DILocation(line: 645, column: 28, scope: !1698)
!1703 = !DILocation(line: 644, column: 34, scope: !1698)
!1704 = distinct !{!1704, !1700, !1702, !688}
!1705 = !DILocation(line: 655, column: 29, scope: !1448)
!1706 = !DILocation(line: 0, scope: !1447)
!1707 = !DILocation(line: 659, column: 49, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !117, line: 658, column: 29)
!1709 = distinct !DILexicalBlock(scope: !1447, file: !117, line: 658, column: 29)
!1710 = !DILocation(line: 659, column: 39, scope: !1708)
!1711 = !DILocation(line: 659, column: 31, scope: !1708)
!1712 = !DILocation(line: 658, column: 53, scope: !1708)
!1713 = !DILocation(line: 658, column: 43, scope: !1708)
!1714 = !DILocation(line: 658, column: 29, scope: !1709)
!1715 = distinct !{!1715, !1714, !1716, !688}
!1716 = !DILocation(line: 667, column: 33, scope: !1709)
!1717 = !DILocation(line: 674, column: 19, scope: !1425)
!1718 = !DILocation(line: 670, column: 41, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1449, file: !117, line: 670, column: 29)
!1720 = !DILocation(line: 670, column: 31, scope: !1719)
!1721 = !DILocation(line: 670, column: 29, scope: !1449)
!1722 = !DILocation(line: 672, column: 27, scope: !1449)
!1723 = !DILocation(line: 675, column: 26, scope: !1425)
!1724 = !DILocation(line: 675, column: 24, scope: !1425)
!1725 = !DILocation(line: 674, column: 19, scope: !1443)
!1726 = distinct !{!1726, !1687, !1727, !688}
!1727 = !DILocation(line: 675, column: 44, scope: !1425)
!1728 = !DILocation(line: 676, column: 15, scope: !1426)
!1729 = !DILocation(line: 680, column: 19, scope: !1455)
!1730 = !DILocation(line: 680, column: 45, scope: !1455)
!1731 = !DILocation(line: 684, column: 33, scope: !1454)
!1732 = !DILocation(line: 0, scope: !1454)
!1733 = !DILocation(line: 686, column: 17, scope: !1454)
!1734 = !DILocation(line: 405, column: 12, scope: !1413)
!1735 = !DILocation(line: 688, column: 43, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !117, line: 688, column: 25)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !117, line: 687, column: 19)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !117, line: 686, column: 17)
!1739 = distinct !DILexicalBlock(scope: !1454, file: !117, line: 686, column: 17)
!1740 = !DILocation(line: 690, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !117, line: 690, column: 25)
!1742 = distinct !DILexicalBlock(scope: !1736, file: !117, line: 689, column: 23)
!1743 = !DILocation(line: 690, column: 25, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1741, file: !117, line: 690, column: 25)
!1745 = !DILocation(line: 690, column: 25, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !117, line: 690, column: 25)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !117, line: 690, column: 25)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !117, line: 690, column: 25)
!1749 = !DILocation(line: 690, column: 25, scope: !1747)
!1750 = !DILocation(line: 690, column: 25, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !117, line: 690, column: 25)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !117, line: 690, column: 25)
!1753 = !DILocation(line: 690, column: 25, scope: !1752)
!1754 = !DILocation(line: 690, column: 25, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !117, line: 690, column: 25)
!1756 = distinct !DILexicalBlock(scope: !1748, file: !117, line: 690, column: 25)
!1757 = !DILocation(line: 690, column: 25, scope: !1756)
!1758 = !DILocation(line: 690, column: 25, scope: !1748)
!1759 = !DILocation(line: 690, column: 25, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !117, line: 690, column: 25)
!1761 = distinct !DILexicalBlock(scope: !1741, file: !117, line: 690, column: 25)
!1762 = !DILocation(line: 690, column: 25, scope: !1761)
!1763 = !DILocation(line: 691, column: 25, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !117, line: 691, column: 25)
!1765 = distinct !DILexicalBlock(scope: !1742, file: !117, line: 691, column: 25)
!1766 = !DILocation(line: 691, column: 25, scope: !1765)
!1767 = !DILocation(line: 692, column: 25, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !117, line: 692, column: 25)
!1769 = distinct !DILexicalBlock(scope: !1742, file: !117, line: 692, column: 25)
!1770 = !DILocation(line: 692, column: 25, scope: !1769)
!1771 = !DILocation(line: 693, column: 38, scope: !1742)
!1772 = !DILocation(line: 693, column: 33, scope: !1742)
!1773 = !DILocation(line: 694, column: 23, scope: !1742)
!1774 = !DILocation(line: 695, column: 30, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1736, file: !117, line: 695, column: 30)
!1776 = !DILocation(line: 695, column: 30, scope: !1736)
!1777 = !DILocation(line: 697, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !117, line: 697, column: 25)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !117, line: 697, column: 25)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !117, line: 696, column: 23)
!1781 = !DILocation(line: 697, column: 25, scope: !1779)
!1782 = !DILocation(line: 699, column: 23, scope: !1780)
!1783 = !DILocation(line: 700, column: 35, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1737, file: !117, line: 700, column: 25)
!1785 = !DILocation(line: 700, column: 30, scope: !1784)
!1786 = !DILocation(line: 700, column: 25, scope: !1737)
!1787 = !DILocation(line: 702, column: 21, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !117, line: 702, column: 21)
!1789 = distinct !DILexicalBlock(scope: !1737, file: !117, line: 702, column: 21)
!1790 = !DILocation(line: 702, column: 21, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !117, line: 702, column: 21)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !117, line: 702, column: 21)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !117, line: 702, column: 21)
!1794 = !DILocation(line: 702, column: 21, scope: !1792)
!1795 = !DILocation(line: 702, column: 21, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !117, line: 702, column: 21)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !117, line: 702, column: 21)
!1798 = !DILocation(line: 702, column: 21, scope: !1797)
!1799 = !DILocation(line: 702, column: 21, scope: !1793)
!1800 = !DILocation(line: 0, scope: !1737)
!1801 = !DILocation(line: 703, column: 21, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !117, line: 703, column: 21)
!1803 = distinct !DILexicalBlock(scope: !1737, file: !117, line: 703, column: 21)
!1804 = !DILocation(line: 703, column: 21, scope: !1803)
!1805 = !DILocation(line: 704, column: 25, scope: !1737)
!1806 = !DILocation(line: 686, column: 17, scope: !1738)
!1807 = distinct !{!1807, !1808, !1809}
!1808 = !DILocation(line: 686, column: 17, scope: !1739)
!1809 = !DILocation(line: 705, column: 19, scope: !1739)
!1810 = !DILocation(line: 416, column: 30, scope: !1531)
!1811 = !DILocation(line: 712, column: 34, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1413, file: !117, line: 712, column: 11)
!1813 = !DILocation(line: 715, column: 35, scope: !1812)
!1814 = !DILocation(line: 715, column: 17, scope: !1812)
!1815 = !DILocation(line: 715, column: 47, scope: !1812)
!1816 = !DILocation(line: 715, column: 65, scope: !1812)
!1817 = !DILocation(line: 716, column: 11, scope: !1812)
!1818 = !DILocation(line: 712, column: 11, scope: !1413)
!1819 = !DILocation(line: 400, column: 10, scope: !1415)
!1820 = !DILocation(line: 719, column: 5, scope: !1413)
!1821 = !DILocation(line: 720, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1413, file: !117, line: 720, column: 7)
!1823 = !DILocation(line: 720, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1822, file: !117, line: 720, column: 7)
!1825 = !DILocation(line: 720, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !117, line: 720, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !117, line: 720, column: 7)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !117, line: 720, column: 7)
!1829 = !DILocation(line: 720, column: 7, scope: !1827)
!1830 = !DILocation(line: 720, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !117, line: 720, column: 7)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !117, line: 720, column: 7)
!1833 = !DILocation(line: 720, column: 7, scope: !1832)
!1834 = !DILocation(line: 720, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !117, line: 720, column: 7)
!1836 = distinct !DILexicalBlock(scope: !1828, file: !117, line: 720, column: 7)
!1837 = !DILocation(line: 720, column: 7, scope: !1836)
!1838 = !DILocation(line: 720, column: 7, scope: !1828)
!1839 = !DILocation(line: 720, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !117, line: 720, column: 7)
!1841 = distinct !DILexicalBlock(scope: !1822, file: !117, line: 720, column: 7)
!1842 = !DILocation(line: 720, column: 7, scope: !1841)
!1843 = !DILocation(line: 722, column: 5, scope: !1413)
!1844 = !DILocation(line: 723, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !117, line: 723, column: 7)
!1846 = distinct !DILexicalBlock(scope: !1413, file: !117, line: 723, column: 7)
!1847 = !DILocation(line: 424, column: 9, scope: !1413)
!1848 = !DILocation(line: 723, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !117, line: 723, column: 7)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !117, line: 723, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1845, file: !117, line: 723, column: 7)
!1852 = !DILocation(line: 723, column: 7, scope: !1850)
!1853 = !DILocation(line: 723, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !117, line: 723, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !117, line: 723, column: 7)
!1856 = !DILocation(line: 723, column: 7, scope: !1855)
!1857 = !DILocation(line: 723, column: 7, scope: !1851)
!1858 = !DILocation(line: 724, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !117, line: 724, column: 7)
!1860 = distinct !DILexicalBlock(scope: !1413, file: !117, line: 724, column: 7)
!1861 = !DILocation(line: 724, column: 7, scope: !1860)
!1862 = !DILocation(line: 726, column: 13, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1413, file: !117, line: 726, column: 11)
!1864 = !DILocation(line: 726, column: 11, scope: !1413)
!1865 = !DILocation(line: 728, column: 5, scope: !1414)
!1866 = !DILocation(line: 400, column: 75, scope: !1414)
!1867 = !DILocation(line: 400, column: 3, scope: !1414)
!1868 = distinct !{!1868, !1527, !1869, !688}
!1869 = !DILocation(line: 728, column: 5, scope: !1415)
!1870 = !DILocation(line: 730, column: 11, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 730, column: 7)
!1872 = !DILocation(line: 730, column: 16, scope: !1871)
!1873 = !DILocation(line: 738, column: 51, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 738, column: 7)
!1875 = !DILocation(line: 741, column: 11, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !117, line: 741, column: 11)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !117, line: 740, column: 5)
!1878 = !DILocation(line: 741, column: 11, scope: !1877)
!1879 = !DILocation(line: 742, column: 16, scope: !1876)
!1880 = !DILocation(line: 742, column: 9, scope: !1876)
!1881 = !DILocation(line: 746, column: 18, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1876, file: !117, line: 746, column: 16)
!1883 = !DILocation(line: 746, column: 29, scope: !1882)
!1884 = !DILocation(line: 755, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 755, column: 7)
!1886 = !DILocation(line: 755, column: 20, scope: !1885)
!1887 = !DILocation(line: 756, column: 12, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !117, line: 756, column: 5)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !117, line: 756, column: 5)
!1890 = !DILocation(line: 756, column: 5, scope: !1889)
!1891 = !DILocation(line: 757, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !117, line: 757, column: 7)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !117, line: 757, column: 7)
!1894 = !DILocation(line: 757, column: 7, scope: !1893)
!1895 = !DILocation(line: 756, column: 39, scope: !1888)
!1896 = distinct !{!1896, !1890, !1897, !688}
!1897 = !DILocation(line: 757, column: 7, scope: !1889)
!1898 = !DILocation(line: 759, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 759, column: 7)
!1900 = !DILocation(line: 759, column: 7, scope: !1386)
!1901 = !DILocation(line: 760, column: 5, scope: !1899)
!1902 = !DILocation(line: 760, column: 17, scope: !1899)
!1903 = !DILocation(line: 763, column: 2, scope: !1386)
!1904 = !DILocation(line: 766, column: 51, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 766, column: 7)
!1906 = !DILocation(line: 766, column: 21, scope: !1905)
!1907 = !DILocation(line: 770, column: 42, scope: !1386)
!1908 = !DILocation(line: 768, column: 10, scope: !1386)
!1909 = !DILocation(line: 768, column: 3, scope: !1386)
!1910 = !DILocation(line: 772, column: 1, scope: !1386)
!1911 = distinct !DISubprogram(name: "gettext_quote", scope: !117, file: !117, line: 207, type: !1912, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!73, !73, !29}
!1914 = !{!1915, !1916, !1917, !1918}
!1915 = !DILocalVariable(name: "msgid", arg: 1, scope: !1911, file: !117, line: 207, type: !73)
!1916 = !DILocalVariable(name: "s", arg: 2, scope: !1911, file: !117, line: 207, type: !29)
!1917 = !DILocalVariable(name: "translation", scope: !1911, file: !117, line: 209, type: !73)
!1918 = !DILocalVariable(name: "locale_code", scope: !1911, file: !117, line: 210, type: !73)
!1919 = !DILocation(line: 0, scope: !1911)
!1920 = !DILocation(line: 209, column: 29, scope: !1911)
!1921 = !DILocation(line: 212, column: 19, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1911, file: !117, line: 212, column: 7)
!1923 = !DILocation(line: 212, column: 7, scope: !1911)
!1924 = !DILocation(line: 233, column: 17, scope: !1911)
!1925 = !DILocalVariable(name: "s1", arg: 1, scope: !1926, file: !1927, line: 160, type: !73)
!1926 = distinct !DISubprogram(name: "strcaseeq0", scope: !1927, file: !1927, line: 160, type: !1928, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1930)
!1927 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!44, !73, !73, !52, !52, !52, !52, !52, !52, !52, !52, !52}
!1930 = !{!1925, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940}
!1931 = !DILocalVariable(name: "s2", arg: 2, scope: !1926, file: !1927, line: 160, type: !73)
!1932 = !DILocalVariable(name: "s20", arg: 3, scope: !1926, file: !1927, line: 160, type: !52)
!1933 = !DILocalVariable(name: "s21", arg: 4, scope: !1926, file: !1927, line: 160, type: !52)
!1934 = !DILocalVariable(name: "s22", arg: 5, scope: !1926, file: !1927, line: 160, type: !52)
!1935 = !DILocalVariable(name: "s23", arg: 6, scope: !1926, file: !1927, line: 160, type: !52)
!1936 = !DILocalVariable(name: "s24", arg: 7, scope: !1926, file: !1927, line: 160, type: !52)
!1937 = !DILocalVariable(name: "s25", arg: 8, scope: !1926, file: !1927, line: 160, type: !52)
!1938 = !DILocalVariable(name: "s26", arg: 9, scope: !1926, file: !1927, line: 160, type: !52)
!1939 = !DILocalVariable(name: "s27", arg: 10, scope: !1926, file: !1927, line: 160, type: !52)
!1940 = !DILocalVariable(name: "s28", arg: 11, scope: !1926, file: !1927, line: 160, type: !52)
!1941 = !DILocation(line: 0, scope: !1926, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 234, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1911, file: !117, line: 234, column: 7)
!1944 = !DILocation(line: 162, column: 7, scope: !1945, inlinedAt: !1942)
!1945 = distinct !DILexicalBlock(scope: !1926, file: !1927, line: 162, column: 7)
!1946 = !DILocalVariable(name: "s1", arg: 1, scope: !1947, file: !1927, line: 146, type: !73)
!1947 = distinct !DISubprogram(name: "strcaseeq1", scope: !1927, file: !1927, line: 146, type: !1948, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!44, !73, !73, !52, !52, !52, !52, !52, !52, !52, !52}
!1950 = !{!1946, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959}
!1951 = !DILocalVariable(name: "s2", arg: 2, scope: !1947, file: !1927, line: 146, type: !73)
!1952 = !DILocalVariable(name: "s21", arg: 3, scope: !1947, file: !1927, line: 146, type: !52)
!1953 = !DILocalVariable(name: "s22", arg: 4, scope: !1947, file: !1927, line: 146, type: !52)
!1954 = !DILocalVariable(name: "s23", arg: 5, scope: !1947, file: !1927, line: 146, type: !52)
!1955 = !DILocalVariable(name: "s24", arg: 6, scope: !1947, file: !1927, line: 146, type: !52)
!1956 = !DILocalVariable(name: "s25", arg: 7, scope: !1947, file: !1927, line: 146, type: !52)
!1957 = !DILocalVariable(name: "s26", arg: 8, scope: !1947, file: !1927, line: 146, type: !52)
!1958 = !DILocalVariable(name: "s27", arg: 9, scope: !1947, file: !1927, line: 146, type: !52)
!1959 = !DILocalVariable(name: "s28", arg: 10, scope: !1947, file: !1927, line: 146, type: !52)
!1960 = !DILocation(line: 0, scope: !1947, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 167, column: 16, scope: !1962, inlinedAt: !1942)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !1927, line: 164, column: 11)
!1963 = distinct !DILexicalBlock(scope: !1945, file: !1927, line: 163, column: 5)
!1964 = !DILocation(line: 148, column: 7, scope: !1965, inlinedAt: !1961)
!1965 = distinct !DILexicalBlock(scope: !1947, file: !1927, line: 148, column: 7)
!1966 = !DILocalVariable(name: "s1", arg: 1, scope: !1967, file: !1927, line: 132, type: !73)
!1967 = distinct !DISubprogram(name: "strcaseeq2", scope: !1927, file: !1927, line: 132, type: !1968, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!44, !73, !73, !52, !52, !52, !52, !52, !52, !52}
!1970 = !{!1966, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978}
!1971 = !DILocalVariable(name: "s2", arg: 2, scope: !1967, file: !1927, line: 132, type: !73)
!1972 = !DILocalVariable(name: "s22", arg: 3, scope: !1967, file: !1927, line: 132, type: !52)
!1973 = !DILocalVariable(name: "s23", arg: 4, scope: !1967, file: !1927, line: 132, type: !52)
!1974 = !DILocalVariable(name: "s24", arg: 5, scope: !1967, file: !1927, line: 132, type: !52)
!1975 = !DILocalVariable(name: "s25", arg: 6, scope: !1967, file: !1927, line: 132, type: !52)
!1976 = !DILocalVariable(name: "s26", arg: 7, scope: !1967, file: !1927, line: 132, type: !52)
!1977 = !DILocalVariable(name: "s27", arg: 8, scope: !1967, file: !1927, line: 132, type: !52)
!1978 = !DILocalVariable(name: "s28", arg: 9, scope: !1967, file: !1927, line: 132, type: !52)
!1979 = !DILocation(line: 0, scope: !1967, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 153, column: 16, scope: !1981, inlinedAt: !1961)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !1927, line: 150, column: 11)
!1982 = distinct !DILexicalBlock(scope: !1965, file: !1927, line: 149, column: 5)
!1983 = !DILocation(line: 134, column: 7, scope: !1984, inlinedAt: !1980)
!1984 = distinct !DILexicalBlock(scope: !1967, file: !1927, line: 134, column: 7)
!1985 = !DILocalVariable(name: "s1", arg: 1, scope: !1986, file: !1927, line: 118, type: !73)
!1986 = distinct !DISubprogram(name: "strcaseeq3", scope: !1927, file: !1927, line: 118, type: !1987, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!44, !73, !73, !52, !52, !52, !52, !52, !52}
!1989 = !{!1985, !1990, !1991, !1992, !1993, !1994, !1995, !1996}
!1990 = !DILocalVariable(name: "s2", arg: 2, scope: !1986, file: !1927, line: 118, type: !73)
!1991 = !DILocalVariable(name: "s23", arg: 3, scope: !1986, file: !1927, line: 118, type: !52)
!1992 = !DILocalVariable(name: "s24", arg: 4, scope: !1986, file: !1927, line: 118, type: !52)
!1993 = !DILocalVariable(name: "s25", arg: 5, scope: !1986, file: !1927, line: 118, type: !52)
!1994 = !DILocalVariable(name: "s26", arg: 6, scope: !1986, file: !1927, line: 118, type: !52)
!1995 = !DILocalVariable(name: "s27", arg: 7, scope: !1986, file: !1927, line: 118, type: !52)
!1996 = !DILocalVariable(name: "s28", arg: 8, scope: !1986, file: !1927, line: 118, type: !52)
!1997 = !DILocation(line: 0, scope: !1986, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 139, column: 16, scope: !1999, inlinedAt: !1980)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !1927, line: 136, column: 11)
!2000 = distinct !DILexicalBlock(scope: !1984, file: !1927, line: 135, column: 5)
!2001 = !DILocation(line: 120, column: 7, scope: !2002, inlinedAt: !1998)
!2002 = distinct !DILexicalBlock(scope: !1986, file: !1927, line: 120, column: 7)
!2003 = !DILocation(line: 120, column: 7, scope: !1986, inlinedAt: !1998)
!2004 = !DILocalVariable(name: "s1", arg: 1, scope: !2005, file: !1927, line: 104, type: !73)
!2005 = distinct !DISubprogram(name: "strcaseeq4", scope: !1927, file: !1927, line: 104, type: !2006, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!44, !73, !73, !52, !52, !52, !52, !52}
!2008 = !{!2004, !2009, !2010, !2011, !2012, !2013, !2014}
!2009 = !DILocalVariable(name: "s2", arg: 2, scope: !2005, file: !1927, line: 104, type: !73)
!2010 = !DILocalVariable(name: "s24", arg: 3, scope: !2005, file: !1927, line: 104, type: !52)
!2011 = !DILocalVariable(name: "s25", arg: 4, scope: !2005, file: !1927, line: 104, type: !52)
!2012 = !DILocalVariable(name: "s26", arg: 5, scope: !2005, file: !1927, line: 104, type: !52)
!2013 = !DILocalVariable(name: "s27", arg: 6, scope: !2005, file: !1927, line: 104, type: !52)
!2014 = !DILocalVariable(name: "s28", arg: 7, scope: !2005, file: !1927, line: 104, type: !52)
!2015 = !DILocation(line: 0, scope: !2005, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 125, column: 16, scope: !2017, inlinedAt: !1998)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !1927, line: 122, column: 11)
!2018 = distinct !DILexicalBlock(scope: !2002, file: !1927, line: 121, column: 5)
!2019 = !DILocation(line: 106, column: 7, scope: !2020, inlinedAt: !2016)
!2020 = distinct !DILexicalBlock(scope: !2005, file: !1927, line: 106, column: 7)
!2021 = !DILocation(line: 106, column: 7, scope: !2005, inlinedAt: !2016)
!2022 = !DILocalVariable(name: "s1", arg: 1, scope: !2023, file: !1927, line: 90, type: !73)
!2023 = distinct !DISubprogram(name: "strcaseeq5", scope: !1927, file: !1927, line: 90, type: !2024, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!44, !73, !73, !52, !52, !52, !52}
!2026 = !{!2022, !2027, !2028, !2029, !2030, !2031}
!2027 = !DILocalVariable(name: "s2", arg: 2, scope: !2023, file: !1927, line: 90, type: !73)
!2028 = !DILocalVariable(name: "s25", arg: 3, scope: !2023, file: !1927, line: 90, type: !52)
!2029 = !DILocalVariable(name: "s26", arg: 4, scope: !2023, file: !1927, line: 90, type: !52)
!2030 = !DILocalVariable(name: "s27", arg: 5, scope: !2023, file: !1927, line: 90, type: !52)
!2031 = !DILocalVariable(name: "s28", arg: 6, scope: !2023, file: !1927, line: 90, type: !52)
!2032 = !DILocation(line: 0, scope: !2023, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 111, column: 16, scope: !2034, inlinedAt: !2016)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !1927, line: 108, column: 11)
!2035 = distinct !DILexicalBlock(scope: !2020, file: !1927, line: 107, column: 5)
!2036 = !DILocation(line: 92, column: 7, scope: !2037, inlinedAt: !2033)
!2037 = distinct !DILexicalBlock(scope: !2023, file: !1927, line: 92, column: 7)
!2038 = !DILocation(line: 92, column: 7, scope: !2023, inlinedAt: !2033)
!2039 = !DILocation(line: 235, column: 12, scope: !1943)
!2040 = !DILocation(line: 235, column: 21, scope: !1943)
!2041 = !DILocation(line: 235, column: 5, scope: !1943)
!2042 = !DILocation(line: 0, scope: !1947, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 167, column: 16, scope: !1962, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 236, column: 7, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1911, file: !117, line: 236, column: 7)
!2046 = !DILocation(line: 148, column: 7, scope: !1965, inlinedAt: !2043)
!2047 = !DILocation(line: 0, scope: !1967, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 153, column: 16, scope: !1981, inlinedAt: !2043)
!2049 = !DILocation(line: 134, column: 7, scope: !1984, inlinedAt: !2048)
!2050 = !DILocation(line: 134, column: 7, scope: !1967, inlinedAt: !2048)
!2051 = !DILocation(line: 0, scope: !1986, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 139, column: 16, scope: !1999, inlinedAt: !2048)
!2053 = !DILocation(line: 120, column: 7, scope: !2002, inlinedAt: !2052)
!2054 = !DILocation(line: 120, column: 7, scope: !1986, inlinedAt: !2052)
!2055 = !DILocation(line: 0, scope: !2005, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 125, column: 16, scope: !2017, inlinedAt: !2052)
!2057 = !DILocation(line: 106, column: 7, scope: !2020, inlinedAt: !2056)
!2058 = !DILocation(line: 106, column: 7, scope: !2005, inlinedAt: !2056)
!2059 = !DILocation(line: 0, scope: !2023, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 111, column: 16, scope: !2034, inlinedAt: !2056)
!2061 = !DILocation(line: 92, column: 7, scope: !2037, inlinedAt: !2060)
!2062 = !DILocation(line: 92, column: 7, scope: !2023, inlinedAt: !2060)
!2063 = !DILocalVariable(name: "s1", arg: 1, scope: !2064, file: !1927, line: 76, type: !73)
!2064 = distinct !DISubprogram(name: "strcaseeq6", scope: !1927, file: !1927, line: 76, type: !2065, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!44, !73, !73, !52, !52, !52}
!2067 = !{!2063, !2068, !2069, !2070, !2071}
!2068 = !DILocalVariable(name: "s2", arg: 2, scope: !2064, file: !1927, line: 76, type: !73)
!2069 = !DILocalVariable(name: "s26", arg: 3, scope: !2064, file: !1927, line: 76, type: !52)
!2070 = !DILocalVariable(name: "s27", arg: 4, scope: !2064, file: !1927, line: 76, type: !52)
!2071 = !DILocalVariable(name: "s28", arg: 5, scope: !2064, file: !1927, line: 76, type: !52)
!2072 = !DILocation(line: 0, scope: !2064, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 97, column: 16, scope: !2074, inlinedAt: !2060)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !1927, line: 94, column: 11)
!2075 = distinct !DILexicalBlock(scope: !2037, file: !1927, line: 93, column: 5)
!2076 = !DILocation(line: 78, column: 7, scope: !2077, inlinedAt: !2073)
!2077 = distinct !DILexicalBlock(scope: !2064, file: !1927, line: 78, column: 7)
!2078 = !DILocation(line: 78, column: 7, scope: !2064, inlinedAt: !2073)
!2079 = !DILocalVariable(name: "s1", arg: 1, scope: !2080, file: !1927, line: 62, type: !73)
!2080 = distinct !DISubprogram(name: "strcaseeq7", scope: !1927, file: !1927, line: 62, type: !2081, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!44, !73, !73, !52, !52}
!2083 = !{!2079, !2084, !2085, !2086}
!2084 = !DILocalVariable(name: "s2", arg: 2, scope: !2080, file: !1927, line: 62, type: !73)
!2085 = !DILocalVariable(name: "s27", arg: 3, scope: !2080, file: !1927, line: 62, type: !52)
!2086 = !DILocalVariable(name: "s28", arg: 4, scope: !2080, file: !1927, line: 62, type: !52)
!2087 = !DILocation(line: 0, scope: !2080, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 83, column: 16, scope: !2089, inlinedAt: !2073)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !1927, line: 80, column: 11)
!2090 = distinct !DILexicalBlock(scope: !2077, file: !1927, line: 79, column: 5)
!2091 = !DILocation(line: 64, column: 7, scope: !2092, inlinedAt: !2088)
!2092 = distinct !DILexicalBlock(scope: !2080, file: !1927, line: 64, column: 7)
!2093 = !DILocation(line: 236, column: 7, scope: !1911)
!2094 = !DILocation(line: 237, column: 12, scope: !2045)
!2095 = !DILocation(line: 237, column: 21, scope: !2045)
!2096 = !DILocation(line: 237, column: 5, scope: !2045)
!2097 = !DILocation(line: 239, column: 13, scope: !1911)
!2098 = !DILocation(line: 239, column: 11, scope: !1911)
!2099 = !DILocation(line: 239, column: 3, scope: !1911)
!2100 = !DILocation(line: 240, column: 1, scope: !1911)
!2101 = !DISubprogram(name: "iswprint", scope: !2102, file: !2102, line: 120, type: !2103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!2102 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!44, !6}
!2105 = !DISubprogram(name: "mbsinit", scope: !2106, file: !2106, line: 292, type: !2107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!2106 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!44, !2109}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1431)
!2111 = distinct !DISubprogram(name: "quotearg_alloc", scope: !117, file: !117, line: 799, type: !2112, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!51, !73, !54, !1278}
!2114 = !{!2115, !2116, !2117}
!2115 = !DILocalVariable(name: "arg", arg: 1, scope: !2111, file: !117, line: 799, type: !73)
!2116 = !DILocalVariable(name: "argsize", arg: 2, scope: !2111, file: !117, line: 799, type: !54)
!2117 = !DILocalVariable(name: "o", arg: 3, scope: !2111, file: !117, line: 800, type: !1278)
!2118 = !DILocation(line: 0, scope: !2111)
!2119 = !DILocalVariable(name: "arg", arg: 1, scope: !2120, file: !117, line: 812, type: !73)
!2120 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !117, file: !117, line: 812, type: !2121, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!51, !73, !54, !189, !1278}
!2123 = !{!2119, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131}
!2124 = !DILocalVariable(name: "argsize", arg: 2, scope: !2120, file: !117, line: 812, type: !54)
!2125 = !DILocalVariable(name: "size", arg: 3, scope: !2120, file: !117, line: 812, type: !189)
!2126 = !DILocalVariable(name: "o", arg: 4, scope: !2120, file: !117, line: 813, type: !1278)
!2127 = !DILocalVariable(name: "p", scope: !2120, file: !117, line: 815, type: !1278)
!2128 = !DILocalVariable(name: "e", scope: !2120, file: !117, line: 816, type: !44)
!2129 = !DILocalVariable(name: "flags", scope: !2120, file: !117, line: 818, type: !44)
!2130 = !DILocalVariable(name: "bufsize", scope: !2120, file: !117, line: 819, type: !54)
!2131 = !DILocalVariable(name: "buf", scope: !2120, file: !117, line: 823, type: !51)
!2132 = !DILocation(line: 0, scope: !2120, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 802, column: 10, scope: !2111)
!2134 = !DILocation(line: 815, column: 37, scope: !2120, inlinedAt: !2133)
!2135 = !DILocation(line: 816, column: 11, scope: !2120, inlinedAt: !2133)
!2136 = !DILocation(line: 818, column: 18, scope: !2120, inlinedAt: !2133)
!2137 = !DILocation(line: 818, column: 24, scope: !2120, inlinedAt: !2133)
!2138 = !DILocation(line: 819, column: 69, scope: !2120, inlinedAt: !2133)
!2139 = !DILocation(line: 820, column: 53, scope: !2120, inlinedAt: !2133)
!2140 = !DILocation(line: 821, column: 49, scope: !2120, inlinedAt: !2133)
!2141 = !DILocation(line: 822, column: 49, scope: !2120, inlinedAt: !2133)
!2142 = !DILocation(line: 819, column: 20, scope: !2120, inlinedAt: !2133)
!2143 = !DILocation(line: 822, column: 62, scope: !2120, inlinedAt: !2133)
!2144 = !DILocalVariable(name: "n", arg: 1, scope: !2145, file: !185, line: 216, type: !54)
!2145 = distinct !DISubprogram(name: "xcharalloc", scope: !185, file: !185, line: 216, type: !2146, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2148)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!51, !54}
!2148 = !{!2144}
!2149 = !DILocation(line: 0, scope: !2145, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 823, column: 15, scope: !2120, inlinedAt: !2133)
!2151 = !DILocation(line: 218, column: 10, scope: !2145, inlinedAt: !2150)
!2152 = !DILocation(line: 824, column: 60, scope: !2120, inlinedAt: !2133)
!2153 = !DILocation(line: 826, column: 32, scope: !2120, inlinedAt: !2133)
!2154 = !DILocation(line: 826, column: 47, scope: !2120, inlinedAt: !2133)
!2155 = !DILocation(line: 824, column: 3, scope: !2120, inlinedAt: !2133)
!2156 = !DILocation(line: 827, column: 9, scope: !2120, inlinedAt: !2133)
!2157 = !DILocation(line: 802, column: 3, scope: !2111)
!2158 = !DILocation(line: 0, scope: !2120)
!2159 = !DILocation(line: 815, column: 37, scope: !2120)
!2160 = !DILocation(line: 816, column: 11, scope: !2120)
!2161 = !DILocation(line: 818, column: 18, scope: !2120)
!2162 = !DILocation(line: 818, column: 27, scope: !2120)
!2163 = !DILocation(line: 818, column: 24, scope: !2120)
!2164 = !DILocation(line: 819, column: 69, scope: !2120)
!2165 = !DILocation(line: 820, column: 53, scope: !2120)
!2166 = !DILocation(line: 821, column: 49, scope: !2120)
!2167 = !DILocation(line: 822, column: 49, scope: !2120)
!2168 = !DILocation(line: 819, column: 20, scope: !2120)
!2169 = !DILocation(line: 822, column: 62, scope: !2120)
!2170 = !DILocation(line: 0, scope: !2145, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 823, column: 15, scope: !2120)
!2172 = !DILocation(line: 218, column: 10, scope: !2145, inlinedAt: !2171)
!2173 = !DILocation(line: 824, column: 60, scope: !2120)
!2174 = !DILocation(line: 826, column: 32, scope: !2120)
!2175 = !DILocation(line: 826, column: 47, scope: !2120)
!2176 = !DILocation(line: 824, column: 3, scope: !2120)
!2177 = !DILocation(line: 827, column: 9, scope: !2120)
!2178 = !DILocation(line: 828, column: 7, scope: !2120)
!2179 = !DILocation(line: 829, column: 11, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2120, file: !117, line: 828, column: 7)
!2181 = !{!945, !945, i64 0}
!2182 = !DILocation(line: 829, column: 5, scope: !2180)
!2183 = !DILocation(line: 830, column: 3, scope: !2120)
!2184 = distinct !DISubprogram(name: "quotearg_free", scope: !117, file: !117, line: 848, type: !646, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2185)
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "sv", scope: !2184, file: !117, line: 850, type: !153)
!2187 = !DILocalVariable(name: "i", scope: !2184, file: !117, line: 851, type: !44)
!2188 = !DILocation(line: 850, column: 24, scope: !2184)
!2189 = !DILocation(line: 0, scope: !2184)
!2190 = !DILocation(line: 852, column: 19, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !117, line: 852, column: 3)
!2192 = distinct !DILexicalBlock(scope: !2184, file: !117, line: 852, column: 3)
!2193 = !DILocation(line: 852, column: 17, scope: !2191)
!2194 = !DILocation(line: 852, column: 3, scope: !2192)
!2195 = !DILocation(line: 853, column: 17, scope: !2191)
!2196 = !{!2197, !637, i64 8}
!2197 = !{!"slotvec", !945, i64 0, !637, i64 8}
!2198 = !DILocation(line: 853, column: 5, scope: !2191)
!2199 = !DILocation(line: 852, column: 28, scope: !2191)
!2200 = distinct !{!2200, !2194, !2201, !688}
!2201 = !DILocation(line: 853, column: 20, scope: !2192)
!2202 = !DILocation(line: 854, column: 13, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2184, file: !117, line: 854, column: 7)
!2204 = !DILocation(line: 854, column: 17, scope: !2203)
!2205 = !DILocation(line: 854, column: 7, scope: !2184)
!2206 = !DILocation(line: 856, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !117, line: 855, column: 5)
!2208 = !DILocation(line: 857, column: 21, scope: !2207)
!2209 = !{!2197, !945, i64 0}
!2210 = !DILocation(line: 858, column: 20, scope: !2207)
!2211 = !DILocation(line: 859, column: 5, scope: !2207)
!2212 = !DILocation(line: 860, column: 10, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2184, file: !117, line: 860, column: 7)
!2214 = !DILocation(line: 860, column: 7, scope: !2184)
!2215 = !DILocation(line: 862, column: 13, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !117, line: 861, column: 5)
!2217 = !DILocation(line: 862, column: 7, scope: !2216)
!2218 = !DILocation(line: 863, column: 15, scope: !2216)
!2219 = !DILocation(line: 864, column: 5, scope: !2216)
!2220 = !DILocation(line: 865, column: 10, scope: !2184)
!2221 = !DILocation(line: 866, column: 1, scope: !2184)
!2222 = distinct !DISubprogram(name: "quotearg_n", scope: !117, file: !117, line: 931, type: !765, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2223)
!2223 = !{!2224, !2225}
!2224 = !DILocalVariable(name: "n", arg: 1, scope: !2222, file: !117, line: 931, type: !44)
!2225 = !DILocalVariable(name: "arg", arg: 2, scope: !2222, file: !117, line: 931, type: !73)
!2226 = !DILocation(line: 0, scope: !2222)
!2227 = !DILocation(line: 933, column: 10, scope: !2222)
!2228 = !DILocation(line: 933, column: 3, scope: !2222)
!2229 = distinct !DISubprogram(name: "quotearg_n_options", scope: !117, file: !117, line: 877, type: !2230, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!51, !44, !73, !54, !1278}
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2242, !2243, !2245, !2246, !2247}
!2233 = !DILocalVariable(name: "n", arg: 1, scope: !2229, file: !117, line: 877, type: !44)
!2234 = !DILocalVariable(name: "arg", arg: 2, scope: !2229, file: !117, line: 877, type: !73)
!2235 = !DILocalVariable(name: "argsize", arg: 3, scope: !2229, file: !117, line: 877, type: !54)
!2236 = !DILocalVariable(name: "options", arg: 4, scope: !2229, file: !117, line: 878, type: !1278)
!2237 = !DILocalVariable(name: "e", scope: !2229, file: !117, line: 880, type: !44)
!2238 = !DILocalVariable(name: "sv", scope: !2229, file: !117, line: 882, type: !153)
!2239 = !DILocalVariable(name: "preallocated", scope: !2240, file: !117, line: 889, type: !68)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !117, line: 888, column: 5)
!2241 = distinct !DILexicalBlock(scope: !2229, file: !117, line: 887, column: 7)
!2242 = !DILocalVariable(name: "nmax", scope: !2240, file: !117, line: 890, type: !44)
!2243 = !DILocalVariable(name: "size", scope: !2244, file: !117, line: 903, type: !54)
!2244 = distinct !DILexicalBlock(scope: !2229, file: !117, line: 902, column: 3)
!2245 = !DILocalVariable(name: "val", scope: !2244, file: !117, line: 904, type: !51)
!2246 = !DILocalVariable(name: "flags", scope: !2244, file: !117, line: 906, type: !44)
!2247 = !DILocalVariable(name: "qsize", scope: !2244, file: !117, line: 907, type: !54)
!2248 = !DILocation(line: 0, scope: !2229)
!2249 = !DILocation(line: 880, column: 11, scope: !2229)
!2250 = !DILocation(line: 882, column: 24, scope: !2229)
!2251 = !DILocation(line: 884, column: 9, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2229, file: !117, line: 884, column: 7)
!2253 = !DILocation(line: 884, column: 7, scope: !2229)
!2254 = !DILocation(line: 885, column: 5, scope: !2252)
!2255 = !DILocation(line: 887, column: 7, scope: !2241)
!2256 = !DILocation(line: 887, column: 14, scope: !2241)
!2257 = !DILocation(line: 887, column: 7, scope: !2229)
!2258 = !DILocation(line: 889, column: 31, scope: !2240)
!2259 = !DILocation(line: 0, scope: !2240)
!2260 = !DILocation(line: 892, column: 16, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2240, file: !117, line: 892, column: 11)
!2262 = !DILocation(line: 892, column: 11, scope: !2240)
!2263 = !DILocation(line: 893, column: 9, scope: !2261)
!2264 = !DILocation(line: 895, column: 32, scope: !2240)
!2265 = !DILocation(line: 895, column: 61, scope: !2240)
!2266 = !DILocation(line: 895, column: 66, scope: !2240)
!2267 = !DILocation(line: 895, column: 22, scope: !2240)
!2268 = !DILocation(line: 895, column: 15, scope: !2240)
!2269 = !DILocation(line: 896, column: 11, scope: !2240)
!2270 = !DILocation(line: 897, column: 15, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2240, file: !117, line: 896, column: 11)
!2272 = !{i64 0, i64 8, !2181, i64 8, i64 8, !636}
!2273 = !DILocation(line: 897, column: 9, scope: !2271)
!2274 = !DILocation(line: 898, column: 20, scope: !2240)
!2275 = !DILocation(line: 898, column: 18, scope: !2240)
!2276 = !DILocation(line: 898, column: 15, scope: !2240)
!2277 = !DILocation(line: 898, column: 38, scope: !2240)
!2278 = !DILocation(line: 898, column: 31, scope: !2240)
!2279 = !DILocation(line: 898, column: 48, scope: !2240)
!2280 = !DILocation(line: 0, scope: !1672, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 898, column: 7, scope: !2240)
!2282 = !DILocation(line: 59, column: 10, scope: !1672, inlinedAt: !2281)
!2283 = !DILocation(line: 899, column: 14, scope: !2240)
!2284 = !DILocation(line: 900, column: 5, scope: !2240)
!2285 = !DILocation(line: 903, column: 19, scope: !2244)
!2286 = !DILocation(line: 903, column: 25, scope: !2244)
!2287 = !DILocation(line: 0, scope: !2244)
!2288 = !DILocation(line: 904, column: 23, scope: !2244)
!2289 = !DILocation(line: 906, column: 26, scope: !2244)
!2290 = !DILocation(line: 906, column: 32, scope: !2244)
!2291 = !DILocation(line: 908, column: 55, scope: !2244)
!2292 = !DILocation(line: 909, column: 46, scope: !2244)
!2293 = !DILocation(line: 910, column: 55, scope: !2244)
!2294 = !DILocation(line: 911, column: 55, scope: !2244)
!2295 = !DILocation(line: 907, column: 20, scope: !2244)
!2296 = !DILocation(line: 913, column: 14, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2244, file: !117, line: 913, column: 9)
!2298 = !DILocation(line: 913, column: 9, scope: !2244)
!2299 = !DILocation(line: 915, column: 35, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2297, file: !117, line: 914, column: 7)
!2301 = !DILocation(line: 915, column: 20, scope: !2300)
!2302 = !DILocation(line: 916, column: 17, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !117, line: 916, column: 13)
!2304 = !DILocation(line: 916, column: 13, scope: !2300)
!2305 = !DILocation(line: 917, column: 11, scope: !2303)
!2306 = !DILocation(line: 0, scope: !2145, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 918, column: 27, scope: !2300)
!2308 = !DILocation(line: 218, column: 10, scope: !2145, inlinedAt: !2307)
!2309 = !DILocation(line: 918, column: 19, scope: !2300)
!2310 = !DILocation(line: 919, column: 69, scope: !2300)
!2311 = !DILocation(line: 921, column: 44, scope: !2300)
!2312 = !DILocation(line: 922, column: 44, scope: !2300)
!2313 = !DILocation(line: 919, column: 9, scope: !2300)
!2314 = !DILocation(line: 923, column: 7, scope: !2300)
!2315 = !DILocation(line: 925, column: 11, scope: !2244)
!2316 = !DILocation(line: 926, column: 5, scope: !2244)
!2317 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !117, file: !117, line: 937, type: !2318, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!51, !44, !73, !54}
!2320 = !{!2321, !2322, !2323}
!2321 = !DILocalVariable(name: "n", arg: 1, scope: !2317, file: !117, line: 937, type: !44)
!2322 = !DILocalVariable(name: "arg", arg: 2, scope: !2317, file: !117, line: 937, type: !73)
!2323 = !DILocalVariable(name: "argsize", arg: 3, scope: !2317, file: !117, line: 937, type: !54)
!2324 = !DILocation(line: 0, scope: !2317)
!2325 = !DILocation(line: 939, column: 10, scope: !2317)
!2326 = !DILocation(line: 939, column: 3, scope: !2317)
!2327 = distinct !DISubprogram(name: "quotearg", scope: !117, file: !117, line: 943, type: !1136, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2328)
!2328 = !{!2329}
!2329 = !DILocalVariable(name: "arg", arg: 1, scope: !2327, file: !117, line: 943, type: !73)
!2330 = !DILocation(line: 0, scope: !2327)
!2331 = !DILocation(line: 0, scope: !2222, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 945, column: 10, scope: !2327)
!2333 = !DILocation(line: 933, column: 10, scope: !2222, inlinedAt: !2332)
!2334 = !DILocation(line: 945, column: 3, scope: !2327)
!2335 = distinct !DISubprogram(name: "quotearg_mem", scope: !117, file: !117, line: 949, type: !2336, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!51, !73, !54}
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "arg", arg: 1, scope: !2335, file: !117, line: 949, type: !73)
!2340 = !DILocalVariable(name: "argsize", arg: 2, scope: !2335, file: !117, line: 949, type: !54)
!2341 = !DILocation(line: 0, scope: !2335)
!2342 = !DILocation(line: 0, scope: !2317, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 951, column: 10, scope: !2335)
!2344 = !DILocation(line: 939, column: 10, scope: !2317, inlinedAt: !2343)
!2345 = !DILocation(line: 951, column: 3, scope: !2335)
!2346 = distinct !DISubprogram(name: "quotearg_n_style", scope: !117, file: !117, line: 955, type: !2347, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!51, !44, !29, !73}
!2349 = !{!2350, !2351, !2352, !2353}
!2350 = !DILocalVariable(name: "n", arg: 1, scope: !2346, file: !117, line: 955, type: !44)
!2351 = !DILocalVariable(name: "s", arg: 2, scope: !2346, file: !117, line: 955, type: !29)
!2352 = !DILocalVariable(name: "arg", arg: 3, scope: !2346, file: !117, line: 955, type: !73)
!2353 = !DILocalVariable(name: "o", scope: !2346, file: !117, line: 957, type: !1279)
!2354 = !DILocation(line: 0, scope: !2346)
!2355 = !DILocation(line: 957, column: 3, scope: !2346)
!2356 = !DILocation(line: 957, column: 32, scope: !2346)
!2357 = !{!2358}
!2358 = distinct !{!2358, !2359, !"quoting_options_from_style: argument 0"}
!2359 = distinct !{!2359, !"quoting_options_from_style"}
!2360 = !DILocation(line: 957, column: 36, scope: !2346)
!2361 = !DILocalVariable(name: "style", arg: 1, scope: !2362, file: !117, line: 193, type: !29)
!2362 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !117, file: !117, line: 193, type: !2363, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!134, !29}
!2365 = !{!2361, !2366}
!2366 = !DILocalVariable(name: "o", scope: !2362, file: !117, line: 195, type: !134)
!2367 = !DILocation(line: 0, scope: !2362, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 957, column: 36, scope: !2346)
!2369 = !DILocation(line: 195, column: 26, scope: !2362, inlinedAt: !2368)
!2370 = !DILocation(line: 196, column: 13, scope: !2371, inlinedAt: !2368)
!2371 = distinct !DILexicalBlock(scope: !2362, file: !117, line: 196, column: 7)
!2372 = !DILocation(line: 196, column: 7, scope: !2362, inlinedAt: !2368)
!2373 = !DILocation(line: 197, column: 5, scope: !2371, inlinedAt: !2368)
!2374 = !DILocation(line: 198, column: 5, scope: !2362, inlinedAt: !2368)
!2375 = !DILocation(line: 198, column: 11, scope: !2362, inlinedAt: !2368)
!2376 = !DILocation(line: 958, column: 10, scope: !2346)
!2377 = !DILocation(line: 959, column: 1, scope: !2346)
!2378 = !DILocation(line: 958, column: 3, scope: !2346)
!2379 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !117, file: !117, line: 962, type: !2380, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!51, !44, !29, !73, !54}
!2382 = !{!2383, !2384, !2385, !2386, !2387}
!2383 = !DILocalVariable(name: "n", arg: 1, scope: !2379, file: !117, line: 962, type: !44)
!2384 = !DILocalVariable(name: "s", arg: 2, scope: !2379, file: !117, line: 962, type: !29)
!2385 = !DILocalVariable(name: "arg", arg: 3, scope: !2379, file: !117, line: 963, type: !73)
!2386 = !DILocalVariable(name: "argsize", arg: 4, scope: !2379, file: !117, line: 963, type: !54)
!2387 = !DILocalVariable(name: "o", scope: !2379, file: !117, line: 965, type: !1279)
!2388 = !DILocation(line: 0, scope: !2379)
!2389 = !DILocation(line: 965, column: 3, scope: !2379)
!2390 = !DILocation(line: 965, column: 32, scope: !2379)
!2391 = !{!2392}
!2392 = distinct !{!2392, !2393, !"quoting_options_from_style: argument 0"}
!2393 = distinct !{!2393, !"quoting_options_from_style"}
!2394 = !DILocation(line: 965, column: 36, scope: !2379)
!2395 = !DILocation(line: 0, scope: !2362, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 965, column: 36, scope: !2379)
!2397 = !DILocation(line: 195, column: 26, scope: !2362, inlinedAt: !2396)
!2398 = !DILocation(line: 196, column: 13, scope: !2371, inlinedAt: !2396)
!2399 = !DILocation(line: 196, column: 7, scope: !2362, inlinedAt: !2396)
!2400 = !DILocation(line: 197, column: 5, scope: !2371, inlinedAt: !2396)
!2401 = !DILocation(line: 198, column: 5, scope: !2362, inlinedAt: !2396)
!2402 = !DILocation(line: 198, column: 11, scope: !2362, inlinedAt: !2396)
!2403 = !DILocation(line: 966, column: 10, scope: !2379)
!2404 = !DILocation(line: 967, column: 1, scope: !2379)
!2405 = !DILocation(line: 966, column: 3, scope: !2379)
!2406 = distinct !DISubprogram(name: "quotearg_style", scope: !117, file: !117, line: 970, type: !2407, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!51, !29, !73}
!2409 = !{!2410, !2411}
!2410 = !DILocalVariable(name: "s", arg: 1, scope: !2406, file: !117, line: 970, type: !29)
!2411 = !DILocalVariable(name: "arg", arg: 2, scope: !2406, file: !117, line: 970, type: !73)
!2412 = !DILocation(line: 0, scope: !2406)
!2413 = !DILocation(line: 0, scope: !2346, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 972, column: 10, scope: !2406)
!2415 = !DILocation(line: 957, column: 3, scope: !2346, inlinedAt: !2414)
!2416 = !DILocation(line: 957, column: 32, scope: !2346, inlinedAt: !2414)
!2417 = !{!2418}
!2418 = distinct !{!2418, !2419, !"quoting_options_from_style: argument 0"}
!2419 = distinct !{!2419, !"quoting_options_from_style"}
!2420 = !DILocation(line: 957, column: 36, scope: !2346, inlinedAt: !2414)
!2421 = !DILocation(line: 0, scope: !2362, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 957, column: 36, scope: !2346, inlinedAt: !2414)
!2423 = !DILocation(line: 195, column: 26, scope: !2362, inlinedAt: !2422)
!2424 = !DILocation(line: 196, column: 13, scope: !2371, inlinedAt: !2422)
!2425 = !DILocation(line: 196, column: 7, scope: !2362, inlinedAt: !2422)
!2426 = !DILocation(line: 197, column: 5, scope: !2371, inlinedAt: !2422)
!2427 = !DILocation(line: 198, column: 5, scope: !2362, inlinedAt: !2422)
!2428 = !DILocation(line: 198, column: 11, scope: !2362, inlinedAt: !2422)
!2429 = !DILocation(line: 958, column: 10, scope: !2346, inlinedAt: !2414)
!2430 = !DILocation(line: 959, column: 1, scope: !2346, inlinedAt: !2414)
!2431 = !DILocation(line: 972, column: 3, scope: !2406)
!2432 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !117, file: !117, line: 976, type: !2433, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!51, !29, !73, !54}
!2435 = !{!2436, !2437, !2438}
!2436 = !DILocalVariable(name: "s", arg: 1, scope: !2432, file: !117, line: 976, type: !29)
!2437 = !DILocalVariable(name: "arg", arg: 2, scope: !2432, file: !117, line: 976, type: !73)
!2438 = !DILocalVariable(name: "argsize", arg: 3, scope: !2432, file: !117, line: 976, type: !54)
!2439 = !DILocation(line: 0, scope: !2432)
!2440 = !DILocation(line: 0, scope: !2379, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 978, column: 10, scope: !2432)
!2442 = !DILocation(line: 965, column: 3, scope: !2379, inlinedAt: !2441)
!2443 = !DILocation(line: 965, column: 32, scope: !2379, inlinedAt: !2441)
!2444 = !{!2445}
!2445 = distinct !{!2445, !2446, !"quoting_options_from_style: argument 0"}
!2446 = distinct !{!2446, !"quoting_options_from_style"}
!2447 = !DILocation(line: 965, column: 36, scope: !2379, inlinedAt: !2441)
!2448 = !DILocation(line: 0, scope: !2362, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 965, column: 36, scope: !2379, inlinedAt: !2441)
!2450 = !DILocation(line: 195, column: 26, scope: !2362, inlinedAt: !2449)
!2451 = !DILocation(line: 196, column: 13, scope: !2371, inlinedAt: !2449)
!2452 = !DILocation(line: 196, column: 7, scope: !2362, inlinedAt: !2449)
!2453 = !DILocation(line: 197, column: 5, scope: !2371, inlinedAt: !2449)
!2454 = !DILocation(line: 198, column: 5, scope: !2362, inlinedAt: !2449)
!2455 = !DILocation(line: 198, column: 11, scope: !2362, inlinedAt: !2449)
!2456 = !DILocation(line: 966, column: 10, scope: !2379, inlinedAt: !2441)
!2457 = !DILocation(line: 967, column: 1, scope: !2379, inlinedAt: !2441)
!2458 = !DILocation(line: 978, column: 3, scope: !2432)
!2459 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !117, file: !117, line: 982, type: !2460, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!51, !73, !54, !52}
!2462 = !{!2463, !2464, !2465, !2466}
!2463 = !DILocalVariable(name: "arg", arg: 1, scope: !2459, file: !117, line: 982, type: !73)
!2464 = !DILocalVariable(name: "argsize", arg: 2, scope: !2459, file: !117, line: 982, type: !54)
!2465 = !DILocalVariable(name: "ch", arg: 3, scope: !2459, file: !117, line: 982, type: !52)
!2466 = !DILocalVariable(name: "options", scope: !2459, file: !117, line: 984, type: !134)
!2467 = !DILocation(line: 0, scope: !2459)
!2468 = !DILocation(line: 984, column: 3, scope: !2459)
!2469 = !DILocation(line: 984, column: 26, scope: !2459)
!2470 = !DILocation(line: 985, column: 13, scope: !2459)
!2471 = !{i64 0, i64 4, !843, i64 4, i64 4, !888, i64 8, i64 32, !843, i64 40, i64 8, !636, i64 48, i64 8, !636}
!2472 = !DILocation(line: 0, scope: !1299, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 986, column: 3, scope: !2459)
!2474 = !DILocation(line: 156, column: 62, scope: !1299, inlinedAt: !2473)
!2475 = !DILocation(line: 156, column: 57, scope: !1299, inlinedAt: !2473)
!2476 = !DILocation(line: 157, column: 15, scope: !1299, inlinedAt: !2473)
!2477 = !DILocation(line: 158, column: 12, scope: !1299, inlinedAt: !2473)
!2478 = !DILocation(line: 158, column: 15, scope: !1299, inlinedAt: !2473)
!2479 = !DILocation(line: 158, column: 25, scope: !1299, inlinedAt: !2473)
!2480 = !DILocation(line: 159, column: 18, scope: !1299, inlinedAt: !2473)
!2481 = !DILocation(line: 159, column: 23, scope: !1299, inlinedAt: !2473)
!2482 = !DILocation(line: 159, column: 6, scope: !1299, inlinedAt: !2473)
!2483 = !DILocation(line: 987, column: 10, scope: !2459)
!2484 = !DILocation(line: 988, column: 1, scope: !2459)
!2485 = !DILocation(line: 987, column: 3, scope: !2459)
!2486 = distinct !DISubprogram(name: "quotearg_char", scope: !117, file: !117, line: 991, type: !2487, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!51, !73, !52}
!2489 = !{!2490, !2491}
!2490 = !DILocalVariable(name: "arg", arg: 1, scope: !2486, file: !117, line: 991, type: !73)
!2491 = !DILocalVariable(name: "ch", arg: 2, scope: !2486, file: !117, line: 991, type: !52)
!2492 = !DILocation(line: 0, scope: !2486)
!2493 = !DILocation(line: 0, scope: !2459, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 993, column: 10, scope: !2486)
!2495 = !DILocation(line: 984, column: 3, scope: !2459, inlinedAt: !2494)
!2496 = !DILocation(line: 984, column: 26, scope: !2459, inlinedAt: !2494)
!2497 = !DILocation(line: 985, column: 13, scope: !2459, inlinedAt: !2494)
!2498 = !DILocation(line: 0, scope: !1299, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 986, column: 3, scope: !2459, inlinedAt: !2494)
!2500 = !DILocation(line: 156, column: 62, scope: !1299, inlinedAt: !2499)
!2501 = !DILocation(line: 156, column: 57, scope: !1299, inlinedAt: !2499)
!2502 = !DILocation(line: 157, column: 15, scope: !1299, inlinedAt: !2499)
!2503 = !DILocation(line: 158, column: 12, scope: !1299, inlinedAt: !2499)
!2504 = !DILocation(line: 158, column: 15, scope: !1299, inlinedAt: !2499)
!2505 = !DILocation(line: 158, column: 25, scope: !1299, inlinedAt: !2499)
!2506 = !DILocation(line: 159, column: 18, scope: !1299, inlinedAt: !2499)
!2507 = !DILocation(line: 159, column: 23, scope: !1299, inlinedAt: !2499)
!2508 = !DILocation(line: 159, column: 6, scope: !1299, inlinedAt: !2499)
!2509 = !DILocation(line: 987, column: 10, scope: !2459, inlinedAt: !2494)
!2510 = !DILocation(line: 988, column: 1, scope: !2459, inlinedAt: !2494)
!2511 = !DILocation(line: 993, column: 3, scope: !2486)
!2512 = distinct !DISubprogram(name: "quotearg_colon", scope: !117, file: !117, line: 997, type: !1136, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2513)
!2513 = !{!2514}
!2514 = !DILocalVariable(name: "arg", arg: 1, scope: !2512, file: !117, line: 997, type: !73)
!2515 = !DILocation(line: 0, scope: !2512)
!2516 = !DILocation(line: 0, scope: !2486, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 999, column: 10, scope: !2512)
!2518 = !DILocation(line: 0, scope: !2459, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 993, column: 10, scope: !2486, inlinedAt: !2517)
!2520 = !DILocation(line: 984, column: 3, scope: !2459, inlinedAt: !2519)
!2521 = !DILocation(line: 984, column: 26, scope: !2459, inlinedAt: !2519)
!2522 = !DILocation(line: 985, column: 13, scope: !2459, inlinedAt: !2519)
!2523 = !DILocation(line: 0, scope: !1299, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 986, column: 3, scope: !2459, inlinedAt: !2519)
!2525 = !DILocation(line: 156, column: 57, scope: !1299, inlinedAt: !2524)
!2526 = !DILocation(line: 158, column: 12, scope: !1299, inlinedAt: !2524)
!2527 = !DILocation(line: 159, column: 6, scope: !1299, inlinedAt: !2524)
!2528 = !DILocation(line: 987, column: 10, scope: !2459, inlinedAt: !2519)
!2529 = !DILocation(line: 988, column: 1, scope: !2459, inlinedAt: !2519)
!2530 = !DILocation(line: 999, column: 3, scope: !2512)
!2531 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !117, file: !117, line: 1003, type: !2336, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2532)
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2531, file: !117, line: 1003, type: !73)
!2534 = !DILocalVariable(name: "argsize", arg: 2, scope: !2531, file: !117, line: 1003, type: !54)
!2535 = !DILocation(line: 0, scope: !2531)
!2536 = !DILocation(line: 0, scope: !2459, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 1005, column: 10, scope: !2531)
!2538 = !DILocation(line: 984, column: 3, scope: !2459, inlinedAt: !2537)
!2539 = !DILocation(line: 984, column: 26, scope: !2459, inlinedAt: !2537)
!2540 = !DILocation(line: 985, column: 13, scope: !2459, inlinedAt: !2537)
!2541 = !DILocation(line: 0, scope: !1299, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 986, column: 3, scope: !2459, inlinedAt: !2537)
!2543 = !DILocation(line: 156, column: 57, scope: !1299, inlinedAt: !2542)
!2544 = !DILocation(line: 158, column: 12, scope: !1299, inlinedAt: !2542)
!2545 = !DILocation(line: 159, column: 6, scope: !1299, inlinedAt: !2542)
!2546 = !DILocation(line: 987, column: 10, scope: !2459, inlinedAt: !2537)
!2547 = !DILocation(line: 988, column: 1, scope: !2459, inlinedAt: !2537)
!2548 = !DILocation(line: 1005, column: 3, scope: !2531)
!2549 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !117, file: !117, line: 1009, type: !2347, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2550)
!2550 = !{!2551, !2552, !2553, !2554}
!2551 = !DILocalVariable(name: "n", arg: 1, scope: !2549, file: !117, line: 1009, type: !44)
!2552 = !DILocalVariable(name: "s", arg: 2, scope: !2549, file: !117, line: 1009, type: !29)
!2553 = !DILocalVariable(name: "arg", arg: 3, scope: !2549, file: !117, line: 1009, type: !73)
!2554 = !DILocalVariable(name: "options", scope: !2549, file: !117, line: 1011, type: !134)
!2555 = !DILocation(line: 195, column: 26, scope: !2362, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 1012, column: 13, scope: !2549)
!2557 = !DILocation(line: 0, scope: !2549)
!2558 = !DILocation(line: 1011, column: 3, scope: !2549)
!2559 = !DILocation(line: 1011, column: 26, scope: !2549)
!2560 = !DILocation(line: 1012, column: 13, scope: !2549)
!2561 = !{!2562}
!2562 = distinct !{!2562, !2563, !"quoting_options_from_style: argument 0"}
!2563 = distinct !{!2563, !"quoting_options_from_style"}
!2564 = !DILocation(line: 0, scope: !2362, inlinedAt: !2556)
!2565 = !DILocation(line: 196, column: 13, scope: !2371, inlinedAt: !2556)
!2566 = !DILocation(line: 196, column: 7, scope: !2362, inlinedAt: !2556)
!2567 = !DILocation(line: 197, column: 5, scope: !2371, inlinedAt: !2556)
!2568 = !{i64 0, i64 4, !888, i64 4, i64 32, !843, i64 36, i64 8, !636, i64 44, i64 8, !636}
!2569 = !DILocation(line: 0, scope: !1299, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 1013, column: 3, scope: !2549)
!2571 = !DILocation(line: 156, column: 57, scope: !1299, inlinedAt: !2570)
!2572 = !DILocation(line: 158, column: 12, scope: !1299, inlinedAt: !2570)
!2573 = !DILocation(line: 159, column: 6, scope: !1299, inlinedAt: !2570)
!2574 = !DILocation(line: 1014, column: 10, scope: !2549)
!2575 = !DILocation(line: 1015, column: 1, scope: !2549)
!2576 = !DILocation(line: 1014, column: 3, scope: !2549)
!2577 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !117, file: !117, line: 1018, type: !2578, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!51, !44, !73, !73, !73}
!2580 = !{!2581, !2582, !2583, !2584}
!2581 = !DILocalVariable(name: "n", arg: 1, scope: !2577, file: !117, line: 1018, type: !44)
!2582 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2577, file: !117, line: 1018, type: !73)
!2583 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2577, file: !117, line: 1019, type: !73)
!2584 = !DILocalVariable(name: "arg", arg: 4, scope: !2577, file: !117, line: 1019, type: !73)
!2585 = !DILocation(line: 0, scope: !2577)
!2586 = !DILocalVariable(name: "n", arg: 1, scope: !2587, file: !117, line: 1026, type: !44)
!2587 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !117, file: !117, line: 1026, type: !2588, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!51, !44, !73, !73, !73, !54}
!2590 = !{!2586, !2591, !2592, !2593, !2594, !2595}
!2591 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2587, file: !117, line: 1026, type: !73)
!2592 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2587, file: !117, line: 1027, type: !73)
!2593 = !DILocalVariable(name: "arg", arg: 4, scope: !2587, file: !117, line: 1028, type: !73)
!2594 = !DILocalVariable(name: "argsize", arg: 5, scope: !2587, file: !117, line: 1028, type: !54)
!2595 = !DILocalVariable(name: "o", scope: !2587, file: !117, line: 1030, type: !134)
!2596 = !DILocation(line: 0, scope: !2587, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 1021, column: 10, scope: !2577)
!2598 = !DILocation(line: 1030, column: 3, scope: !2587, inlinedAt: !2597)
!2599 = !DILocation(line: 1030, column: 26, scope: !2587, inlinedAt: !2597)
!2600 = !DILocation(line: 1030, column: 30, scope: !2587, inlinedAt: !2597)
!2601 = !DILocation(line: 0, scope: !1339, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 1031, column: 3, scope: !2587, inlinedAt: !2597)
!2603 = !DILocation(line: 184, column: 6, scope: !1339, inlinedAt: !2602)
!2604 = !DILocation(line: 184, column: 12, scope: !1339, inlinedAt: !2602)
!2605 = !DILocation(line: 185, column: 8, scope: !1353, inlinedAt: !2602)
!2606 = !DILocation(line: 185, column: 19, scope: !1353, inlinedAt: !2602)
!2607 = !DILocation(line: 186, column: 5, scope: !1353, inlinedAt: !2602)
!2608 = !DILocation(line: 187, column: 6, scope: !1339, inlinedAt: !2602)
!2609 = !DILocation(line: 187, column: 17, scope: !1339, inlinedAt: !2602)
!2610 = !DILocation(line: 188, column: 6, scope: !1339, inlinedAt: !2602)
!2611 = !DILocation(line: 188, column: 18, scope: !1339, inlinedAt: !2602)
!2612 = !DILocation(line: 1032, column: 10, scope: !2587, inlinedAt: !2597)
!2613 = !DILocation(line: 1033, column: 1, scope: !2587, inlinedAt: !2597)
!2614 = !DILocation(line: 1021, column: 3, scope: !2577)
!2615 = !DILocation(line: 0, scope: !2587)
!2616 = !DILocation(line: 1030, column: 3, scope: !2587)
!2617 = !DILocation(line: 1030, column: 26, scope: !2587)
!2618 = !DILocation(line: 1030, column: 30, scope: !2587)
!2619 = !DILocation(line: 0, scope: !1339, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1031, column: 3, scope: !2587)
!2621 = !DILocation(line: 184, column: 6, scope: !1339, inlinedAt: !2620)
!2622 = !DILocation(line: 184, column: 12, scope: !1339, inlinedAt: !2620)
!2623 = !DILocation(line: 185, column: 8, scope: !1353, inlinedAt: !2620)
!2624 = !DILocation(line: 185, column: 19, scope: !1353, inlinedAt: !2620)
!2625 = !DILocation(line: 186, column: 5, scope: !1353, inlinedAt: !2620)
!2626 = !DILocation(line: 187, column: 6, scope: !1339, inlinedAt: !2620)
!2627 = !DILocation(line: 187, column: 17, scope: !1339, inlinedAt: !2620)
!2628 = !DILocation(line: 188, column: 6, scope: !1339, inlinedAt: !2620)
!2629 = !DILocation(line: 188, column: 18, scope: !1339, inlinedAt: !2620)
!2630 = !DILocation(line: 1032, column: 10, scope: !2587)
!2631 = !DILocation(line: 1033, column: 1, scope: !2587)
!2632 = !DILocation(line: 1032, column: 3, scope: !2587)
!2633 = distinct !DISubprogram(name: "quotearg_custom", scope: !117, file: !117, line: 1036, type: !2634, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!51, !73, !73, !73}
!2636 = !{!2637, !2638, !2639}
!2637 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2633, file: !117, line: 1036, type: !73)
!2638 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2633, file: !117, line: 1036, type: !73)
!2639 = !DILocalVariable(name: "arg", arg: 3, scope: !2633, file: !117, line: 1037, type: !73)
!2640 = !DILocation(line: 0, scope: !2633)
!2641 = !DILocation(line: 0, scope: !2577, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 1039, column: 10, scope: !2633)
!2643 = !DILocation(line: 0, scope: !2587, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 1021, column: 10, scope: !2577, inlinedAt: !2642)
!2645 = !DILocation(line: 1030, column: 3, scope: !2587, inlinedAt: !2644)
!2646 = !DILocation(line: 1030, column: 26, scope: !2587, inlinedAt: !2644)
!2647 = !DILocation(line: 1030, column: 30, scope: !2587, inlinedAt: !2644)
!2648 = !DILocation(line: 0, scope: !1339, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1031, column: 3, scope: !2587, inlinedAt: !2644)
!2650 = !DILocation(line: 184, column: 6, scope: !1339, inlinedAt: !2649)
!2651 = !DILocation(line: 184, column: 12, scope: !1339, inlinedAt: !2649)
!2652 = !DILocation(line: 185, column: 8, scope: !1353, inlinedAt: !2649)
!2653 = !DILocation(line: 185, column: 19, scope: !1353, inlinedAt: !2649)
!2654 = !DILocation(line: 186, column: 5, scope: !1353, inlinedAt: !2649)
!2655 = !DILocation(line: 187, column: 6, scope: !1339, inlinedAt: !2649)
!2656 = !DILocation(line: 187, column: 17, scope: !1339, inlinedAt: !2649)
!2657 = !DILocation(line: 188, column: 6, scope: !1339, inlinedAt: !2649)
!2658 = !DILocation(line: 188, column: 18, scope: !1339, inlinedAt: !2649)
!2659 = !DILocation(line: 1032, column: 10, scope: !2587, inlinedAt: !2644)
!2660 = !DILocation(line: 1033, column: 1, scope: !2587, inlinedAt: !2644)
!2661 = !DILocation(line: 1039, column: 3, scope: !2633)
!2662 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !117, file: !117, line: 1043, type: !2663, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2665)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!51, !73, !73, !73, !54}
!2665 = !{!2666, !2667, !2668, !2669}
!2666 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2662, file: !117, line: 1043, type: !73)
!2667 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2662, file: !117, line: 1043, type: !73)
!2668 = !DILocalVariable(name: "arg", arg: 3, scope: !2662, file: !117, line: 1044, type: !73)
!2669 = !DILocalVariable(name: "argsize", arg: 4, scope: !2662, file: !117, line: 1044, type: !54)
!2670 = !DILocation(line: 0, scope: !2662)
!2671 = !DILocation(line: 0, scope: !2587, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1046, column: 10, scope: !2662)
!2673 = !DILocation(line: 1030, column: 3, scope: !2587, inlinedAt: !2672)
!2674 = !DILocation(line: 1030, column: 26, scope: !2587, inlinedAt: !2672)
!2675 = !DILocation(line: 1030, column: 30, scope: !2587, inlinedAt: !2672)
!2676 = !DILocation(line: 0, scope: !1339, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1031, column: 3, scope: !2587, inlinedAt: !2672)
!2678 = !DILocation(line: 184, column: 6, scope: !1339, inlinedAt: !2677)
!2679 = !DILocation(line: 184, column: 12, scope: !1339, inlinedAt: !2677)
!2680 = !DILocation(line: 185, column: 8, scope: !1353, inlinedAt: !2677)
!2681 = !DILocation(line: 185, column: 19, scope: !1353, inlinedAt: !2677)
!2682 = !DILocation(line: 186, column: 5, scope: !1353, inlinedAt: !2677)
!2683 = !DILocation(line: 187, column: 6, scope: !1339, inlinedAt: !2677)
!2684 = !DILocation(line: 187, column: 17, scope: !1339, inlinedAt: !2677)
!2685 = !DILocation(line: 188, column: 6, scope: !1339, inlinedAt: !2677)
!2686 = !DILocation(line: 188, column: 18, scope: !1339, inlinedAt: !2677)
!2687 = !DILocation(line: 1032, column: 10, scope: !2587, inlinedAt: !2672)
!2688 = !DILocation(line: 1033, column: 1, scope: !2587, inlinedAt: !2672)
!2689 = !DILocation(line: 1046, column: 3, scope: !2662)
!2690 = distinct !DISubprogram(name: "quote_n_mem", scope: !117, file: !117, line: 1061, type: !2691, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!73, !44, !73, !54}
!2693 = !{!2694, !2695, !2696}
!2694 = !DILocalVariable(name: "n", arg: 1, scope: !2690, file: !117, line: 1061, type: !44)
!2695 = !DILocalVariable(name: "arg", arg: 2, scope: !2690, file: !117, line: 1061, type: !73)
!2696 = !DILocalVariable(name: "argsize", arg: 3, scope: !2690, file: !117, line: 1061, type: !54)
!2697 = !DILocation(line: 0, scope: !2690)
!2698 = !DILocation(line: 1063, column: 10, scope: !2690)
!2699 = !DILocation(line: 1063, column: 3, scope: !2690)
!2700 = distinct !DISubprogram(name: "quote_mem", scope: !117, file: !117, line: 1067, type: !2701, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!73, !73, !54}
!2703 = !{!2704, !2705}
!2704 = !DILocalVariable(name: "arg", arg: 1, scope: !2700, file: !117, line: 1067, type: !73)
!2705 = !DILocalVariable(name: "argsize", arg: 2, scope: !2700, file: !117, line: 1067, type: !54)
!2706 = !DILocation(line: 0, scope: !2700)
!2707 = !DILocation(line: 0, scope: !2690, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1069, column: 10, scope: !2700)
!2709 = !DILocation(line: 1063, column: 10, scope: !2690, inlinedAt: !2708)
!2710 = !DILocation(line: 1069, column: 3, scope: !2700)
!2711 = distinct !DISubprogram(name: "quote_n", scope: !117, file: !117, line: 1073, type: !2712, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!73, !44, !73}
!2714 = !{!2715, !2716}
!2715 = !DILocalVariable(name: "n", arg: 1, scope: !2711, file: !117, line: 1073, type: !44)
!2716 = !DILocalVariable(name: "arg", arg: 2, scope: !2711, file: !117, line: 1073, type: !73)
!2717 = !DILocation(line: 0, scope: !2711)
!2718 = !DILocation(line: 0, scope: !2690, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 1075, column: 10, scope: !2711)
!2720 = !DILocation(line: 1063, column: 10, scope: !2690, inlinedAt: !2719)
!2721 = !DILocation(line: 1075, column: 3, scope: !2711)
!2722 = distinct !DISubprogram(name: "quote", scope: !117, file: !117, line: 1079, type: !2723, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!73, !73}
!2725 = !{!2726}
!2726 = !DILocalVariable(name: "arg", arg: 1, scope: !2722, file: !117, line: 1079, type: !73)
!2727 = !DILocation(line: 0, scope: !2722)
!2728 = !DILocation(line: 0, scope: !2711, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 1081, column: 10, scope: !2722)
!2730 = !DILocation(line: 0, scope: !2690, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1075, column: 10, scope: !2711, inlinedAt: !2729)
!2732 = !DILocation(line: 1063, column: 10, scope: !2690, inlinedAt: !2731)
!2733 = !DILocation(line: 1081, column: 3, scope: !2722)
!2734 = distinct !DISubprogram(name: "version_etc_arn", scope: !175, file: !175, line: 61, type: !2735, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2773)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{null, !2737, !73, !73, !73, !2772, !54}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2739, line: 7, baseType: !2740)
!2739 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2740, file: !717, line: 51, baseType: !44, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2740, file: !717, line: 54, baseType: !51, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2740, file: !717, line: 55, baseType: !51, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2740, file: !717, line: 56, baseType: !51, size: 64, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2740, file: !717, line: 57, baseType: !51, size: 64, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2740, file: !717, line: 58, baseType: !51, size: 64, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2740, file: !717, line: 59, baseType: !51, size: 64, offset: 384)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2740, file: !717, line: 60, baseType: !51, size: 64, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2740, file: !717, line: 61, baseType: !51, size: 64, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2740, file: !717, line: 64, baseType: !51, size: 64, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2740, file: !717, line: 65, baseType: !51, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2740, file: !717, line: 66, baseType: !51, size: 64, offset: 704)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2740, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2740, file: !717, line: 70, baseType: !2756, size: 64, offset: 832)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2740, file: !717, line: 72, baseType: !44, size: 32, offset: 896)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2740, file: !717, line: 73, baseType: !44, size: 32, offset: 928)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2740, file: !717, line: 74, baseType: !48, size: 64, offset: 960)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2740, file: !717, line: 77, baseType: !45, size: 16, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2740, file: !717, line: 78, baseType: !57, size: 8, offset: 1040)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2740, file: !717, line: 79, baseType: !741, size: 8, offset: 1048)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2740, file: !717, line: 81, baseType: !745, size: 64, offset: 1088)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2740, file: !717, line: 89, baseType: !748, size: 64, offset: 1152)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2740, file: !717, line: 91, baseType: !750, size: 64, offset: 1216)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2740, file: !717, line: 92, baseType: !753, size: 64, offset: 1280)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2740, file: !717, line: 93, baseType: !2756, size: 64, offset: 1344)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2740, file: !717, line: 94, baseType: !53, size: 64, offset: 1408)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2740, file: !717, line: 95, baseType: !54, size: 64, offset: 1472)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2740, file: !717, line: 96, baseType: !44, size: 32, offset: 1536)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2740, file: !717, line: 98, baseType: !760, size: 160, offset: 1568)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779}
!2774 = !DILocalVariable(name: "stream", arg: 1, scope: !2734, file: !175, line: 61, type: !2737)
!2775 = !DILocalVariable(name: "command_name", arg: 2, scope: !2734, file: !175, line: 62, type: !73)
!2776 = !DILocalVariable(name: "package", arg: 3, scope: !2734, file: !175, line: 62, type: !73)
!2777 = !DILocalVariable(name: "version", arg: 4, scope: !2734, file: !175, line: 63, type: !73)
!2778 = !DILocalVariable(name: "authors", arg: 5, scope: !2734, file: !175, line: 64, type: !2772)
!2779 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2734, file: !175, line: 64, type: !54)
!2780 = !DILocation(line: 0, scope: !2734)
!2781 = !DILocation(line: 66, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2734, file: !175, line: 66, column: 7)
!2783 = !DILocation(line: 66, column: 7, scope: !2734)
!2784 = !DILocation(line: 67, column: 5, scope: !2782)
!2785 = !DILocation(line: 69, column: 5, scope: !2782)
!2786 = !DILocation(line: 83, column: 3, scope: !2734)
!2787 = !DILocation(line: 85, column: 3, scope: !2734)
!2788 = !DILocation(line: 88, column: 3, scope: !2734)
!2789 = !DILocation(line: 95, column: 3, scope: !2734)
!2790 = !DILocation(line: 97, column: 3, scope: !2734)
!2791 = !DILocation(line: 105, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2734, file: !175, line: 98, column: 5)
!2793 = !DILocation(line: 106, column: 7, scope: !2792)
!2794 = !DILocation(line: 109, column: 7, scope: !2792)
!2795 = !DILocation(line: 110, column: 7, scope: !2792)
!2796 = !DILocation(line: 113, column: 7, scope: !2792)
!2797 = !DILocation(line: 115, column: 7, scope: !2792)
!2798 = !DILocation(line: 120, column: 7, scope: !2792)
!2799 = !DILocation(line: 122, column: 7, scope: !2792)
!2800 = !DILocation(line: 127, column: 7, scope: !2792)
!2801 = !DILocation(line: 129, column: 7, scope: !2792)
!2802 = !DILocation(line: 134, column: 7, scope: !2792)
!2803 = !DILocation(line: 137, column: 7, scope: !2792)
!2804 = !DILocation(line: 142, column: 7, scope: !2792)
!2805 = !DILocation(line: 145, column: 7, scope: !2792)
!2806 = !DILocation(line: 150, column: 7, scope: !2792)
!2807 = !DILocation(line: 154, column: 7, scope: !2792)
!2808 = !DILocation(line: 159, column: 7, scope: !2792)
!2809 = !DILocation(line: 163, column: 7, scope: !2792)
!2810 = !DILocation(line: 170, column: 7, scope: !2792)
!2811 = !DILocation(line: 174, column: 7, scope: !2792)
!2812 = !DILocation(line: 176, column: 1, scope: !2734)
!2813 = distinct !DISubprogram(name: "version_etc_ar", scope: !175, file: !175, line: 183, type: !2814, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !2737, !73, !73, !73, !2772}
!2816 = !{!2817, !2818, !2819, !2820, !2821, !2822}
!2817 = !DILocalVariable(name: "stream", arg: 1, scope: !2813, file: !175, line: 183, type: !2737)
!2818 = !DILocalVariable(name: "command_name", arg: 2, scope: !2813, file: !175, line: 184, type: !73)
!2819 = !DILocalVariable(name: "package", arg: 3, scope: !2813, file: !175, line: 184, type: !73)
!2820 = !DILocalVariable(name: "version", arg: 4, scope: !2813, file: !175, line: 185, type: !73)
!2821 = !DILocalVariable(name: "authors", arg: 5, scope: !2813, file: !175, line: 185, type: !2772)
!2822 = !DILocalVariable(name: "n_authors", scope: !2813, file: !175, line: 187, type: !54)
!2823 = !DILocation(line: 0, scope: !2813)
!2824 = !DILocation(line: 189, column: 8, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2813, file: !175, line: 189, column: 3)
!2826 = !DILocation(line: 0, scope: !2825)
!2827 = !DILocation(line: 189, column: 23, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !175, line: 189, column: 3)
!2829 = !DILocation(line: 189, column: 3, scope: !2825)
!2830 = !DILocation(line: 189, column: 52, scope: !2828)
!2831 = distinct !{!2831, !2829, !2832, !688}
!2832 = !DILocation(line: 190, column: 5, scope: !2825)
!2833 = !DILocation(line: 191, column: 3, scope: !2813)
!2834 = !DILocation(line: 192, column: 1, scope: !2813)
!2835 = distinct !DISubprogram(name: "version_etc_va", scope: !175, file: !175, line: 199, type: !2836, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2845)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2737, !73, !73, !73, !2838}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2844}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2839, file: !175, line: 192, baseType: !6, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2839, file: !175, line: 192, baseType: !6, size: 32, offset: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2839, file: !175, line: 192, baseType: !53, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2839, file: !175, line: 192, baseType: !53, size: 64, offset: 128)
!2845 = !{!2846, !2847, !2848, !2849, !2850, !2851, !2852}
!2846 = !DILocalVariable(name: "stream", arg: 1, scope: !2835, file: !175, line: 199, type: !2737)
!2847 = !DILocalVariable(name: "command_name", arg: 2, scope: !2835, file: !175, line: 200, type: !73)
!2848 = !DILocalVariable(name: "package", arg: 3, scope: !2835, file: !175, line: 200, type: !73)
!2849 = !DILocalVariable(name: "version", arg: 4, scope: !2835, file: !175, line: 201, type: !73)
!2850 = !DILocalVariable(name: "authors", arg: 5, scope: !2835, file: !175, line: 201, type: !2838)
!2851 = !DILocalVariable(name: "n_authors", scope: !2835, file: !175, line: 203, type: !54)
!2852 = !DILocalVariable(name: "authtab", scope: !2835, file: !175, line: 204, type: !2853)
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 640, elements: !130)
!2854 = !DILocation(line: 0, scope: !2835)
!2855 = !DILocation(line: 204, column: 3, scope: !2835)
!2856 = !DILocation(line: 204, column: 15, scope: !2835)
!2857 = !DILocation(line: 208, column: 35, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !175, line: 206, column: 3)
!2859 = distinct !DILexicalBlock(scope: !2835, file: !175, line: 206, column: 3)
!2860 = !DILocation(line: 208, column: 14, scope: !2858)
!2861 = !DILocation(line: 208, column: 33, scope: !2858)
!2862 = !DILocation(line: 208, column: 67, scope: !2858)
!2863 = !DILocation(line: 206, column: 3, scope: !2859)
!2864 = !DILocation(line: 0, scope: !2859)
!2865 = !DILocation(line: 211, column: 3, scope: !2835)
!2866 = !DILocation(line: 213, column: 1, scope: !2835)
!2867 = distinct !DISubprogram(name: "version_etc", scope: !175, file: !175, line: 230, type: !2868, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{null, !2737, !73, !73, !73, null}
!2870 = !{!2871, !2872, !2873, !2874, !2875}
!2871 = !DILocalVariable(name: "stream", arg: 1, scope: !2867, file: !175, line: 230, type: !2737)
!2872 = !DILocalVariable(name: "command_name", arg: 2, scope: !2867, file: !175, line: 231, type: !73)
!2873 = !DILocalVariable(name: "package", arg: 3, scope: !2867, file: !175, line: 231, type: !73)
!2874 = !DILocalVariable(name: "version", arg: 4, scope: !2867, file: !175, line: 232, type: !73)
!2875 = !DILocalVariable(name: "authors", scope: !2867, file: !175, line: 234, type: !2876)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !47, line: 52, baseType: !2877)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2878, line: 32, baseType: !2879)
!2878 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !175, baseType: !2880)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2839, size: 192, elements: !742)
!2881 = !DILocation(line: 0, scope: !2867)
!2882 = !DILocation(line: 234, column: 3, scope: !2867)
!2883 = !DILocation(line: 234, column: 11, scope: !2867)
!2884 = !DILocation(line: 236, column: 3, scope: !2867)
!2885 = !DILocation(line: 237, column: 3, scope: !2867)
!2886 = !DILocation(line: 238, column: 3, scope: !2867)
!2887 = !DILocation(line: 239, column: 1, scope: !2867)
!2888 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !175, file: !175, line: 242, type: !646, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !93)
!2889 = !DILocation(line: 244, column: 3, scope: !2888)
!2890 = !DILocation(line: 249, column: 3, scope: !2888)
!2891 = !DILocation(line: 255, column: 3, scope: !2888)
!2892 = !DILocation(line: 260, column: 3, scope: !2888)
!2893 = !DILocation(line: 262, column: 1, scope: !2888)
!2894 = distinct !DISubprogram(name: "xnmalloc", scope: !185, file: !185, line: 99, type: !2895, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!53, !54, !54}
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "n", arg: 1, scope: !2894, file: !185, line: 99, type: !54)
!2899 = !DILocalVariable(name: "s", arg: 2, scope: !2894, file: !185, line: 99, type: !54)
!2900 = !DILocation(line: 0, scope: !2894)
!2901 = !DILocation(line: 101, column: 7, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2894, file: !185, line: 101, column: 7)
!2903 = !DILocation(line: 101, column: 7, scope: !2894)
!2904 = !DILocation(line: 102, column: 5, scope: !2902)
!2905 = !DILocation(line: 103, column: 21, scope: !2894)
!2906 = !DILocalVariable(name: "n", arg: 1, scope: !2907, file: !182, line: 39, type: !54)
!2907 = distinct !DISubprogram(name: "xmalloc", scope: !182, file: !182, line: 39, type: !2908, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!53, !54}
!2910 = !{!2906, !2911}
!2911 = !DILocalVariable(name: "p", scope: !2907, file: !182, line: 41, type: !53)
!2912 = !DILocation(line: 0, scope: !2907, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 103, column: 10, scope: !2894)
!2914 = !DILocation(line: 41, column: 13, scope: !2907, inlinedAt: !2913)
!2915 = !DILocation(line: 42, column: 8, scope: !2916, inlinedAt: !2913)
!2916 = distinct !DILexicalBlock(scope: !2907, file: !182, line: 42, column: 7)
!2917 = !DILocation(line: 42, column: 10, scope: !2916, inlinedAt: !2913)
!2918 = !DILocation(line: 43, column: 5, scope: !2916, inlinedAt: !2913)
!2919 = !DILocation(line: 103, column: 3, scope: !2894)
!2920 = !DILocation(line: 0, scope: !2907)
!2921 = !DILocation(line: 41, column: 13, scope: !2907)
!2922 = !DILocation(line: 42, column: 8, scope: !2916)
!2923 = !DILocation(line: 42, column: 10, scope: !2916)
!2924 = !DILocation(line: 43, column: 5, scope: !2916)
!2925 = !DILocation(line: 44, column: 3, scope: !2907)
!2926 = distinct !DISubprogram(name: "xnrealloc", scope: !185, file: !185, line: 112, type: !2927, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!53, !53, !54, !54}
!2929 = !{!2930, !2931, !2932}
!2930 = !DILocalVariable(name: "p", arg: 1, scope: !2926, file: !185, line: 112, type: !53)
!2931 = !DILocalVariable(name: "n", arg: 2, scope: !2926, file: !185, line: 112, type: !54)
!2932 = !DILocalVariable(name: "s", arg: 3, scope: !2926, file: !185, line: 112, type: !54)
!2933 = !DILocation(line: 0, scope: !2926)
!2934 = !DILocation(line: 114, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2926, file: !185, line: 114, column: 7)
!2936 = !DILocation(line: 114, column: 7, scope: !2926)
!2937 = !DILocation(line: 115, column: 5, scope: !2935)
!2938 = !DILocation(line: 116, column: 25, scope: !2926)
!2939 = !DILocalVariable(name: "p", arg: 1, scope: !2940, file: !182, line: 51, type: !53)
!2940 = distinct !DISubprogram(name: "xrealloc", scope: !182, file: !182, line: 51, type: !2941, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!53, !53, !54}
!2943 = !{!2939, !2944}
!2944 = !DILocalVariable(name: "n", arg: 2, scope: !2940, file: !182, line: 51, type: !54)
!2945 = !DILocation(line: 0, scope: !2940, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 116, column: 10, scope: !2926)
!2947 = !DILocation(line: 53, column: 8, scope: !2948, inlinedAt: !2946)
!2948 = distinct !DILexicalBlock(scope: !2940, file: !182, line: 53, column: 7)
!2949 = !DILocation(line: 53, column: 10, scope: !2948, inlinedAt: !2946)
!2950 = !DILocation(line: 57, column: 7, scope: !2951, inlinedAt: !2946)
!2951 = distinct !DILexicalBlock(scope: !2948, file: !182, line: 54, column: 5)
!2952 = !DILocation(line: 58, column: 7, scope: !2951, inlinedAt: !2946)
!2953 = !DILocation(line: 61, column: 7, scope: !2940, inlinedAt: !2946)
!2954 = !DILocation(line: 62, column: 8, scope: !2955, inlinedAt: !2946)
!2955 = distinct !DILexicalBlock(scope: !2940, file: !182, line: 62, column: 7)
!2956 = !DILocation(line: 62, column: 10, scope: !2955, inlinedAt: !2946)
!2957 = !DILocation(line: 63, column: 5, scope: !2955, inlinedAt: !2946)
!2958 = !DILocation(line: 116, column: 3, scope: !2926)
!2959 = !DILocation(line: 0, scope: !2940)
!2960 = !DILocation(line: 53, column: 8, scope: !2948)
!2961 = !DILocation(line: 53, column: 10, scope: !2948)
!2962 = !DILocation(line: 57, column: 7, scope: !2951)
!2963 = !DILocation(line: 58, column: 7, scope: !2951)
!2964 = !DILocation(line: 61, column: 7, scope: !2940)
!2965 = !DILocation(line: 62, column: 8, scope: !2955)
!2966 = !DILocation(line: 62, column: 10, scope: !2955)
!2967 = !DILocation(line: 63, column: 5, scope: !2955)
!2968 = !DILocation(line: 65, column: 1, scope: !2940)
!2969 = !DILocation(line: 0, scope: !186)
!2970 = !DILocation(line: 176, column: 14, scope: !186)
!2971 = !DILocation(line: 178, column: 9, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !186, file: !185, line: 178, column: 7)
!2973 = !DILocation(line: 178, column: 7, scope: !186)
!2974 = !DILocation(line: 180, column: 13, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !185, line: 180, column: 11)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !185, line: 179, column: 5)
!2977 = !DILocation(line: 180, column: 11, scope: !2976)
!2978 = !DILocation(line: 188, column: 30, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !185, line: 181, column: 9)
!2980 = !DILocation(line: 189, column: 16, scope: !2979)
!2981 = !DILocation(line: 189, column: 13, scope: !2979)
!2982 = !DILocation(line: 190, column: 9, scope: !2979)
!2983 = !DILocation(line: 191, column: 11, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !185, line: 191, column: 11)
!2985 = !DILocation(line: 191, column: 11, scope: !2976)
!2986 = !DILocation(line: 206, column: 7, scope: !186)
!2987 = !DILocation(line: 207, column: 25, scope: !186)
!2988 = !DILocation(line: 0, scope: !2940, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 207, column: 10, scope: !186)
!2990 = !DILocation(line: 53, column: 10, scope: !2948, inlinedAt: !2989)
!2991 = !DILocation(line: 192, column: 9, scope: !2984)
!2992 = !DILocation(line: 200, column: 69, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !185, line: 200, column: 11)
!2994 = distinct !DILexicalBlock(scope: !2972, file: !185, line: 195, column: 5)
!2995 = !DILocation(line: 201, column: 11, scope: !2993)
!2996 = !DILocation(line: 200, column: 11, scope: !2994)
!2997 = !DILocation(line: 202, column: 9, scope: !2993)
!2998 = !DILocation(line: 203, column: 14, scope: !2994)
!2999 = !DILocation(line: 203, column: 18, scope: !2994)
!3000 = !DILocation(line: 203, column: 9, scope: !2994)
!3001 = !DILocation(line: 53, column: 8, scope: !2948, inlinedAt: !2989)
!3002 = !DILocation(line: 57, column: 7, scope: !2951, inlinedAt: !2989)
!3003 = !DILocation(line: 58, column: 7, scope: !2951, inlinedAt: !2989)
!3004 = !DILocation(line: 61, column: 7, scope: !2940, inlinedAt: !2989)
!3005 = !DILocation(line: 62, column: 8, scope: !2955, inlinedAt: !2989)
!3006 = !DILocation(line: 62, column: 10, scope: !2955, inlinedAt: !2989)
!3007 = !DILocation(line: 63, column: 5, scope: !2955, inlinedAt: !2989)
!3008 = !DILocation(line: 207, column: 3, scope: !186)
!3009 = distinct !DISubprogram(name: "xcharalloc", scope: !185, file: !185, line: 216, type: !2146, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3010)
!3010 = !{!3011}
!3011 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !185, line: 216, type: !54)
!3012 = !DILocation(line: 0, scope: !3009)
!3013 = !DILocation(line: 0, scope: !2907, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 218, column: 10, scope: !3009)
!3015 = !DILocation(line: 41, column: 13, scope: !2907, inlinedAt: !3014)
!3016 = !DILocation(line: 42, column: 8, scope: !2916, inlinedAt: !3014)
!3017 = !DILocation(line: 42, column: 10, scope: !2916, inlinedAt: !3014)
!3018 = !DILocation(line: 43, column: 5, scope: !2916, inlinedAt: !3014)
!3019 = !DILocation(line: 218, column: 3, scope: !3009)
!3020 = distinct !DISubprogram(name: "x2realloc", scope: !182, file: !182, line: 74, type: !3021, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!53, !53, !189}
!3023 = !{!3024, !3025}
!3024 = !DILocalVariable(name: "p", arg: 1, scope: !3020, file: !182, line: 74, type: !53)
!3025 = !DILocalVariable(name: "pn", arg: 2, scope: !3020, file: !182, line: 74, type: !189)
!3026 = !DILocation(line: 0, scope: !3020)
!3027 = !DILocation(line: 0, scope: !186, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 76, column: 10, scope: !3020)
!3029 = !DILocation(line: 176, column: 14, scope: !186, inlinedAt: !3028)
!3030 = !DILocation(line: 178, column: 9, scope: !2972, inlinedAt: !3028)
!3031 = !DILocation(line: 178, column: 7, scope: !186, inlinedAt: !3028)
!3032 = !DILocation(line: 180, column: 13, scope: !2975, inlinedAt: !3028)
!3033 = !DILocation(line: 180, column: 11, scope: !2976, inlinedAt: !3028)
!3034 = !DILocation(line: 191, column: 11, scope: !2984, inlinedAt: !3028)
!3035 = !DILocation(line: 191, column: 11, scope: !2976, inlinedAt: !3028)
!3036 = !DILocation(line: 192, column: 9, scope: !2984, inlinedAt: !3028)
!3037 = !DILocation(line: 201, column: 11, scope: !2993, inlinedAt: !3028)
!3038 = !DILocation(line: 200, column: 11, scope: !2994, inlinedAt: !3028)
!3039 = !DILocation(line: 202, column: 9, scope: !2993, inlinedAt: !3028)
!3040 = !DILocation(line: 203, column: 14, scope: !2994, inlinedAt: !3028)
!3041 = !DILocation(line: 203, column: 18, scope: !2994, inlinedAt: !3028)
!3042 = !DILocation(line: 203, column: 9, scope: !2994, inlinedAt: !3028)
!3043 = !DILocation(line: 0, scope: !2940, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 207, column: 10, scope: !186, inlinedAt: !3028)
!3045 = !DILocation(line: 53, column: 10, scope: !2948, inlinedAt: !3044)
!3046 = !DILocation(line: 206, column: 7, scope: !186, inlinedAt: !3028)
!3047 = !DILocation(line: 61, column: 7, scope: !2940, inlinedAt: !3044)
!3048 = !DILocation(line: 62, column: 8, scope: !2955, inlinedAt: !3044)
!3049 = !DILocation(line: 62, column: 10, scope: !2955, inlinedAt: !3044)
!3050 = !DILocation(line: 63, column: 5, scope: !2955, inlinedAt: !3044)
!3051 = !DILocation(line: 76, column: 3, scope: !3020)
!3052 = distinct !DISubprogram(name: "xzalloc", scope: !182, file: !182, line: 84, type: !2908, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3053)
!3053 = !{!3054}
!3054 = !DILocalVariable(name: "n", arg: 1, scope: !3052, file: !182, line: 84, type: !54)
!3055 = !DILocation(line: 0, scope: !3052)
!3056 = !DILocalVariable(name: "n", arg: 1, scope: !3057, file: !182, line: 93, type: !54)
!3057 = distinct !DISubprogram(name: "xcalloc", scope: !182, file: !182, line: 93, type: !2895, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3058)
!3058 = !{!3056, !3059, !3060}
!3059 = !DILocalVariable(name: "s", arg: 2, scope: !3057, file: !182, line: 93, type: !54)
!3060 = !DILocalVariable(name: "p", scope: !3057, file: !182, line: 95, type: !53)
!3061 = !DILocation(line: 0, scope: !3057, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 86, column: 10, scope: !3052)
!3063 = !DILocation(line: 100, column: 7, scope: !3064, inlinedAt: !3062)
!3064 = distinct !DILexicalBlock(scope: !3057, file: !182, line: 100, column: 7)
!3065 = !DILocation(line: 101, column: 7, scope: !3064, inlinedAt: !3062)
!3066 = !DILocation(line: 101, column: 18, scope: !3064, inlinedAt: !3062)
!3067 = !DILocation(line: 101, column: 16, scope: !3064, inlinedAt: !3062)
!3068 = !DILocation(line: 100, column: 7, scope: !3057, inlinedAt: !3062)
!3069 = !DILocation(line: 102, column: 5, scope: !3064, inlinedAt: !3062)
!3070 = !DILocation(line: 86, column: 3, scope: !3052)
!3071 = !DILocation(line: 0, scope: !3057)
!3072 = !DILocation(line: 100, column: 7, scope: !3064)
!3073 = !DILocation(line: 101, column: 7, scope: !3064)
!3074 = !DILocation(line: 101, column: 18, scope: !3064)
!3075 = !DILocation(line: 101, column: 16, scope: !3064)
!3076 = !DILocation(line: 100, column: 7, scope: !3057)
!3077 = !DILocation(line: 102, column: 5, scope: !3064)
!3078 = !DILocation(line: 103, column: 3, scope: !3057)
!3079 = distinct !DISubprogram(name: "xmemdup", scope: !182, file: !182, line: 111, type: !3080, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3084)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!53, !3082, !54}
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3084 = !{!3085, !3086}
!3085 = !DILocalVariable(name: "p", arg: 1, scope: !3079, file: !182, line: 111, type: !3082)
!3086 = !DILocalVariable(name: "s", arg: 2, scope: !3079, file: !182, line: 111, type: !54)
!3087 = !DILocation(line: 0, scope: !3079)
!3088 = !DILocation(line: 0, scope: !2907, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 113, column: 18, scope: !3079)
!3090 = !DILocation(line: 41, column: 13, scope: !2907, inlinedAt: !3089)
!3091 = !DILocation(line: 42, column: 8, scope: !2916, inlinedAt: !3089)
!3092 = !DILocation(line: 42, column: 10, scope: !2916, inlinedAt: !3089)
!3093 = !DILocation(line: 43, column: 5, scope: !2916, inlinedAt: !3089)
!3094 = !DILocalVariable(name: "__dest", arg: 1, scope: !3095, file: !1673, line: 26, type: !3098)
!3095 = distinct !DISubprogram(name: "memcpy", scope: !1673, file: !1673, line: 26, type: !3096, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3100)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!53, !3098, !3099, !54}
!3098 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!3099 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3082)
!3100 = !{!3094, !3101, !3102}
!3101 = !DILocalVariable(name: "__src", arg: 2, scope: !3095, file: !1673, line: 26, type: !3099)
!3102 = !DILocalVariable(name: "__len", arg: 3, scope: !3095, file: !1673, line: 26, type: !54)
!3103 = !DILocation(line: 0, scope: !3095, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 113, column: 10, scope: !3079)
!3105 = !DILocation(line: 29, column: 10, scope: !3095, inlinedAt: !3104)
!3106 = !DILocation(line: 113, column: 3, scope: !3079)
!3107 = distinct !DISubprogram(name: "xstrdup", scope: !182, file: !182, line: 119, type: !1136, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3108)
!3108 = !{!3109}
!3109 = !DILocalVariable(name: "string", arg: 1, scope: !3107, file: !182, line: 119, type: !73)
!3110 = !DILocation(line: 0, scope: !3107)
!3111 = !DILocation(line: 121, column: 27, scope: !3107)
!3112 = !DILocation(line: 121, column: 43, scope: !3107)
!3113 = !DILocation(line: 0, scope: !3079, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 121, column: 10, scope: !3107)
!3115 = !DILocation(line: 0, scope: !2907, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 113, column: 18, scope: !3079, inlinedAt: !3114)
!3117 = !DILocation(line: 41, column: 13, scope: !2907, inlinedAt: !3116)
!3118 = !DILocation(line: 42, column: 8, scope: !2916, inlinedAt: !3116)
!3119 = !DILocation(line: 42, column: 10, scope: !2916, inlinedAt: !3116)
!3120 = !DILocation(line: 43, column: 5, scope: !2916, inlinedAt: !3116)
!3121 = !DILocation(line: 0, scope: !3095, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 113, column: 10, scope: !3079, inlinedAt: !3114)
!3123 = !DILocation(line: 29, column: 10, scope: !3095, inlinedAt: !3122)
!3124 = !DILocation(line: 121, column: 3, scope: !3107)
!3125 = distinct !DISubprogram(name: "xalloc_die", scope: !199, file: !199, line: 32, type: !646, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !93)
!3126 = !DILocation(line: 34, column: 10, scope: !3125)
!3127 = !DILocation(line: 34, column: 33, scope: !3125)
!3128 = !DILocation(line: 34, column: 3, scope: !3125)
!3129 = !DILocation(line: 40, column: 3, scope: !3125)
!3130 = distinct !DISubprogram(name: "xnumtoimax", scope: !3131, file: !3131, line: 36, type: !3132, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3134)
!3131 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!62, !73, !44, !62, !62, !73, !73, !44}
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3144}
!3135 = !DILocalVariable(name: "n_str", arg: 1, scope: !3130, file: !3131, line: 36, type: !73)
!3136 = !DILocalVariable(name: "base", arg: 2, scope: !3130, file: !3131, line: 36, type: !44)
!3137 = !DILocalVariable(name: "min", arg: 3, scope: !3130, file: !3131, line: 36, type: !62)
!3138 = !DILocalVariable(name: "max", arg: 4, scope: !3130, file: !3131, line: 36, type: !62)
!3139 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3130, file: !3131, line: 37, type: !73)
!3140 = !DILocalVariable(name: "err", arg: 6, scope: !3130, file: !3131, line: 37, type: !73)
!3141 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3130, file: !3131, line: 37, type: !44)
!3142 = !DILocalVariable(name: "s_err", scope: !3130, file: !3131, line: 39, type: !3143)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !204, line: 38, baseType: !203)
!3144 = !DILocalVariable(name: "tnum", scope: !3130, file: !3131, line: 41, type: !62)
!3145 = !DILocation(line: 0, scope: !3130)
!3146 = !DILocation(line: 41, column: 3, scope: !3130)
!3147 = !DILocation(line: 42, column: 11, scope: !3130)
!3148 = !DILocation(line: 44, column: 7, scope: !3130)
!3149 = !DILocation(line: 69, column: 50, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3131, line: 67, column: 5)
!3151 = distinct !DILexicalBlock(scope: !3130, file: !3131, line: 66, column: 7)
!3152 = !DILocation(line: 46, column: 11, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !3131, line: 46, column: 11)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !3131, line: 45, column: 5)
!3155 = distinct !DILexicalBlock(scope: !3130, file: !3131, line: 44, column: 7)
!3156 = !DILocation(line: 46, column: 16, scope: !3153)
!3157 = !DILocation(line: 46, column: 22, scope: !3153)
!3158 = !DILocation(line: 51, column: 20, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !3131, line: 51, column: 15)
!3160 = distinct !DILexicalBlock(scope: !3153, file: !3131, line: 47, column: 9)
!3161 = !DILocation(line: 51, column: 15, scope: !3160)
!3162 = !DILocation(line: 52, column: 13, scope: !3159)
!3163 = !DILocation(line: 52, column: 19, scope: !3159)
!3164 = !DILocation(line: 66, column: 7, scope: !3130)
!3165 = !DILocation(line: 54, column: 25, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3159, file: !3131, line: 54, column: 20)
!3167 = !DILocation(line: 0, scope: !3166)
!3168 = !DILocation(line: 54, column: 20, scope: !3159)
!3169 = !DILocation(line: 55, column: 19, scope: !3166)
!3170 = !DILocation(line: 58, column: 19, scope: !3166)
!3171 = !DILocation(line: 62, column: 5, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3155, file: !3131, line: 61, column: 12)
!3173 = !DILocation(line: 62, column: 11, scope: !3172)
!3174 = !DILocation(line: 64, column: 5, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !3131, line: 63, column: 12)
!3176 = !DILocation(line: 64, column: 11, scope: !3175)
!3177 = !DILocation(line: 69, column: 14, scope: !3150)
!3178 = !DILocation(line: 69, column: 56, scope: !3150)
!3179 = !DILocation(line: 70, column: 29, scope: !3150)
!3180 = !DILocation(line: 69, column: 7, scope: !3150)
!3181 = !DILocation(line: 73, column: 10, scope: !3130)
!3182 = !DILocation(line: 71, column: 5, scope: !3150)
!3183 = !DILocation(line: 74, column: 1, scope: !3130)
!3184 = !DILocation(line: 73, column: 3, scope: !3130)
!3185 = distinct !DISubprogram(name: "xdectoimax", scope: !3131, file: !3131, line: 82, type: !3186, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!62, !73, !62, !62, !73, !73, !44}
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3194}
!3189 = !DILocalVariable(name: "n_str", arg: 1, scope: !3185, file: !3131, line: 82, type: !73)
!3190 = !DILocalVariable(name: "min", arg: 2, scope: !3185, file: !3131, line: 82, type: !62)
!3191 = !DILocalVariable(name: "max", arg: 3, scope: !3185, file: !3131, line: 82, type: !62)
!3192 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3185, file: !3131, line: 83, type: !73)
!3193 = !DILocalVariable(name: "err", arg: 5, scope: !3185, file: !3131, line: 83, type: !73)
!3194 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3185, file: !3131, line: 83, type: !44)
!3195 = !DILocation(line: 0, scope: !3185)
!3196 = !DILocation(line: 85, column: 10, scope: !3185)
!3197 = !DILocation(line: 85, column: 3, scope: !3185)
!3198 = distinct !DISubprogram(name: "xstrtoimax", scope: !3199, file: !3199, line: 76, type: !3200, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3203)
!3199 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!3143, !73, !770, !44, !3202, !73}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3216, !3217}
!3204 = !DILocalVariable(name: "s", arg: 1, scope: !3198, file: !3199, line: 76, type: !73)
!3205 = !DILocalVariable(name: "ptr", arg: 2, scope: !3198, file: !3199, line: 76, type: !770)
!3206 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3198, file: !3199, line: 76, type: !44)
!3207 = !DILocalVariable(name: "val", arg: 4, scope: !3198, file: !3199, line: 77, type: !3202)
!3208 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3198, file: !3199, line: 77, type: !73)
!3209 = !DILocalVariable(name: "t_ptr", scope: !3198, file: !3199, line: 79, type: !51)
!3210 = !DILocalVariable(name: "p", scope: !3198, file: !3199, line: 80, type: !770)
!3211 = !DILocalVariable(name: "tmp", scope: !3198, file: !3199, line: 81, type: !62)
!3212 = !DILocalVariable(name: "err", scope: !3198, file: !3199, line: 82, type: !3143)
!3213 = !DILocalVariable(name: "base", scope: !3214, file: !3199, line: 129, type: !44)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !3199, line: 128, column: 5)
!3215 = distinct !DILexicalBlock(scope: !3198, file: !3199, line: 127, column: 7)
!3216 = !DILocalVariable(name: "suffixes", scope: !3214, file: !3199, line: 130, type: !44)
!3217 = !DILocalVariable(name: "overflow", scope: !3214, file: !3199, line: 131, type: !3143)
!3218 = !DILocation(line: 0, scope: !3198)
!3219 = !DILocation(line: 79, column: 3, scope: !3198)
!3220 = !DILocation(line: 84, column: 3, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !3199, line: 84, column: 3)
!3222 = distinct !DILexicalBlock(scope: !3198, file: !3199, line: 84, column: 3)
!3223 = !DILocation(line: 86, column: 8, scope: !3198)
!3224 = !DILocation(line: 88, column: 3, scope: !3198)
!3225 = !DILocation(line: 88, column: 9, scope: !3198)
!3226 = !DILocation(line: 100, column: 9, scope: !3198)
!3227 = !DILocation(line: 102, column: 7, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3198, file: !3199, line: 102, column: 7)
!3229 = !DILocation(line: 102, column: 10, scope: !3228)
!3230 = !DILocation(line: 102, column: 7, scope: !3198)
!3231 = !DILocation(line: 106, column: 11, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3199, line: 106, column: 11)
!3233 = distinct !DILexicalBlock(scope: !3228, file: !3199, line: 103, column: 5)
!3234 = !DILocation(line: 106, column: 26, scope: !3232)
!3235 = !DILocation(line: 106, column: 29, scope: !3232)
!3236 = !DILocation(line: 106, column: 33, scope: !3232)
!3237 = !DILocation(line: 106, column: 36, scope: !3232)
!3238 = !DILocation(line: 106, column: 11, scope: !3233)
!3239 = !DILocation(line: 111, column: 12, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3228, file: !3199, line: 111, column: 12)
!3241 = !DILocation(line: 111, column: 12, scope: !3228)
!3242 = !DILocation(line: 116, column: 5, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3240, file: !3199, line: 112, column: 5)
!3244 = !DILocation(line: 121, column: 8, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3198, file: !3199, line: 121, column: 7)
!3246 = !DILocation(line: 121, column: 7, scope: !3198)
!3247 = !DILocation(line: 123, column: 12, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !3199, line: 122, column: 5)
!3249 = !DILocation(line: 124, column: 7, scope: !3248)
!3250 = !DILocation(line: 127, column: 7, scope: !3215)
!3251 = !DILocation(line: 127, column: 11, scope: !3215)
!3252 = !DILocation(line: 127, column: 7, scope: !3198)
!3253 = !DILocation(line: 0, scope: !3214)
!3254 = !DILocation(line: 133, column: 12, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3214, file: !3199, line: 133, column: 11)
!3256 = !DILocation(line: 133, column: 11, scope: !3214)
!3257 = !DILocation(line: 135, column: 16, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3255, file: !3199, line: 134, column: 9)
!3259 = !DILocation(line: 136, column: 22, scope: !3258)
!3260 = !DILocation(line: 136, column: 11, scope: !3258)
!3261 = !DILocation(line: 139, column: 7, scope: !3214)
!3262 = !DILocation(line: 151, column: 15, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !3199, line: 151, column: 15)
!3264 = distinct !DILexicalBlock(scope: !3214, file: !3199, line: 140, column: 9)
!3265 = !DILocation(line: 151, column: 15, scope: !3264)
!3266 = !DILocation(line: 152, column: 21, scope: !3263)
!3267 = !DILocation(line: 152, column: 13, scope: !3263)
!3268 = !DILocation(line: 155, column: 21, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3199, line: 155, column: 21)
!3270 = distinct !DILexicalBlock(scope: !3263, file: !3199, line: 153, column: 15)
!3271 = !DILocation(line: 155, column: 29, scope: !3269)
!3272 = !DILocation(line: 155, column: 21, scope: !3270)
!3273 = !DILocation(line: 163, column: 17, scope: !3270)
!3274 = !DILocation(line: 167, column: 7, scope: !3214)
!3275 = !DILocalVariable(name: "x", arg: 1, scope: !3276, file: !3199, line: 48, type: !3202)
!3276 = distinct !DISubprogram(name: "bkm_scale", scope: !3199, file: !3199, line: 48, type: !3277, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!3143, !3202, !44}
!3279 = !{!3275, !3280}
!3280 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3276, file: !3199, line: 48, type: !44)
!3281 = !DILocation(line: 0, scope: !3276, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 170, column: 22, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3214, file: !3199, line: 168, column: 9)
!3284 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3282)
!3285 = distinct !DILexicalBlock(scope: !3276, file: !3199, line: 50, column: 7)
!3286 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3282)
!3287 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3282)
!3288 = distinct !DILexicalBlock(scope: !3276, file: !3199, line: 55, column: 7)
!3289 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3282)
!3290 = !DILocation(line: 0, scope: !3276, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 177, column: 22, scope: !3283)
!3292 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3291)
!3293 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3291)
!3294 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3291)
!3295 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3291)
!3296 = !DILocalVariable(name: "x", arg: 1, scope: !3297, file: !3199, line: 65, type: !3202)
!3297 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3199, file: !3199, line: 65, type: !3298, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!3143, !3202, !44, !44}
!3300 = !{!3296, !3301, !3302, !3303}
!3301 = !DILocalVariable(name: "base", arg: 2, scope: !3297, file: !3199, line: 65, type: !44)
!3302 = !DILocalVariable(name: "power", arg: 3, scope: !3297, file: !3199, line: 65, type: !44)
!3303 = !DILocalVariable(name: "err", scope: !3297, file: !3199, line: 67, type: !3143)
!3304 = !DILocation(line: 0, scope: !3297, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 185, column: 22, scope: !3283)
!3306 = !DILocation(line: 0, scope: !3276, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 69, column: 12, scope: !3297, inlinedAt: !3305)
!3308 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3307)
!3309 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3307)
!3310 = !DILocation(line: 55, column: 24, scope: !3288, inlinedAt: !3307)
!3311 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3307)
!3312 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3307)
!3313 = !DILocation(line: 0, scope: !3297, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 190, column: 22, scope: !3283)
!3315 = !DILocation(line: 0, scope: !3276, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 69, column: 12, scope: !3297, inlinedAt: !3314)
!3317 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3316)
!3318 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3316)
!3319 = !DILocation(line: 55, column: 24, scope: !3288, inlinedAt: !3316)
!3320 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3316)
!3321 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3316)
!3322 = !DILocation(line: 0, scope: !3297, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 195, column: 22, scope: !3283)
!3324 = !DILocation(line: 0, scope: !3276, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 69, column: 12, scope: !3297, inlinedAt: !3323)
!3326 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3325)
!3327 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3325)
!3328 = !DILocation(line: 55, column: 24, scope: !3288, inlinedAt: !3325)
!3329 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3325)
!3330 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3325)
!3331 = !DILocation(line: 0, scope: !3297, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 200, column: 22, scope: !3283)
!3333 = !DILocation(line: 0, scope: !3276, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 69, column: 12, scope: !3297, inlinedAt: !3332)
!3335 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3334)
!3336 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3334)
!3337 = !DILocation(line: 55, column: 24, scope: !3288, inlinedAt: !3334)
!3338 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3334)
!3339 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3334)
!3340 = !DILocation(line: 0, scope: !3297, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 204, column: 22, scope: !3283)
!3342 = !DILocation(line: 0, scope: !3276, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 69, column: 12, scope: !3297, inlinedAt: !3341)
!3344 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3343)
!3345 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3343)
!3346 = !DILocation(line: 55, column: 24, scope: !3288, inlinedAt: !3343)
!3347 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3343)
!3348 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3343)
!3349 = !DILocation(line: 0, scope: !3297, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 209, column: 22, scope: !3283)
!3351 = !DILocation(line: 0, scope: !3276, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 69, column: 12, scope: !3297, inlinedAt: !3350)
!3353 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3352)
!3354 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3352)
!3355 = !DILocation(line: 55, column: 24, scope: !3288, inlinedAt: !3352)
!3356 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3352)
!3357 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3352)
!3358 = !DILocation(line: 0, scope: !3276, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 213, column: 22, scope: !3283)
!3360 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3359)
!3361 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3359)
!3362 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3359)
!3363 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3359)
!3364 = !DILocation(line: 0, scope: !3297, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 217, column: 22, scope: !3283)
!3366 = !DILocation(line: 0, scope: !3276, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 69, column: 12, scope: !3297, inlinedAt: !3365)
!3368 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3367)
!3369 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3367)
!3370 = !DILocation(line: 55, column: 24, scope: !3288, inlinedAt: !3367)
!3371 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3367)
!3372 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3367)
!3373 = !DILocation(line: 0, scope: !3297, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 221, column: 22, scope: !3283)
!3375 = !DILocation(line: 0, scope: !3276, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 69, column: 12, scope: !3297, inlinedAt: !3374)
!3377 = !DILocation(line: 50, column: 38, scope: !3285, inlinedAt: !3376)
!3378 = !DILocation(line: 50, column: 7, scope: !3276, inlinedAt: !3376)
!3379 = !DILocation(line: 55, column: 24, scope: !3288, inlinedAt: !3376)
!3380 = !DILocation(line: 55, column: 39, scope: !3288, inlinedAt: !3376)
!3381 = !DILocation(line: 55, column: 7, scope: !3276, inlinedAt: !3376)
!3382 = !DILocation(line: 225, column: 16, scope: !3283)
!3383 = !DILocation(line: 226, column: 22, scope: !3283)
!3384 = !DILocation(line: 226, column: 11, scope: !3283)
!3385 = !DILocation(line: 0, scope: !3283)
!3386 = !DILocation(line: 229, column: 11, scope: !3214)
!3387 = !DILocation(line: 230, column: 10, scope: !3214)
!3388 = !DILocation(line: 231, column: 11, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3214, file: !3199, line: 231, column: 11)
!3390 = !DILocation(line: 231, column: 11, scope: !3214)
!3391 = !DILocation(line: 107, column: 13, scope: !3232)
!3392 = !DILocation(line: 82, column: 16, scope: !3198)
!3393 = !DILocation(line: 235, column: 8, scope: !3198)
!3394 = !DILocation(line: 236, column: 3, scope: !3198)
!3395 = !DILocation(line: 237, column: 1, scope: !3198)
!3396 = !DILocation(line: 69, column: 9, scope: !3297, inlinedAt: !3305)
!3397 = !DILocation(line: 69, column: 9, scope: !3297, inlinedAt: !3314)
!3398 = !DILocation(line: 69, column: 9, scope: !3297, inlinedAt: !3332)
!3399 = !DILocation(line: 69, column: 9, scope: !3297, inlinedAt: !3341)
!3400 = !DILocation(line: 69, column: 9, scope: !3297, inlinedAt: !3350)
!3401 = !DILocation(line: 69, column: 9, scope: !3297, inlinedAt: !3365)
!3402 = !DILocation(line: 69, column: 9, scope: !3297, inlinedAt: !3374)
!3403 = !DISubprogram(name: "strtoimax", scope: !3404, file: !3404, line: 297, type: !3405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3404 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!50, !73, !770, !44}
!3407 = distinct !DISubprogram(name: "rpl_calloc", scope: !214, file: !214, line: 42, type: !2895, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3408)
!3408 = !{!3409, !3410, !3411, !3412}
!3409 = !DILocalVariable(name: "n", arg: 1, scope: !3407, file: !214, line: 42, type: !54)
!3410 = !DILocalVariable(name: "s", arg: 2, scope: !3407, file: !214, line: 42, type: !54)
!3411 = !DILocalVariable(name: "result", scope: !3407, file: !214, line: 44, type: !53)
!3412 = !DILocalVariable(name: "bytes", scope: !3413, file: !214, line: 56, type: !54)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !214, line: 53, column: 5)
!3414 = distinct !DILexicalBlock(scope: !3407, file: !214, line: 47, column: 7)
!3415 = !DILocation(line: 0, scope: !3407)
!3416 = !DILocation(line: 47, column: 9, scope: !3414)
!3417 = !DILocation(line: 47, column: 14, scope: !3414)
!3418 = !DILocation(line: 0, scope: !3413)
!3419 = !DILocation(line: 57, column: 21, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3413, file: !214, line: 57, column: 11)
!3421 = !DILocation(line: 57, column: 11, scope: !3413)
!3422 = !DILocation(line: 59, column: 11, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3420, file: !214, line: 58, column: 9)
!3424 = !DILocation(line: 59, column: 17, scope: !3423)
!3425 = !DILocation(line: 65, column: 12, scope: !3407)
!3426 = !DILocation(line: 72, column: 3, scope: !3407)
!3427 = !DILocation(line: 73, column: 1, scope: !3407)
!3428 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !216, file: !216, line: 86, type: !3429, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3443)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!54, !3431, !73, !54, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1428, line: 6, baseType: !3434)
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1430, line: 21, baseType: !3435)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1430, line: 13, size: 64, elements: !3436)
!3436 = !{!3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3435, file: !1430, line: 15, baseType: !44, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3435, file: !1430, line: 20, baseType: !3439, size: 32, offset: 32)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3435, file: !1430, line: 16, size: 32, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3439, file: !1430, line: 18, baseType: !6, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3439, file: !1430, line: 19, baseType: !1439, size: 32)
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450}
!3444 = !DILocalVariable(name: "pwc", arg: 1, scope: !3428, file: !216, line: 86, type: !3431)
!3445 = !DILocalVariable(name: "s", arg: 2, scope: !3428, file: !216, line: 86, type: !73)
!3446 = !DILocalVariable(name: "n", arg: 3, scope: !3428, file: !216, line: 86, type: !54)
!3447 = !DILocalVariable(name: "ps", arg: 4, scope: !3428, file: !216, line: 86, type: !3432)
!3448 = !DILocalVariable(name: "ret", scope: !3428, file: !216, line: 88, type: !54)
!3449 = !DILocalVariable(name: "wc", scope: !3428, file: !216, line: 89, type: !1444)
!3450 = !DILocalVariable(name: "uc", scope: !3451, file: !216, line: 156, type: !58)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !216, line: 155, column: 5)
!3452 = distinct !DILexicalBlock(scope: !3428, file: !216, line: 154, column: 7)
!3453 = !DILocation(line: 0, scope: !3428)
!3454 = !DILocation(line: 89, column: 3, scope: !3428)
!3455 = !DILocation(line: 105, column: 9, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3428, file: !216, line: 105, column: 7)
!3457 = !DILocation(line: 105, column: 7, scope: !3428)
!3458 = !DILocation(line: 145, column: 9, scope: !3428)
!3459 = !DILocation(line: 154, column: 19, scope: !3452)
!3460 = !DILocation(line: 154, column: 26, scope: !3452)
!3461 = !DILocation(line: 154, column: 41, scope: !3452)
!3462 = !DILocation(line: 154, column: 7, scope: !3428)
!3463 = !DILocation(line: 156, column: 26, scope: !3451)
!3464 = !DILocation(line: 0, scope: !3451)
!3465 = !DILocation(line: 157, column: 14, scope: !3451)
!3466 = !DILocation(line: 157, column: 12, scope: !3451)
!3467 = !DILocation(line: 163, column: 1, scope: !3428)
!3468 = !DISubprogram(name: "mbrtowc", scope: !2106, file: !2106, line: 296, type: !3469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!56, !83, !73, !56, !3471}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3472 = distinct !DISubprogram(name: "close_stream", scope: !219, file: !219, line: 56, type: !3473, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !3509)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!44, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2739, line: 7, baseType: !3477)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3477, file: !717, line: 51, baseType: !44, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3477, file: !717, line: 54, baseType: !51, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3477, file: !717, line: 55, baseType: !51, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3477, file: !717, line: 56, baseType: !51, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3477, file: !717, line: 57, baseType: !51, size: 64, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3477, file: !717, line: 58, baseType: !51, size: 64, offset: 320)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3477, file: !717, line: 59, baseType: !51, size: 64, offset: 384)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3477, file: !717, line: 60, baseType: !51, size: 64, offset: 448)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3477, file: !717, line: 61, baseType: !51, size: 64, offset: 512)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3477, file: !717, line: 64, baseType: !51, size: 64, offset: 576)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3477, file: !717, line: 65, baseType: !51, size: 64, offset: 640)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3477, file: !717, line: 66, baseType: !51, size: 64, offset: 704)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3477, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3477, file: !717, line: 70, baseType: !3493, size: 64, offset: 832)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3477, file: !717, line: 72, baseType: !44, size: 32, offset: 896)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3477, file: !717, line: 73, baseType: !44, size: 32, offset: 928)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3477, file: !717, line: 74, baseType: !48, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3477, file: !717, line: 77, baseType: !45, size: 16, offset: 1024)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3477, file: !717, line: 78, baseType: !57, size: 8, offset: 1040)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3477, file: !717, line: 79, baseType: !741, size: 8, offset: 1048)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3477, file: !717, line: 81, baseType: !745, size: 64, offset: 1088)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3477, file: !717, line: 89, baseType: !748, size: 64, offset: 1152)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3477, file: !717, line: 91, baseType: !750, size: 64, offset: 1216)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3477, file: !717, line: 92, baseType: !753, size: 64, offset: 1280)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3477, file: !717, line: 93, baseType: !3493, size: 64, offset: 1344)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3477, file: !717, line: 94, baseType: !53, size: 64, offset: 1408)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3477, file: !717, line: 95, baseType: !54, size: 64, offset: 1472)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3477, file: !717, line: 96, baseType: !44, size: 32, offset: 1536)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3477, file: !717, line: 98, baseType: !760, size: 160, offset: 1568)
!3509 = !{!3510, !3511, !3513, !3514}
!3510 = !DILocalVariable(name: "stream", arg: 1, scope: !3472, file: !219, line: 56, type: !3475)
!3511 = !DILocalVariable(name: "some_pending", scope: !3472, file: !219, line: 58, type: !3512)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3513 = !DILocalVariable(name: "prev_fail", scope: !3472, file: !219, line: 59, type: !3512)
!3514 = !DILocalVariable(name: "fclose_fail", scope: !3472, file: !219, line: 60, type: !3512)
!3515 = !DILocation(line: 0, scope: !3472)
!3516 = !DILocation(line: 58, column: 30, scope: !3472)
!3517 = !DILocalVariable(name: "__stream", arg: 1, scope: !3518, file: !3519, line: 135, type: !3475)
!3518 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3519, file: !3519, line: 135, type: !3473, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !3520)
!3519 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3520 = !{!3517}
!3521 = !DILocation(line: 0, scope: !3518, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 59, column: 27, scope: !3472)
!3523 = !DILocation(line: 137, column: 10, scope: !3518, inlinedAt: !3522)
!3524 = !{!3525, !889, i64 0}
!3525 = !{!"_IO_FILE", !889, i64 0, !637, i64 8, !637, i64 16, !637, i64 24, !637, i64 32, !637, i64 40, !637, i64 48, !637, i64 56, !637, i64 64, !637, i64 72, !637, i64 80, !637, i64 88, !637, i64 96, !637, i64 104, !889, i64 112, !889, i64 116, !945, i64 120, !845, i64 128, !638, i64 130, !638, i64 131, !637, i64 136, !945, i64 144, !637, i64 152, !637, i64 160, !637, i64 168, !637, i64 176, !945, i64 184, !889, i64 192, !638, i64 196}
!3526 = !DILocation(line: 59, column: 43, scope: !3472)
!3527 = !DILocation(line: 60, column: 29, scope: !3472)
!3528 = !DILocation(line: 60, column: 45, scope: !3472)
!3529 = !DILocation(line: 70, column: 17, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3472, file: !219, line: 70, column: 7)
!3531 = !DILocation(line: 58, column: 50, scope: !3472)
!3532 = !DILocation(line: 70, column: 33, scope: !3530)
!3533 = !DILocation(line: 70, column: 53, scope: !3530)
!3534 = !DILocation(line: 70, column: 59, scope: !3530)
!3535 = !DILocation(line: 70, column: 7, scope: !3472)
!3536 = !DILocation(line: 72, column: 11, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3530, file: !219, line: 71, column: 5)
!3538 = !DILocation(line: 73, column: 9, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3537, file: !219, line: 72, column: 11)
!3540 = !DILocation(line: 73, column: 15, scope: !3539)
!3541 = !DILocation(line: 78, column: 1, scope: !3472)
!3542 = distinct !DISubprogram(name: "hard_locale", scope: !221, file: !221, line: 27, type: !3543, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!68, !44}
!3545 = !{!3546, !3547}
!3546 = !DILocalVariable(name: "category", arg: 1, scope: !3542, file: !221, line: 27, type: !44)
!3547 = !DILocalVariable(name: "locale", scope: !3542, file: !221, line: 29, type: !3548)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2056, elements: !3549)
!3549 = !{!3550}
!3550 = !DISubrange(count: 257)
!3551 = !DILocation(line: 0, scope: !3542)
!3552 = !DILocation(line: 29, column: 3, scope: !3542)
!3553 = !DILocation(line: 29, column: 8, scope: !3542)
!3554 = !DILocation(line: 31, column: 7, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3542, file: !221, line: 31, column: 7)
!3556 = !DILocation(line: 31, column: 7, scope: !3542)
!3557 = !DILocation(line: 34, column: 12, scope: !3542)
!3558 = !DILocation(line: 34, column: 38, scope: !3542)
!3559 = !DILocation(line: 34, column: 41, scope: !3542)
!3560 = !DILocation(line: 34, column: 66, scope: !3542)
!3561 = !DILocation(line: 35, column: 1, scope: !3542)
!3562 = distinct !DISubprogram(name: "locale_charset", scope: !223, file: !223, line: 831, type: !3563, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!73}
!3565 = !{!3566}
!3566 = !DILocalVariable(name: "codeset", scope: !3562, file: !223, line: 833, type: !73)
!3567 = !DILocation(line: 847, column: 13, scope: !3562)
!3568 = !DILocation(line: 0, scope: !3562)
!3569 = !DILocation(line: 911, column: 15, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3562, file: !223, line: 911, column: 7)
!3571 = !DILocation(line: 911, column: 7, scope: !3562)
!3572 = !DILocation(line: 1070, column: 13, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !223, line: 1070, column: 13)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !223, line: 1060, column: 7)
!3575 = distinct !DILexicalBlock(scope: !3562, file: !223, line: 1019, column: 3)
!3576 = !DILocation(line: 1070, column: 24, scope: !3573)
!3577 = !DILocation(line: 1070, column: 13, scope: !3574)
!3578 = !DILocation(line: 1158, column: 3, scope: !3562)
!3579 = !DISubprogram(name: "nl_langinfo", scope: !226, file: !226, line: 661, type: !3580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!51, !44}
!3582 = distinct !DISubprogram(name: "setlocale_null_r", scope: !612, file: !612, line: 269, type: !3583, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!44, !44, !51, !54}
!3585 = !{!3586, !3587, !3588}
!3586 = !DILocalVariable(name: "category", arg: 1, scope: !3582, file: !612, line: 269, type: !44)
!3587 = !DILocalVariable(name: "buf", arg: 2, scope: !3582, file: !612, line: 269, type: !51)
!3588 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3582, file: !612, line: 269, type: !54)
!3589 = !DILocation(line: 0, scope: !3582)
!3590 = !DILocalVariable(name: "category", arg: 1, scope: !3591, file: !612, line: 91, type: !44)
!3591 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !612, file: !612, line: 91, type: !3583, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3592)
!3592 = !{!3590, !3593, !3594, !3595, !3596}
!3593 = !DILocalVariable(name: "buf", arg: 2, scope: !3591, file: !612, line: 91, type: !51)
!3594 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3591, file: !612, line: 91, type: !54)
!3595 = !DILocalVariable(name: "result", scope: !3591, file: !612, line: 140, type: !73)
!3596 = !DILocalVariable(name: "length", scope: !3597, file: !612, line: 154, type: !54)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !612, line: 153, column: 5)
!3598 = distinct !DILexicalBlock(scope: !3591, file: !612, line: 142, column: 7)
!3599 = !DILocation(line: 0, scope: !3591, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 274, column: 10, scope: !3582)
!3601 = !DILocalVariable(name: "category", arg: 1, scope: !3602, file: !612, line: 60, type: !44)
!3602 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !612, file: !612, line: 60, type: !3603, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!73, !44}
!3605 = !{!3601, !3606}
!3606 = !DILocalVariable(name: "result", scope: !3602, file: !612, line: 62, type: !73)
!3607 = !DILocation(line: 0, scope: !3602, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 140, column: 24, scope: !3591, inlinedAt: !3600)
!3609 = !DILocation(line: 62, column: 24, scope: !3602, inlinedAt: !3608)
!3610 = !DILocation(line: 142, column: 14, scope: !3598, inlinedAt: !3600)
!3611 = !DILocation(line: 142, column: 7, scope: !3591, inlinedAt: !3600)
!3612 = !DILocation(line: 145, column: 19, scope: !3613, inlinedAt: !3600)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !612, line: 145, column: 11)
!3614 = distinct !DILexicalBlock(scope: !3598, file: !612, line: 143, column: 5)
!3615 = !DILocation(line: 145, column: 11, scope: !3614, inlinedAt: !3600)
!3616 = !DILocation(line: 149, column: 16, scope: !3613, inlinedAt: !3600)
!3617 = !DILocation(line: 149, column: 9, scope: !3613, inlinedAt: !3600)
!3618 = !DILocation(line: 154, column: 23, scope: !3597, inlinedAt: !3600)
!3619 = !DILocation(line: 0, scope: !3597, inlinedAt: !3600)
!3620 = !DILocation(line: 155, column: 18, scope: !3621, inlinedAt: !3600)
!3621 = distinct !DILexicalBlock(scope: !3597, file: !612, line: 155, column: 11)
!3622 = !DILocation(line: 155, column: 11, scope: !3597, inlinedAt: !3600)
!3623 = !DILocation(line: 157, column: 39, scope: !3624, inlinedAt: !3600)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !612, line: 156, column: 9)
!3625 = !DILocalVariable(name: "__dest", arg: 1, scope: !3626, file: !1673, line: 26, type: !3098)
!3626 = distinct !DISubprogram(name: "memcpy", scope: !1673, file: !1673, line: 26, type: !3096, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3627)
!3627 = !{!3625, !3628, !3629}
!3628 = !DILocalVariable(name: "__src", arg: 2, scope: !3626, file: !1673, line: 26, type: !3099)
!3629 = !DILocalVariable(name: "__len", arg: 3, scope: !3626, file: !1673, line: 26, type: !54)
!3630 = !DILocation(line: 0, scope: !3626, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 157, column: 11, scope: !3624, inlinedAt: !3600)
!3632 = !DILocation(line: 29, column: 10, scope: !3626, inlinedAt: !3631)
!3633 = !DILocation(line: 158, column: 11, scope: !3624, inlinedAt: !3600)
!3634 = !DILocation(line: 162, column: 23, scope: !3635, inlinedAt: !3600)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !612, line: 162, column: 15)
!3636 = distinct !DILexicalBlock(scope: !3621, file: !612, line: 161, column: 9)
!3637 = !DILocation(line: 162, column: 15, scope: !3636, inlinedAt: !3600)
!3638 = !DILocation(line: 167, column: 44, scope: !3639, inlinedAt: !3600)
!3639 = distinct !DILexicalBlock(scope: !3635, file: !612, line: 163, column: 13)
!3640 = !DILocation(line: 0, scope: !3626, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 167, column: 15, scope: !3639, inlinedAt: !3600)
!3642 = !DILocation(line: 29, column: 10, scope: !3626, inlinedAt: !3641)
!3643 = !DILocation(line: 168, column: 15, scope: !3639, inlinedAt: !3600)
!3644 = !DILocation(line: 168, column: 32, scope: !3639, inlinedAt: !3600)
!3645 = !DILocation(line: 169, column: 13, scope: !3639, inlinedAt: !3600)
!3646 = !DILocation(line: 0, scope: !3598, inlinedAt: !3600)
!3647 = !DILocation(line: 274, column: 3, scope: !3582)
!3648 = distinct !DISubprogram(name: "setlocale_null", scope: !612, file: !612, line: 301, type: !3603, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !3649)
!3649 = !{!3650}
!3650 = !DILocalVariable(name: "category", arg: 1, scope: !3648, file: !612, line: 301, type: !44)
!3651 = !DILocation(line: 0, scope: !3648)
!3652 = !DILocation(line: 0, scope: !3602, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 304, column: 10, scope: !3648)
!3654 = !DILocation(line: 62, column: 24, scope: !3602, inlinedAt: !3653)
!3655 = !DILocation(line: 304, column: 3, scope: !3648)
!3656 = distinct !DISubprogram(name: "rpl_fclose", scope: !614, file: !614, line: 58, type: !3657, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !613, retainedNodes: !3693)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!44, !3659}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2739, line: 7, baseType: !3661)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3661, file: !717, line: 51, baseType: !44, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3661, file: !717, line: 54, baseType: !51, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3661, file: !717, line: 55, baseType: !51, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3661, file: !717, line: 56, baseType: !51, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3661, file: !717, line: 57, baseType: !51, size: 64, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3661, file: !717, line: 58, baseType: !51, size: 64, offset: 320)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3661, file: !717, line: 59, baseType: !51, size: 64, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3661, file: !717, line: 60, baseType: !51, size: 64, offset: 448)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3661, file: !717, line: 61, baseType: !51, size: 64, offset: 512)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3661, file: !717, line: 64, baseType: !51, size: 64, offset: 576)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3661, file: !717, line: 65, baseType: !51, size: 64, offset: 640)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3661, file: !717, line: 66, baseType: !51, size: 64, offset: 704)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3661, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3661, file: !717, line: 70, baseType: !3677, size: 64, offset: 832)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3661, file: !717, line: 72, baseType: !44, size: 32, offset: 896)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3661, file: !717, line: 73, baseType: !44, size: 32, offset: 928)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3661, file: !717, line: 74, baseType: !48, size: 64, offset: 960)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3661, file: !717, line: 77, baseType: !45, size: 16, offset: 1024)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3661, file: !717, line: 78, baseType: !57, size: 8, offset: 1040)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3661, file: !717, line: 79, baseType: !741, size: 8, offset: 1048)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3661, file: !717, line: 81, baseType: !745, size: 64, offset: 1088)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3661, file: !717, line: 89, baseType: !748, size: 64, offset: 1152)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3661, file: !717, line: 91, baseType: !750, size: 64, offset: 1216)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3661, file: !717, line: 92, baseType: !753, size: 64, offset: 1280)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3661, file: !717, line: 93, baseType: !3677, size: 64, offset: 1344)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3661, file: !717, line: 94, baseType: !53, size: 64, offset: 1408)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3661, file: !717, line: 95, baseType: !54, size: 64, offset: 1472)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3661, file: !717, line: 96, baseType: !44, size: 32, offset: 1536)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3661, file: !717, line: 98, baseType: !760, size: 160, offset: 1568)
!3693 = !{!3694, !3695, !3696, !3697}
!3694 = !DILocalVariable(name: "fp", arg: 1, scope: !3656, file: !614, line: 58, type: !3659)
!3695 = !DILocalVariable(name: "saved_errno", scope: !3656, file: !614, line: 60, type: !44)
!3696 = !DILocalVariable(name: "fd", scope: !3656, file: !614, line: 61, type: !44)
!3697 = !DILocalVariable(name: "result", scope: !3656, file: !614, line: 62, type: !44)
!3698 = !DILocation(line: 0, scope: !3656)
!3699 = !DILocation(line: 65, column: 8, scope: !3656)
!3700 = !DILocation(line: 66, column: 10, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3656, file: !614, line: 66, column: 7)
!3702 = !DILocation(line: 66, column: 7, scope: !3656)
!3703 = !DILocation(line: 67, column: 12, scope: !3701)
!3704 = !DILocation(line: 67, column: 5, scope: !3701)
!3705 = !DILocation(line: 72, column: 9, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3656, file: !614, line: 72, column: 7)
!3707 = !DILocation(line: 72, column: 23, scope: !3706)
!3708 = !DILocation(line: 72, column: 33, scope: !3706)
!3709 = !DILocation(line: 72, column: 26, scope: !3706)
!3710 = !DILocation(line: 72, column: 59, scope: !3706)
!3711 = !DILocation(line: 73, column: 7, scope: !3706)
!3712 = !DILocation(line: 73, column: 10, scope: !3706)
!3713 = !DILocation(line: 72, column: 7, scope: !3656)
!3714 = !DILocation(line: 100, column: 12, scope: !3656)
!3715 = !DILocation(line: 105, column: 7, scope: !3656)
!3716 = !DILocation(line: 74, column: 19, scope: !3706)
!3717 = !DILocation(line: 105, column: 19, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3656, file: !614, line: 105, column: 7)
!3719 = !DILocation(line: 107, column: 13, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3718, file: !614, line: 106, column: 5)
!3721 = !DILocation(line: 109, column: 5, scope: !3720)
!3722 = !DILocation(line: 112, column: 1, scope: !3656)
!3723 = !DISubprogram(name: "fileno", scope: !47, file: !47, line: 785, type: !3724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!44, !3677}
!3726 = !DISubprogram(name: "fclose", scope: !47, file: !47, line: 213, type: !3724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3727 = distinct !DISubprogram(name: "rpl_fflush", scope: !616, file: !616, line: 129, type: !3728, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3764)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!44, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2739, line: 7, baseType: !3732)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3732, file: !717, line: 51, baseType: !44, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3732, file: !717, line: 54, baseType: !51, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3732, file: !717, line: 55, baseType: !51, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3732, file: !717, line: 56, baseType: !51, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3732, file: !717, line: 57, baseType: !51, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3732, file: !717, line: 58, baseType: !51, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3732, file: !717, line: 59, baseType: !51, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3732, file: !717, line: 60, baseType: !51, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3732, file: !717, line: 61, baseType: !51, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3732, file: !717, line: 64, baseType: !51, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3732, file: !717, line: 65, baseType: !51, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3732, file: !717, line: 66, baseType: !51, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3732, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3732, file: !717, line: 70, baseType: !3748, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3732, file: !717, line: 72, baseType: !44, size: 32, offset: 896)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3732, file: !717, line: 73, baseType: !44, size: 32, offset: 928)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3732, file: !717, line: 74, baseType: !48, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3732, file: !717, line: 77, baseType: !45, size: 16, offset: 1024)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3732, file: !717, line: 78, baseType: !57, size: 8, offset: 1040)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3732, file: !717, line: 79, baseType: !741, size: 8, offset: 1048)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3732, file: !717, line: 81, baseType: !745, size: 64, offset: 1088)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3732, file: !717, line: 89, baseType: !748, size: 64, offset: 1152)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3732, file: !717, line: 91, baseType: !750, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3732, file: !717, line: 92, baseType: !753, size: 64, offset: 1280)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3732, file: !717, line: 93, baseType: !3748, size: 64, offset: 1344)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3732, file: !717, line: 94, baseType: !53, size: 64, offset: 1408)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3732, file: !717, line: 95, baseType: !54, size: 64, offset: 1472)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3732, file: !717, line: 96, baseType: !44, size: 32, offset: 1536)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3732, file: !717, line: 98, baseType: !760, size: 160, offset: 1568)
!3764 = !{!3765}
!3765 = !DILocalVariable(name: "stream", arg: 1, scope: !3727, file: !616, line: 129, type: !3730)
!3766 = !DILocation(line: 0, scope: !3727)
!3767 = !DILocation(line: 150, column: 14, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3727, file: !616, line: 150, column: 7)
!3769 = !DILocation(line: 150, column: 22, scope: !3768)
!3770 = !DILocation(line: 150, column: 27, scope: !3768)
!3771 = !DILocation(line: 150, column: 7, scope: !3727)
!3772 = !DILocation(line: 151, column: 12, scope: !3768)
!3773 = !DILocation(line: 151, column: 5, scope: !3768)
!3774 = !DILocalVariable(name: "fp", arg: 1, scope: !3775, file: !616, line: 41, type: !3730)
!3775 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !616, file: !616, line: 41, type: !3776, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3778)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{null, !3730}
!3778 = !{!3774}
!3779 = !DILocation(line: 0, scope: !3775, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 156, column: 3, scope: !3727)
!3781 = !DILocation(line: 43, column: 11, scope: !3782, inlinedAt: !3780)
!3782 = distinct !DILexicalBlock(scope: !3775, file: !616, line: 43, column: 7)
!3783 = !DILocation(line: 43, column: 18, scope: !3782, inlinedAt: !3780)
!3784 = !DILocation(line: 43, column: 7, scope: !3775, inlinedAt: !3780)
!3785 = !DILocation(line: 45, column: 5, scope: !3782, inlinedAt: !3780)
!3786 = !DILocation(line: 158, column: 10, scope: !3727)
!3787 = !DILocation(line: 158, column: 3, scope: !3727)
!3788 = !DILocation(line: 235, column: 1, scope: !3727)
!3789 = !DISubprogram(name: "fflush", scope: !47, file: !47, line: 218, type: !3790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!44, !3748}
!3792 = distinct !DISubprogram(name: "rpl_fseeko", scope: !618, file: !618, line: 28, type: !3793, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !617, retainedNodes: !3829)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!44, !3795, !46, !44}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2739, line: 7, baseType: !3797)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3797, file: !717, line: 51, baseType: !44, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3797, file: !717, line: 54, baseType: !51, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3797, file: !717, line: 55, baseType: !51, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3797, file: !717, line: 56, baseType: !51, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3797, file: !717, line: 57, baseType: !51, size: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3797, file: !717, line: 58, baseType: !51, size: 64, offset: 320)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3797, file: !717, line: 59, baseType: !51, size: 64, offset: 384)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3797, file: !717, line: 60, baseType: !51, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3797, file: !717, line: 61, baseType: !51, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3797, file: !717, line: 64, baseType: !51, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3797, file: !717, line: 65, baseType: !51, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3797, file: !717, line: 66, baseType: !51, size: 64, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3797, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3797, file: !717, line: 70, baseType: !3813, size: 64, offset: 832)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3797, file: !717, line: 72, baseType: !44, size: 32, offset: 896)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3797, file: !717, line: 73, baseType: !44, size: 32, offset: 928)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3797, file: !717, line: 74, baseType: !48, size: 64, offset: 960)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3797, file: !717, line: 77, baseType: !45, size: 16, offset: 1024)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3797, file: !717, line: 78, baseType: !57, size: 8, offset: 1040)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3797, file: !717, line: 79, baseType: !741, size: 8, offset: 1048)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3797, file: !717, line: 81, baseType: !745, size: 64, offset: 1088)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3797, file: !717, line: 89, baseType: !748, size: 64, offset: 1152)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3797, file: !717, line: 91, baseType: !750, size: 64, offset: 1216)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3797, file: !717, line: 92, baseType: !753, size: 64, offset: 1280)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3797, file: !717, line: 93, baseType: !3813, size: 64, offset: 1344)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3797, file: !717, line: 94, baseType: !53, size: 64, offset: 1408)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3797, file: !717, line: 95, baseType: !54, size: 64, offset: 1472)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3797, file: !717, line: 96, baseType: !44, size: 32, offset: 1536)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3797, file: !717, line: 98, baseType: !760, size: 160, offset: 1568)
!3829 = !{!3830, !3831, !3832, !3833}
!3830 = !DILocalVariable(name: "fp", arg: 1, scope: !3792, file: !618, line: 28, type: !3795)
!3831 = !DILocalVariable(name: "offset", arg: 2, scope: !3792, file: !618, line: 28, type: !46)
!3832 = !DILocalVariable(name: "whence", arg: 3, scope: !3792, file: !618, line: 28, type: !44)
!3833 = !DILocalVariable(name: "pos", scope: !3834, file: !618, line: 117, type: !46)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !618, line: 113, column: 5)
!3835 = distinct !DILexicalBlock(scope: !3792, file: !618, line: 52, column: 7)
!3836 = !DILocation(line: 0, scope: !3792)
!3837 = !DILocation(line: 52, column: 11, scope: !3835)
!3838 = !{!3525, !637, i64 16}
!3839 = !DILocation(line: 52, column: 31, scope: !3835)
!3840 = !{!3525, !637, i64 8}
!3841 = !DILocation(line: 52, column: 24, scope: !3835)
!3842 = !DILocation(line: 53, column: 7, scope: !3835)
!3843 = !DILocation(line: 53, column: 14, scope: !3835)
!3844 = !{!3525, !637, i64 40}
!3845 = !DILocation(line: 53, column: 35, scope: !3835)
!3846 = !{!3525, !637, i64 32}
!3847 = !DILocation(line: 53, column: 28, scope: !3835)
!3848 = !DILocation(line: 54, column: 7, scope: !3835)
!3849 = !DILocation(line: 54, column: 14, scope: !3835)
!3850 = !{!3525, !637, i64 72}
!3851 = !DILocation(line: 54, column: 28, scope: !3835)
!3852 = !DILocation(line: 52, column: 7, scope: !3792)
!3853 = !DILocation(line: 117, column: 26, scope: !3834)
!3854 = !DILocation(line: 117, column: 19, scope: !3834)
!3855 = !DILocation(line: 0, scope: !3834)
!3856 = !DILocation(line: 118, column: 15, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3834, file: !618, line: 118, column: 11)
!3858 = !DILocation(line: 118, column: 11, scope: !3834)
!3859 = !DILocation(line: 129, column: 11, scope: !3834)
!3860 = !DILocation(line: 129, column: 18, scope: !3834)
!3861 = !DILocation(line: 130, column: 11, scope: !3834)
!3862 = !DILocation(line: 130, column: 19, scope: !3834)
!3863 = !{!3525, !945, i64 144}
!3864 = !DILocation(line: 161, column: 7, scope: !3834)
!3865 = !DILocation(line: 163, column: 10, scope: !3792)
!3866 = !DILocation(line: 163, column: 3, scope: !3792)
!3867 = !DILocation(line: 164, column: 1, scope: !3792)
!3868 = !DISubprogram(name: "fseeko", scope: !47, file: !47, line: 712, type: !3869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !93)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!44, !3813, !50, !44}
