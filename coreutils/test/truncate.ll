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
@no_create = internal unnamed_addr global i1 false, align 1, !dbg !203
@block_mode = internal unnamed_addr global i1 false, align 1, !dbg !204
@ref_file = internal unnamed_addr global i8* null, align 8, !dbg !198
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), align 8, !dbg !205
@.str.59 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !210
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !253
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.63 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.64 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !255
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !261
@.str.71 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.72 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.73 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.77, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.83, i32 0, i32 0), i8* null], align 16, !dbg !302
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !384
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !390
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !392
@.str.11.84 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.85 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.86 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.87 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.88 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.89 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.90 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !399
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !406
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !394
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !408
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !414
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
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1102 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1107, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i32 %0, metadata !1106, metadata !DIExpression()), !dbg !1126
  %3 = icmp eq i32 %0, 0, !dbg !1127
  br i1 %3, label %9, label %4, !dbg !1128

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1129, !tbaa !1131
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1129
  %7 = load i8*, i8** @program_name, align 8, !dbg !1129, !tbaa !1131
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #19, !dbg !1129
  br label %76, !dbg !1129

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #19, !dbg !1135
  %11 = load i8*, i8** @program_name, align 8, !dbg !1135, !tbaa !1131
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #19, !dbg !1135
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1136
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !1131
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1136
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0), i32 5) #19, !dbg !1137
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1137, !tbaa !1131
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #19, !dbg !1137
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1140
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1140, !tbaa !1131
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1140
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1141
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1141, !tbaa !1131
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1141
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1142
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1142, !tbaa !1131
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1142
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #19, !dbg !1143
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1143, !tbaa !1131
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1143
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #19, !dbg !1144
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1144, !tbaa !1131
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1144
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.32, i64 0, i64 0), i32 5) #19, !dbg !1145
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1145, !tbaa !1131
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35) #19, !dbg !1145
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.8, i64 0, i64 0), i32 5) #19, !dbg !1148
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1148, !tbaa !1131
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !1148
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), metadata !1111, metadata !DIExpression()) #19, !dbg !1149
  %40 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1150
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %40) #19, !dbg !1150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %40, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #19, !dbg !1122
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), metadata !1112, metadata !DIExpression()) #19, !dbg !1149
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1113, metadata !DIExpression()) #19, !dbg !1149
  %41 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1151
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1113, metadata !DIExpression()) #19, !dbg !1149
  br label %42, !dbg !1152

42:                                               ; preds = %47, %9
  %43 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), %9 ]
  %44 = phi %struct.infomap* [ %48, %47 ], [ %41, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1113, metadata !DIExpression()) #19, !dbg !1149
  %45 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %43) #22, !dbg !1153
  %46 = icmp eq i32 %45, 0, !dbg !1153
  br i1 %46, label %52, label %47, !dbg !1152

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 1, !dbg !1154
  call void @llvm.dbg.value(metadata %struct.infomap* %48, metadata !1113, metadata !DIExpression()) #19, !dbg !1149
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 0, i32 0, !dbg !1155
  %50 = load i8*, i8** %49, align 8, !dbg !1155, !tbaa !1156
  %51 = icmp eq i8* %50, null, !dbg !1158
  br i1 %51, label %52, label %42, !dbg !1159, !llvm.loop !1160

52:                                               ; preds = %47, %42
  %53 = phi %struct.infomap* [ %48, %47 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !1113, metadata !DIExpression()) #19, !dbg !1149
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !1113, metadata !DIExpression()) #19, !dbg !1149
  %54 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 0, i32 1, !dbg !1161
  %55 = load i8*, i8** %54, align 8, !dbg !1161, !tbaa !1163
  %56 = icmp eq i8* %55, null, !dbg !1164
  %57 = select i1 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %55, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %57, metadata !1112, metadata !DIExpression()) #19, !dbg !1149
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 5) #19, !dbg !1166
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0)) #19, !dbg !1166
  %60 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1167
  call void @llvm.dbg.value(metadata i8* %60, metadata !1120, metadata !DIExpression()) #19, !dbg !1149
  %61 = icmp eq i8* %60, null, !dbg !1168
  br i1 %61, label %69, label %62, !dbg !1170

62:                                               ; preds = %52
  %63 = tail call i32 @strncmp(i8* nonnull %60, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 3) #22, !dbg !1171
  %64 = icmp eq i32 %63, 0, !dbg !1171
  br i1 %64, label %69, label %65, !dbg !1172

65:                                               ; preds = %62
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0), i32 5) #19, !dbg !1173
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1173, !tbaa !1131
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #19, !dbg !1173
  br label %69, !dbg !1175

69:                                               ; preds = %52, %62, %65
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 5) #19, !dbg !1176
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !1176
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 5) #19, !dbg !1177
  %73 = icmp eq i8* %57, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), !dbg !1177
  %74 = select i1 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !1177
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* %57, i8* %74) #19, !dbg !1177
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %40) #19, !dbg !1178
  br label %76

76:                                               ; preds = %69, %4
  tail call void @exit(i32 %0) #23, !dbg !1179
  unreachable, !dbg !1179
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
declare !dbg !54 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !119 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1180 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1243, metadata !DIExpression()), !dbg !1269
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1184, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8** %1, metadata !1185, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 0, metadata !1186, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 -1, metadata !1189, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i32 0, metadata !1190, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i32 -1, metadata !1193, metadata !DIExpression()), !dbg !1274
  %5 = load i8*, i8** %1, align 8, !dbg !1275, !tbaa !1131
  tail call void @set_program_name(i8* %5) #19, !dbg !1276
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !1277
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !1278
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !1279
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1280
  br label %10, !dbg !1281

10:                                               ; preds = %83, %2
  %11 = phi i32 [ %84, %83 ], [ 0, %2 ]
  %12 = phi i64 [ %86, %83 ], [ undef, %2 ]
  %13 = phi i8 [ 1, %83 ], [ 0, %2 ]
  br label %14, !dbg !1281

14:                                               ; preds = %30, %10
  call void @llvm.dbg.value(metadata i8 %13, metadata !1186, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %12, metadata !1188, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i32 %11, metadata !1190, metadata !DIExpression()), !dbg !1274
  %15 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #19, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %15, metadata !1192, metadata !DIExpression()), !dbg !1274
  switch i32 %15, label %97 [
    i32 -1, label %98
    i32 99, label %26
    i32 111, label %27
    i32 114, label %28
    i32 115, label %16
    i32 -130, label %93
    i32 -131, label %94
  ], !dbg !1281

16:                                               ; preds = %14
  %17 = tail call i16** @__ctype_b_loc() #24, !dbg !1283
  %18 = load i16*, i16** %17, align 8, !dbg !1283, !tbaa !1131
  %19 = load i8*, i8** @optarg, align 8, !dbg !1283, !tbaa !1131
  %20 = load i8, i8* %19, align 1, !dbg !1283, !tbaa !1286
  %21 = zext i8 %20 to i64, !dbg !1283
  %22 = getelementptr inbounds i16, i16* %18, i64 %21, !dbg !1283
  %23 = load i16, i16* %22, align 2, !dbg !1283, !tbaa !1287
  %24 = and i16 %23, 8192, !dbg !1283
  %25 = icmp eq i16 %24, 0, !dbg !1289
  br i1 %25, label %41, label %31, !dbg !1289

26:                                               ; preds = %14
  store i1 true, i1* @no_create, align 1, !dbg !1290
  br label %30, !dbg !1291

27:                                               ; preds = %14
  store i1 true, i1* @block_mode, align 1, !dbg !1292
  br label %30, !dbg !1293

28:                                               ; preds = %14
  %29 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !1294, !tbaa !1131
  store i64 %29, i64* bitcast (i8** @ref_file to i64*), align 8, !dbg !1295, !tbaa !1131
  br label %30, !dbg !1296

30:                                               ; preds = %28, %27, %26
  br label %14, !dbg !1274, !llvm.loop !1297

31:                                               ; preds = %16, %31
  %32 = phi i8* [ %33, %31 ], [ %19, %16 ]
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1299
  store i8* %33, i8** @optarg, align 8, !dbg !1299, !tbaa !1131
  %34 = load i16*, i16** %17, align 8, !dbg !1283, !tbaa !1131
  %35 = load i8, i8* %33, align 1, !dbg !1283, !tbaa !1286
  %36 = zext i8 %35 to i64, !dbg !1283
  %37 = getelementptr inbounds i16, i16* %34, i64 %36, !dbg !1283
  %38 = load i16, i16* %37, align 2, !dbg !1283, !tbaa !1287
  %39 = and i16 %38, 8192, !dbg !1283
  %40 = icmp eq i16 %39, 0, !dbg !1289
  br i1 %40, label %41, label %31, !dbg !1289, !llvm.loop !1300

41:                                               ; preds = %31, %16
  %42 = phi i8* [ %19, %16 ], [ %33, %31 ], !dbg !1283
  %43 = phi i8 [ %20, %16 ], [ %35, %31 ], !dbg !1283
  %44 = sext i8 %43 to i32, !dbg !1301
  switch i32 %44, label %56 [
    i32 60, label %45
    i32 62, label %47
    i32 47, label %49
    i32 37, label %51
  ], !dbg !1302

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 3, metadata !1190, metadata !DIExpression()), !dbg !1274
  %46 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1303
  br label %53, !dbg !1305

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 2, metadata !1190, metadata !DIExpression()), !dbg !1274
  %48 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1306
  br label %53, !dbg !1307

49:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 4, metadata !1190, metadata !DIExpression()), !dbg !1274
  %50 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1308
  br label %53, !dbg !1309

51:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 5, metadata !1190, metadata !DIExpression()), !dbg !1274
  %52 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1310
  br label %53, !dbg !1311

53:                                               ; preds = %45, %47, %49, %51
  %54 = phi i8* [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ]
  %55 = phi i32 [ 5, %51 ], [ 4, %49 ], [ 2, %47 ], [ 3, %45 ]
  store i8* %54, i8** @optarg, align 8, !dbg !1312, !tbaa !1131
  br label %56, !dbg !1313

56:                                               ; preds = %53, %41
  %57 = phi i8* [ %42, %41 ], [ %54, %53 ], !dbg !1313
  %58 = phi i32 [ %11, %41 ], [ %55, %53 ], !dbg !1274
  call void @llvm.dbg.value(metadata i32 %58, metadata !1190, metadata !DIExpression()), !dbg !1274
  %59 = load i16*, i16** %17, align 8, !dbg !1313, !tbaa !1131
  %60 = load i8, i8* %57, align 1, !dbg !1313, !tbaa !1286
  %61 = zext i8 %60 to i64, !dbg !1313
  %62 = getelementptr inbounds i16, i16* %59, i64 %61, !dbg !1313
  %63 = load i16, i16* %62, align 2, !dbg !1313, !tbaa !1287
  %64 = and i16 %63, 8192, !dbg !1313
  %65 = icmp eq i16 %64, 0, !dbg !1314
  br i1 %65, label %76, label %66, !dbg !1314

66:                                               ; preds = %56, %66
  %67 = phi i8* [ %68, %66 ], [ %57, %56 ]
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1315
  store i8* %68, i8** @optarg, align 8, !dbg !1315, !tbaa !1131
  %69 = load i16*, i16** %17, align 8, !dbg !1313, !tbaa !1131
  %70 = load i8, i8* %68, align 1, !dbg !1313, !tbaa !1286
  %71 = zext i8 %70 to i64, !dbg !1313
  %72 = getelementptr inbounds i16, i16* %69, i64 %71, !dbg !1313
  %73 = load i16, i16* %72, align 2, !dbg !1313, !tbaa !1287
  %74 = and i16 %73, 8192, !dbg !1313
  %75 = icmp eq i16 %74, 0, !dbg !1314
  br i1 %75, label %76, label %66, !dbg !1314, !llvm.loop !1316

76:                                               ; preds = %66, %56
  %77 = phi i8* [ %57, %56 ], [ %68, %66 ], !dbg !1313
  %78 = phi i8 [ %60, %56 ], [ %70, %66 ], !dbg !1313
  switch i8 %78, label %83 [
    i8 43, label %79
    i8 45, label %79
  ], !dbg !1317

79:                                               ; preds = %76, %76
  %80 = icmp eq i32 %58, 0, !dbg !1319
  br i1 %80, label %83, label %81, !dbg !1322

81:                                               ; preds = %79
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 5) #19, !dbg !1323
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #19, !dbg !1325
  tail call void @usage(i32 1) #25, !dbg !1326
  unreachable, !dbg !1326

83:                                               ; preds = %79, %76
  %84 = phi i32 [ %58, %76 ], [ 1, %79 ], !dbg !1274
  call void @llvm.dbg.value(metadata i32 %84, metadata !1190, metadata !DIExpression()), !dbg !1274
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 5) #19, !dbg !1327
  %86 = tail call i64 @xdectoimax(i8* nonnull %77, i64 -9223372036854775808, i64 9223372036854775807, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %85, i32 0) #19, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %86, metadata !1188, metadata !DIExpression()), !dbg !1274
  %87 = or i32 %84, 1, !dbg !1329
  %88 = icmp eq i32 %87, 5, !dbg !1329
  %89 = icmp eq i64 %86, 0, !dbg !1331
  %90 = and i1 %88, %89, !dbg !1329
  br i1 %90, label %91, label %10, !dbg !1329, !llvm.loop !1297

91:                                               ; preds = %83
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #19, !dbg !1332
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %92) #19, !dbg !1332
  unreachable, !dbg !1332

93:                                               ; preds = %14
  tail call void @usage(i32 0) #25, !dbg !1333
  unreachable, !dbg !1333

94:                                               ; preds = %14
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1334, !tbaa !1131
  %96 = load i8*, i8** @Version, align 8, !dbg !1334, !tbaa !1131
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* null) #19, !dbg !1334
  tail call void @exit(i32 0) #23, !dbg !1334
  unreachable, !dbg !1334

97:                                               ; preds = %14
  tail call void @usage(i32 1) #25, !dbg !1335
  unreachable, !dbg !1335

98:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 %11, metadata !1190, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %12, metadata !1188, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 %13, metadata !1186, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i32 %11, metadata !1190, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %12, metadata !1188, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 %13, metadata !1186, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i32 %11, metadata !1190, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %12, metadata !1188, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 %13, metadata !1186, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i32 %11, metadata !1190, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %12, metadata !1188, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 %13, metadata !1186, metadata !DIExpression()), !dbg !1274
  %99 = load i32, i32* @optind, align 4, !dbg !1336, !tbaa !1337
  %100 = sext i32 %99 to i64, !dbg !1339
  %101 = getelementptr inbounds i8*, i8** %1, i64 %100, !dbg !1339
  call void @llvm.dbg.value(metadata i8** %101, metadata !1185, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i32 undef, metadata !1184, metadata !DIExpression()), !dbg !1274
  %102 = load i8*, i8** @ref_file, align 8, !dbg !1340, !tbaa !1131
  %103 = icmp eq i8* %102, null, !dbg !1340
  %104 = icmp eq i8 %13, 0, !dbg !1342
  %105 = and i1 %104, %103, !dbg !1343
  br i1 %105, label %106, label %110, !dbg !1343

106:                                              ; preds = %98
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #19, !dbg !1344
  %108 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #19, !dbg !1346
  %109 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #19, !dbg !1347
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %107, i8* %108, i8* %109) #19, !dbg !1348
  tail call void @usage(i32 1) #25, !dbg !1349
  unreachable, !dbg !1349

110:                                              ; preds = %98
  %111 = icmp ne i32 %11, 0, !dbg !1350
  %112 = or i1 %111, %104, !dbg !1352
  %113 = or i1 %112, %103, !dbg !1353
  br i1 %113, label %118, label %114, !dbg !1353

114:                                              ; preds = %110
  %115 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 5) #19, !dbg !1354
  %116 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #19, !dbg !1356
  %117 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #19, !dbg !1357
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %115, i8* %116, i8* %117) #19, !dbg !1358
  tail call void @usage(i32 1) #25, !dbg !1359
  unreachable, !dbg !1359

118:                                              ; preds = %110
  %119 = load i1, i1* @block_mode, align 1, !dbg !1360
  %120 = and i1 %104, %119, !dbg !1362
  br i1 %120, label %121, label %125, !dbg !1362

121:                                              ; preds = %118
  %122 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 5) #19, !dbg !1363
  %123 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #19, !dbg !1365
  %124 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #19, !dbg !1366
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %122, i8* %123, i8* %124) #19, !dbg !1367
  tail call void @usage(i32 1) #25, !dbg !1368
  unreachable, !dbg !1368

125:                                              ; preds = %118
  %126 = icmp slt i32 %99, %0, !dbg !1369
  br i1 %126, label %129, label %127, !dbg !1371

127:                                              ; preds = %125
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 5) #19, !dbg !1372
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128) #19, !dbg !1374
  tail call void @usage(i32 1) #25, !dbg !1375
  unreachable, !dbg !1375

129:                                              ; preds = %125
  br i1 %103, label %170, label %130, !dbg !1376

130:                                              ; preds = %129
  %131 = bitcast %struct.stat* %4 to i8*, !dbg !1377
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %131) #19, !dbg !1377
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1196, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i64 -1, metadata !1235, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %102, metadata !1380, metadata !DIExpression()) #19, !dbg !1388
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1387, metadata !DIExpression()) #19, !dbg !1388
  %132 = call i32 @__xstat(i32 1, i8* nonnull %102, %struct.stat* nonnull %4) #19, !dbg !1391
  %133 = icmp eq i32 %132, 0, !dbg !1392
  br i1 %133, label %140, label %134, !dbg !1393

134:                                              ; preds = %130
  %135 = tail call i32* @__errno_location() #24, !dbg !1394
  %136 = load i32, i32* %135, align 4, !dbg !1394, !tbaa !1337
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 5) #19, !dbg !1394
  %138 = load i8*, i8** @ref_file, align 8, !dbg !1394, !tbaa !1131
  %139 = call i8* @quotearg_style(i32 4, i8* %138) #19, !dbg !1394
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %136, i8* %137, i8* %139) #19, !dbg !1394
  unreachable, !dbg !1394

140:                                              ; preds = %130
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1395, metadata !DIExpression()), !dbg !1402
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !1404
  %142 = load i32, i32* %141, align 8, !dbg !1404, !tbaa !1405
  %143 = trunc i32 %142 to i16, !dbg !1409
  %144 = and i16 %143, -4096, !dbg !1409
  switch i16 %144, label %145 [
    i16 -32768, label %156
    i16 -24576, label %156
  ], !dbg !1409

145:                                              ; preds = %140
  %146 = load i8*, i8** @ref_file, align 8, !dbg !1410, !tbaa !1131
  %147 = call i32 (i8*, i32, ...) @open(i8* %146, i32 0) #19, !dbg !1411
  call void @llvm.dbg.value(metadata i32 %147, metadata !1236, metadata !DIExpression()), !dbg !1412
  %148 = icmp sgt i32 %147, -1, !dbg !1413
  br i1 %148, label %149, label %160, !dbg !1414

149:                                              ; preds = %145
  %150 = call i64 @lseek(i32 %147, i64 0, i32 2) #19, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %150, metadata !1239, metadata !DIExpression()), !dbg !1416
  %151 = tail call i32* @__errno_location() #24, !dbg !1417
  %152 = load i32, i32* %151, align 4, !dbg !1417, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %152, metadata !1242, metadata !DIExpression()), !dbg !1416
  %153 = call i32 @close(i32 %147) #19, !dbg !1418
  %154 = icmp sgt i64 %150, -1, !dbg !1419
  br i1 %154, label %166, label %155, !dbg !1421

155:                                              ; preds = %149
  store i32 %152, i32* %151, align 4, !dbg !1422, !tbaa !1337
  br label %160

156:                                              ; preds = %140, %140
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !1424
  %158 = load i64, i64* %157, align 8, !dbg !1424, !tbaa !1425
  call void @llvm.dbg.value(metadata i64 %158, metadata !1235, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i64 %158, metadata !1235, metadata !DIExpression()), !dbg !1379
  %159 = icmp slt i64 %158, 0, !dbg !1426
  br i1 %159, label %160, label %166, !dbg !1428

160:                                              ; preds = %155, %145, %156
  %161 = tail call i32* @__errno_location() #24, !dbg !1429
  %162 = load i32, i32* %161, align 4, !dbg !1429, !tbaa !1337
  %163 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #19, !dbg !1429
  %164 = load i8*, i8** @ref_file, align 8, !dbg !1429, !tbaa !1131
  %165 = call i8* @quotearg_style(i32 4, i8* %164) #19, !dbg !1429
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %162, i8* %163, i8* %165) #19, !dbg !1429
  unreachable, !dbg !1429

166:                                              ; preds = %149, %156
  %167 = phi i64 [ %158, %156 ], [ %150, %149 ]
  %168 = select i1 %104, i64 -1, i64 %167
  %169 = select i1 %104, i64 %167, i64 %12
  call void @llvm.dbg.value(metadata i64 %169, metadata !1188, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %168, metadata !1189, metadata !DIExpression()), !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %131) #19, !dbg !1430
  br label %170, !dbg !1431

170:                                              ; preds = %129, %166
  %171 = phi i64 [ %168, %166 ], [ -1, %129 ], !dbg !1274
  %172 = phi i64 [ %169, %166 ], [ %12, %129 ]
  call void @llvm.dbg.value(metadata i64 %172, metadata !1188, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %171, metadata !1189, metadata !DIExpression()), !dbg !1274
  %173 = load i1, i1* @no_create, align 1, !dbg !1432
  %174 = select i1 %173, i32 2049, i32 2113, !dbg !1433
  call void @llvm.dbg.value(metadata i32 %174, metadata !1194, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8** %101, metadata !1185, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8** %101, metadata !1185, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1274
  %175 = load i8*, i8** %101, align 8, !dbg !1434, !tbaa !1131
  call void @llvm.dbg.value(metadata i8* %175, metadata !1195, metadata !DIExpression()), !dbg !1274
  %176 = icmp eq i8* %175, null, !dbg !1435
  br i1 %176, label %320, label %177, !dbg !1436

177:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8** %101, metadata !1185, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1274
  %178 = bitcast %struct.stat* %3 to i8*, !dbg !1437
  %179 = icmp slt i64 %171, 0, !dbg !1438
  %180 = and i1 %111, %179, !dbg !1438
  %181 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 9, !dbg !1440
  %182 = icmp slt i64 %172, 0, !dbg !1441
  %183 = icmp eq i64 %172, -1, !dbg !1441
  %184 = icmp eq i32 %11, 0, !dbg !1443
  %185 = icmp sgt i64 %171, -1, !dbg !1444
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3, !dbg !1446
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8, !dbg !1450
  br label %188, !dbg !1436

188:                                              ; preds = %177, %205
  %189 = phi i8* [ %175, %177 ], [ %207, %205 ]
  %190 = phi i8** [ %101, %177 ], [ %192, %205 ]
  %191 = phi i8 [ 0, %177 ], [ %206, %205 ]
  %192 = getelementptr inbounds i8*, i8** %190, i64 1, !dbg !1452
  call void @llvm.dbg.value(metadata i8 %191, metadata !1187, metadata !DIExpression()), !dbg !1274
  %193 = call i32 (i8*, i32, ...) @open(i8* nonnull %189, i32 %174, i32 438) #19, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %193, metadata !1193, metadata !DIExpression()), !dbg !1274
  %194 = icmp eq i32 %193, -1, !dbg !1455
  br i1 %194, label %195, label %209, !dbg !1456

195:                                              ; preds = %188
  %196 = load i1, i1* @no_create, align 1, !dbg !1457
  %197 = tail call i32* @__errno_location() #24, !dbg !1460
  br i1 %196, label %198, label %201, !dbg !1461

198:                                              ; preds = %195
  %199 = load i32, i32* %197, align 4, !dbg !1462, !tbaa !1337
  %200 = icmp eq i32 %199, 2, !dbg !1463
  br i1 %200, label %205, label %201, !dbg !1464

201:                                              ; preds = %195, %198
  %202 = load i32, i32* %197, align 4, !dbg !1465, !tbaa !1337
  %203 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #19, !dbg !1467
  %204 = call i8* @quotearg_style(i32 4, i8* nonnull %189) #19, !dbg !1468
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %202, i8* %203, i8* %204) #19, !dbg !1469
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1274
  br label %205, !dbg !1470

205:                                              ; preds = %315, %309, %198, %201
  %206 = phi i8 [ %191, %198 ], [ 1, %201 ], [ 1, %315 ], [ %312, %309 ]
  call void @llvm.dbg.value(metadata i8** %192, metadata !1185, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 %206, metadata !1187, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8** %192, metadata !1185, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1274
  %207 = load i8*, i8** %192, align 8, !dbg !1434, !tbaa !1131
  call void @llvm.dbg.value(metadata i8* %207, metadata !1195, metadata !DIExpression()), !dbg !1274
  %208 = icmp eq i8* %207, null, !dbg !1435
  br i1 %208, label %320, label %188, !dbg !1436, !llvm.loop !1471

209:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i32 %193, metadata !1248, metadata !DIExpression()) #19, !dbg !1437
  call void @llvm.dbg.value(metadata i8* %189, metadata !1249, metadata !DIExpression()) #19, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %172, metadata !1250, metadata !DIExpression()) #19, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %171, metadata !1251, metadata !DIExpression()) #19, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %11, metadata !1252, metadata !DIExpression()) #19, !dbg !1437
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %178) #19, !dbg !1473
  %210 = load i1, i1* @block_mode, align 1, !dbg !1474
  %211 = or i1 %210, %180, !dbg !1475
  br i1 %211, label %212, label %253, !dbg !1475

212:                                              ; preds = %209
  call void @llvm.dbg.value(metadata i32 %193, metadata !1476, metadata !DIExpression()) #19, !dbg !1482
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1481, metadata !DIExpression()) #19, !dbg !1482
  %213 = call i32 @__fxstat(i32 1, i32 %193, %struct.stat* nonnull %3) #19, !dbg !1484
  %214 = icmp eq i32 %213, 0, !dbg !1485
  br i1 %214, label %220, label %215, !dbg !1486

215:                                              ; preds = %212
  %216 = tail call i32* @__errno_location() #24, !dbg !1487
  %217 = load i32, i32* %216, align 4, !dbg !1487, !tbaa !1337
  %218 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i32 5) #19, !dbg !1489
  %219 = call i8* @quotearg_style(i32 4, i8* nonnull %189) #19, !dbg !1490
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %217, i8* %218, i8* %219) #19, !dbg !1491
  br label %309, !dbg !1492

220:                                              ; preds = %212
  %221 = load i1, i1* @block_mode, align 1, !dbg !1493
  br i1 %221, label %222, label %253, !dbg !1494

222:                                              ; preds = %220
  %223 = load i64, i64* %181, align 8, !dbg !1495, !tbaa !1496
  %224 = icmp sgt i64 %223, 0, !dbg !1495
  %225 = icmp ult i64 %223, 2305843009213693953, !dbg !1495
  %226 = and i1 %224, %225, !dbg !1495
  %227 = select i1 %226, i64 %223, i64 512, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %227, metadata !1254, metadata !DIExpression()) #19, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %172, metadata !1258, metadata !DIExpression()) #19, !dbg !1440
  %228 = icmp slt i64 %227, 0, !dbg !1497
  br i1 %228, label %229, label %238, !dbg !1497

229:                                              ; preds = %222
  br i1 %182, label %230, label %233, !dbg !1497

230:                                              ; preds = %229
  %231 = sdiv i64 9223372036854775807, %227, !dbg !1497
  %232 = icmp sgt i64 %231, %172, !dbg !1497
  br i1 %232, label %250, label %248, !dbg !1497

233:                                              ; preds = %229
  %234 = icmp eq i64 %227, -1, !dbg !1497
  br i1 %234, label %248, label %235, !dbg !1497

235:                                              ; preds = %233
  %236 = sdiv i64 -9223372036854775808, %227, !dbg !1497
  %237 = icmp slt i64 %236, %172, !dbg !1497
  br i1 %237, label %250, label %248, !dbg !1497

238:                                              ; preds = %222
  %239 = icmp eq i64 %227, 0, !dbg !1497
  br i1 %239, label %248, label %240, !dbg !1497

240:                                              ; preds = %238
  br i1 %182, label %241, label %245, !dbg !1497

241:                                              ; preds = %240
  br i1 %183, label %248, label %242, !dbg !1497

242:                                              ; preds = %241
  %243 = sdiv i64 -9223372036854775808, %172, !dbg !1497
  %244 = icmp slt i64 %243, %227, !dbg !1497
  br i1 %244, label %250, label %248, !dbg !1497

245:                                              ; preds = %240
  %246 = udiv i64 9223372036854775807, %227, !dbg !1497
  %247 = icmp slt i64 %246, %172, !dbg !1497
  br i1 %247, label %250, label %248, !dbg !1497

248:                                              ; preds = %245, %242, %241, %238, %235, %233, %230
  %249 = mul i64 %227, %172, !dbg !1497
  call void @llvm.dbg.value(metadata i64 undef, metadata !1250, metadata !DIExpression()) #19, !dbg !1437
  br label %253

250:                                              ; preds = %245, %242, %235, %230
  call void @llvm.dbg.value(metadata i64 undef, metadata !1250, metadata !DIExpression()) #19, !dbg !1437
  %251 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i64 0, i64 0), i32 5) #19, !dbg !1498
  %252 = call i8* @quotearg_style(i32 4, i8* nonnull %189) #19, !dbg !1500
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %251, i64 %172, i64 %227, i8* %252) #19, !dbg !1501
  call void @llvm.dbg.value(metadata i64 undef, metadata !1250, metadata !DIExpression()) #19, !dbg !1437
  br label %309

253:                                              ; preds = %209, %248, %220
  %254 = phi i64 [ %172, %220 ], [ %249, %248 ], [ %172, %209 ]
  call void @llvm.dbg.value(metadata i64 %254, metadata !1250, metadata !DIExpression()) #19, !dbg !1437
  br i1 %184, label %298, label %255, !dbg !1502

255:                                              ; preds = %253
  br i1 %185, label %274, label %256, !dbg !1503

256:                                              ; preds = %255
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !1395, metadata !DIExpression()) #19, !dbg !1446
  %257 = load i32, i32* %186, align 8, !dbg !1504, !tbaa !1405
  %258 = trunc i32 %257 to i16, !dbg !1505
  %259 = and i16 %258, -4096, !dbg !1505
  switch i16 %259, label %266 [
    i16 -32768, label %260
    i16 -24576, label %260
  ], !dbg !1505

260:                                              ; preds = %256, %256
  %261 = load i64, i64* %187, align 8, !dbg !1506, !tbaa !1425
  call void @llvm.dbg.value(metadata i64 %261, metadata !1259, metadata !DIExpression()) #19, !dbg !1507
  %262 = icmp slt i64 %261, 0, !dbg !1508
  br i1 %262, label %263, label %274, !dbg !1510

263:                                              ; preds = %260
  %264 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i64 0, i64 0), i32 5) #19, !dbg !1511
  %265 = call i8* @quotearg_style(i32 4, i8* nonnull %189) #19, !dbg !1513
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %264, i8* %265) #19, !dbg !1514
  br label %309, !dbg !1515

266:                                              ; preds = %256
  %267 = call i64 @lseek(i32 %193, i64 0, i32 2) #19, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %267, metadata !1259, metadata !DIExpression()) #19, !dbg !1507
  %268 = icmp slt i64 %267, 0, !dbg !1518
  br i1 %268, label %269, label %274, !dbg !1520

269:                                              ; preds = %266
  %270 = tail call i32* @__errno_location() #24, !dbg !1521
  %271 = load i32, i32* %270, align 4, !dbg !1521, !tbaa !1337
  %272 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #19, !dbg !1523
  %273 = call i8* @quotearg_style(i32 4, i8* nonnull %189) #19, !dbg !1524
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %271, i8* %272, i8* %273) #19, !dbg !1525
  br label %309, !dbg !1526

274:                                              ; preds = %266, %260, %255
  %275 = phi i64 [ %261, %260 ], [ %267, %266 ], [ %171, %255 ], !dbg !1444
  call void @llvm.dbg.value(metadata i64 %275, metadata !1259, metadata !DIExpression()) #19, !dbg !1507
  switch i32 %11, label %290 [
    i32 2, label %276
    i32 3, label %279
    i32 4, label %282
    i32 5, label %285
  ], !dbg !1527

276:                                              ; preds = %274
  %277 = icmp sgt i64 %275, %254, !dbg !1528
  %278 = select i1 %277, i64 %275, i64 %254, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %278, metadata !1253, metadata !DIExpression()) #19, !dbg !1437
  br label %298, !dbg !1529

279:                                              ; preds = %274
  %280 = icmp slt i64 %275, %254, !dbg !1530
  %281 = select i1 %280, i64 %275, i64 %254, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %281, metadata !1253, metadata !DIExpression()) #19, !dbg !1437
  br label %298, !dbg !1531

282:                                              ; preds = %274
  %283 = srem i64 %275, %254, !dbg !1532
  %284 = sub nsw i64 %275, %283, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %284, metadata !1253, metadata !DIExpression()) #19, !dbg !1437
  br label %298, !dbg !1534

285:                                              ; preds = %274
  %286 = srem i64 %275, %254, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %286, metadata !1262, metadata !DIExpression()) #19, !dbg !1536
  %287 = icmp eq i64 %286, 0, !dbg !1537
  %288 = sub nsw i64 %254, %286, !dbg !1538
  %289 = select i1 %287, i64 0, i64 %288, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %289, metadata !1250, metadata !DIExpression()) #19, !dbg !1437
  br label %290, !dbg !1539

290:                                              ; preds = %285, %274
  %291 = phi i64 [ %289, %285 ], [ %254, %274 ], !dbg !1437
  call void @llvm.dbg.value(metadata i64 %291, metadata !1250, metadata !DIExpression()) #19, !dbg !1437
  %292 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %275, i64 %291) #19, !dbg !1540
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !1540
  %294 = extractvalue { i64, i1 } %292, 0, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %294, metadata !1253, metadata !DIExpression()) #19, !dbg !1437
  br i1 %293, label %295, label %298, !dbg !1542

295:                                              ; preds = %290
  %296 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i32 5) #19, !dbg !1543
  %297 = call i8* @quotearg_style(i32 4, i8* nonnull %189) #19, !dbg !1545
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %296, i8* %297) #19, !dbg !1546
  br label %309, !dbg !1547

298:                                              ; preds = %290, %282, %279, %276, %253
  %299 = phi i64 [ %254, %253 ], [ %294, %290 ], [ %284, %282 ], [ %281, %279 ], [ %278, %276 ], !dbg !1443
  call void @llvm.dbg.value(metadata i64 %299, metadata !1253, metadata !DIExpression()) #19, !dbg !1437
  %300 = icmp sgt i64 %299, 0, !dbg !1548
  %301 = select i1 %300, i64 %299, i64 0, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %301, metadata !1253, metadata !DIExpression()) #19, !dbg !1437
  %302 = call i32 @ftruncate(i32 %193, i64 %301) #19, !dbg !1549
  %303 = icmp eq i32 %302, -1, !dbg !1551
  br i1 %303, label %304, label %309, !dbg !1552

304:                                              ; preds = %298
  %305 = tail call i32* @__errno_location() #24, !dbg !1553
  %306 = load i32, i32* %305, align 4, !dbg !1553, !tbaa !1337
  %307 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0), i32 5) #19, !dbg !1555
  %308 = call i8* @quotearg_style(i32 4, i8* nonnull %189) #19, !dbg !1556
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %306, i8* %307, i8* %308, i64 %301) #19, !dbg !1557
  br label %309, !dbg !1558

309:                                              ; preds = %215, %250, %263, %269, %295, %298, %304
  %310 = phi i8 [ 1, %215 ], [ 1, %304 ], [ 1, %250 ], [ 0, %298 ], [ 1, %295 ], [ 1, %269 ], [ 1, %263 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %178) #19, !dbg !1559
  %311 = and i8 %191, 1, !dbg !1560
  %312 = or i8 %310, %311, !dbg !1560
  call void @llvm.dbg.value(metadata i8 %312, metadata !1187, metadata !DIExpression()), !dbg !1274
  %313 = call i32 @close(i32 %193) #19, !dbg !1561
  %314 = icmp eq i32 %313, 0, !dbg !1563
  br i1 %314, label %205, label %315, !dbg !1564

315:                                              ; preds = %309
  %316 = tail call i32* @__errno_location() #24, !dbg !1565
  %317 = load i32, i32* %316, align 4, !dbg !1565, !tbaa !1337
  %318 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 5) #19, !dbg !1567
  %319 = call i8* @quotearg_style(i32 4, i8* nonnull %189) #19, !dbg !1568
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %317, i8* %318, i8* %319) #19, !dbg !1569
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1274
  br label %205, !dbg !1570

320:                                              ; preds = %205, %170
  %321 = phi i8 [ 0, %170 ], [ %206, %205 ], !dbg !1274
  call void @llvm.dbg.value(metadata i8 %321, metadata !1187, metadata !DIExpression()), !dbg !1274
  %322 = and i8 %321, 1, !dbg !1571
  %323 = zext i8 %322 to i32, !dbg !1571
  ret i32 %323, !dbg !1572
}

; Function Attrs: nounwind
declare !dbg !123 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !126 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !129 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !136 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

declare !dbg !151 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !171 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !175 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare !dbg !179 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !186 i32 @ftruncate(i32, i64) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1573 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i8* %0, i8** @file_name, align 8, !dbg !1577, !tbaa !1131
  ret void, !dbg !1578
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1579 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1583, metadata !DIExpression()), !dbg !1584
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1585, !tbaa !1586
  ret void, !dbg !1588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1589 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1594, !tbaa !1131
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !1595
  %3 = icmp eq i32 %2, 0, !dbg !1596
  br i1 %3, label %22, label %4, !dbg !1597

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1598, !tbaa !1586, !range !1599
  %6 = icmp eq i8 %5, 0, !dbg !1598
  br i1 %6, label %11, label %7, !dbg !1600

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1601
  %9 = load i32, i32* %8, align 4, !dbg !1601, !tbaa !1337
  %10 = icmp eq i32 %9, 32, !dbg !1602
  br i1 %10, label %22, label %11, !dbg !1603

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i32 5) #19, !dbg !1604
  call void @llvm.dbg.value(metadata i8* %12, metadata !1591, metadata !DIExpression()), !dbg !1605
  %13 = load i8*, i8** @file_name, align 8, !dbg !1606, !tbaa !1131
  %14 = icmp eq i8* %13, null, !dbg !1606
  %15 = tail call i32* @__errno_location() #24, !dbg !1608
  %16 = load i32, i32* %15, align 4, !dbg !1608, !tbaa !1337
  br i1 %14, label %19, label %17, !dbg !1609

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !1610
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.63, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !1611
  br label %20, !dbg !1611

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.64, i64 0, i64 0), i8* %12) #19, !dbg !1612
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1613, !tbaa !1337
  tail call void @_exit(i32 %21) #23, !dbg !1614
  unreachable, !dbg !1614

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1615, !tbaa !1131
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !1617
  %25 = icmp eq i32 %24, 0, !dbg !1618
  br i1 %25, label %28, label %26, !dbg !1619

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1620, !tbaa !1337
  tail call void @_exit(i32 %27) #23, !dbg !1621
  unreachable, !dbg !1621

28:                                               ; preds = %22
  ret void, !dbg !1622
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1623 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1625, metadata !DIExpression()), !dbg !1628
  %2 = icmp eq i8* %0, null, !dbg !1629
  br i1 %2, label %3, label %6, !dbg !1631

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1632, !tbaa !1131
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1634
  tail call void @abort() #23, !dbg !1635
  unreachable, !dbg !1635

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1636
  call void @llvm.dbg.value(metadata i8* %7, metadata !1626, metadata !DIExpression()), !dbg !1628
  %8 = icmp eq i8* %7, null, !dbg !1637
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1638
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1638
  call void @llvm.dbg.value(metadata i8* %10, metadata !1627, metadata !DIExpression()), !dbg !1628
  %11 = ptrtoint i8* %10 to i64, !dbg !1639
  %12 = ptrtoint i8* %0 to i64, !dbg !1639
  %13 = sub i64 %11, %12, !dbg !1639
  %14 = icmp sgt i64 %13, 6, !dbg !1641
  br i1 %14, label %15, label %24, !dbg !1642

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1643
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.72, i64 0, i64 0), i64 7) #22, !dbg !1644
  %18 = icmp eq i32 %17, 0, !dbg !1645
  br i1 %18, label %19, label %24, !dbg !1646

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1625, metadata !DIExpression()), !dbg !1628
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.73, i64 0, i64 0), i64 3) #22, !dbg !1647
  %21 = icmp eq i32 %20, 0, !dbg !1650
  br i1 %21, label %22, label %24, !dbg !1651

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %23, metadata !1625, metadata !DIExpression()), !dbg !1628
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1654, !tbaa !1131
  br label %24, !dbg !1655

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1625, metadata !DIExpression()), !dbg !1628
  store i8* %25, i8** @program_name, align 8, !dbg !1656, !tbaa !1131
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1657, !tbaa !1131
  ret void, !dbg !1658
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1659 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1664, metadata !DIExpression()), !dbg !1667
  %2 = tail call i32* @__errno_location() #24, !dbg !1668
  %3 = load i32, i32* %2, align 4, !dbg !1668, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %3, metadata !1665, metadata !DIExpression()), !dbg !1667
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1669
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1669
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1669
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !1670
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1670
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1666, metadata !DIExpression()), !dbg !1667
  store i32 %3, i32* %2, align 4, !dbg !1671, !tbaa !1337
  ret %struct.quoting_options* %8, !dbg !1672
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1673 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1677, metadata !DIExpression()), !dbg !1678
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1679
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1679
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1680
  %5 = load i32, i32* %4, align 8, !dbg !1680, !tbaa !1681
  ret i32 %5, !dbg !1683
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1684 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1688, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i32 %1, metadata !1689, metadata !DIExpression()), !dbg !1690
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1691
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1691
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1692
  store i32 %1, i32* %5, align 8, !dbg !1693, !tbaa !1681
  ret void, !dbg !1694
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1695 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1699, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %1, metadata !1700, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %2, metadata !1701, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8 %1, metadata !1702, metadata !DIExpression()), !dbg !1707
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1708
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1708
  %6 = lshr i8 %1, 5, !dbg !1709
  %7 = zext i8 %6 to i64, !dbg !1709
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1710
  call void @llvm.dbg.value(metadata i32* %8, metadata !1703, metadata !DIExpression()), !dbg !1707
  %9 = and i8 %1, 31, !dbg !1711
  %10 = zext i8 %9 to i32, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %10, metadata !1705, metadata !DIExpression()), !dbg !1707
  %11 = load i32, i32* %8, align 4, !dbg !1712, !tbaa !1337
  %12 = lshr i32 %11, %10, !dbg !1713
  %13 = and i32 %12, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i32 %13, metadata !1706, metadata !DIExpression()), !dbg !1707
  %14 = and i32 %2, 1, !dbg !1715
  %15 = xor i32 %13, %14, !dbg !1716
  %16 = shl i32 %15, %10, !dbg !1717
  %17 = xor i32 %16, %11, !dbg !1718
  store i32 %17, i32* %8, align 4, !dbg !1718, !tbaa !1337
  ret i32 %13, !dbg !1719
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1720 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1724, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i32 %1, metadata !1725, metadata !DIExpression()), !dbg !1727
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1728
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1724, metadata !DIExpression()), !dbg !1727
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1731
  %6 = load i32, i32* %5, align 4, !dbg !1731, !tbaa !1732
  call void @llvm.dbg.value(metadata i32 %6, metadata !1726, metadata !DIExpression()), !dbg !1727
  store i32 %1, i32* %5, align 4, !dbg !1733, !tbaa !1732
  ret i32 %6, !dbg !1734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1735 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1739, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8* %1, metadata !1740, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8* %2, metadata !1741, metadata !DIExpression()), !dbg !1742
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1743
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1739, metadata !DIExpression()), !dbg !1742
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1746
  store i32 10, i32* %6, align 8, !dbg !1747, !tbaa !1681
  %7 = icmp ne i8* %1, null, !dbg !1748
  %8 = icmp ne i8* %2, null, !dbg !1750
  %9 = and i1 %7, %8, !dbg !1751
  br i1 %9, label %11, label %10, !dbg !1751

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !1752
  unreachable, !dbg !1752

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1753
  store i8* %1, i8** %12, align 8, !dbg !1754, !tbaa !1755
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1756
  store i8* %2, i8** %13, align 8, !dbg !1757, !tbaa !1758
  ret void, !dbg !1759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1760 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1764, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %1, metadata !1765, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* %2, metadata !1766, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %3, metadata !1767, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1768, metadata !DIExpression()), !dbg !1772
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1773
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1769, metadata !DIExpression()), !dbg !1772
  %8 = tail call i32* @__errno_location() #24, !dbg !1774
  %9 = load i32, i32* %8, align 4, !dbg !1774, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %9, metadata !1770, metadata !DIExpression()), !dbg !1772
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1775
  %11 = load i32, i32* %10, align 8, !dbg !1775, !tbaa !1681
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1776
  %13 = load i32, i32* %12, align 4, !dbg !1776, !tbaa !1732
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1777
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1778
  %16 = load i8*, i8** %15, align 8, !dbg !1778, !tbaa !1755
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1779
  %18 = load i8*, i8** %17, align 8, !dbg !1779, !tbaa !1758
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %19, metadata !1771, metadata !DIExpression()), !dbg !1772
  store i32 %9, i32* %8, align 4, !dbg !1781, !tbaa !1337
  ret i64 %19, !dbg !1782
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1783 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1789, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %1, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %2, metadata !1791, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %3, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %4, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %5, metadata !1794, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32* %6, metadata !1795, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %7, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %8, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* null, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1802, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1847
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !1848
  %14 = icmp eq i64 %13, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i1 %14, metadata !1804, metadata !DIExpression()), !dbg !1847
  %15 = lshr i32 %5, 1, !dbg !1850
  %16 = trunc i32 %15 to i8, !dbg !1850
  %17 = and i8 %16, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i8 %17, metadata !1805, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1847
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1851
  %19 = and i32 %5, 4, !dbg !1853
  %20 = icmp eq i32 %19, 0, !dbg !1853
  %21 = and i32 %5, 1, !dbg !1856
  %22 = icmp eq i32 %21, 0, !dbg !1856
  %23 = bitcast i64* %10 to i8*, !dbg !1859
  %24 = bitcast i32* %12 to i8*, !dbg !1860
  %25 = icmp eq i32* %6, null, !dbg !1861
  br label %26, !dbg !1863

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1864
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1865
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1866
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1867
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1847
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1868
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1869
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1870
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %38, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %37, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %36, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %35, metadata !1805, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %34, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %33, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %32, metadata !1802, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %31, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %30, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %29, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %28, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %27, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1841), !dbg !1871
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
  ], !dbg !1872

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1805, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %35, metadata !1805, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 5, metadata !1793, metadata !DIExpression()), !dbg !1847
  br label %92, !dbg !1873

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1805, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 5, metadata !1793, metadata !DIExpression()), !dbg !1847
  %42 = and i8 %35, 1, !dbg !1875
  %43 = icmp eq i8 %42, 0, !dbg !1875
  br i1 %43, label %44, label %92, !dbg !1873

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1877
  br i1 %45, label %92, label %46, !dbg !1880

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1877, !tbaa !1286
  br label %92, !dbg !1877

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.84, i64 0, i64 0), i32 %27), !dbg !1881
  call void @llvm.dbg.value(metadata i8* %48, metadata !1796, metadata !DIExpression()), !dbg !1847
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), i32 %27), !dbg !1885
  call void @llvm.dbg.value(metadata i8* %49, metadata !1797, metadata !DIExpression()), !dbg !1847
  br label %50, !dbg !1886

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %51, metadata !1796, metadata !DIExpression()), !dbg !1847
  %53 = and i8 %35, 1, !dbg !1887
  %54 = icmp eq i8 %53, 0, !dbg !1887
  br i1 %54, label %55, label %70, !dbg !1889

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1799, metadata !DIExpression()), !dbg !1847
  %56 = load i8, i8* %51, align 1, !dbg !1890, !tbaa !1286
  %57 = icmp eq i8 %56, 0, !dbg !1893
  br i1 %57, label %70, label %58, !dbg !1893

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %61, metadata !1799, metadata !DIExpression()), !dbg !1847
  %62 = icmp ult i64 %61, %39, !dbg !1894
  br i1 %62, label %63, label %65, !dbg !1897

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1894
  store i8 %59, i8* %64, align 1, !dbg !1894, !tbaa !1286
  br label %65, !dbg !1894

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %66, metadata !1799, metadata !DIExpression()), !dbg !1847
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1898
  call void @llvm.dbg.value(metadata i8* %67, metadata !1801, metadata !DIExpression()), !dbg !1847
  %68 = load i8, i8* %67, align 1, !dbg !1890, !tbaa !1286
  %69 = icmp eq i8 %68, 0, !dbg !1893
  br i1 %69, label %70, label %58, !dbg !1893, !llvm.loop !1899

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1901
  call void @llvm.dbg.value(metadata i64 %71, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %52, metadata !1801, metadata !DIExpression()), !dbg !1847
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %72, metadata !1802, metadata !DIExpression()), !dbg !1847
  br label %92, !dbg !1903

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1803, metadata !DIExpression()), !dbg !1847
  br label %74, !dbg !1904

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %75, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1805, metadata !DIExpression()), !dbg !1847
  br label %76, !dbg !1905

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1867
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %78, metadata !1805, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %77, metadata !1803, metadata !DIExpression()), !dbg !1847
  %79 = and i8 %78, 1, !dbg !1906
  %80 = icmp eq i8 %79, 0, !dbg !1906
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1908
  br label %82, !dbg !1908

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1847
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1850
  call void @llvm.dbg.value(metadata i8 %84, metadata !1805, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %83, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  %85 = and i8 %84, 1, !dbg !1909
  %86 = icmp eq i8 %85, 0, !dbg !1909
  br i1 %86, label %87, label %92, !dbg !1911

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1912
  br i1 %88, label %92, label %89, !dbg !1915

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1912, !tbaa !1286
  br label %92, !dbg !1912

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1805, metadata !DIExpression()), !dbg !1847
  br label %92, !dbg !1916

91:                                               ; preds = %26
  call void @abort() #23, !dbg !1917
  unreachable, !dbg !1917

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1901
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), %40 ], !dbg !1847
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1847
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1847
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %100, metadata !1805, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %98, metadata !1802, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %96, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %93, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1798, metadata !DIExpression()), !dbg !1847
  %101 = and i8 %99, 1, !dbg !1918
  %102 = icmp ne i8 %101, 0, !dbg !1918
  %103 = icmp ne i32 %93, 2, !dbg !1918
  %104 = and i1 %103, %102, !dbg !1918
  %105 = icmp ne i64 %98, 0, !dbg !1918
  %106 = and i1 %105, %104, !dbg !1918
  %107 = icmp ugt i64 %98, 1, !dbg !1918
  %108 = and i8 %100, 1, !dbg !1920
  %109 = icmp eq i8 %108, 0, !dbg !1920
  %110 = icmp eq i32 %93, 2, !dbg !1923
  %111 = or i1 %103, %109, !dbg !1925
  %112 = icmp ne i8 %108, 0, !dbg !1927
  %113 = and i1 %110, %112, !dbg !1927
  %114 = xor i1 %102, true, !dbg !1928
  %115 = xor i1 %104, true, !dbg !1861
  %116 = and i1 %109, %115, !dbg !1861
  %117 = or i1 %25, %116, !dbg !1861
  %118 = and i8 %99, %100, !dbg !1929
  %119 = and i8 %118, 1, !dbg !1929
  %120 = icmp ne i8 %119, 0, !dbg !1929
  %121 = and i1 %120, %105, !dbg !1929
  br label %122, !dbg !1931

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1932
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1901
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1864
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1868
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1869
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1870
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %126, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %123, metadata !1798, metadata !DIExpression()), !dbg !1847
  %131 = icmp eq i64 %126, -1, !dbg !1933
  br i1 %131, label %132, label %136, !dbg !1934

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1935
  %134 = load i8, i8* %133, align 1, !dbg !1935, !tbaa !1286
  %135 = icmp eq i8 %134, 0, !dbg !1936
  br i1 %135, label %581, label %138, !dbg !1937

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1938
  br i1 %137, label %581, label %138, !dbg !1937

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1939
  br i1 %106, label %139, label %154, !dbg !1940

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1941
  %141 = and i1 %107, %131, !dbg !1942
  br i1 %141, label %142, label %144, !dbg !1942

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %143, metadata !1792, metadata !DIExpression()), !dbg !1847
  br label %144, !dbg !1944

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1792, metadata !DIExpression()), !dbg !1847
  %146 = icmp ugt i64 %140, %145, !dbg !1945
  br i1 %146, label %154, label %147, !dbg !1946

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1947
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1948
  %150 = icmp ne i32 %149, 0, !dbg !1949
  %151 = or i1 %150, %109, !dbg !1950
  %152 = xor i1 %150, true, !dbg !1950
  %153 = zext i1 %152 to i8, !dbg !1950
  br i1 %151, label %154, label %639, !dbg !1950

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1939
  call void @llvm.dbg.value(metadata i8 %156, metadata !1814, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %155, metadata !1792, metadata !DIExpression()), !dbg !1847
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1951
  %158 = load i8, i8* %157, align 1, !dbg !1951, !tbaa !1286
  call void @llvm.dbg.value(metadata i8 %158, metadata !1809, metadata !DIExpression()), !dbg !1939
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
  ], !dbg !1952

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1953

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1954

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1939
  %162 = and i8 %127, 1, !dbg !1957
  %163 = icmp eq i8 %162, 0, !dbg !1957
  %164 = and i1 %110, %163, !dbg !1957
  br i1 %164, label %165, label %181, !dbg !1957

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1959
  br i1 %166, label %167, label %169, !dbg !1963

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1959
  store i8 39, i8* %168, align 1, !dbg !1959, !tbaa !1286
  br label %169, !dbg !1959

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %170, metadata !1799, metadata !DIExpression()), !dbg !1847
  %171 = icmp ult i64 %170, %130, !dbg !1964
  br i1 %171, label %172, label %174, !dbg !1967

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1964
  store i8 36, i8* %173, align 1, !dbg !1964, !tbaa !1286
  br label %174, !dbg !1964

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %175, metadata !1799, metadata !DIExpression()), !dbg !1847
  %176 = icmp ult i64 %175, %130, !dbg !1968
  br i1 %176, label %177, label %179, !dbg !1971

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1968
  store i8 39, i8* %178, align 1, !dbg !1968, !tbaa !1286
  br label %179, !dbg !1968

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %180, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1847
  br label %181, !dbg !1972

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1847
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %183, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %182, metadata !1799, metadata !DIExpression()), !dbg !1847
  %184 = icmp ult i64 %182, %130, !dbg !1973
  br i1 %184, label %185, label %187, !dbg !1976

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1973
  store i8 92, i8* %186, align 1, !dbg !1973, !tbaa !1286
  br label %187, !dbg !1973

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %188, metadata !1799, metadata !DIExpression()), !dbg !1847
  br i1 %103, label %189, label %463, !dbg !1977

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1979
  %191 = icmp ult i64 %190, %155, !dbg !1980
  br i1 %191, label %192, label %463, !dbg !1981

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1982
  %194 = load i8, i8* %193, align 1, !dbg !1982, !tbaa !1286
  %195 = add i8 %194, -48, !dbg !1983
  %196 = icmp ult i8 %195, 10, !dbg !1983
  br i1 %196, label %197, label %463, !dbg !1983

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1984
  br i1 %198, label %199, label %201, !dbg !1988

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1984
  store i8 48, i8* %200, align 1, !dbg !1984, !tbaa !1286
  br label %201, !dbg !1984

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %202, metadata !1799, metadata !DIExpression()), !dbg !1847
  %203 = icmp ult i64 %202, %130, !dbg !1989
  br i1 %203, label %204, label %206, !dbg !1992

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1989
  store i8 48, i8* %205, align 1, !dbg !1989, !tbaa !1286
  br label %206, !dbg !1989

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %207, metadata !1799, metadata !DIExpression()), !dbg !1847
  br label %463, !dbg !1993

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1994

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1995

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1996

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1997

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1998
  %214 = icmp ult i64 %213, %155, !dbg !1999
  br i1 %214, label %215, label %463, !dbg !2000

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2001
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2002
  %218 = load i8, i8* %217, align 1, !dbg !2002, !tbaa !1286
  %219 = icmp eq i8 %218, 63, !dbg !2003
  br i1 %219, label %220, label %463, !dbg !2004

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2005
  %222 = load i8, i8* %221, align 1, !dbg !2005, !tbaa !1286
  %223 = sext i8 %222 to i32, !dbg !2005
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
  ], !dbg !2006

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2007

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1809, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %213, metadata !1798, metadata !DIExpression()), !dbg !1847
  %226 = icmp ult i64 %124, %130, !dbg !2009
  br i1 %226, label %227, label %229, !dbg !2012

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2009
  store i8 63, i8* %228, align 1, !dbg !2009, !tbaa !1286
  br label %229, !dbg !2009

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %230, metadata !1799, metadata !DIExpression()), !dbg !1847
  %231 = icmp ult i64 %230, %130, !dbg !2013
  br i1 %231, label %232, label %234, !dbg !2016

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2013
  store i8 34, i8* %233, align 1, !dbg !2013, !tbaa !1286
  br label %234, !dbg !2013

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %235, metadata !1799, metadata !DIExpression()), !dbg !1847
  %236 = icmp ult i64 %235, %130, !dbg !2017
  br i1 %236, label %237, label %239, !dbg !2020

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2017
  store i8 34, i8* %238, align 1, !dbg !2017, !tbaa !1286
  br label %239, !dbg !2017

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %240, metadata !1799, metadata !DIExpression()), !dbg !1847
  %241 = icmp ult i64 %240, %130, !dbg !2021
  br i1 %241, label %242, label %244, !dbg !2024

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2021
  store i8 63, i8* %243, align 1, !dbg !2021, !tbaa !1286
  br label %244, !dbg !2021

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %245, metadata !1799, metadata !DIExpression()), !dbg !1847
  br label %463, !dbg !2025

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1813, metadata !DIExpression()), !dbg !1939
  br label %256, !dbg !2026

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1813, metadata !DIExpression()), !dbg !1939
  br label %256, !dbg !2027

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1813, metadata !DIExpression()), !dbg !1939
  br label %254, !dbg !2028

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1813, metadata !DIExpression()), !dbg !1939
  br label %254, !dbg !2029

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1813, metadata !DIExpression()), !dbg !1939
  br label %256, !dbg !2030

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1813, metadata !DIExpression()), !dbg !1939
  br i1 %110, label %252, label %253, !dbg !2031

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2032

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2035

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2036
  call void @llvm.dbg.value(metadata i8 %255, metadata !1813, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.label(metadata !1842), !dbg !2037
  br i1 %111, label %256, label %625, !dbg !2038

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2036
  call void @llvm.dbg.value(metadata i8 %257, metadata !1813, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.label(metadata !1843), !dbg !2040
  br i1 %102, label %488, label %463, !dbg !2041

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2042

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2043, !tbaa !1286
  %261 = icmp eq i8 %260, 0, !dbg !2044
  br i1 %261, label %262, label %463, !dbg !2045

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2046
  br i1 %263, label %264, label %463, !dbg !2048

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1816, metadata !DIExpression()), !dbg !1939
  br label %265, !dbg !2049

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1939
  call void @llvm.dbg.value(metadata i8 %266, metadata !1816, metadata !DIExpression()), !dbg !1939
  br i1 %111, label %463, label %625, !dbg !2050

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1816, metadata !DIExpression()), !dbg !1939
  br i1 %110, label %268, label %463, !dbg !2051

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2052

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2054
  %271 = icmp ne i64 %125, 0, !dbg !2056
  %272 = or i1 %271, %270, !dbg !2057
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2057
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %274, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %273, metadata !1800, metadata !DIExpression()), !dbg !1847
  %275 = icmp ult i64 %124, %274, !dbg !2058
  br i1 %275, label %276, label %278, !dbg !2061

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2058
  store i8 39, i8* %277, align 1, !dbg !2058, !tbaa !1286
  br label %278, !dbg !2058

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %279, metadata !1799, metadata !DIExpression()), !dbg !1847
  %280 = icmp ult i64 %279, %274, !dbg !2062
  br i1 %280, label %281, label %283, !dbg !2065

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2062
  store i8 92, i8* %282, align 1, !dbg !2062, !tbaa !1286
  br label %283, !dbg !2062

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %284, metadata !1799, metadata !DIExpression()), !dbg !1847
  %285 = icmp ult i64 %284, %274, !dbg !2066
  br i1 %285, label %286, label %288, !dbg !2069

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2066
  store i8 39, i8* %287, align 1, !dbg !2066, !tbaa !1286
  br label %288, !dbg !2066

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %289, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1806, metadata !DIExpression()), !dbg !1847
  br label %463, !dbg !2070

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2071

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1817, metadata !DIExpression()), !dbg !2072
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2073
  %293 = load i16*, i16** %292, align 8, !dbg !2073, !tbaa !1131
  %294 = zext i8 %158 to i64, !dbg !2073
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2073
  %296 = load i16, i16* %295, align 2, !dbg !2073, !tbaa !1287
  %297 = lshr i16 %296, 14, !dbg !2075
  %298 = trunc i16 %297 to i8, !dbg !2075
  %299 = and i8 %298, 1, !dbg !2075
  call void @llvm.dbg.value(metadata i8 %299, metadata !1820, metadata !DIExpression()), !dbg !2072
  br label %355, !dbg !2076

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2077
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1821, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* %23, metadata !2079, metadata !DIExpression()) #19, !dbg !2087
  call void @llvm.dbg.value(metadata i32 0, metadata !2085, metadata !DIExpression()) #19, !dbg !2087
  call void @llvm.dbg.value(metadata i64 8, metadata !2086, metadata !DIExpression()) #19, !dbg !2087
  store i64 0, i64* %10, align 8, !dbg !2089
  call void @llvm.dbg.value(metadata i64 0, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !2072
  %301 = icmp eq i64 %155, -1, !dbg !2090
  br i1 %301, label %302, label %304, !dbg !2092

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %303, metadata !1792, metadata !DIExpression()), !dbg !1847
  br label %304, !dbg !2094

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1939
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  br label %306, !dbg !2095

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2096
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2097
  call void @llvm.dbg.value(metadata i8 %308, metadata !1820, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %307, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2098
  %309 = add i64 %307, %123, !dbg !2099
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2100
  %311 = sub i64 %305, %309, !dbg !2101
  call void @llvm.dbg.value(metadata i32* %12, metadata !1827, metadata !DIExpression(DW_OP_deref)), !dbg !1860
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %312, metadata !1830, metadata !DIExpression()), !dbg !1860
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2103

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %307, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %307, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %307, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %307, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %307, metadata !1817, metadata !DIExpression()), !dbg !2072
  %314 = icmp ugt i64 %305, %309, !dbg !2104
  br i1 %314, label %315, label %340, !dbg !2106

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2107
  br label %317, !dbg !2107

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1817, metadata !DIExpression()), !dbg !2072
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2108
  %321 = load i8, i8* %320, align 1, !dbg !2108, !tbaa !1286
  %322 = icmp eq i8 %321, 0, !dbg !2106
  br i1 %322, label %340, label %323, !dbg !2107

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %324, metadata !1817, metadata !DIExpression()), !dbg !2072
  %325 = add i64 %324, %123, !dbg !2110
  %326 = icmp ult i64 %325, %305, !dbg !2104
  br i1 %326, label %317, label %340, !dbg !2106, !llvm.loop !2111

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2112
  %329 = and i1 %113, %328, !dbg !2115
  call void @llvm.dbg.value(metadata i64 1, metadata !1831, metadata !DIExpression()), !dbg !2116
  br i1 %329, label %330, label %343, !dbg !2115

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1831, metadata !DIExpression()), !dbg !2116
  %332 = add i64 %331, %309, !dbg !2117
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2118
  %334 = load i8, i8* %333, align 1, !dbg !2118, !tbaa !1286
  %335 = sext i8 %334 to i32, !dbg !2118
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2119

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %337, metadata !1831, metadata !DIExpression()), !dbg !2116
  %338 = icmp eq i64 %337, %312, !dbg !2112
  br i1 %338, label %343, label %330, !dbg !2121, !llvm.loop !2122

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %308, metadata !1820, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %307, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %308, metadata !1820, metadata !DIExpression()), !dbg !2072
  br label %340, !dbg !2124

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2124
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2125, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %344, metadata !1827, metadata !DIExpression()), !dbg !1860
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !2127
  %346 = icmp eq i32 %345, 0, !dbg !2127
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2128
  call void @llvm.dbg.value(metadata i8 %347, metadata !1820, metadata !DIExpression()), !dbg !2072
  %348 = add i64 %312, %307, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %348, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %347, metadata !1820, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %348, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2124
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2130
  %350 = icmp eq i32 %349, 0, !dbg !2131
  br i1 %350, label %306, label %351, !dbg !2132, !llvm.loop !2133

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2135
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 2, metadata !1793, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %99, metadata !1803, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %305, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2124
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2135
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1939
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2136
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2136
  call void @llvm.dbg.value(metadata i8 %358, metadata !1820, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %357, metadata !1817, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %356, metadata !1792, metadata !DIExpression()), !dbg !1847
  %359 = and i8 %358, 1, !dbg !2137
  %360 = icmp ne i8 %359, 0, !dbg !2137
  call void @llvm.dbg.value(metadata i8 %359, metadata !1816, metadata !DIExpression()), !dbg !1939
  %361 = icmp ult i64 %357, 2, !dbg !2138
  %362 = or i1 %360, %114, !dbg !2139
  %363 = and i1 %361, %362, !dbg !2140
  br i1 %363, label %463, label %364, !dbg !2140

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %365, metadata !1838, metadata !DIExpression()), !dbg !2142
  br label %366, !dbg !2143

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1932
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1847
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1868
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1939
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1939
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2144
  call void @llvm.dbg.value(metadata i8 %372, metadata !1815, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %371, metadata !1814, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %370, metadata !1809, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %369, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %368, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %367, metadata !1798, metadata !DIExpression()), !dbg !1847
  br i1 %362, label %419, label %373, !dbg !2145

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2150

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1939
  %375 = and i8 %369, 1, !dbg !2153
  %376 = icmp eq i8 %375, 0, !dbg !2153
  %377 = and i1 %110, %376, !dbg !2153
  br i1 %377, label %378, label %394, !dbg !2153

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2155
  br i1 %379, label %380, label %382, !dbg !2159

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2155
  store i8 39, i8* %381, align 1, !dbg !2155, !tbaa !1286
  br label %382, !dbg !2155

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %383, metadata !1799, metadata !DIExpression()), !dbg !1847
  %384 = icmp ult i64 %383, %130, !dbg !2160
  br i1 %384, label %385, label %387, !dbg !2163

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2160
  store i8 36, i8* %386, align 1, !dbg !2160, !tbaa !1286
  br label %387, !dbg !2160

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %388, metadata !1799, metadata !DIExpression()), !dbg !1847
  %389 = icmp ult i64 %388, %130, !dbg !2164
  br i1 %389, label %390, label %392, !dbg !2167

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2164
  store i8 39, i8* %391, align 1, !dbg !2164, !tbaa !1286
  br label %392, !dbg !2164

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %393, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1847
  br label %394, !dbg !2168

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1847
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %396, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %395, metadata !1799, metadata !DIExpression()), !dbg !1847
  %397 = icmp ult i64 %395, %130, !dbg !2169
  br i1 %397, label %398, label %400, !dbg !2172

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2169
  store i8 92, i8* %399, align 1, !dbg !2169, !tbaa !1286
  br label %400, !dbg !2169

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %401, metadata !1799, metadata !DIExpression()), !dbg !1847
  %402 = icmp ult i64 %401, %130, !dbg !2173
  br i1 %402, label %403, label %407, !dbg !2176

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2173
  %405 = or i8 %404, 48, !dbg !2173
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2173
  store i8 %405, i8* %406, align 1, !dbg !2173, !tbaa !1286
  br label %407, !dbg !2173

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2176
  call void @llvm.dbg.value(metadata i64 %408, metadata !1799, metadata !DIExpression()), !dbg !1847
  %409 = icmp ult i64 %408, %130, !dbg !2177
  br i1 %409, label %410, label %415, !dbg !2180

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2177
  %412 = and i8 %411, 7, !dbg !2177
  %413 = or i8 %412, 48, !dbg !2177
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2177
  store i8 %413, i8* %414, align 1, !dbg !2177, !tbaa !1286
  br label %415, !dbg !2177

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %416, metadata !1799, metadata !DIExpression()), !dbg !1847
  %417 = and i8 %370, 7, !dbg !2181
  %418 = or i8 %417, 48, !dbg !2182
  call void @llvm.dbg.value(metadata i8 %418, metadata !1809, metadata !DIExpression()), !dbg !1939
  br label %428, !dbg !2183

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2184
  %421 = icmp eq i8 %420, 0, !dbg !2184
  br i1 %421, label %428, label %422, !dbg !2186

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2187
  br i1 %423, label %424, label %426, !dbg !2191

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2187
  store i8 92, i8* %425, align 1, !dbg !2187, !tbaa !1286
  br label %426, !dbg !2187

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %427, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1939
  br label %428, !dbg !2192

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1847
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1868
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1939
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1939
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1939
  call void @llvm.dbg.value(metadata i8 %433, metadata !1815, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %432, metadata !1814, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %431, metadata !1809, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %430, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %429, metadata !1799, metadata !DIExpression()), !dbg !1847
  %434 = add i64 %367, 1, !dbg !2193
  %435 = icmp ugt i64 %365, %434, !dbg !2195
  br i1 %435, label %436, label %526, !dbg !2196

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2197
  %438 = icmp ne i8 %437, 0, !dbg !2197
  %439 = and i8 %433, 1, !dbg !2197
  %440 = icmp eq i8 %439, 0, !dbg !2197
  %441 = and i1 %438, %440, !dbg !2197
  br i1 %441, label %442, label %453, !dbg !2197

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2200
  br i1 %443, label %444, label %446, !dbg !2204

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2200
  store i8 39, i8* %445, align 1, !dbg !2200, !tbaa !1286
  br label %446, !dbg !2200

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %447, metadata !1799, metadata !DIExpression()), !dbg !1847
  %448 = icmp ult i64 %447, %130, !dbg !2205
  br i1 %448, label %449, label %451, !dbg !2208

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2205
  store i8 39, i8* %450, align 1, !dbg !2205, !tbaa !1286
  br label %451, !dbg !2205

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %452, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1806, metadata !DIExpression()), !dbg !1847
  br label %453, !dbg !2209

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2210
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %455, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %454, metadata !1799, metadata !DIExpression()), !dbg !1847
  %456 = icmp ult i64 %454, %130, !dbg !2211
  br i1 %456, label %457, label %459, !dbg !2214

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2211
  store i8 %431, i8* %458, align 1, !dbg !2211, !tbaa !1286
  br label %459, !dbg !2211

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %460, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %434, metadata !1798, metadata !DIExpression()), !dbg !1847
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2215
  %462 = load i8, i8* %461, align 1, !dbg !2215, !tbaa !1286
  call void @llvm.dbg.value(metadata i8 %462, metadata !1809, metadata !DIExpression()), !dbg !1939
  br label %366, !dbg !2216, !llvm.loop !2217

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1932
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1847
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1864
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2220
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1847
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1847
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1939
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1939
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1939
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %472, metadata !1816, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %471, metadata !1815, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %156, metadata !1814, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %470, metadata !1809, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %469, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %468, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %467, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %466, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %465, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %464, metadata !1798, metadata !DIExpression()), !dbg !1847
  br i1 %117, label %486, label %474, !dbg !2221

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2222
  %476 = zext i8 %475 to i64, !dbg !2222
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2223
  %478 = load i32, i32* %477, align 4, !dbg !2223, !tbaa !1337
  %479 = and i8 %470, 31, !dbg !2224
  %480 = zext i8 %479 to i32, !dbg !2224
  %481 = shl nuw i32 1, %480, !dbg !2225
  %482 = and i32 %478, %481, !dbg !2225
  %483 = icmp eq i32 %482, 0, !dbg !2225
  %484 = icmp eq i8 %156, 0, !dbg !2226
  %485 = and i1 %484, %483, !dbg !2227
  br i1 %485, label %526, label %488, !dbg !2227

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2226
  br i1 %487, label %526, label %488, !dbg !2228

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2229
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1847
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1864
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2220
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1868
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1869
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1939
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1939
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %496, metadata !1816, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %495, metadata !1809, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %494, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %493, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %492, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %491, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %490, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %489, metadata !1798, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1844), !dbg !2230
  br i1 %109, label %498, label %629, !dbg !2231

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1939
  %499 = and i8 %493, 1, !dbg !2233
  %500 = icmp eq i8 %499, 0, !dbg !2233
  %501 = and i1 %110, %500, !dbg !2233
  br i1 %501, label %502, label %518, !dbg !2233

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2235
  br i1 %503, label %504, label %506, !dbg !2239

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2235
  store i8 39, i8* %505, align 1, !dbg !2235, !tbaa !1286
  br label %506, !dbg !2235

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %507, metadata !1799, metadata !DIExpression()), !dbg !1847
  %508 = icmp ult i64 %507, %497, !dbg !2240
  br i1 %508, label %509, label %511, !dbg !2243

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2240
  store i8 36, i8* %510, align 1, !dbg !2240, !tbaa !1286
  br label %511, !dbg !2240

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %512, metadata !1799, metadata !DIExpression()), !dbg !1847
  %513 = icmp ult i64 %512, %497, !dbg !2244
  br i1 %513, label %514, label %516, !dbg !2247

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2244
  store i8 39, i8* %515, align 1, !dbg !2244, !tbaa !1286
  br label %516, !dbg !2244

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %517, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1847
  br label %518, !dbg !2248

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1939
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %520, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %519, metadata !1799, metadata !DIExpression()), !dbg !1847
  %521 = icmp ult i64 %519, %497, !dbg !2249
  br i1 %521, label %522, label %524, !dbg !2252

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2249
  store i8 92, i8* %523, align 1, !dbg !2249, !tbaa !1286
  br label %524, !dbg !2249

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %525, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %536, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %535, metadata !1816, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %534, metadata !1815, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %533, metadata !1809, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %532, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %531, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %530, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %529, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %528, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %527, metadata !1798, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1845), !dbg !2253
  br label %553, !dbg !2254

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2229
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1847
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1864
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2220
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1868
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1869
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2257
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1939
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1939
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %535, metadata !1816, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %534, metadata !1815, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %533, metadata !1809, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %532, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %531, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %530, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %529, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %528, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %527, metadata !1798, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1845), !dbg !2253
  %537 = and i8 %531, 1, !dbg !2254
  %538 = icmp ne i8 %537, 0, !dbg !2254
  %539 = and i8 %534, 1, !dbg !2254
  %540 = icmp eq i8 %539, 0, !dbg !2254
  %541 = and i1 %538, %540, !dbg !2254
  br i1 %541, label %542, label %553, !dbg !2254

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2258
  br i1 %543, label %544, label %546, !dbg !2262

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2258
  store i8 39, i8* %545, align 1, !dbg !2258, !tbaa !1286
  br label %546, !dbg !2258

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %547, metadata !1799, metadata !DIExpression()), !dbg !1847
  %548 = icmp ult i64 %547, %536, !dbg !2263
  br i1 %548, label %549, label %551, !dbg !2266

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2263
  store i8 39, i8* %550, align 1, !dbg !2263, !tbaa !1286
  br label %551, !dbg !2263

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %552, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1806, metadata !DIExpression()), !dbg !1847
  br label %553, !dbg !2267

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1939
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %562, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %561, metadata !1799, metadata !DIExpression()), !dbg !1847
  %563 = icmp ult i64 %561, %554, !dbg !2268
  br i1 %563, label %564, label %566, !dbg !2271

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2268
  store i8 %556, i8* %565, align 1, !dbg !2268, !tbaa !1286
  br label %566, !dbg !2268

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %567, metadata !1799, metadata !DIExpression()), !dbg !1847
  %568 = and i8 %555, 1, !dbg !2272
  %569 = icmp eq i8 %568, 0, !dbg !2272
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2274
  call void @llvm.dbg.value(metadata i8 %570, metadata !1808, metadata !DIExpression()), !dbg !1847
  br label %571, !dbg !2275

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2229
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1847
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1864
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2220
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1868
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1847
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1870
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %578, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %577, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %576, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %575, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %574, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %573, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %572, metadata !1798, metadata !DIExpression()), !dbg !1847
  %580 = add i64 %572, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %580, metadata !1798, metadata !DIExpression()), !dbg !1847
  br label %122, !dbg !2277, !llvm.loop !2278

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %127, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %128, metadata !1807, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %129, metadata !1808, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  %583 = icmp eq i64 %124, 0, !dbg !2280
  %584 = and i1 %110, %583, !dbg !2282
  %585 = xor i1 %584, true, !dbg !2282
  %586 = or i1 %109, %585, !dbg !2282
  br i1 %586, label %587, label %629, !dbg !2282

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2283
  %589 = xor i1 %588, true, !dbg !2283
  %590 = and i8 %128, 1, !dbg !2285
  %591 = icmp eq i8 %590, 0, !dbg !2285
  %592 = or i1 %591, %589, !dbg !2283
  br i1 %592, label %602, label %593, !dbg !2283

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2286
  %595 = icmp eq i8 %594, 0, !dbg !2286
  br i1 %595, label %598, label %596, !dbg !2289

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %94, metadata !1796, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %95, metadata !1797, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %125, metadata !1800, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %582, metadata !1792, metadata !DIExpression()), !dbg !1847
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2290
  br label %645, !dbg !2291

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2292
  %600 = icmp ne i64 %125, 0, !dbg !2294
  %601 = and i1 %600, %599, !dbg !2295
  br i1 %601, label %26, label %602, !dbg !2295

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %130, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  %603 = icmp ne i8* %97, null, !dbg !2296
  %604 = and i1 %603, %109, !dbg !2298
  br i1 %604, label %605, label %620, !dbg !2298

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %124, metadata !1799, metadata !DIExpression()), !dbg !1847
  %606 = load i8, i8* %97, align 1, !dbg !2299, !tbaa !1286
  %607 = icmp eq i8 %606, 0, !dbg !2302
  br i1 %607, label %620, label %608, !dbg !2302

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1801, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %611, metadata !1799, metadata !DIExpression()), !dbg !1847
  %612 = icmp ult i64 %611, %130, !dbg !2303
  br i1 %612, label %613, label %615, !dbg !2306

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2303
  store i8 %609, i8* %614, align 1, !dbg !2303, !tbaa !1286
  br label %615, !dbg !2303

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %616, metadata !1799, metadata !DIExpression()), !dbg !1847
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %617, metadata !1801, metadata !DIExpression()), !dbg !1847
  %618 = load i8, i8* %617, align 1, !dbg !2299, !tbaa !1286
  %619 = icmp eq i8 %618, 0, !dbg !2302
  br i1 %619, label %620, label %608, !dbg !2302, !llvm.loop !2308

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1901
  call void @llvm.dbg.value(metadata i64 %621, metadata !1799, metadata !DIExpression()), !dbg !1847
  %622 = icmp ult i64 %621, %130, !dbg !2310
  br i1 %622, label %623, label %645, !dbg !2312

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2313
  store i8 0, i8* %624, align 1, !dbg !2314, !tbaa !1286
  br label %645, !dbg !2313

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %630, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1846), !dbg !2315
  %627 = icmp eq i8 %101, 0, !dbg !2316
  %628 = select i1 %627, i32 2, i32 4, !dbg !2316
  br label %635, !dbg !2316

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1790, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %630, metadata !1792, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.label(metadata !1846), !dbg !2315
  %632 = icmp eq i32 %93, 2, !dbg !2318
  %633 = icmp eq i8 %101, 0, !dbg !2316
  %634 = select i1 %633, i32 2, i32 4, !dbg !2316
  br i1 %632, label %635, label %639, !dbg !2316

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2316

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1793, metadata !DIExpression()), !dbg !1847
  %643 = and i32 %5, -3, !dbg !2319
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2320
  br label %645, !dbg !2321

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2322
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2323 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2327, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %1, metadata !2328, metadata !DIExpression()), !dbg !2331
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %3, metadata !2329, metadata !DIExpression()), !dbg !2331
  %4 = icmp eq i8* %3, %0, !dbg !2333
  br i1 %4, label %5, label %71, !dbg !2335

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %6, metadata !2330, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %6, metadata !2337, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8* undef, metadata !2343, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 85, metadata !2344, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 84, metadata !2345, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 70, metadata !2346, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 45, metadata !2347, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 56, metadata !2348, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 0, metadata !2349, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 0, metadata !2350, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 0, metadata !2351, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8 0, metadata !2352, metadata !DIExpression()), !dbg !2353
  %7 = load i8, i8* %6, align 1, !dbg !2356, !tbaa !1286
  %8 = and i8 %7, -33, !dbg !2356
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2356

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2358, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8* undef, metadata !2363, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 84, metadata !2364, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 70, metadata !2365, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 45, metadata !2366, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 56, metadata !2367, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 0, metadata !2368, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 0, metadata !2369, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 0, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8 0, metadata !2371, metadata !DIExpression()), !dbg !2372
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2376
  %11 = load i8, i8* %10, align 1, !dbg !2376, !tbaa !1286
  %12 = and i8 %11, -33, !dbg !2376
  %13 = icmp eq i8 %12, 84, !dbg !2376
  br i1 %13, label %14, label %68, !dbg !2376

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2378, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* undef, metadata !2383, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 70, metadata !2384, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 45, metadata !2385, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 56, metadata !2386, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2387, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2388, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2389, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2390, metadata !DIExpression()), !dbg !2391
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2395
  %16 = load i8, i8* %15, align 1, !dbg !2395, !tbaa !1286
  %17 = and i8 %16, -33, !dbg !2395
  %18 = icmp eq i8 %17, 70, !dbg !2395
  br i1 %18, label %19, label %68, !dbg !2395

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2397, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* undef, metadata !2402, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 45, metadata !2403, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 56, metadata !2404, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 0, metadata !2405, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2409
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2413
  %21 = load i8, i8* %20, align 1, !dbg !2413, !tbaa !1286
  %22 = icmp eq i8 %21, 45, !dbg !2413
  br i1 %22, label %23, label %68, !dbg !2415

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2416, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* undef, metadata !2421, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 56, metadata !2422, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 0, metadata !2423, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 0, metadata !2424, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 0, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2427
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2431
  %25 = load i8, i8* %24, align 1, !dbg !2431, !tbaa !1286
  %26 = icmp eq i8 %25, 56, !dbg !2431
  br i1 %26, label %27, label %68, !dbg !2433

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2434, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* undef, metadata !2439, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2442, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2443, metadata !DIExpression()), !dbg !2444
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2448
  %29 = load i8, i8* %28, align 1, !dbg !2448, !tbaa !1286
  %30 = icmp eq i8 %29, 0, !dbg !2448
  br i1 %30, label %31, label %68, !dbg !2450

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2451, !tbaa !1286
  %33 = icmp eq i8 %32, 96, !dbg !2452
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.87, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.88, i64 0, i64 0), !dbg !2451
  br label %71, !dbg !2453

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2358, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* undef, metadata !2363, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 66, metadata !2364, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 49, metadata !2365, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 56, metadata !2366, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 48, metadata !2367, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 51, metadata !2368, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 48, metadata !2369, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 0, metadata !2370, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 0, metadata !2371, metadata !DIExpression()), !dbg !2454
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2458
  %37 = load i8, i8* %36, align 1, !dbg !2458, !tbaa !1286
  %38 = and i8 %37, -33, !dbg !2458
  %39 = icmp eq i8 %38, 66, !dbg !2458
  br i1 %39, label %40, label %68, !dbg !2458

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2378, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* undef, metadata !2383, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 49, metadata !2384, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 56, metadata !2385, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 48, metadata !2386, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 51, metadata !2387, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 48, metadata !2388, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 0, metadata !2389, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 0, metadata !2390, metadata !DIExpression()), !dbg !2459
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2461
  %42 = load i8, i8* %41, align 1, !dbg !2461, !tbaa !1286
  %43 = icmp eq i8 %42, 49, !dbg !2461
  br i1 %43, label %44, label %68, !dbg !2462

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2397, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* undef, metadata !2402, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 56, metadata !2403, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 48, metadata !2404, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 51, metadata !2405, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 48, metadata !2406, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2463
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2465
  %46 = load i8, i8* %45, align 1, !dbg !2465, !tbaa !1286
  %47 = icmp eq i8 %46, 56, !dbg !2465
  br i1 %47, label %48, label %68, !dbg !2466

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2416, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* undef, metadata !2421, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 48, metadata !2422, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 51, metadata !2423, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 48, metadata !2424, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 0, metadata !2425, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2467
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2469
  %50 = load i8, i8* %49, align 1, !dbg !2469, !tbaa !1286
  %51 = icmp eq i8 %50, 48, !dbg !2469
  br i1 %51, label %52, label %68, !dbg !2470

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2434, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* undef, metadata !2439, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 51, metadata !2440, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 48, metadata !2441, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2442, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2443, metadata !DIExpression()), !dbg !2471
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2473
  %54 = load i8, i8* %53, align 1, !dbg !2473, !tbaa !1286
  %55 = icmp eq i8 %54, 51, !dbg !2473
  br i1 %55, label %56, label %68, !dbg !2474

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* undef, metadata !2480, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 48, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 0, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2484
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2488
  %58 = load i8, i8* %57, align 1, !dbg !2488, !tbaa !1286
  %59 = icmp eq i8 %58, 48, !dbg !2488
  br i1 %59, label %60, label %68, !dbg !2490

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2491, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8* undef, metadata !2496, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 0, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 0, metadata !2498, metadata !DIExpression()), !dbg !2499
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2503
  %62 = load i8, i8* %61, align 1, !dbg !2503, !tbaa !1286
  %63 = icmp eq i8 %62, 0, !dbg !2503
  br i1 %63, label %64, label %68, !dbg !2505

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2506, !tbaa !1286
  %66 = icmp eq i8 %65, 96, !dbg !2507
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.89, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.90, i64 0, i64 0), !dbg !2506
  br label %71, !dbg !2508

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2509
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.86, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.85, i64 0, i64 0), !dbg !2510
  br label %71, !dbg !2511

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2331
  ret i8* %72, !dbg !2512
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !358 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !362 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2513 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %1, metadata !2518, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2519, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8* %0, metadata !2521, metadata !DIExpression()) #19, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %1, metadata !2526, metadata !DIExpression()) #19, !dbg !2534
  call void @llvm.dbg.value(metadata i64* null, metadata !2527, metadata !DIExpression()) #19, !dbg !2534
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2528, metadata !DIExpression()) #19, !dbg !2534
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2536
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2529, metadata !DIExpression()) #19, !dbg !2534
  %6 = tail call i32* @__errno_location() #24, !dbg !2537
  %7 = load i32, i32* %6, align 4, !dbg !2537, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %7, metadata !2530, metadata !DIExpression()) #19, !dbg !2534
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2538
  %9 = load i32, i32* %8, align 4, !dbg !2538, !tbaa !1732
  %10 = or i32 %9, 1, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %10, metadata !2531, metadata !DIExpression()) #19, !dbg !2534
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2540
  %12 = load i32, i32* %11, align 8, !dbg !2540, !tbaa !1681
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2541
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2542
  %15 = load i8*, i8** %14, align 8, !dbg !2542, !tbaa !1755
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2543
  %17 = load i8*, i8** %16, align 8, !dbg !2543, !tbaa !1758
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !2544
  %19 = add i64 %18, 1, !dbg !2545
  call void @llvm.dbg.value(metadata i64 %19, metadata !2532, metadata !DIExpression()) #19, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %19, metadata !2546, metadata !DIExpression()) #19, !dbg !2551
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !2553
  call void @llvm.dbg.value(metadata i8* %20, metadata !2533, metadata !DIExpression()) #19, !dbg !2534
  %21 = load i32, i32* %11, align 8, !dbg !2554, !tbaa !1681
  %22 = load i8*, i8** %14, align 8, !dbg !2555, !tbaa !1755
  %23 = load i8*, i8** %16, align 8, !dbg !2556, !tbaa !1758
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !2557
  store i32 %7, i32* %6, align 4, !dbg !2558, !tbaa !1337
  ret i8* %20, !dbg !2559
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2521, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %1, metadata !2526, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64* %2, metadata !2527, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2528, metadata !DIExpression()), !dbg !2560
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2561
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2561
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2529, metadata !DIExpression()), !dbg !2560
  %7 = tail call i32* @__errno_location() #24, !dbg !2562
  %8 = load i32, i32* %7, align 4, !dbg !2562, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %8, metadata !2530, metadata !DIExpression()), !dbg !2560
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2563
  %10 = load i32, i32* %9, align 4, !dbg !2563, !tbaa !1732
  %11 = icmp ne i64* %2, null, !dbg !2564
  %12 = xor i1 %11, true, !dbg !2564
  %13 = zext i1 %12 to i32, !dbg !2564
  %14 = or i32 %10, %13, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %14, metadata !2531, metadata !DIExpression()), !dbg !2560
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2566
  %16 = load i32, i32* %15, align 8, !dbg !2566, !tbaa !1681
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2567
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2568
  %19 = load i8*, i8** %18, align 8, !dbg !2568, !tbaa !1755
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2569
  %21 = load i8*, i8** %20, align 8, !dbg !2569, !tbaa !1758
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2570
  %23 = add i64 %22, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %23, metadata !2532, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %23, metadata !2546, metadata !DIExpression()) #19, !dbg !2572
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %24, metadata !2533, metadata !DIExpression()), !dbg !2560
  %25 = load i32, i32* %15, align 8, !dbg !2575, !tbaa !1681
  %26 = load i8*, i8** %18, align 8, !dbg !2576, !tbaa !1755
  %27 = load i8*, i8** %20, align 8, !dbg !2577, !tbaa !1758
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2578
  store i32 %8, i32* %7, align 4, !dbg !2579, !tbaa !1337
  br i1 %11, label %29, label %30, !dbg !2580

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2581, !tbaa !2583
  br label %30, !dbg !2584

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2586 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2590, !tbaa !1131
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 1, metadata !2589, metadata !DIExpression()), !dbg !2591
  %2 = load i32, i32* @nslots, align 4, !dbg !2592, !tbaa !1337
  %3 = icmp sgt i32 %2, 1, !dbg !2595
  br i1 %3, label %4, label %12, !dbg !2596

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2589, metadata !DIExpression()), !dbg !2591
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2597
  %7 = load i8*, i8** %6, align 8, !dbg !2597, !tbaa !2598
  tail call void @free(i8* %7) #19, !dbg !2600
  %8 = add nuw nsw i64 %5, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %8, metadata !2589, metadata !DIExpression()), !dbg !2591
  %9 = load i32, i32* @nslots, align 4, !dbg !2592, !tbaa !1337
  %10 = sext i32 %9 to i64, !dbg !2595
  %11 = icmp slt i64 %8, %10, !dbg !2595
  br i1 %11, label %4, label %12, !dbg !2596, !llvm.loop !2602

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2604
  %14 = load i8*, i8** %13, align 8, !dbg !2604, !tbaa !2598
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2606
  br i1 %15, label %17, label %16, !dbg !2607

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !2608
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2610, !tbaa !2611
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2612, !tbaa !2598
  br label %17, !dbg !2613

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2614
  br i1 %18, label %21, label %19, !dbg !2616

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2617
  tail call void @free(i8* %20) #19, !dbg !2619
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2620, !tbaa !1131
  br label %21, !dbg !2621

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2622, !tbaa !1337
  ret void, !dbg !2623
}

; Function Attrs: nounwind
declare !dbg !335 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2624 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* %1, metadata !2627, metadata !DIExpression()), !dbg !2628
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2629
  ret i8* %3, !dbg !2630
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2631 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %1, metadata !2636, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %2, metadata !2637, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2638, metadata !DIExpression()), !dbg !2650
  %5 = tail call i32* @__errno_location() #24, !dbg !2651
  %6 = load i32, i32* %5, align 4, !dbg !2651, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %6, metadata !2639, metadata !DIExpression()), !dbg !2650
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2652, !tbaa !1131
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2640, metadata !DIExpression()), !dbg !2650
  %8 = icmp slt i32 %0, 0, !dbg !2653
  br i1 %8, label %9, label %10, !dbg !2655

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2656
  unreachable, !dbg !2656

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2657, !tbaa !1337
  %12 = icmp sgt i32 %11, %0, !dbg !2658
  br i1 %12, label %34, label %13, !dbg !2659

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2660
  call void @llvm.dbg.value(metadata i1 %14, metadata !2641, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2644, metadata !DIExpression()), !dbg !2661
  %15 = icmp eq i32 %0, 2147483647, !dbg !2662
  br i1 %15, label %16, label %17, !dbg !2664

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2665
  unreachable, !dbg !2665

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2666
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2666
  %20 = add nuw nsw i32 %0, 1, !dbg !2667
  %21 = sext i32 %20 to i64, !dbg !2668
  %22 = shl nuw nsw i64 %21, 4, !dbg !2669
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !2670
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2670
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2640, metadata !DIExpression()), !dbg !2650
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2671, !tbaa !1131
  br i1 %14, label %25, label %26, !dbg !2672

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2673, !tbaa.struct !2675
  br label %26, !dbg !2676

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2677, !tbaa !1337
  %28 = sext i32 %27 to i64, !dbg !2678
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2678
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2679
  %31 = sub nsw i32 %20, %27, !dbg !2680
  %32 = sext i32 %31 to i64, !dbg !2681
  %33 = shl nsw i64 %32, 4, !dbg !2682
  call void @llvm.dbg.value(metadata i8* %30, metadata !2079, metadata !DIExpression()) #19, !dbg !2683
  call void @llvm.dbg.value(metadata i32 0, metadata !2085, metadata !DIExpression()) #19, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %33, metadata !2086, metadata !DIExpression()) #19, !dbg !2683
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !2685
  store i32 %20, i32* @nslots, align 4, !dbg !2686, !tbaa !1337
  br label %34, !dbg !2687

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2650
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2640, metadata !DIExpression()), !dbg !2650
  %36 = zext i32 %0 to i64, !dbg !2688
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2689
  %38 = load i64, i64* %37, align 8, !dbg !2689, !tbaa !2611
  call void @llvm.dbg.value(metadata i64 %38, metadata !2645, metadata !DIExpression()), !dbg !2690
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2691
  %40 = load i8*, i8** %39, align 8, !dbg !2691, !tbaa !2598
  call void @llvm.dbg.value(metadata i8* %40, metadata !2647, metadata !DIExpression()), !dbg !2690
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2692
  %42 = load i32, i32* %41, align 4, !dbg !2692, !tbaa !1732
  %43 = or i32 %42, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %43, metadata !2648, metadata !DIExpression()), !dbg !2690
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2694
  %45 = load i32, i32* %44, align 8, !dbg !2694, !tbaa !1681
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2695
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2696
  %48 = load i8*, i8** %47, align 8, !dbg !2696, !tbaa !1755
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2697
  %50 = load i8*, i8** %49, align 8, !dbg !2697, !tbaa !1758
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2698
  call void @llvm.dbg.value(metadata i64 %51, metadata !2649, metadata !DIExpression()), !dbg !2690
  %52 = icmp ugt i64 %38, %51, !dbg !2699
  br i1 %52, label %63, label %53, !dbg !2701

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %54, metadata !2645, metadata !DIExpression()), !dbg !2690
  store i64 %54, i64* %37, align 8, !dbg !2704, !tbaa !2611
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2705
  br i1 %55, label %57, label %56, !dbg !2707

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !2708
  br label %57, !dbg !2708

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2546, metadata !DIExpression()) #19, !dbg !2709
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !2711
  call void @llvm.dbg.value(metadata i8* %58, metadata !2647, metadata !DIExpression()), !dbg !2690
  store i8* %58, i8** %39, align 8, !dbg !2712, !tbaa !2598
  %59 = load i32, i32* %44, align 8, !dbg !2713, !tbaa !1681
  %60 = load i8*, i8** %47, align 8, !dbg !2714, !tbaa !1755
  %61 = load i8*, i8** %49, align 8, !dbg !2715, !tbaa !1758
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2716
  br label %63, !dbg !2717

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2690
  call void @llvm.dbg.value(metadata i8* %64, metadata !2647, metadata !DIExpression()), !dbg !2690
  store i32 %6, i32* %5, align 4, !dbg !2718, !tbaa !1337
  ret i8* %64, !dbg !2719
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2720 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %1, metadata !2725, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %2, metadata !2726, metadata !DIExpression()), !dbg !2727
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2728
  ret i8* %4, !dbg !2729
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2730 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2732, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 0, metadata !2626, metadata !DIExpression()) #19, !dbg !2734
  call void @llvm.dbg.value(metadata i8* %0, metadata !2627, metadata !DIExpression()) #19, !dbg !2734
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2736
  ret i8* %2, !dbg !2737
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2738 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()) #19, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %0, metadata !2725, metadata !DIExpression()) #19, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %1, metadata !2726, metadata !DIExpression()) #19, !dbg !2745
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2747
  ret i8* %3, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2749 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i32 %1, metadata !2754, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8* %2, metadata !2755, metadata !DIExpression()), !dbg !2757
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2758
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2756, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %1, metadata !2760, metadata !DIExpression()) #19, !dbg !2766
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2765, metadata !DIExpression()) #19, !dbg !2768
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2768, !alias.scope !2769
  %6 = icmp eq i32 %1, 10, !dbg !2772
  br i1 %6, label %7, label %8, !dbg !2774

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2775, !noalias !2769
  unreachable, !dbg !2775

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2776
  store i32 %1, i32* %9, align 8, !dbg !2777, !tbaa !1681, !alias.scope !2769
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2778
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2779
  ret i8* %10, !dbg !2780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2781 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2785, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 %1, metadata !2786, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %2, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 %3, metadata !2788, metadata !DIExpression()), !dbg !2790
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2791
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2789, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 %1, metadata !2760, metadata !DIExpression()) #19, !dbg !2793
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2765, metadata !DIExpression()) #19, !dbg !2795
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !2795, !alias.scope !2796
  %7 = icmp eq i32 %1, 10, !dbg !2799
  br i1 %7, label %8, label %9, !dbg !2800

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2801, !noalias !2796
  unreachable, !dbg !2801

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2802
  store i32 %1, i32* %10, align 8, !dbg !2803, !tbaa !1681, !alias.scope !2796
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2805
  ret i8* %11, !dbg !2806
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2807 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2765, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2756, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 %0, metadata !2809, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* %1, metadata !2810, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 0, metadata !2753, metadata !DIExpression()) #19, !dbg !2816
  call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()) #19, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %1, metadata !2755, metadata !DIExpression()) #19, !dbg !2816
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2817
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2817
  call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()) #19, !dbg !2818
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !2811, !alias.scope !2819
  %5 = icmp eq i32 %0, 10, !dbg !2822
  br i1 %5, label %6, label %7, !dbg !2823

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !2824, !noalias !2819
  unreachable, !dbg !2824

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2825
  store i32 %0, i32* %8, align 8, !dbg !2826, !tbaa !1681, !alias.scope !2819
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2827
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2828
  ret i8* %9, !dbg !2829
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2830 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2765, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2789, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 %0, metadata !2834, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !2835, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i64 %2, metadata !2836, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 0, metadata !2785, metadata !DIExpression()) #19, !dbg !2842
  call void @llvm.dbg.value(metadata i32 %0, metadata !2786, metadata !DIExpression()) #19, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %1, metadata !2787, metadata !DIExpression()) #19, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %2, metadata !2788, metadata !DIExpression()) #19, !dbg !2842
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2843
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2843
  call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()) #19, !dbg !2844
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2837, !alias.scope !2845
  %6 = icmp eq i32 %0, 10, !dbg !2848
  br i1 %6, label %7, label %8, !dbg !2849

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2850, !noalias !2845
  unreachable, !dbg !2850

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2851
  store i32 %0, i32* %9, align 8, !dbg !2852, !tbaa !1681, !alias.scope !2845
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2854
  ret i8* %10, !dbg !2855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2856 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %1, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 %2, metadata !2862, metadata !DIExpression()), !dbg !2864
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2865
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2865
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2863, metadata !DIExpression()), !dbg !2866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2867, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1699, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %2, metadata !1700, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 1, metadata !1701, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %2, metadata !1702, metadata !DIExpression()), !dbg !2869
  %6 = lshr i8 %2, 5, !dbg !2871
  %7 = zext i8 %6 to i64, !dbg !2871
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2872
  call void @llvm.dbg.value(metadata i32* %8, metadata !1703, metadata !DIExpression()), !dbg !2869
  %9 = and i8 %2, 31, !dbg !2873
  %10 = zext i8 %9 to i32, !dbg !2873
  call void @llvm.dbg.value(metadata i32 %10, metadata !1705, metadata !DIExpression()), !dbg !2869
  %11 = load i32, i32* %8, align 4, !dbg !2874, !tbaa !1337
  %12 = lshr i32 %11, %10, !dbg !2875
  %13 = and i32 %12, 1, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %13, metadata !1706, metadata !DIExpression()), !dbg !2869
  %14 = xor i32 %13, 1, !dbg !2877
  %15 = shl i32 %14, %10, !dbg !2878
  %16 = xor i32 %15, %11, !dbg !2879
  store i32 %16, i32* %8, align 4, !dbg !2879, !tbaa !1337
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2880
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2881
  ret i8* %17, !dbg !2882
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2883 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2863, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 %1, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()) #19, !dbg !2892
  call void @llvm.dbg.value(metadata i64 -1, metadata !2861, metadata !DIExpression()) #19, !dbg !2892
  call void @llvm.dbg.value(metadata i8 %1, metadata !2862, metadata !DIExpression()) #19, !dbg !2892
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2893
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2893
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2894, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1699, metadata !DIExpression()) #19, !dbg !2895
  call void @llvm.dbg.value(metadata i8 %1, metadata !1700, metadata !DIExpression()) #19, !dbg !2895
  call void @llvm.dbg.value(metadata i32 1, metadata !1701, metadata !DIExpression()) #19, !dbg !2895
  call void @llvm.dbg.value(metadata i8 %1, metadata !1702, metadata !DIExpression()) #19, !dbg !2895
  %5 = lshr i8 %1, 5, !dbg !2897
  %6 = zext i8 %5 to i64, !dbg !2897
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2898
  call void @llvm.dbg.value(metadata i32* %7, metadata !1703, metadata !DIExpression()) #19, !dbg !2895
  %8 = and i8 %1, 31, !dbg !2899
  %9 = zext i8 %8 to i32, !dbg !2899
  call void @llvm.dbg.value(metadata i32 %9, metadata !1705, metadata !DIExpression()) #19, !dbg !2895
  %10 = load i32, i32* %7, align 4, !dbg !2900, !tbaa !1337
  %11 = lshr i32 %10, %9, !dbg !2901
  %12 = and i32 %11, 1, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %12, metadata !1706, metadata !DIExpression()) #19, !dbg !2895
  %13 = xor i32 %12, 1, !dbg !2903
  %14 = shl i32 %13, %9, !dbg !2904
  %15 = xor i32 %14, %10, !dbg !2905
  store i32 %15, i32* %7, align 4, !dbg !2905, !tbaa !1337
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2907
  ret i8* %16, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2909 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2863, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %0, metadata !2911, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()) #19, !dbg !2916
  call void @llvm.dbg.value(metadata i8 58, metadata !2888, metadata !DIExpression()) #19, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()) #19, !dbg !2917
  call void @llvm.dbg.value(metadata i64 -1, metadata !2861, metadata !DIExpression()) #19, !dbg !2917
  call void @llvm.dbg.value(metadata i8 58, metadata !2862, metadata !DIExpression()) #19, !dbg !2917
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2918
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2918
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2919, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1699, metadata !DIExpression()) #19, !dbg !2920
  call void @llvm.dbg.value(metadata i8 58, metadata !1700, metadata !DIExpression()) #19, !dbg !2920
  call void @llvm.dbg.value(metadata i32 1, metadata !1701, metadata !DIExpression()) #19, !dbg !2920
  call void @llvm.dbg.value(metadata i8 58, metadata !1702, metadata !DIExpression()) #19, !dbg !2920
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2922
  call void @llvm.dbg.value(metadata i32* %4, metadata !1703, metadata !DIExpression()) #19, !dbg !2920
  call void @llvm.dbg.value(metadata i32 26, metadata !1705, metadata !DIExpression()) #19, !dbg !2920
  %5 = load i32, i32* %4, align 4, !dbg !2923, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %5, metadata !1706, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2920
  %6 = or i32 %5, 67108864, !dbg !2924
  store i32 %6, i32* %4, align 4, !dbg !2924, !tbaa !1337
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2926
  ret i8* %7, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2928 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2863, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()) #19, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %1, metadata !2861, metadata !DIExpression()) #19, !dbg !2935
  call void @llvm.dbg.value(metadata i8 58, metadata !2862, metadata !DIExpression()) #19, !dbg !2935
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2936
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2937, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1699, metadata !DIExpression()) #19, !dbg !2938
  call void @llvm.dbg.value(metadata i8 58, metadata !1700, metadata !DIExpression()) #19, !dbg !2938
  call void @llvm.dbg.value(metadata i32 1, metadata !1701, metadata !DIExpression()) #19, !dbg !2938
  call void @llvm.dbg.value(metadata i8 58, metadata !1702, metadata !DIExpression()) #19, !dbg !2938
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2940
  call void @llvm.dbg.value(metadata i32* %5, metadata !1703, metadata !DIExpression()) #19, !dbg !2938
  call void @llvm.dbg.value(metadata i32 26, metadata !1705, metadata !DIExpression()) #19, !dbg !2938
  %6 = load i32, i32* %5, align 4, !dbg !2941, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %6, metadata !1706, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2938
  %7 = or i32 %6, 67108864, !dbg !2942
  store i32 %7, i32* %5, align 4, !dbg !2942, !tbaa !1337
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !2943
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2944
  ret i8* %8, !dbg !2945
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2946 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2765, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2952
  call void @llvm.dbg.value(metadata i32 %0, metadata !2948, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 %1, metadata !2949, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8* %2, metadata !2950, metadata !DIExpression()), !dbg !2954
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2955
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2955
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2951, metadata !DIExpression()), !dbg !2956
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2957
  call void @llvm.dbg.value(metadata i32 %1, metadata !2760, metadata !DIExpression()) #19, !dbg !2958
  call void @llvm.dbg.value(metadata i32 0, metadata !2765, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2958
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2952, !alias.scope !2959
  %8 = icmp eq i32 %1, 10, !dbg !2962
  br i1 %8, label %9, label %10, !dbg !2963

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2964, !noalias !2959
  unreachable, !dbg !2964

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2765, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2958
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2957
  store i32 %1, i32* %11, align 8, !dbg !2957, !tbaa.struct !2868
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2957
  %13 = bitcast i32* %12 to i8*, !dbg !2957
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2957, !tbaa.struct !2868
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2957
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1699, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 58, metadata !1700, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 1, metadata !1701, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 58, metadata !1702, metadata !DIExpression()), !dbg !2965
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2967
  call void @llvm.dbg.value(metadata i32* %14, metadata !1703, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 26, metadata !1705, metadata !DIExpression()), !dbg !2965
  %15 = load i32, i32* %14, align 4, !dbg !2968, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %15, metadata !1706, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2965
  %16 = or i32 %15, 67108864, !dbg !2969
  store i32 %16, i32* %14, align 4, !dbg !2969, !tbaa !1337
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2970
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2971
  ret i8* %17, !dbg !2972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2973 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2981, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 %0, metadata !2977, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %1, metadata !2978, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %2, metadata !2979, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %3, metadata !2980, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i32 %0, metadata !2986, metadata !DIExpression()) #19, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %1, metadata !2987, metadata !DIExpression()) #19, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %2, metadata !2988, metadata !DIExpression()) #19, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %3, metadata !2989, metadata !DIExpression()) #19, !dbg !2994
  call void @llvm.dbg.value(metadata i64 -1, metadata !2990, metadata !DIExpression()) #19, !dbg !2994
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2995
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2995
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2996, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1739, metadata !DIExpression()) #19, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !1740, metadata !DIExpression()) #19, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %2, metadata !1741, metadata !DIExpression()) #19, !dbg !2997
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1739, metadata !DIExpression()) #19, !dbg !2997
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2999
  store i32 10, i32* %7, align 8, !dbg !3000, !tbaa !1681
  %8 = icmp ne i8* %1, null, !dbg !3001
  %9 = icmp ne i8* %2, null, !dbg !3002
  %10 = and i1 %8, %9, !dbg !3003
  br i1 %10, label %12, label %11, !dbg !3003

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3004
  unreachable, !dbg !3004

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3005
  store i8* %1, i8** %13, align 8, !dbg !3006, !tbaa !1755
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3007
  store i8* %2, i8** %14, align 8, !dbg !3008, !tbaa !1758
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !3009
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3010
  ret i8* %15, !dbg !3011
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2982 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2986, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %1, metadata !2987, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %2, metadata !2988, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %3, metadata !2989, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %4, metadata !2990, metadata !DIExpression()), !dbg !3012
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3013
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3013
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2981, metadata !DIExpression()), !dbg !3014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3015, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1739, metadata !DIExpression()) #19, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !1740, metadata !DIExpression()) #19, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %2, metadata !1741, metadata !DIExpression()) #19, !dbg !3016
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1739, metadata !DIExpression()) #19, !dbg !3016
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3018
  store i32 10, i32* %8, align 8, !dbg !3019, !tbaa !1681
  %9 = icmp ne i8* %1, null, !dbg !3020
  %10 = icmp ne i8* %2, null, !dbg !3021
  %11 = and i1 %9, %10, !dbg !3022
  br i1 %11, label %13, label %12, !dbg !3022

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3023
  unreachable, !dbg !3023

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3024
  store i8* %1, i8** %14, align 8, !dbg !3025, !tbaa !1755
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3026
  store i8* %2, i8** %15, align 8, !dbg !3027, !tbaa !1758
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3028
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3029
  ret i8* %16, !dbg !3030
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3031 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2981, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8* %1, metadata !3036, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8* %2, metadata !3037, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i32 0, metadata !2977, metadata !DIExpression()) #19, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()) #19, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %1, metadata !2979, metadata !DIExpression()) #19, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()) #19, !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !2986, metadata !DIExpression()) #19, !dbg !3043
  call void @llvm.dbg.value(metadata i8* %0, metadata !2987, metadata !DIExpression()) #19, !dbg !3043
  call void @llvm.dbg.value(metadata i8* %1, metadata !2988, metadata !DIExpression()) #19, !dbg !3043
  call void @llvm.dbg.value(metadata i8* %2, metadata !2989, metadata !DIExpression()) #19, !dbg !3043
  call void @llvm.dbg.value(metadata i64 -1, metadata !2990, metadata !DIExpression()) #19, !dbg !3043
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3044
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3045, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1739, metadata !DIExpression()) #19, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %0, metadata !1740, metadata !DIExpression()) #19, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %1, metadata !1741, metadata !DIExpression()) #19, !dbg !3046
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1739, metadata !DIExpression()) #19, !dbg !3046
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3048
  store i32 10, i32* %6, align 8, !dbg !3049, !tbaa !1681
  %7 = icmp ne i8* %0, null, !dbg !3050
  %8 = icmp ne i8* %1, null, !dbg !3051
  %9 = and i1 %7, %8, !dbg !3052
  br i1 %9, label %11, label %10, !dbg !3052

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3053
  unreachable, !dbg !3053

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3054
  store i8* %0, i8** %12, align 8, !dbg !3055, !tbaa !1755
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3056
  store i8* %1, i8** %13, align 8, !dbg !3057, !tbaa !1758
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !3058
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3059
  ret i8* %14, !dbg !3060
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3061 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2981, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i8* %0, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %1, metadata !3066, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %2, metadata !3067, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %3, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 0, metadata !2986, metadata !DIExpression()) #19, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %0, metadata !2987, metadata !DIExpression()) #19, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %1, metadata !2988, metadata !DIExpression()) #19, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %2, metadata !2989, metadata !DIExpression()) #19, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %3, metadata !2990, metadata !DIExpression()) #19, !dbg !3072
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3073
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3074, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1739, metadata !DIExpression()) #19, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %0, metadata !1740, metadata !DIExpression()) #19, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %1, metadata !1741, metadata !DIExpression()) #19, !dbg !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1739, metadata !DIExpression()) #19, !dbg !3075
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3077
  store i32 10, i32* %7, align 8, !dbg !3078, !tbaa !1681
  %8 = icmp ne i8* %0, null, !dbg !3079
  %9 = icmp ne i8* %1, null, !dbg !3080
  %10 = and i1 %8, %9, !dbg !3081
  br i1 %10, label %12, label %11, !dbg !3081

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3082
  unreachable, !dbg !3082

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3083
  store i8* %0, i8** %13, align 8, !dbg !3084, !tbaa !1755
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3085
  store i8* %1, i8** %14, align 8, !dbg !3086, !tbaa !1758
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !3087
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3088
  ret i8* %15, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3090 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3094, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i8* %1, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i64 %2, metadata !3096, metadata !DIExpression()), !dbg !3097
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3098
  ret i8* %4, !dbg !3099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3104, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %1, metadata !3105, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 0, metadata !3094, metadata !DIExpression()) #19, !dbg !3107
  call void @llvm.dbg.value(metadata i8* %0, metadata !3095, metadata !DIExpression()) #19, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %1, metadata !3096, metadata !DIExpression()) #19, !dbg !3107
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3109
  ret i8* %3, !dbg !3110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3111 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3113, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i8* %1, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 %0, metadata !3094, metadata !DIExpression()) #19, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %1, metadata !3095, metadata !DIExpression()) #19, !dbg !3116
  call void @llvm.dbg.value(metadata i64 -1, metadata !3096, metadata !DIExpression()) #19, !dbg !3116
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3118
  ret i8* %3, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3120 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i32 0, metadata !3113, metadata !DIExpression()) #19, !dbg !3124
  call void @llvm.dbg.value(metadata i8* %0, metadata !3114, metadata !DIExpression()) #19, !dbg !3124
  call void @llvm.dbg.value(metadata i32 0, metadata !3094, metadata !DIExpression()) #19, !dbg !3126
  call void @llvm.dbg.value(metadata i8* %0, metadata !3095, metadata !DIExpression()) #19, !dbg !3126
  call void @llvm.dbg.value(metadata i64 -1, metadata !3096, metadata !DIExpression()) #19, !dbg !3126
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3128
  ret i8* %2, !dbg !3129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3130 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3138, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %1, metadata !3139, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %2, metadata !3140, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %3, metadata !3141, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8** %4, metadata !3142, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %5, metadata !3143, metadata !DIExpression()), !dbg !3144
  %7 = icmp eq i8* %1, null, !dbg !3145
  br i1 %7, label %10, label %8, !dbg !3147

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !3148
  br label %12, !dbg !3148

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.98, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !3149
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.99, i64 0, i64 0), i32 5) #19, !dbg !3150
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !3150
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.100, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3151
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.101, i64 0, i64 0), i32 5) #19, !dbg !3152
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.102, i64 0, i64 0)) #19, !dbg !3152
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.100, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3153
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
  ], !dbg !3154

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.103, i64 0, i64 0), i32 5) #19, !dbg !3155
  %21 = load i8*, i8** %4, align 8, !dbg !3155, !tbaa !1131
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !3155
  br label %147, !dbg !3157

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.104, i64 0, i64 0), i32 5) #19, !dbg !3158
  %25 = load i8*, i8** %4, align 8, !dbg !3158, !tbaa !1131
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3158
  %27 = load i8*, i8** %26, align 8, !dbg !3158, !tbaa !1131
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !3158
  br label %147, !dbg !3159

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.105, i64 0, i64 0), i32 5) #19, !dbg !3160
  %31 = load i8*, i8** %4, align 8, !dbg !3160, !tbaa !1131
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3160
  %33 = load i8*, i8** %32, align 8, !dbg !3160, !tbaa !1131
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3160
  %35 = load i8*, i8** %34, align 8, !dbg !3160, !tbaa !1131
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !3160
  br label %147, !dbg !3161

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.106, i64 0, i64 0), i32 5) #19, !dbg !3162
  %39 = load i8*, i8** %4, align 8, !dbg !3162, !tbaa !1131
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3162
  %41 = load i8*, i8** %40, align 8, !dbg !3162, !tbaa !1131
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3162
  %43 = load i8*, i8** %42, align 8, !dbg !3162, !tbaa !1131
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3162
  %45 = load i8*, i8** %44, align 8, !dbg !3162, !tbaa !1131
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !3162
  br label %147, !dbg !3163

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.107, i64 0, i64 0), i32 5) #19, !dbg !3164
  %49 = load i8*, i8** %4, align 8, !dbg !3164, !tbaa !1131
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3164
  %51 = load i8*, i8** %50, align 8, !dbg !3164, !tbaa !1131
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3164
  %53 = load i8*, i8** %52, align 8, !dbg !3164, !tbaa !1131
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3164
  %55 = load i8*, i8** %54, align 8, !dbg !3164, !tbaa !1131
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3164
  %57 = load i8*, i8** %56, align 8, !dbg !3164, !tbaa !1131
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !3164
  br label %147, !dbg !3165

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.108, i64 0, i64 0), i32 5) #19, !dbg !3166
  %61 = load i8*, i8** %4, align 8, !dbg !3166, !tbaa !1131
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3166
  %63 = load i8*, i8** %62, align 8, !dbg !3166, !tbaa !1131
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3166
  %65 = load i8*, i8** %64, align 8, !dbg !3166, !tbaa !1131
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3166
  %67 = load i8*, i8** %66, align 8, !dbg !3166, !tbaa !1131
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3166
  %69 = load i8*, i8** %68, align 8, !dbg !3166, !tbaa !1131
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3166
  %71 = load i8*, i8** %70, align 8, !dbg !3166, !tbaa !1131
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !3166
  br label %147, !dbg !3167

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.109, i64 0, i64 0), i32 5) #19, !dbg !3168
  %75 = load i8*, i8** %4, align 8, !dbg !3168, !tbaa !1131
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3168
  %77 = load i8*, i8** %76, align 8, !dbg !3168, !tbaa !1131
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3168
  %79 = load i8*, i8** %78, align 8, !dbg !3168, !tbaa !1131
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3168
  %81 = load i8*, i8** %80, align 8, !dbg !3168, !tbaa !1131
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3168
  %83 = load i8*, i8** %82, align 8, !dbg !3168, !tbaa !1131
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3168
  %85 = load i8*, i8** %84, align 8, !dbg !3168, !tbaa !1131
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3168
  %87 = load i8*, i8** %86, align 8, !dbg !3168, !tbaa !1131
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !3168
  br label %147, !dbg !3169

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.110, i64 0, i64 0), i32 5) #19, !dbg !3170
  %91 = load i8*, i8** %4, align 8, !dbg !3170, !tbaa !1131
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3170
  %93 = load i8*, i8** %92, align 8, !dbg !3170, !tbaa !1131
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3170
  %95 = load i8*, i8** %94, align 8, !dbg !3170, !tbaa !1131
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3170
  %97 = load i8*, i8** %96, align 8, !dbg !3170, !tbaa !1131
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3170
  %99 = load i8*, i8** %98, align 8, !dbg !3170, !tbaa !1131
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3170
  %101 = load i8*, i8** %100, align 8, !dbg !3170, !tbaa !1131
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3170
  %103 = load i8*, i8** %102, align 8, !dbg !3170, !tbaa !1131
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3170
  %105 = load i8*, i8** %104, align 8, !dbg !3170, !tbaa !1131
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !3170
  br label %147, !dbg !3171

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.111, i64 0, i64 0), i32 5) #19, !dbg !3172
  %109 = load i8*, i8** %4, align 8, !dbg !3172, !tbaa !1131
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3172
  %111 = load i8*, i8** %110, align 8, !dbg !3172, !tbaa !1131
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3172
  %113 = load i8*, i8** %112, align 8, !dbg !3172, !tbaa !1131
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3172
  %115 = load i8*, i8** %114, align 8, !dbg !3172, !tbaa !1131
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3172
  %117 = load i8*, i8** %116, align 8, !dbg !3172, !tbaa !1131
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3172
  %119 = load i8*, i8** %118, align 8, !dbg !3172, !tbaa !1131
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3172
  %121 = load i8*, i8** %120, align 8, !dbg !3172, !tbaa !1131
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3172
  %123 = load i8*, i8** %122, align 8, !dbg !3172, !tbaa !1131
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3172
  %125 = load i8*, i8** %124, align 8, !dbg !3172, !tbaa !1131
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !3172
  br label %147, !dbg !3173

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.112, i64 0, i64 0), i32 5) #19, !dbg !3174
  %129 = load i8*, i8** %4, align 8, !dbg !3174, !tbaa !1131
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3174
  %131 = load i8*, i8** %130, align 8, !dbg !3174, !tbaa !1131
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3174
  %133 = load i8*, i8** %132, align 8, !dbg !3174, !tbaa !1131
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3174
  %135 = load i8*, i8** %134, align 8, !dbg !3174, !tbaa !1131
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3174
  %137 = load i8*, i8** %136, align 8, !dbg !3174, !tbaa !1131
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3174
  %139 = load i8*, i8** %138, align 8, !dbg !3174, !tbaa !1131
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3174
  %141 = load i8*, i8** %140, align 8, !dbg !3174, !tbaa !1131
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3174
  %143 = load i8*, i8** %142, align 8, !dbg !3174, !tbaa !1131
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3174
  %145 = load i8*, i8** %144, align 8, !dbg !3174, !tbaa !1131
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !3174
  br label %147, !dbg !3175

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3177 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3181, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8* %1, metadata !3182, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8* %2, metadata !3183, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8* %3, metadata !3184, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8** %4, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 0, metadata !3186, metadata !DIExpression()), !dbg !3187
  br label %6, !dbg !3188

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3190
  call void @llvm.dbg.value(metadata i64 %7, metadata !3186, metadata !DIExpression()), !dbg !3187
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3191
  %9 = load i8*, i8** %8, align 8, !dbg !3191, !tbaa !1131
  %10 = icmp eq i8* %9, null, !dbg !3193
  %11 = add i64 %7, 1, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %11, metadata !3186, metadata !DIExpression()), !dbg !3187
  br i1 %10, label %12, label %6, !dbg !3193, !llvm.loop !3195

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %7, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %7, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %7, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %7, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %7, metadata !3186, metadata !DIExpression()), !dbg !3187
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3197
  ret void, !dbg !3198
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3199 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3210, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %1, metadata !3211, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %2, metadata !3212, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %3, metadata !3213, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3214, metadata !DIExpression()), !dbg !3218
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3219
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !3219
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3216, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 0, metadata !3215, metadata !DIExpression()), !dbg !3218
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3221
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3221
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3221
  %11 = load i32, i32* %8, align 8, !dbg !3224
  %12 = icmp ult i32 %11, 41, !dbg !3224
  br i1 %12, label %13, label %18, !dbg !3224

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3224
  %15 = zext i32 %11 to i64, !dbg !3224
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3224
  %17 = add nuw nsw i32 %11, 8, !dbg !3224
  store i32 %17, i32* %8, align 8, !dbg !3224
  br label %21, !dbg !3224

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3224
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3224
  store i8* %20, i8** %9, align 8, !dbg !3224
  br label %21, !dbg !3224

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3224
  %25 = load i8*, i8** %24, align 8, !dbg !3224
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3225
  store i8* %25, i8** %26, align 16, !dbg !3226, !tbaa !1131
  %27 = icmp eq i8* %25, null, !dbg !3227
  br i1 %27, label %30, label %28, !dbg !3228

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3215, metadata !DIExpression()), !dbg !3218
  %29 = icmp ult i32 %22, 41, !dbg !3224
  br i1 %29, label %35, label %32, !dbg !3224

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3229
  call void @llvm.dbg.value(metadata i64 %31, metadata !3215, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %31, metadata !3215, metadata !DIExpression()), !dbg !3218
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3230
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !3231
  ret void, !dbg !3231

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3224
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3224
  store i8* %34, i8** %9, align 8, !dbg !3224
  br label %40, !dbg !3224

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3224
  %37 = zext i32 %22 to i64, !dbg !3224
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3224
  %39 = add nuw nsw i32 %22, 8, !dbg !3224
  store i32 %39, i32* %8, align 8, !dbg !3224
  br label %40, !dbg !3224

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3224
  %44 = load i8*, i8** %43, align 8, !dbg !3224
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3225
  store i8* %44, i8** %45, align 8, !dbg !3226, !tbaa !1131
  %46 = icmp eq i8* %44, null, !dbg !3227
  br i1 %46, label %30, label %47, !dbg !3228

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3215, metadata !DIExpression()), !dbg !3218
  %48 = icmp ult i32 %41, 41, !dbg !3224
  br i1 %48, label %52, label %49, !dbg !3224

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3224
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3224
  store i8* %51, i8** %9, align 8, !dbg !3224
  br label %57, !dbg !3224

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3224
  %54 = zext i32 %41 to i64, !dbg !3224
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3224
  %56 = add nuw nsw i32 %41, 8, !dbg !3224
  store i32 %56, i32* %8, align 8, !dbg !3224
  br label %57, !dbg !3224

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3224
  %61 = load i8*, i8** %60, align 8, !dbg !3224
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3225
  store i8* %61, i8** %62, align 16, !dbg !3226, !tbaa !1131
  %63 = icmp eq i8* %61, null, !dbg !3227
  br i1 %63, label %30, label %64, !dbg !3228

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3215, metadata !DIExpression()), !dbg !3218
  %65 = icmp ult i32 %58, 41, !dbg !3224
  br i1 %65, label %69, label %66, !dbg !3224

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3224
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3224
  store i8* %68, i8** %9, align 8, !dbg !3224
  br label %74, !dbg !3224

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3224
  %71 = zext i32 %58 to i64, !dbg !3224
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3224
  %73 = add nuw nsw i32 %58, 8, !dbg !3224
  store i32 %73, i32* %8, align 8, !dbg !3224
  br label %74, !dbg !3224

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3224
  %78 = load i8*, i8** %77, align 8, !dbg !3224
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3225
  store i8* %78, i8** %79, align 8, !dbg !3226, !tbaa !1131
  %80 = icmp eq i8* %78, null, !dbg !3227
  br i1 %80, label %30, label %81, !dbg !3228

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3215, metadata !DIExpression()), !dbg !3218
  %82 = icmp ult i32 %75, 41, !dbg !3224
  br i1 %82, label %86, label %83, !dbg !3224

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3224
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3224
  store i8* %85, i8** %9, align 8, !dbg !3224
  br label %91, !dbg !3224

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3224
  %88 = zext i32 %75 to i64, !dbg !3224
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3224
  %90 = add nuw nsw i32 %75, 8, !dbg !3224
  store i32 %90, i32* %8, align 8, !dbg !3224
  br label %91, !dbg !3224

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3224
  %95 = load i8*, i8** %94, align 8, !dbg !3224
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3225
  store i8* %95, i8** %96, align 16, !dbg !3226, !tbaa !1131
  %97 = icmp eq i8* %95, null, !dbg !3227
  br i1 %97, label %30, label %98, !dbg !3228

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3215, metadata !DIExpression()), !dbg !3218
  %99 = icmp ult i32 %92, 41, !dbg !3224
  br i1 %99, label %103, label %100, !dbg !3224

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3224
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3224
  store i8* %102, i8** %9, align 8, !dbg !3224
  br label %108, !dbg !3224

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3224
  %105 = zext i32 %92 to i64, !dbg !3224
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3224
  %107 = add nuw nsw i32 %92, 8, !dbg !3224
  store i32 %107, i32* %8, align 8, !dbg !3224
  br label %108, !dbg !3224

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3224
  %111 = load i8*, i8** %110, align 8, !dbg !3224
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3225
  store i8* %111, i8** %112, align 8, !dbg !3226, !tbaa !1131
  %113 = icmp eq i8* %111, null, !dbg !3227
  br i1 %113, label %30, label %114, !dbg !3228

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3215, metadata !DIExpression()), !dbg !3218
  %115 = load i8*, i8** %9, align 8, !dbg !3224
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3224
  store i8* %116, i8** %9, align 8, !dbg !3224
  %117 = bitcast i8* %115 to i8**, !dbg !3224
  %118 = load i8*, i8** %117, align 8, !dbg !3224
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3225
  store i8* %118, i8** %119, align 16, !dbg !3226, !tbaa !1131
  %120 = icmp eq i8* %118, null, !dbg !3227
  br i1 %120, label %30, label %121, !dbg !3228

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3215, metadata !DIExpression()), !dbg !3218
  %122 = load i8*, i8** %9, align 8, !dbg !3224
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3224
  store i8* %123, i8** %9, align 8, !dbg !3224
  %124 = bitcast i8* %122 to i8**, !dbg !3224
  %125 = load i8*, i8** %124, align 8, !dbg !3224
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3225
  store i8* %125, i8** %126, align 8, !dbg !3226, !tbaa !1131
  %127 = icmp eq i8* %125, null, !dbg !3227
  br i1 %127, label %30, label %128, !dbg !3228

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3215, metadata !DIExpression()), !dbg !3218
  %129 = load i8*, i8** %9, align 8, !dbg !3224
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3224
  store i8* %130, i8** %9, align 8, !dbg !3224
  %131 = bitcast i8* %129 to i8**, !dbg !3224
  %132 = load i8*, i8** %131, align 8, !dbg !3224
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3225
  store i8* %132, i8** %133, align 16, !dbg !3226, !tbaa !1131
  %134 = icmp eq i8* %132, null, !dbg !3227
  br i1 %134, label %30, label %135, !dbg !3228

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3215, metadata !DIExpression()), !dbg !3218
  %136 = load i8*, i8** %9, align 8, !dbg !3224
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3224
  store i8* %137, i8** %9, align 8, !dbg !3224
  %138 = bitcast i8* %136 to i8**, !dbg !3224
  %139 = load i8*, i8** %138, align 8, !dbg !3224
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3225
  store i8* %139, i8** %140, align 8, !dbg !3226, !tbaa !1131
  %141 = icmp eq i8* %139, null, !dbg !3227
  %142 = select i1 %141, i64 9, i64 10, !dbg !3228
  br label %30, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3232 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3236, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %1, metadata !3237, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %2, metadata !3238, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %3, metadata !3239, metadata !DIExpression()), !dbg !3246
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3247
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3247
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3240, metadata !DIExpression()), !dbg !3248
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3249
  call void @llvm.va_start(i8* nonnull %6), !dbg !3249
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3250
  call void @llvm.va_end(i8* nonnull %6), !dbg !3251
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3252
  ret void, !dbg !3252
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3253 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3254, !tbaa !1131
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.100, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3254
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.115, i64 0, i64 0), i32 5) #19, !dbg !3255
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.116, i64 0, i64 0)) #19, !dbg !3255
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.117, i64 0, i64 0), i32 5) #19, !dbg !3256
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.118, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.119, i64 0, i64 0)) #19, !dbg !3256
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.120, i64 0, i64 0), i32 5) #19, !dbg !3257
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.121, i64 0, i64 0)) #19, !dbg !3257
  ret void, !dbg !3258
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3259 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3263, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3264, metadata !DIExpression()), !dbg !3265
  %3 = udiv i64 9223372036854775807, %1, !dbg !3266
  %4 = icmp ult i64 %3, %0, !dbg !3266
  br i1 %4, label %5, label %6, !dbg !3268

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3269
  unreachable, !dbg !3269

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %7, metadata !3271, metadata !DIExpression()) #19, !dbg !3277
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %8, metadata !3276, metadata !DIExpression()) #19, !dbg !3277
  %9 = icmp eq i8* %8, null, !dbg !3280
  %10 = icmp ne i64 %7, 0, !dbg !3282
  %11 = and i1 %10, %9, !dbg !3283
  br i1 %11, label %12, label %13, !dbg !3283

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3284
  unreachable, !dbg !3284

13:                                               ; preds = %6
  ret i8* %8, !dbg !3285
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3272 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3271, metadata !DIExpression()), !dbg !3286
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %2, metadata !3276, metadata !DIExpression()), !dbg !3286
  %3 = icmp eq i8* %2, null, !dbg !3288
  %4 = icmp ne i64 %0, 0, !dbg !3289
  %5 = and i1 %4, %3, !dbg !3290
  br i1 %5, label %6, label %7, !dbg !3290

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3291
  unreachable, !dbg !3291

7:                                                ; preds = %1
  ret i8* %2, !dbg !3292
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !3293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3297, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %1, metadata !3298, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %2, metadata !3299, metadata !DIExpression()), !dbg !3300
  %4 = udiv i64 9223372036854775807, %2, !dbg !3301
  %5 = icmp ult i64 %4, %1, !dbg !3301
  br i1 %5, label %6, label %7, !dbg !3303

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3304
  unreachable, !dbg !3304

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()) #19, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %8, metadata !3311, metadata !DIExpression()) #19, !dbg !3312
  %9 = icmp eq i64 %8, 0, !dbg !3314
  %10 = icmp ne i8* %0, null, !dbg !3316
  %11 = and i1 %10, %9, !dbg !3317
  br i1 %11, label %12, label %13, !dbg !3317

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !3318
  br label %19, !dbg !3320

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !3321
  call void @llvm.dbg.value(metadata i8* %14, metadata !3306, metadata !DIExpression()) #19, !dbg !3312
  %15 = icmp eq i8* %14, null, !dbg !3322
  %16 = icmp ne i64 %8, 0, !dbg !3324
  %17 = and i1 %16, %15, !dbg !3325
  br i1 %17, label %18, label %19, !dbg !3325

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3326
  unreachable, !dbg !3326

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3312
  ret i8* %20, !dbg !3327
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3311, metadata !DIExpression()), !dbg !3328
  %3 = icmp eq i64 %1, 0, !dbg !3329
  %4 = icmp ne i8* %0, null, !dbg !3330
  %5 = and i1 %4, %3, !dbg !3331
  br i1 %5, label %6, label %7, !dbg !3331

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !3332
  br label %13, !dbg !3333

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %8, metadata !3306, metadata !DIExpression()), !dbg !3328
  %9 = icmp eq i8* %8, null, !dbg !3335
  %10 = icmp ne i64 %1, 0, !dbg !3336
  %11 = and i1 %10, %9, !dbg !3337
  br i1 %11, label %12, label %13, !dbg !3337

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3338
  unreachable, !dbg !3338

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3328
  ret i8* %14, !dbg !3339
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !468 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !473, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64* %1, metadata !474, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %2, metadata !475, metadata !DIExpression()), !dbg !3340
  %4 = load i64, i64* %1, align 8, !dbg !3341, !tbaa !2583
  call void @llvm.dbg.value(metadata i64 %4, metadata !476, metadata !DIExpression()), !dbg !3340
  %5 = icmp eq i8* %0, null, !dbg !3342
  br i1 %5, label %6, label %20, !dbg !3344

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3345
  br i1 %7, label %8, label %13, !dbg !3348

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %9, metadata !476, metadata !DIExpression()), !dbg !3340
  %10 = icmp ugt i64 %2, 128, !dbg !3351
  %11 = zext i1 %10 to i64, !dbg !3351
  %12 = add nuw nsw i64 %9, %11, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %12, metadata !476, metadata !DIExpression()), !dbg !3340
  br label %13, !dbg !3353

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3340
  call void @llvm.dbg.value(metadata i64 %14, metadata !476, metadata !DIExpression()), !dbg !3340
  %15 = udiv i64 9223372036854775807, %2, !dbg !3354
  %16 = icmp ult i64 %15, %14, !dbg !3354
  br i1 %16, label %19, label %17, !dbg !3356

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !476, metadata !DIExpression()), !dbg !3340
  store i64 %14, i64* %1, align 8, !dbg !3357, !tbaa !2583
  %18 = mul i64 %14, %2, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()) #19, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %28, metadata !3311, metadata !DIExpression()) #19, !dbg !3359
  br label %31, !dbg !3361

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3362
  unreachable, !dbg !3362

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3363
  %22 = icmp ugt i64 %21, %4, !dbg !3366
  br i1 %22, label %24, label %23, !dbg !3367

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3368
  unreachable, !dbg !3368

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3369
  %26 = add nuw i64 %4, 1, !dbg !3370
  %27 = add i64 %26, %25, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %27, metadata !476, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %27, metadata !476, metadata !DIExpression()), !dbg !3340
  store i64 %27, i64* %1, align 8, !dbg !3357, !tbaa !2583
  %28 = mul i64 %27, %2, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()) #19, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %28, metadata !3311, metadata !DIExpression()) #19, !dbg !3359
  %29 = icmp eq i64 %28, 0, !dbg !3372
  br i1 %29, label %30, label %31, !dbg !3361

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !3373
  br label %38, !dbg !3374

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %33, metadata !3306, metadata !DIExpression()) #19, !dbg !3359
  %34 = icmp eq i8* %33, null, !dbg !3376
  %35 = icmp ne i64 %32, 0, !dbg !3377
  %36 = and i1 %35, %34, !dbg !3378
  br i1 %36, label %37, label %38, !dbg !3378

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3379
  unreachable, !dbg !3379

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3359
  ret i8* %39, !dbg !3380
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !3381 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3383, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %0, metadata !3271, metadata !DIExpression()) #19, !dbg !3385
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %2, metadata !3276, metadata !DIExpression()) #19, !dbg !3385
  %3 = icmp eq i8* %2, null, !dbg !3388
  %4 = icmp ne i64 %0, 0, !dbg !3389
  %5 = and i1 %4, %3, !dbg !3390
  br i1 %5, label %6, label %7, !dbg !3390

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3391
  unreachable, !dbg !3391

7:                                                ; preds = %1
  ret i8* %2, !dbg !3392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3393 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3397, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64* %1, metadata !3398, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8* %0, metadata !473, metadata !DIExpression()) #19, !dbg !3400
  call void @llvm.dbg.value(metadata i64* %1, metadata !474, metadata !DIExpression()) #19, !dbg !3400
  call void @llvm.dbg.value(metadata i64 1, metadata !475, metadata !DIExpression()) #19, !dbg !3400
  %3 = load i64, i64* %1, align 8, !dbg !3402, !tbaa !2583
  call void @llvm.dbg.value(metadata i64 %3, metadata !476, metadata !DIExpression()) #19, !dbg !3400
  %4 = icmp eq i8* %0, null, !dbg !3403
  br i1 %4, label %5, label %12, !dbg !3404

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3405
  br i1 %6, label %9, label %7, !dbg !3406

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !476, metadata !DIExpression()) #19, !dbg !3400
  %8 = icmp slt i64 %3, 0, !dbg !3407
  br i1 %8, label %11, label %9, !dbg !3408

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !476, metadata !DIExpression()) #19, !dbg !3400
  store i64 %10, i64* %1, align 8, !dbg !3409, !tbaa !2583
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()) #19, !dbg !3410
  call void @llvm.dbg.value(metadata i64 %18, metadata !3311, metadata !DIExpression()) #19, !dbg !3410
  br label %21, !dbg !3412

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3413
  unreachable, !dbg !3413

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3414
  br i1 %13, label %15, label %14, !dbg !3415

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3416
  unreachable, !dbg !3416

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3417
  %17 = add nuw nsw i64 %3, 1, !dbg !3418
  %18 = add nuw nsw i64 %17, %16, !dbg !3419
  call void @llvm.dbg.value(metadata i64 %18, metadata !476, metadata !DIExpression()) #19, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %18, metadata !476, metadata !DIExpression()) #19, !dbg !3400
  store i64 %18, i64* %1, align 8, !dbg !3409, !tbaa !2583
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()) #19, !dbg !3410
  call void @llvm.dbg.value(metadata i64 %18, metadata !3311, metadata !DIExpression()) #19, !dbg !3410
  %19 = icmp eq i64 %18, 0, !dbg !3420
  br i1 %19, label %20, label %21, !dbg !3412

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !3421
  br label %28, !dbg !3422

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !3423
  call void @llvm.dbg.value(metadata i8* %23, metadata !3306, metadata !DIExpression()) #19, !dbg !3410
  %24 = icmp eq i8* %23, null, !dbg !3424
  %25 = icmp ne i64 %22, 0, !dbg !3425
  %26 = and i1 %25, %24, !dbg !3426
  br i1 %26, label %27, label %28, !dbg !3426

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3427
  unreachable, !dbg !3427

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3410
  ret i8* %29, !dbg !3428
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3429 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %0, metadata !3433, metadata !DIExpression()) #19, !dbg !3438
  call void @llvm.dbg.value(metadata i64 1, metadata !3436, metadata !DIExpression()) #19, !dbg !3438
  %2 = icmp slt i64 %0, 0, !dbg !3440
  br i1 %2, label %6, label %3, !dbg !3442

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %4, metadata !3437, metadata !DIExpression()) #19, !dbg !3438
  %5 = icmp eq i8* %4, null, !dbg !3444
  br i1 %5, label %6, label %7, !dbg !3445

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3446
  unreachable, !dbg !3446

7:                                                ; preds = %3
  ret i8* %4, !dbg !3447
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3434 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3433, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3448
  %3 = udiv i64 9223372036854775807, %1, !dbg !3449
  %4 = icmp ult i64 %3, %0, !dbg !3449
  br i1 %4, label %8, label %5, !dbg !3450

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %6, metadata !3437, metadata !DIExpression()), !dbg !3448
  %7 = icmp eq i8* %6, null, !dbg !3452
  br i1 %7, label %8, label %9, !dbg !3453

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3454
  unreachable, !dbg !3454

9:                                                ; preds = %5
  ret i8* %6, !dbg !3455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3456 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()) #19, !dbg !3463
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %3, metadata !3276, metadata !DIExpression()) #19, !dbg !3463
  %4 = icmp eq i8* %3, null, !dbg !3466
  %5 = icmp ne i64 %1, 0, !dbg !3467
  %6 = and i1 %5, %4, !dbg !3468
  br i1 %6, label %7, label %8, !dbg !3468

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3469
  unreachable, !dbg !3469

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3470, metadata !DIExpression()) #19, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %0, metadata !3477, metadata !DIExpression()) #19, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()) #19, !dbg !3479
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !3481
  ret i8* %3, !dbg !3482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3485, metadata !DIExpression()), !dbg !3486
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3487
  %3 = add i64 %2, 1, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()) #19, !dbg !3489
  call void @llvm.dbg.value(metadata i64 %3, metadata !3461, metadata !DIExpression()) #19, !dbg !3489
  call void @llvm.dbg.value(metadata i64 %3, metadata !3271, metadata !DIExpression()) #19, !dbg !3491
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %4, metadata !3276, metadata !DIExpression()) #19, !dbg !3491
  %5 = icmp eq i8* %4, null, !dbg !3494
  %6 = icmp ne i64 %3, 0, !dbg !3495
  %7 = and i1 %6, %5, !dbg !3496
  br i1 %7, label %8, label %9, !dbg !3496

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3497
  unreachable, !dbg !3497

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3470, metadata !DIExpression()) #19, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %0, metadata !3477, metadata !DIExpression()) #19, !dbg !3498
  call void @llvm.dbg.value(metadata i64 %3, metadata !3478, metadata !DIExpression()) #19, !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !3500
  ret i8* %4, !dbg !3501
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3502 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3503, !tbaa !1337
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.132, i64 0, i64 0), i32 5) #19, !dbg !3504
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* %2) #19, !dbg !3505
  tail call void @abort() #23, !dbg !3506
  unreachable, !dbg !3506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoimax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !3507 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3512, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %1, metadata !3513, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %2, metadata !3514, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %3, metadata !3515, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %4, metadata !3516, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %5, metadata !3517, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %6, metadata !3518, metadata !DIExpression()), !dbg !3522
  %9 = bitcast i64* %8 to i8*, !dbg !3523
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #19, !dbg !3523
  call void @llvm.dbg.value(metadata i64* %8, metadata !3521, metadata !DIExpression(DW_OP_deref)), !dbg !3522
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #19, !dbg !3524
  call void @llvm.dbg.value(metadata i32 %10, metadata !3519, metadata !DIExpression()), !dbg !3522
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %27
    i32 3, label %29
  ], !dbg !3525

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #24, !dbg !3526
  br label %31, !dbg !3525

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3529, !tbaa !2583
  call void @llvm.dbg.value(metadata i64 %14, metadata !3521, metadata !DIExpression()), !dbg !3522
  %15 = icmp slt i64 %14, %2, !dbg !3533
  %16 = icmp sgt i64 %14, %3, !dbg !3534
  %17 = or i1 %15, %16, !dbg !3535
  br i1 %17, label %18, label %40, !dbg !3535

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3519, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %14, metadata !3521, metadata !DIExpression()), !dbg !3522
  %19 = icmp sgt i64 %14, 1073741823, !dbg !3536
  br i1 %19, label %20, label %22, !dbg !3539

20:                                               ; preds = %18
  %21 = tail call i32* @__errno_location() #24, !dbg !3540
  store i32 75, i32* %21, align 4, !dbg !3541, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3519, metadata !DIExpression()), !dbg !3522
  br label %31, !dbg !3542

22:                                               ; preds = %18
  %23 = icmp slt i64 %14, -1073741824, !dbg !3543
  %24 = tail call i32* @__errno_location() #24, !dbg !3545
  br i1 %23, label %25, label %26, !dbg !3546

25:                                               ; preds = %22
  store i32 75, i32* %24, align 4, !dbg !3547, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3519, metadata !DIExpression()), !dbg !3522
  br label %31, !dbg !3542

26:                                               ; preds = %22
  store i32 34, i32* %24, align 4, !dbg !3548, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3519, metadata !DIExpression()), !dbg !3522
  br label %31, !dbg !3542

27:                                               ; preds = %7
  %28 = tail call i32* @__errno_location() #24, !dbg !3549
  store i32 75, i32* %28, align 4, !dbg !3551, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3519, metadata !DIExpression()), !dbg !3522
  br label %31, !dbg !3542

29:                                               ; preds = %7
  %30 = tail call i32* @__errno_location() #24, !dbg !3552
  store i32 0, i32* %30, align 4, !dbg !3554, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3519, metadata !DIExpression()), !dbg !3522
  br label %31, !dbg !3542

31:                                               ; preds = %11, %29, %27, %26, %25, %20
  %32 = phi i32* [ %12, %11 ], [ %30, %29 ], [ %28, %27 ], [ %24, %26 ], [ %24, %25 ], [ %21, %20 ], !dbg !3526
  %33 = icmp eq i32 %6, 0, !dbg !3555
  %34 = select i1 %33, i32 1, i32 %6, !dbg !3555
  %35 = load i32, i32* %32, align 4, !dbg !3526, !tbaa !1337
  %36 = icmp eq i32 %35, 22, !dbg !3556
  %37 = select i1 %36, i32 0, i32 %35, !dbg !3526
  %38 = call i8* @quote(i8* %0) #19, !dbg !3557
  call void (i32, i32, i8*, ...) @error(i32 %34, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i64 0, i64 0), i8* %5, i8* %38) #19, !dbg !3558
  %39 = load i64, i64* %8, align 8, !dbg !3559, !tbaa !2583
  br label %40, !dbg !3560

40:                                               ; preds = %13, %31
  %41 = phi i64 [ %14, %13 ], [ %39, %31 ], !dbg !3559
  call void @llvm.dbg.value(metadata i64 %41, metadata !3521, metadata !DIExpression()), !dbg !3522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #19, !dbg !3561
  ret i64 %41, !dbg !3562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoimax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !3563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3567, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %1, metadata !3568, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %2, metadata !3569, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8* %3, metadata !3570, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8* %4, metadata !3571, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %5, metadata !3572, metadata !DIExpression()), !dbg !3573
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3574
  ret i64 %7, !dbg !3575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoimax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3576 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3582, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8** %1, metadata !3583, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 %2, metadata !3584, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64* %3, metadata !3585, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8* %4, metadata !3586, metadata !DIExpression()), !dbg !3596
  %7 = bitcast i8** %6 to i8*, !dbg !3597
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #19, !dbg !3597
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3596
  %8 = icmp ult i32 %2, 37, !dbg !3598
  br i1 %8, label %10, label %9, !dbg !3598

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.139, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.140, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #23, !dbg !3598
  unreachable, !dbg !3598

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3601
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !3601
  call void @llvm.dbg.value(metadata i8** %12, metadata !3588, metadata !DIExpression()), !dbg !3596
  %13 = tail call i32* @__errno_location() #24, !dbg !3602
  store i32 0, i32* %13, align 4, !dbg !3603, !tbaa !1337
  call void @llvm.dbg.value(metadata i8* %0, metadata !3604, metadata !DIExpression()) #19, !dbg !3614
  call void @llvm.dbg.value(metadata i8** %12, metadata !3612, metadata !DIExpression()) #19, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %2, metadata !3613, metadata !DIExpression()) #19, !dbg !3614
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #19, !dbg !3616
  call void @llvm.dbg.value(metadata i64 %14, metadata !3589, metadata !DIExpression()), !dbg !3596
  %15 = load i8*, i8** %12, align 8, !dbg !3617, !tbaa !1131
  %16 = icmp eq i8* %15, %0, !dbg !3619
  br i1 %16, label %17, label %26, !dbg !3620

17:                                               ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3621
  br i1 %18, label %196, label %19, !dbg !3624

19:                                               ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3625, !tbaa !1286
  %21 = icmp eq i8 %20, 0, !dbg !3625
  br i1 %21, label %196, label %22, !dbg !3626

22:                                               ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3625
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #22, !dbg !3627
  %25 = icmp eq i8* %24, null, !dbg !3627
  br i1 %25, label %196, label %33, !dbg !3628

26:                                               ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3629, !tbaa !1337
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3631

28:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, metadata !3590, metadata !DIExpression()), !dbg !3596
  br label %29, !dbg !3632

29:                                               ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ %27, %26 ], !dbg !3596
  call void @llvm.dbg.value(metadata i32 %30, metadata !3590, metadata !DIExpression()), !dbg !3596
  %31 = icmp eq i8* %4, null, !dbg !3634
  br i1 %31, label %32, label %33, !dbg !3636

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, metadata !3589, metadata !DIExpression()), !dbg !3596
  store i64 %14, i64* %3, align 8, !dbg !3637, !tbaa !2583
  br label %196, !dbg !3639

33:                                               ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3640, !tbaa !1286
  %37 = sext i8 %36 to i32, !dbg !3640
  %38 = icmp eq i8 %36, 0, !dbg !3641
  br i1 %38, label %193, label %39, !dbg !3642

39:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 1024, metadata !3591, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 1, metadata !3594, metadata !DIExpression()), !dbg !3643
  %40 = call i8* @strchr(i8* nonnull %4, i32 %37) #22, !dbg !3644
  %41 = icmp eq i8* %40, null, !dbg !3644
  br i1 %41, label %42, label %44, !dbg !3646

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %14, metadata !3589, metadata !DIExpression()), !dbg !3596
  store i64 %35, i64* %3, align 8, !dbg !3647, !tbaa !2583
  %43 = or i32 %34, 2, !dbg !3649
  br label %196, !dbg !3650

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
  ], !dbg !3651

45:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #22, !dbg !3652
  %47 = icmp eq i8* %46, null, !dbg !3652
  br i1 %47, label %58, label %48, !dbg !3655

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3656
  %50 = load i8, i8* %49, align 1, !dbg !3656, !tbaa !1286
  %51 = sext i8 %50 to i32, !dbg !3656
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3657

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3658
  %54 = load i8, i8* %53, align 1, !dbg !3658, !tbaa !1286
  %55 = icmp eq i8 %54, 66, !dbg !3661
  %56 = select i1 %55, i64 3, i64 1, !dbg !3662
  br label %58, !dbg !3662

57:                                               ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, metadata !3591, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 2, metadata !3594, metadata !DIExpression()), !dbg !3643
  br label %58, !dbg !3663

58:                                               ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3594, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 undef, metadata !3591, metadata !DIExpression()), !dbg !3643
  switch i32 %37, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !3664

61:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 512, metadata !3665, metadata !DIExpression()), !dbg !3671
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3674
  br i1 %62, label %184, label %63, !dbg !3676

63:                                               ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3677
  %65 = shl nsw i64 %35, 9, !dbg !3679
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3680
  %67 = zext i1 %64 to i32, !dbg !3680
  br label %184, !dbg !3680

68:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 1024, metadata !3665, metadata !DIExpression()), !dbg !3681
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3683
  br i1 %69, label %184, label %70, !dbg !3684

70:                                               ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3685
  %72 = shl nsw i64 %35, 10, !dbg !3686
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3687
  %74 = zext i1 %71 to i32, !dbg !3687
  br label %184, !dbg !3687

75:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3688, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 6, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3696
  %76 = sdiv i64 -9223372036854775808, %59, !dbg !3698
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3700
  %77 = icmp slt i64 %35, %76, !dbg !3701
  br i1 %77, label %84, label %78, !dbg !3702

78:                                               ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !3703
  %80 = icmp slt i64 %79, %35, !dbg !3704
  %81 = mul nsw i64 %35, %59, !dbg !3705
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !3706
  %83 = zext i1 %80 to i32, !dbg !3706
  br label %84, !dbg !3706

84:                                               ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ], !dbg !3700
  call void @llvm.dbg.value(metadata i32 %86, metadata !3695, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3696
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3700
  %87 = icmp slt i64 %85, %76, !dbg !3701
  br i1 %87, label %204, label %198, !dbg !3702

88:                                               ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3688, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3707
  %89 = sdiv i64 -9223372036854775808, %59, !dbg !3709
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3711
  %90 = icmp slt i64 %35, %89, !dbg !3712
  br i1 %90, label %97, label %91, !dbg !3713

91:                                               ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !3714
  %93 = icmp slt i64 %92, %35, !dbg !3715
  %94 = mul nsw i64 %35, %59, !dbg !3716
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !3717
  %96 = zext i1 %93 to i32, !dbg !3717
  br label %97, !dbg !3717

97:                                               ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ], !dbg !3711
  call void @llvm.dbg.value(metadata i32 %99, metadata !3695, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3707
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3711
  %100 = icmp slt i64 %98, %89, !dbg !3712
  br i1 %100, label %258, label %252, !dbg !3713

101:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3688, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3718
  %102 = sdiv i64 -9223372036854775808, %59, !dbg !3720
  call void @llvm.dbg.value(metadata i32 undef, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3718
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3722
  %103 = icmp slt i64 %35, %102, !dbg !3723
  br i1 %103, label %184, label %104, !dbg !3724

104:                                              ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !3725
  %106 = icmp slt i64 %105, %35, !dbg !3726
  %107 = mul nsw i64 %35, %59, !dbg !3727
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !3728
  %109 = zext i1 %106 to i32, !dbg !3728
  br label %184, !dbg !3728

110:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3688, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3729
  %111 = sdiv i64 -9223372036854775808, %59, !dbg !3731
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3733
  %112 = icmp slt i64 %35, %111, !dbg !3734
  br i1 %112, label %119, label %113, !dbg !3735

113:                                              ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !3736
  %115 = icmp slt i64 %114, %35, !dbg !3737
  %116 = mul nsw i64 %35, %59, !dbg !3738
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !3739
  %118 = zext i1 %115 to i32, !dbg !3739
  br label %119, !dbg !3739

119:                                              ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ], !dbg !3733
  call void @llvm.dbg.value(metadata i32 %121, metadata !3695, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3729
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3733
  %122 = icmp slt i64 %120, %111, !dbg !3734
  br i1 %122, label %279, label %273, !dbg !3735

123:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3688, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3740
  %124 = sdiv i64 -9223372036854775808, %59, !dbg !3742
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3744
  %125 = icmp slt i64 %35, %124, !dbg !3745
  br i1 %125, label %132, label %126, !dbg !3746

126:                                              ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !3747
  %128 = icmp slt i64 %127, %35, !dbg !3748
  %129 = mul nsw i64 %35, %59, !dbg !3749
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !3750
  %131 = zext i1 %128 to i32, !dbg !3750
  br label %132, !dbg !3750

132:                                              ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ], !dbg !3744
  call void @llvm.dbg.value(metadata i32 %134, metadata !3695, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3740
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3744
  %135 = icmp slt i64 %133, %124, !dbg !3745
  br i1 %135, label %289, label %283, !dbg !3746

136:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3688, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3751
  %137 = sdiv i64 -9223372036854775808, %59, !dbg !3753
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3755
  %138 = icmp slt i64 %35, %137, !dbg !3756
  br i1 %138, label %145, label %139, !dbg !3757

139:                                              ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !3758
  %141 = icmp slt i64 %140, %35, !dbg !3759
  %142 = mul nsw i64 %35, %59, !dbg !3760
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !3761
  %144 = zext i1 %141 to i32, !dbg !3761
  br label %145, !dbg !3761

145:                                              ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ], !dbg !3755
  call void @llvm.dbg.value(metadata i32 %147, metadata !3695, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3751
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3755
  %148 = icmp slt i64 %146, %137, !dbg !3756
  br i1 %148, label %332, label %326, !dbg !3757

149:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i32 2, metadata !3665, metadata !DIExpression()), !dbg !3762
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !3764
  br i1 %150, label %184, label %151, !dbg !3765

151:                                              ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !3766
  %153 = shl nsw i64 %35, 1, !dbg !3767
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !3768
  %155 = zext i1 %152 to i32, !dbg !3768
  br label %184, !dbg !3768

156:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3688, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 8, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3769
  %157 = sdiv i64 -9223372036854775808, %59, !dbg !3771
  call void @llvm.dbg.value(metadata i32 7, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3773
  %158 = icmp slt i64 %35, %157, !dbg !3774
  br i1 %158, label %165, label %159, !dbg !3775

159:                                              ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !3776
  %161 = icmp slt i64 %160, %35, !dbg !3777
  %162 = mul nsw i64 %35, %59, !dbg !3778
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !3779
  %164 = zext i1 %161 to i32, !dbg !3779
  br label %165, !dbg !3779

165:                                              ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ], !dbg !3773
  call void @llvm.dbg.value(metadata i32 %167, metadata !3695, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 7, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3769
  call void @llvm.dbg.value(metadata i32 7, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 6, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3773
  %168 = icmp slt i64 %166, %157, !dbg !3774
  br i1 %168, label %364, label %358, !dbg !3775

169:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3688, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 7, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3780
  %170 = sdiv i64 -9223372036854775808, %59, !dbg !3782
  call void @llvm.dbg.value(metadata i32 6, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3784
  %171 = icmp slt i64 %35, %170, !dbg !3785
  br i1 %171, label %178, label %172, !dbg !3786

172:                                              ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !3787
  %174 = icmp slt i64 %173, %35, !dbg !3788
  %175 = mul nsw i64 %35, %59, !dbg !3789
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !3790
  %177 = zext i1 %174 to i32, !dbg !3790
  br label %178, !dbg !3790

178:                                              ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ], !dbg !3784
  call void @llvm.dbg.value(metadata i32 %180, metadata !3695, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 6, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3780
  call void @llvm.dbg.value(metadata i32 6, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3784
  %181 = icmp slt i64 %179, %170, !dbg !3785
  br i1 %181, label %440, label %434, !dbg !3786

182:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, metadata !3589, metadata !DIExpression()), !dbg !3596
  store i64 %35, i64* %3, align 8, !dbg !3791, !tbaa !2583
  %183 = or i32 %34, 2, !dbg !3792
  br label %196, !dbg !3793

184:                                              ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %151, %70, %63, %58, %61, %68, %149
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ -9223372036854775808, %68 ], [ -9223372036854775808, %149 ], [ %66, %63 ], [ %73, %70 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ], !dbg !3596
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ 1, %68 ], [ 1, %149 ], [ %67, %63 ], [ %74, %70 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ], !dbg !3794
  call void @llvm.dbg.value(metadata i32 %186, metadata !3595, metadata !DIExpression()), !dbg !3643
  %187 = or i32 %186, %34, !dbg !3795
  call void @llvm.dbg.value(metadata i32 %187, metadata !3590, metadata !DIExpression()), !dbg !3596
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3796
  store i8* %188, i8** %12, align 8, !dbg !3796, !tbaa !1131
  %189 = load i8, i8* %188, align 1, !dbg !3797, !tbaa !1286
  %190 = icmp eq i8 %189, 0, !dbg !3797
  %191 = or i32 %187, 2, !dbg !3799
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !3800
  call void @llvm.dbg.value(metadata i32 %192, metadata !3590, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 %192, metadata !3590, metadata !DIExpression()), !dbg !3596
  br label %193

193:                                              ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ], !dbg !3801
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ], !dbg !3802
  call void @llvm.dbg.value(metadata i32 %195, metadata !3590, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %194, metadata !3589, metadata !DIExpression()), !dbg !3596
  store i64 %194, i64* %3, align 8, !dbg !3803, !tbaa !2583
  br label %196, !dbg !3804

196:                                              ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ], !dbg !3596
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #19, !dbg !3805
  ret i32 %197, !dbg !3805

198:                                              ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !3703
  %200 = icmp slt i64 %199, %85, !dbg !3704
  %201 = mul nsw i64 %85, %59, !dbg !3705
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !3706
  %203 = zext i1 %200 to i32, !dbg !3706
  br label %204, !dbg !3706

204:                                              ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ], !dbg !3700
  %207 = or i32 %206, %86, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %207, metadata !3695, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3696
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3700
  %208 = icmp slt i64 %205, %76, !dbg !3701
  br i1 %208, label %215, label %209, !dbg !3702

209:                                              ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !3703
  %211 = icmp slt i64 %210, %205, !dbg !3704
  %212 = mul nsw i64 %205, %59, !dbg !3705
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !3706
  %214 = zext i1 %211 to i32, !dbg !3706
  br label %215, !dbg !3706

215:                                              ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ], !dbg !3700
  %218 = or i32 %217, %207, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %218, metadata !3695, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3696
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3700
  %219 = icmp slt i64 %216, %76, !dbg !3701
  br i1 %219, label %226, label %220, !dbg !3702

220:                                              ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !3703
  %222 = icmp slt i64 %221, %216, !dbg !3704
  %223 = mul nsw i64 %216, %59, !dbg !3705
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !3706
  %225 = zext i1 %222 to i32, !dbg !3706
  br label %226, !dbg !3706

226:                                              ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ], !dbg !3700
  %229 = or i32 %228, %218, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %229, metadata !3695, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3696
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3700
  %230 = icmp slt i64 %227, %76, !dbg !3701
  br i1 %230, label %237, label %231, !dbg !3702

231:                                              ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !3703
  %233 = icmp slt i64 %232, %227, !dbg !3704
  %234 = mul nsw i64 %227, %59, !dbg !3705
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !3706
  %236 = zext i1 %233 to i32, !dbg !3706
  br label %237, !dbg !3706

237:                                              ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ], !dbg !3700
  %240 = or i32 %239, %229, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %240, metadata !3695, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3696
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3700
  %241 = icmp slt i64 %238, %76, !dbg !3701
  br i1 %241, label %248, label %242, !dbg !3702

242:                                              ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !3703
  %244 = icmp slt i64 %243, %238, !dbg !3704
  %245 = mul nsw i64 %238, %59, !dbg !3705
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !3706
  %247 = zext i1 %244 to i32, !dbg !3706
  br label %248, !dbg !3706

248:                                              ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ], !dbg !3700
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ], !dbg !3700
  %251 = or i32 %250, %240, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %251, metadata !3695, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3696
  br label %184, !dbg !3795

252:                                              ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !3714
  %254 = icmp slt i64 %253, %98, !dbg !3715
  %255 = mul nsw i64 %98, %59, !dbg !3716
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !3717
  %257 = zext i1 %254 to i32, !dbg !3717
  br label %258, !dbg !3717

258:                                              ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ], !dbg !3711
  %261 = or i32 %260, %99, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %261, metadata !3695, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3707
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3711
  %262 = icmp slt i64 %259, %89, !dbg !3712
  br i1 %262, label %269, label %263, !dbg !3713

263:                                              ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !3714
  %265 = icmp slt i64 %264, %259, !dbg !3715
  %266 = mul nsw i64 %259, %59, !dbg !3716
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !3717
  %268 = zext i1 %265 to i32, !dbg !3717
  br label %269, !dbg !3717

269:                                              ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ], !dbg !3711
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ], !dbg !3711
  %272 = or i32 %271, %261, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %272, metadata !3695, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3707
  br label %184, !dbg !3795

273:                                              ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !3736
  %275 = icmp slt i64 %274, %120, !dbg !3737
  %276 = mul nsw i64 %120, %59, !dbg !3738
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !3739
  %278 = zext i1 %275 to i32, !dbg !3739
  br label %279, !dbg !3739

279:                                              ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ], !dbg !3733
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ], !dbg !3733
  %282 = or i32 %281, %121, !dbg !3808
  call void @llvm.dbg.value(metadata i32 %282, metadata !3695, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3729
  br label %184, !dbg !3795

283:                                              ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !3747
  %285 = icmp slt i64 %284, %133, !dbg !3748
  %286 = mul nsw i64 %133, %59, !dbg !3749
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !3750
  %288 = zext i1 %285 to i32, !dbg !3750
  br label %289, !dbg !3750

289:                                              ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ], !dbg !3744
  %292 = or i32 %291, %134, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %292, metadata !3695, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3740
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3744
  %293 = icmp slt i64 %290, %124, !dbg !3745
  br i1 %293, label %300, label %294, !dbg !3746

294:                                              ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !3747
  %296 = icmp slt i64 %295, %290, !dbg !3748
  %297 = mul nsw i64 %290, %59, !dbg !3749
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !3750
  %299 = zext i1 %296 to i32, !dbg !3750
  br label %300, !dbg !3750

300:                                              ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ], !dbg !3744
  %303 = or i32 %302, %292, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %303, metadata !3695, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3740
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3744
  %304 = icmp slt i64 %301, %124, !dbg !3745
  br i1 %304, label %311, label %305, !dbg !3746

305:                                              ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !3747
  %307 = icmp slt i64 %306, %301, !dbg !3748
  %308 = mul nsw i64 %301, %59, !dbg !3749
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !3750
  %310 = zext i1 %307 to i32, !dbg !3750
  br label %311, !dbg !3750

311:                                              ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ], !dbg !3744
  %314 = or i32 %313, %303, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %314, metadata !3695, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3740
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3744
  %315 = icmp slt i64 %312, %124, !dbg !3745
  br i1 %315, label %322, label %316, !dbg !3746

316:                                              ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !3747
  %318 = icmp slt i64 %317, %312, !dbg !3748
  %319 = mul nsw i64 %312, %59, !dbg !3749
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !3750
  %321 = zext i1 %318 to i32, !dbg !3750
  br label %322, !dbg !3750

322:                                              ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ], !dbg !3744
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ], !dbg !3744
  %325 = or i32 %324, %314, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %325, metadata !3695, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3740
  br label %184, !dbg !3795

326:                                              ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !3758
  %328 = icmp slt i64 %327, %146, !dbg !3759
  %329 = mul nsw i64 %146, %59, !dbg !3760
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !3761
  %331 = zext i1 %328 to i32, !dbg !3761
  br label %332, !dbg !3761

332:                                              ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ], !dbg !3755
  %335 = or i32 %334, %147, !dbg !3810
  call void @llvm.dbg.value(metadata i32 %335, metadata !3695, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3751
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3755
  %336 = icmp slt i64 %333, %137, !dbg !3756
  br i1 %336, label %343, label %337, !dbg !3757

337:                                              ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !3758
  %339 = icmp slt i64 %338, %333, !dbg !3759
  %340 = mul nsw i64 %333, %59, !dbg !3760
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !3761
  %342 = zext i1 %339 to i32, !dbg !3761
  br label %343, !dbg !3761

343:                                              ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ], !dbg !3755
  %346 = or i32 %345, %335, !dbg !3810
  call void @llvm.dbg.value(metadata i32 %346, metadata !3695, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3751
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3755
  %347 = icmp slt i64 %344, %137, !dbg !3756
  br i1 %347, label %354, label %348, !dbg !3757

348:                                              ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !3758
  %350 = icmp slt i64 %349, %344, !dbg !3759
  %351 = mul nsw i64 %344, %59, !dbg !3760
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !3761
  %353 = zext i1 %350 to i32, !dbg !3761
  br label %354, !dbg !3761

354:                                              ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ], !dbg !3755
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ], !dbg !3755
  %357 = or i32 %356, %346, !dbg !3810
  call void @llvm.dbg.value(metadata i32 %357, metadata !3695, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3751
  br label %184, !dbg !3795

358:                                              ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !3776
  %360 = icmp slt i64 %359, %166, !dbg !3777
  %361 = mul nsw i64 %166, %59, !dbg !3778
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !3779
  %363 = zext i1 %360 to i32, !dbg !3779
  br label %364, !dbg !3779

364:                                              ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ], !dbg !3773
  %367 = or i32 %366, %167, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %367, metadata !3695, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 6, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3769
  call void @llvm.dbg.value(metadata i32 6, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3773
  %368 = icmp slt i64 %365, %157, !dbg !3774
  br i1 %368, label %375, label %369, !dbg !3775

369:                                              ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !3776
  %371 = icmp slt i64 %370, %365, !dbg !3777
  %372 = mul nsw i64 %365, %59, !dbg !3778
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !3779
  %374 = zext i1 %371 to i32, !dbg !3779
  br label %375, !dbg !3779

375:                                              ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ], !dbg !3773
  %378 = or i32 %377, %367, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %378, metadata !3695, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3769
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3773
  %379 = icmp slt i64 %376, %157, !dbg !3774
  br i1 %379, label %386, label %380, !dbg !3775

380:                                              ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !3776
  %382 = icmp slt i64 %381, %376, !dbg !3777
  %383 = mul nsw i64 %376, %59, !dbg !3778
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !3779
  %385 = zext i1 %382 to i32, !dbg !3779
  br label %386, !dbg !3779

386:                                              ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ], !dbg !3773
  %389 = or i32 %388, %378, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %389, metadata !3695, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3769
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3773
  %390 = icmp slt i64 %387, %157, !dbg !3774
  br i1 %390, label %397, label %391, !dbg !3775

391:                                              ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !3776
  %393 = icmp slt i64 %392, %387, !dbg !3777
  %394 = mul nsw i64 %387, %59, !dbg !3778
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !3779
  %396 = zext i1 %393 to i32, !dbg !3779
  br label %397, !dbg !3779

397:                                              ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ], !dbg !3773
  %400 = or i32 %399, %389, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %400, metadata !3695, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3769
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3773
  %401 = icmp slt i64 %398, %157, !dbg !3774
  br i1 %401, label %408, label %402, !dbg !3775

402:                                              ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !3776
  %404 = icmp slt i64 %403, %398, !dbg !3777
  %405 = mul nsw i64 %398, %59, !dbg !3778
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !3779
  %407 = zext i1 %404 to i32, !dbg !3779
  br label %408, !dbg !3779

408:                                              ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ], !dbg !3773
  %411 = or i32 %410, %400, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %411, metadata !3695, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3769
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3773
  %412 = icmp slt i64 %409, %157, !dbg !3774
  br i1 %412, label %419, label %413, !dbg !3775

413:                                              ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !3776
  %415 = icmp slt i64 %414, %409, !dbg !3777
  %416 = mul nsw i64 %409, %59, !dbg !3778
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !3779
  %418 = zext i1 %415 to i32, !dbg !3779
  br label %419, !dbg !3779

419:                                              ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ], !dbg !3773
  %422 = or i32 %421, %411, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %422, metadata !3695, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3769
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3773
  %423 = icmp slt i64 %420, %157, !dbg !3774
  br i1 %423, label %430, label %424, !dbg !3775

424:                                              ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !3776
  %426 = icmp slt i64 %425, %420, !dbg !3777
  %427 = mul nsw i64 %420, %59, !dbg !3778
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !3779
  %429 = zext i1 %426 to i32, !dbg !3779
  br label %430, !dbg !3779

430:                                              ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ], !dbg !3773
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ], !dbg !3773
  %433 = or i32 %432, %422, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %433, metadata !3695, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3769
  br label %184, !dbg !3795

434:                                              ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !3787
  %436 = icmp slt i64 %435, %179, !dbg !3788
  %437 = mul nsw i64 %179, %59, !dbg !3789
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !3790
  %439 = zext i1 %436 to i32, !dbg !3790
  br label %440, !dbg !3790

440:                                              ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ], !dbg !3784
  %443 = or i32 %442, %180, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %443, metadata !3695, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3780
  call void @llvm.dbg.value(metadata i32 5, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3784
  %444 = icmp slt i64 %441, %170, !dbg !3785
  br i1 %444, label %451, label %445, !dbg !3786

445:                                              ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !3787
  %447 = icmp slt i64 %446, %441, !dbg !3788
  %448 = mul nsw i64 %441, %59, !dbg !3789
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !3790
  %450 = zext i1 %447 to i32, !dbg !3790
  br label %451, !dbg !3790

451:                                              ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ], !dbg !3784
  %454 = or i32 %453, %443, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %454, metadata !3695, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3780
  call void @llvm.dbg.value(metadata i32 4, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3784
  %455 = icmp slt i64 %452, %170, !dbg !3785
  br i1 %455, label %462, label %456, !dbg !3786

456:                                              ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !3787
  %458 = icmp slt i64 %457, %452, !dbg !3788
  %459 = mul nsw i64 %452, %59, !dbg !3789
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !3790
  %461 = zext i1 %458 to i32, !dbg !3790
  br label %462, !dbg !3790

462:                                              ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ], !dbg !3784
  %465 = or i32 %464, %454, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %465, metadata !3695, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3780
  call void @llvm.dbg.value(metadata i32 3, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3784
  %466 = icmp slt i64 %463, %170, !dbg !3785
  br i1 %466, label %473, label %467, !dbg !3786

467:                                              ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !3787
  %469 = icmp slt i64 %468, %463, !dbg !3788
  %470 = mul nsw i64 %463, %59, !dbg !3789
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !3790
  %472 = zext i1 %469 to i32, !dbg !3790
  br label %473, !dbg !3790

473:                                              ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ], !dbg !3784
  %476 = or i32 %475, %465, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %476, metadata !3695, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3780
  call void @llvm.dbg.value(metadata i32 2, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3784
  %477 = icmp slt i64 %474, %170, !dbg !3785
  br i1 %477, label %484, label %478, !dbg !3786

478:                                              ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !3787
  %480 = icmp slt i64 %479, %474, !dbg !3788
  %481 = mul nsw i64 %474, %59, !dbg !3789
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !3790
  %483 = zext i1 %480 to i32, !dbg !3790
  br label %484, !dbg !3790

484:                                              ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ], !dbg !3784
  %487 = or i32 %486, %476, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %487, metadata !3695, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3780
  call void @llvm.dbg.value(metadata i32 1, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 undef, metadata !3665, metadata !DIExpression()), !dbg !3784
  %488 = icmp slt i64 %485, %170, !dbg !3785
  br i1 %488, label %495, label %489, !dbg !3786

489:                                              ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !3787
  %491 = icmp slt i64 %490, %485, !dbg !3788
  %492 = mul nsw i64 %485, %59, !dbg !3789
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !3790
  %494 = zext i1 %491 to i32, !dbg !3790
  br label %495, !dbg !3790

495:                                              ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ], !dbg !3784
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ], !dbg !3784
  %498 = or i32 %497, %487, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %498, metadata !3695, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3780
  br label %184, !dbg !3795
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3813 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3815, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 %1, metadata !3816, metadata !DIExpression()), !dbg !3821
  %3 = icmp eq i64 %0, 0, !dbg !3822
  %4 = icmp eq i64 %1, 0, !dbg !3823
  %5 = or i1 %3, %4, !dbg !3824
  br i1 %5, label %11, label %6, !dbg !3824

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3818, metadata !DIExpression()), !dbg !3825
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3826
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3826
  br i1 %8, label %9, label %11, !dbg !3828

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3829
  store i32 12, i32* %10, align 4, !dbg !3831, !tbaa !1337
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3815, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 %12, metadata !3816, metadata !DIExpression()), !dbg !3821
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !3832
  call void @llvm.dbg.value(metadata i8* %14, metadata !3817, metadata !DIExpression()), !dbg !3821
  br label %15, !dbg !3833

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3821
  ret i8* %16, !dbg !3834
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3835 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3843, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i8* %1, metadata !3844, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %2, metadata !3845, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3846, metadata !DIExpression()), !dbg !3852
  %6 = bitcast i32* %5 to i8*, !dbg !3853
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3853
  %7 = icmp eq i32* %0, null, !dbg !3854
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3856
  call void @llvm.dbg.value(metadata i32* %8, metadata !3843, metadata !DIExpression()), !dbg !3852
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !3857
  call void @llvm.dbg.value(metadata i64 %9, metadata !3847, metadata !DIExpression()), !dbg !3852
  %10 = icmp ugt i64 %9, -3, !dbg !3858
  %11 = icmp ne i64 %2, 0, !dbg !3859
  %12 = and i1 %11, %10, !dbg !3860
  br i1 %12, label %13, label %18, !dbg !3860

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !3861
  br i1 %14, label %18, label %15, !dbg !3862

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3863, !tbaa !1286
  call void @llvm.dbg.value(metadata i8 %16, metadata !3849, metadata !DIExpression()), !dbg !3864
  %17 = zext i8 %16 to i32, !dbg !3865
  store i32 %17, i32* %8, align 4, !dbg !3866, !tbaa !1337
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3852
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3867
  ret i64 %19, !dbg !3867
}

; Function Attrs: nounwind
declare !dbg !516 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3868 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3874, metadata !DIExpression()), !dbg !3879
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !3880
  call void @llvm.dbg.value(metadata i1 undef, metadata !3875, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3881, metadata !DIExpression()), !dbg !3885
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3887
  %4 = load i32, i32* %3, align 8, !dbg !3887, !tbaa !3888
  %5 = and i32 %4, 32, !dbg !3887
  %6 = icmp eq i32 %5, 0, !dbg !3890
  call void @llvm.dbg.value(metadata i1 %6, metadata !3877, metadata !DIExpression()), !dbg !3879
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !3891
  %8 = icmp ne i32 %7, 0, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %8, metadata !3878, metadata !DIExpression()), !dbg !3879
  br i1 %6, label %9, label %19, !dbg !3893

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3895
  call void @llvm.dbg.value(metadata i1 %10, metadata !3875, metadata !DIExpression()), !dbg !3879
  %11 = xor i1 %8, true, !dbg !3896
  %12 = or i1 %10, %11, !dbg !3896
  %13 = sext i1 %8 to i32, !dbg !3896
  br i1 %12, label %22, label %14, !dbg !3896

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3897
  %16 = load i32, i32* %15, align 4, !dbg !3897, !tbaa !1337
  %17 = icmp ne i32 %16, 9, !dbg !3898
  %18 = sext i1 %17 to i32, !dbg !3899
  br label %22, !dbg !3899

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3900

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3902
  store i32 0, i32* %21, align 4, !dbg !3904, !tbaa !1337
  br label %22, !dbg !3902

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3879
  ret i32 %23, !dbg !3905
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3906 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3908, metadata !DIExpression()), !dbg !3913
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3914
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3914
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3909, metadata !DIExpression()), !dbg !3915
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !3916
  %5 = icmp eq i32 %4, 0, !dbg !3916
  br i1 %5, label %6, label %13, !dbg !3918

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3919
  %8 = load i16, i16* %7, align 16, !dbg !3919
  %9 = icmp eq i16 %8, 67, !dbg !3919
  br i1 %9, label %13, label %10, !dbg !3920

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.149, i64 0, i64 0), i64 6), !dbg !3921
  %12 = icmp ne i32 %11, 0, !dbg !3922
  br label %13, !dbg !3920

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3913
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3923
  ret i1 %14, !dbg !3923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3924 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !3927
  call void @llvm.dbg.value(metadata i8* %1, metadata !3926, metadata !DIExpression()), !dbg !3928
  %2 = icmp eq i8* %1, null, !dbg !3929
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.152, i64 0, i64 0), i8* %1, !dbg !3931
  call void @llvm.dbg.value(metadata i8* %3, metadata !3926, metadata !DIExpression()), !dbg !3928
  %4 = load i8, i8* %3, align 1, !dbg !3932, !tbaa !1286
  %5 = icmp eq i8 %4, 0, !dbg !3936
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0), i8* %3, !dbg !3937
  call void @llvm.dbg.value(metadata i8* %6, metadata !3926, metadata !DIExpression()), !dbg !3928
  ret i8* %6, !dbg !3938
}

; Function Attrs: nounwind
declare !dbg !968 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3943, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i8* %1, metadata !3944, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64 %2, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 %0, metadata !3947, metadata !DIExpression()) #19, !dbg !3956
  call void @llvm.dbg.value(metadata i8* %1, metadata !3950, metadata !DIExpression()) #19, !dbg !3956
  call void @llvm.dbg.value(metadata i64 %2, metadata !3951, metadata !DIExpression()) #19, !dbg !3956
  call void @llvm.dbg.value(metadata i32 %0, metadata !3958, metadata !DIExpression()) #19, !dbg !3964
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3966
  call void @llvm.dbg.value(metadata i8* %4, metadata !3963, metadata !DIExpression()) #19, !dbg !3964
  call void @llvm.dbg.value(metadata i8* %4, metadata !3952, metadata !DIExpression()) #19, !dbg !3956
  %5 = icmp eq i8* %4, null, !dbg !3967
  br i1 %5, label %6, label %9, !dbg !3968

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3969
  br i1 %7, label %19, label %8, !dbg !3972

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3973, !tbaa !1286
  br label %19, !dbg !3974

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %10, metadata !3953, metadata !DIExpression()) #19, !dbg !3976
  %11 = icmp ult i64 %10, %2, !dbg !3977
  br i1 %11, label %12, label %14, !dbg !3979

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3980
  call void @llvm.dbg.value(metadata i8* %1, metadata !3982, metadata !DIExpression()) #19, !dbg !3987
  call void @llvm.dbg.value(metadata i8* %4, metadata !3985, metadata !DIExpression()) #19, !dbg !3987
  call void @llvm.dbg.value(metadata i64 %13, metadata !3986, metadata !DIExpression()) #19, !dbg !3987
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !3989
  br label %19, !dbg !3990

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3991
  br i1 %15, label %19, label %16, !dbg !3994

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3995
  call void @llvm.dbg.value(metadata i8* %1, metadata !3982, metadata !DIExpression()) #19, !dbg !3997
  call void @llvm.dbg.value(metadata i8* %4, metadata !3985, metadata !DIExpression()) #19, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %17, metadata !3986, metadata !DIExpression()) #19, !dbg !3997
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !3999
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4000
  store i8 0, i8* %18, align 1, !dbg !4001, !tbaa !1286
  br label %19, !dbg !4002

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4003
  ret i32 %20, !dbg !4004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4007, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 %0, metadata !3958, metadata !DIExpression()) #19, !dbg !4009
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !4011
  call void @llvm.dbg.value(metadata i8* %2, metadata !3963, metadata !DIExpression()) #19, !dbg !4009
  ret i8* %2, !dbg !4012
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4013 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4019, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 0, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4023
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4024
  call void @llvm.dbg.value(metadata i32 %2, metadata !4021, metadata !DIExpression()), !dbg !4023
  %3 = icmp slt i32 %2, 0, !dbg !4025
  br i1 %3, label %4, label %6, !dbg !4027

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4028
  br label %24, !dbg !4029

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4030
  %8 = icmp eq i32 %7, 0, !dbg !4030
  br i1 %8, label %13, label %9, !dbg !4032

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4033
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !4034
  %12 = icmp eq i64 %11, -1, !dbg !4035
  br i1 %12, label %16, label %13, !dbg !4036

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !4037
  %15 = icmp eq i32 %14, 0, !dbg !4037
  br i1 %15, label %16, label %18, !dbg !4038

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4020, metadata !DIExpression()), !dbg !4023
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4039
  call void @llvm.dbg.value(metadata i32 %21, metadata !4022, metadata !DIExpression()), !dbg !4023
  br label %24, !dbg !4040

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4041
  %20 = load i32, i32* %19, align 4, !dbg !4041, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 %20, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 %20, metadata !4020, metadata !DIExpression()), !dbg !4023
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4039
  call void @llvm.dbg.value(metadata i32 %21, metadata !4022, metadata !DIExpression()), !dbg !4023
  %22 = icmp eq i32 %20, 0, !dbg !4042
  br i1 %22, label %24, label %23, !dbg !4040

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4044, !tbaa !1337
  call void @llvm.dbg.value(metadata i32 -1, metadata !4022, metadata !DIExpression()), !dbg !4023
  br label %24, !dbg !4046

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4023
  ret i32 %25, !dbg !4047
}

; Function Attrs: nofree nounwind
declare !dbg !977 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1012 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4048 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4054, metadata !DIExpression()), !dbg !4055
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4056
  br i1 %2, label %6, label %3, !dbg !4058

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4059
  %5 = icmp eq i32 %4, 0, !dbg !4059
  br i1 %5, label %6, label %8, !dbg !4060

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4061
  br label %17, !dbg !4062

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4063, metadata !DIExpression()) #19, !dbg !4068
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4070
  %10 = load i32, i32* %9, align 8, !dbg !4070, !tbaa !3888
  %11 = and i32 %10, 256, !dbg !4072
  %12 = icmp eq i32 %11, 0, !dbg !4072
  br i1 %12, label %15, label %13, !dbg !4073

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !4074
  br label %15, !dbg !4074

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4075
  br label %17, !dbg !4076

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4055
  ret i32 %18, !dbg !4077
}

; Function Attrs: nofree nounwind
declare !dbg !1017 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4078 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4084, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %1, metadata !4085, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i32 %2, metadata !4086, metadata !DIExpression()), !dbg !4090
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4091
  %5 = load i8*, i8** %4, align 8, !dbg !4091, !tbaa !4092
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4093
  %7 = load i8*, i8** %6, align 8, !dbg !4093, !tbaa !4094
  %8 = icmp eq i8* %5, %7, !dbg !4095
  br i1 %8, label %9, label %28, !dbg !4096

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4097
  %11 = load i8*, i8** %10, align 8, !dbg !4097, !tbaa !4098
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4099
  %13 = load i8*, i8** %12, align 8, !dbg !4099, !tbaa !4100
  %14 = icmp eq i8* %11, %13, !dbg !4101
  br i1 %14, label %15, label %28, !dbg !4102

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4103
  %17 = load i8*, i8** %16, align 8, !dbg !4103, !tbaa !4104
  %18 = icmp eq i8* %17, null, !dbg !4105
  br i1 %18, label %19, label %28, !dbg !4106

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4107
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !4108
  call void @llvm.dbg.value(metadata i64 %21, metadata !4087, metadata !DIExpression()), !dbg !4109
  %22 = icmp eq i64 %21, -1, !dbg !4110
  br i1 %22, label %30, label %23, !dbg !4112

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4113
  %25 = load i32, i32* %24, align 8, !dbg !4114, !tbaa !3888
  %26 = and i32 %25, -17, !dbg !4114
  store i32 %26, i32* %24, align 8, !dbg !4114, !tbaa !3888
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4115
  store i64 %21, i64* %27, align 8, !dbg !4116, !tbaa !4117
  br label %30, !dbg !4118

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4119
  br label %30, !dbg !4120

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4090
  ret i32 %31, !dbg !4121
}

; Function Attrs: nofree nounwind
declare !dbg !1093 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #10 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind readnone }
attributes #25 = { noreturn }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !207, !212, !257, !263, !304, !422, !416, !464, !485, !488, !508, !510, !513, !532, !571, !578, !971, !974, !1014, !1055}
!llvm.ident = !{!1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096, !1096}
!llvm.module.flags = !{!1097, !1098, !1099, !1100, !1101}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !200, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !192, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/truncate.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!43 = !{!44, !54, !115, !119, !123, !126, !129, !136, !52, !85, !151, !155, !156, !48, !105, !160, !164, !168, !171, !175, !179, !107, !87, !6, !182, !183, !83, !109, !184, !185, !186, !189}
!44 = !DISubprogram(name: "dcgettext", scope: !45, file: !45, line: 51, type: !46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!45 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !50, !50, !52}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !{}
!54 = !DISubprogram(name: "fputs_unlocked", scope: !55, file: !55, line: 662, type: !56, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!55 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!56 = !DISubroutineType(types: !57)
!57 = !{!52, !50, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !61)
!60 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !77, !78, !79, !80, !84, !86, !88, !92, !95, !97, !100, !103, !104, !106, !110, !111}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !59, file: !60, line: 51, baseType: !52, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !59, file: !60, line: 54, baseType: !48, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !59, file: !60, line: 55, baseType: !48, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !59, file: !60, line: 56, baseType: !48, size: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !59, file: !60, line: 57, baseType: !48, size: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !59, file: !60, line: 58, baseType: !48, size: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !59, file: !60, line: 59, baseType: !48, size: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !59, file: !60, line: 60, baseType: !48, size: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !59, file: !60, line: 61, baseType: !48, size: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !59, file: !60, line: 64, baseType: !48, size: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !59, file: !60, line: 65, baseType: !48, size: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !59, file: !60, line: 66, baseType: !48, size: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !59, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !60, line: 36, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !59, file: !60, line: 70, baseType: !58, size: 64, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !59, file: !60, line: 72, baseType: !52, size: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !59, file: !60, line: 73, baseType: !52, size: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !59, file: !60, line: 74, baseType: !81, size: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !82, line: 152, baseType: !83)
!82 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!83 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !59, file: !60, line: 77, baseType: !85, size: 16, offset: 1024)
!85 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !59, file: !60, line: 78, baseType: !87, size: 8, offset: 1040)
!87 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !59, file: !60, line: 79, baseType: !89, size: 8, offset: 1048)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 1)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !59, file: !60, line: 81, baseType: !93, size: 64, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !60, line: 43, baseType: null)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !59, file: !60, line: 89, baseType: !96, size: 64, offset: 1152)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !82, line: 153, baseType: !83)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !59, file: !60, line: 91, baseType: !98, size: 64, offset: 1216)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !60, line: 37, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !59, file: !60, line: 92, baseType: !101, size: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !60, line: 38, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !59, file: !60, line: 93, baseType: !58, size: 64, offset: 1344)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !59, file: !60, line: 94, baseType: !105, size: 64, offset: 1408)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !59, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!109 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !59, file: !60, line: 96, baseType: !52, size: 32, offset: 1536)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !59, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 160, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 20)
!115 = !DISubprogram(name: "set_program_name", scope: !116, file: !116, line: 37, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!116 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!117 = !DISubroutineType(types: !118)
!118 = !{null, !50}
!119 = !DISubprogram(name: "setlocale", scope: !120, file: !120, line: 122, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!120 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!121 = !DISubroutineType(types: !122)
!122 = !{!48, !52, !50}
!123 = !DISubprogram(name: "bindtextdomain", scope: !45, file: !45, line: 86, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!124 = !DISubroutineType(types: !125)
!125 = !{!48, !50, !50}
!126 = !DISubprogram(name: "textdomain", scope: !45, file: !45, line: 82, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!127 = !DISubroutineType(types: !128)
!128 = !{!48, !50}
!129 = !DISubprogram(name: "atexit", scope: !130, file: !130, line: 595, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!130 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!131 = !DISubroutineType(types: !132)
!132 = !{!52, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null}
!136 = !DISubprogram(name: "getopt_long", scope: !137, file: !137, line: 66, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!137 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!138 = !DISubroutineType(types: !139)
!139 = !{!52, !52, !140, !50, !142, !149}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !137, line: 50, size: 256, elements: !145)
!145 = !{!146, !147, !148, !150}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !137, line: 52, baseType: !50, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !144, file: !137, line: 55, baseType: !52, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !144, file: !137, line: 56, baseType: !149, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !137, line: 57, baseType: !52, size: 32, offset: 192)
!151 = !DISubprogram(name: "error", scope: !152, file: !152, line: 52, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!152 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !DISubroutineType(types: !154)
!154 = !{null, !52, !52, !50, null}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !55, line: 63, baseType: !81)
!156 = !DISubprogram(name: "xdectoimax", scope: !157, file: !157, line: 30, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!157 = !DIFile(filename: "./lib/xdectoint.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = !DISubroutineType(types: !159)
!159 = !{!83, !50, !83, !83, !50, !50, !52}
!160 = !DISubprogram(name: "version_etc", scope: !161, file: !161, line: 69, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!161 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !DISubroutineType(types: !163)
!163 = !{null, !58, !50, !50, !50, null}
!164 = !DISubprogram(name: "quote_n", scope: !165, file: !165, line: 40, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!165 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !DISubroutineType(types: !167)
!167 = !{!50, !52, !50}
!168 = !DISubprogram(name: "quotearg_style", scope: !30, file: !30, line: 377, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!169 = !DISubroutineType(types: !170)
!170 = !{!48, !29, !50}
!171 = !DISubprogram(name: "open", scope: !172, file: !172, line: 196, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!172 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!173 = !DISubroutineType(types: !174)
!174 = !{!52, !50, !52, null}
!175 = !DISubprogram(name: "lseek", scope: !176, file: !176, line: 334, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!176 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!177 = !DISubroutineType(types: !178)
!178 = !{!83, !52, !83, !52}
!179 = !DISubprogram(name: "close", scope: !176, file: !176, line: 353, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!180 = !DISubroutineType(types: !181)
!181 = !{!52, !52}
!182 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!183 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!184 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!185 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!186 = !DISubprogram(name: "ftruncate", scope: !176, file: !176, line: 1014, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!187 = !DISubroutineType(types: !188)
!188 = !{!52, !52, !83}
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !190, line: 101, baseType: !191)
!190 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !82, line: 72, baseType: !83)
!192 = !{!193, !196, !198, !0}
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "no_create", scope: !2, file: !3, line: 41, type: !195, isLocal: true, isDefinition: true)
!195 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "block_mode", scope: !2, file: !3, line: 44, type: !195, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "ref_file", scope: !2, file: !3, line: 47, type: !50, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1792, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 7)
!203 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!204 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "Version", scope: !207, file: !208, line: 2, type: !50, isLocal: false, isDefinition: true)
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, globals: !209, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !{!205}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "file_name", scope: !212, file: !213, line: 46, type: !50, isLocal: true, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !214, globals: !252, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = !{!215, !44, !251, !151}
!215 = !DISubprogram(name: "close_stream", scope: !216, file: !216, line: 2, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!216 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!217 = !DISubroutineType(types: !218)
!218 = !{!52, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !220, file: !60, line: 51, baseType: !52, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !220, file: !60, line: 54, baseType: !48, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !220, file: !60, line: 55, baseType: !48, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !220, file: !60, line: 56, baseType: !48, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !220, file: !60, line: 57, baseType: !48, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !220, file: !60, line: 58, baseType: !48, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !220, file: !60, line: 59, baseType: !48, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !220, file: !60, line: 60, baseType: !48, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !220, file: !60, line: 61, baseType: !48, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !220, file: !60, line: 64, baseType: !48, size: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !220, file: !60, line: 65, baseType: !48, size: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !220, file: !60, line: 66, baseType: !48, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !220, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !220, file: !60, line: 70, baseType: !219, size: 64, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !220, file: !60, line: 72, baseType: !52, size: 32, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !220, file: !60, line: 73, baseType: !52, size: 32, offset: 928)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !220, file: !60, line: 74, baseType: !81, size: 64, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !220, file: !60, line: 77, baseType: !85, size: 16, offset: 1024)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !220, file: !60, line: 78, baseType: !87, size: 8, offset: 1040)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !220, file: !60, line: 79, baseType: !89, size: 8, offset: 1048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !220, file: !60, line: 81, baseType: !93, size: 64, offset: 1088)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !220, file: !60, line: 89, baseType: !96, size: 64, offset: 1152)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !220, file: !60, line: 91, baseType: !98, size: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !220, file: !60, line: 92, baseType: !101, size: 64, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !220, file: !60, line: 93, baseType: !219, size: 64, offset: 1344)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !220, file: !60, line: 94, baseType: !105, size: 64, offset: 1408)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !220, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !220, file: !60, line: 96, baseType: !52, size: 32, offset: 1536)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !220, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!251 = !DISubprogram(name: "quotearg_colon", scope: !30, file: !30, line: 391, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!252 = !{!210, !253}
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !212, file: !213, line: 56, type: !195, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "exit_failure", scope: !257, file: !258, line: 24, type: !260, isLocal: false, isDefinition: true)
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, globals: !259, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = !{!255}
!260 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "program_name", scope: !263, file: !264, line: 33, type: !50, isLocal: false, isDefinition: true)
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !265, globals: !301, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!265 = !{!105, !266, !48}
!266 = !DISubprogram(name: "fputs", scope: !55, file: !55, line: 626, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!267 = !DISubroutineType(types: !268)
!268 = !{!52, !50, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !270, file: !60, line: 51, baseType: !52, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !270, file: !60, line: 54, baseType: !48, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !270, file: !60, line: 55, baseType: !48, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !270, file: !60, line: 56, baseType: !48, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !270, file: !60, line: 57, baseType: !48, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !270, file: !60, line: 58, baseType: !48, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !270, file: !60, line: 59, baseType: !48, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !270, file: !60, line: 60, baseType: !48, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !270, file: !60, line: 61, baseType: !48, size: 64, offset: 512)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !270, file: !60, line: 64, baseType: !48, size: 64, offset: 576)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !270, file: !60, line: 65, baseType: !48, size: 64, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !270, file: !60, line: 66, baseType: !48, size: 64, offset: 704)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !270, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !270, file: !60, line: 70, baseType: !269, size: 64, offset: 832)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !270, file: !60, line: 72, baseType: !52, size: 32, offset: 896)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !270, file: !60, line: 73, baseType: !52, size: 32, offset: 928)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !270, file: !60, line: 74, baseType: !81, size: 64, offset: 960)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !270, file: !60, line: 77, baseType: !85, size: 16, offset: 1024)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !270, file: !60, line: 78, baseType: !87, size: 8, offset: 1040)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !270, file: !60, line: 79, baseType: !89, size: 8, offset: 1048)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !270, file: !60, line: 81, baseType: !93, size: 64, offset: 1088)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !270, file: !60, line: 89, baseType: !96, size: 64, offset: 1152)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !270, file: !60, line: 91, baseType: !98, size: 64, offset: 1216)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !270, file: !60, line: 92, baseType: !101, size: 64, offset: 1280)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !270, file: !60, line: 93, baseType: !269, size: 64, offset: 1344)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !270, file: !60, line: 94, baseType: !105, size: 64, offset: 1408)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !270, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !270, file: !60, line: 96, baseType: !52, size: 32, offset: 1536)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !270, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!301 = !{!261}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !304, file: !305, line: 85, type: !410, isLocal: false, isDefinition: true)
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !306, retainedTypes: !312, globals: !383, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!306 = !{!29, !307, !14}
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !30, line: 242, baseType: !6, size: 32, elements: !308)
!308 = !{!309, !310, !311}
!309 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!310 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!311 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!312 = !{!313, !319, !335, !338, !52, !85, !341, !107, !358, !362, !44, !368, !372, !48, !376, !379, !380}
!313 = !DISubprogram(name: "xmemdup", scope: !314, file: !314, line: 62, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!314 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!315 = !DISubroutineType(types: !316)
!316 = !{!105, !317, !109}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!319 = !DISubprogram(name: "quotearg_alloc_mem", scope: !30, file: !30, line: 342, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!320 = !DISubroutineType(types: !321)
!321 = !{!48, !50, !109, !322, !323}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !305, line: 65, size: 448, elements: !326)
!326 = !{!327, !328, !329, !333, !334}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !325, file: !305, line: 68, baseType: !29, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !305, line: 71, baseType: !52, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !325, file: !305, line: 75, baseType: !330, size: 256, offset: 64)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 8)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !325, file: !305, line: 78, baseType: !50, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !325, file: !305, line: 81, baseType: !50, size: 64, offset: 384)
!335 = !DISubprogram(name: "free", scope: !130, file: !130, line: 565, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !105}
!338 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !30, file: !30, line: 408, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!339 = !DISubroutineType(types: !340)
!340 = !{!48, !52, !50, !50, !50, !109}
!341 = !DISubprogram(name: "rpl_mbrtowc", scope: !342, file: !342, line: 717, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!342 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!343 = !DISubroutineType(types: !344)
!344 = !{!109, !149, !50, !109, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 13, size: 64, elements: !348)
!347 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !346, file: !347, line: 15, baseType: !52, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !346, file: !347, line: 20, baseType: !351, size: 32, offset: 32)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !347, line: 16, size: 32, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !351, file: !347, line: 18, baseType: !6, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !351, file: !347, line: 19, baseType: !355, size: 32)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 32, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 4)
!358 = !DISubprogram(name: "iswprint", scope: !359, file: !359, line: 120, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!359 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!360 = !DISubroutineType(types: !361)
!361 = !{!52, !6}
!362 = !DISubprogram(name: "mbsinit", scope: !363, file: !363, line: 292, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!363 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!364 = !DISubroutineType(types: !365)
!365 = !{!52, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!368 = !DISubprogram(name: "locale_charset", scope: !369, file: !369, line: 35, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!369 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!370 = !DISubroutineType(types: !371)
!371 = !{!50}
!372 = !DISubprogram(name: "c_strcasecmp", scope: !373, file: !373, line: 42, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!373 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!374 = !DISubroutineType(types: !375)
!375 = !{!52, !50, !50}
!376 = !DISubprogram(name: "xmalloc", scope: !314, file: !314, line: 53, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!377 = !DISubroutineType(types: !378)
!378 = !{!105, !109}
!379 = !DISubprogram(name: "xalloc_die", scope: !314, file: !314, line: 51, type: !134, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !53)
!380 = !DISubprogram(name: "xrealloc", scope: !314, file: !314, line: 59, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!381 = !DISubroutineType(types: !382)
!382 = !{!105, !105, !109}
!383 = !{!302, !384, !390, !392, !394, !399, !406, !408}
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !304, file: !305, line: 101, type: !386, isLocal: false, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 320, elements: !388)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!388 = !{!389}
!389 = !DISubrange(count: 10)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !304, file: !305, line: 1052, type: !325, isLocal: false, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !304, file: !305, line: 116, type: !325, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "slot0", scope: !304, file: !305, line: 842, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2048, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 256)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "slotvec", scope: !304, file: !305, line: 845, type: !401, isLocal: true, isDefinition: true)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !305, line: 834, size: 128, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !402, file: !305, line: 836, baseType: !107, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !402, file: !305, line: 837, baseType: !48, size: 64, offset: 64)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "nslots", scope: !304, file: !305, line: 843, type: !52, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "slotvec0", scope: !304, file: !305, line: 844, type: !402, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 704, elements: !412)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!412 = !{!413}
!413 = !DISubrange(count: 11)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !416, file: !417, line: 26, type: !419, isLocal: false, isDefinition: true)
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, globals: !418, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!418 = !{!414}
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 376, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 47)
!422 = distinct !DICompileUnit(language: DW_LANG_C99, file: !423, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !424, retainedTypes: !428, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!424 = !{!425}
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !423, line: 40, baseType: !6, size: 32, elements: !426)
!426 = !{!427}
!427 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!428 = !{!44, !429, !105}
!429 = !DISubprogram(name: "fputs_unlocked", scope: !55, file: !55, line: 662, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!430 = !DISubroutineType(types: !431)
!431 = !{!52, !50, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !433, file: !60, line: 51, baseType: !52, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !433, file: !60, line: 54, baseType: !48, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !433, file: !60, line: 55, baseType: !48, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !433, file: !60, line: 56, baseType: !48, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !433, file: !60, line: 57, baseType: !48, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !433, file: !60, line: 58, baseType: !48, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !433, file: !60, line: 59, baseType: !48, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !433, file: !60, line: 60, baseType: !48, size: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !433, file: !60, line: 61, baseType: !48, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !433, file: !60, line: 64, baseType: !48, size: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !433, file: !60, line: 65, baseType: !48, size: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !433, file: !60, line: 66, baseType: !48, size: 64, offset: 704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !433, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !433, file: !60, line: 70, baseType: !432, size: 64, offset: 832)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !433, file: !60, line: 72, baseType: !52, size: 32, offset: 896)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !433, file: !60, line: 73, baseType: !52, size: 32, offset: 928)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !433, file: !60, line: 74, baseType: !81, size: 64, offset: 960)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !433, file: !60, line: 77, baseType: !85, size: 16, offset: 1024)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !433, file: !60, line: 78, baseType: !87, size: 8, offset: 1040)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !433, file: !60, line: 79, baseType: !89, size: 8, offset: 1048)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !433, file: !60, line: 81, baseType: !93, size: 64, offset: 1088)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !433, file: !60, line: 89, baseType: !96, size: 64, offset: 1152)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !433, file: !60, line: 91, baseType: !98, size: 64, offset: 1216)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !433, file: !60, line: 92, baseType: !101, size: 64, offset: 1280)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !433, file: !60, line: 93, baseType: !432, size: 64, offset: 1344)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !433, file: !60, line: 94, baseType: !105, size: 64, offset: 1408)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !433, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !433, file: !60, line: 96, baseType: !52, size: 32, offset: 1536)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !433, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!464 = distinct !DICompileUnit(language: DW_LANG_C99, file: !465, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !466, retainedTypes: !479, splitDebugInlining: false, nameTableKind: None)
!465 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!466 = !{!467}
!467 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !468, file: !314, line: 186, baseType: !6, size: 32, elements: !477)
!468 = distinct !DISubprogram(name: "x2nrealloc", scope: !314, file: !314, line: 174, type: !469, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !472)
!469 = !DISubroutineType(types: !470)
!470 = !{!105, !105, !471, !107}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!472 = !{!473, !474, !475, !476}
!473 = !DILocalVariable(name: "p", arg: 1, scope: !468, file: !314, line: 174, type: !105)
!474 = !DILocalVariable(name: "pn", arg: 2, scope: !468, file: !314, line: 174, type: !471)
!475 = !DILocalVariable(name: "s", arg: 3, scope: !468, file: !314, line: 174, type: !107)
!476 = !DILocalVariable(name: "n", scope: !468, file: !314, line: 176, type: !107)
!477 = !{!478}
!478 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!479 = !{!107, !379, !376, !380, !48, !335, !105, !480, !483}
!480 = !DISubprogram(name: "xcalloc", scope: !314, file: !314, line: 57, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!481 = !DISubroutineType(types: !482)
!482 = !{!105, !109, !109}
!483 = !DISubprogram(name: "rpl_calloc", scope: !484, file: !484, line: 688, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!484 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !487, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!487 = !{!44, !151}
!488 = distinct !DICompileUnit(language: DW_LANG_C99, file: !489, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !490, retainedTypes: !499, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/xdectoimax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!490 = !{!491}
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !492, line: 25, baseType: !6, size: 32, elements: !493)
!492 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!493 = !{!494, !495, !496, !497, !498}
!494 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!495 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!496 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!497 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!498 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!499 = !{!500, !505, !151}
!500 = !DISubprogram(name: "xstrtoimax", scope: !492, file: !492, line: 47, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!501 = !DISubroutineType(types: !502)
!502 = !{!491, !50, !503, !52, !504, !50}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!505 = !DISubprogram(name: "quote", scope: !165, file: !165, line: 44, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!506 = !DISubroutineType(types: !507)
!507 = !{!50, !50}
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !490, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!510 = distinct !DICompileUnit(language: DW_LANG_C99, file: !511, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !512, splitDebugInlining: false, nameTableKind: None)
!511 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!512 = !{!105}
!513 = distinct !DICompileUnit(language: DW_LANG_C99, file: !514, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !515, splitDebugInlining: false, nameTableKind: None)
!514 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!515 = !{!516, !107, !528}
!516 = !DISubprogram(name: "mbrtowc", scope: !363, file: !363, line: 296, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!517 = !DISubroutineType(types: !518)
!518 = !{!109, !149, !50, !109, !519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 13, size: 64, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !520, file: !347, line: 15, baseType: !52, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !520, file: !347, line: 20, baseType: !524, size: 32, offset: 32)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !347, line: 16, size: 32, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !524, file: !347, line: 18, baseType: !6, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !524, file: !347, line: 19, baseType: !355, size: 32)
!528 = !DISubprogram(name: "hard_locale", scope: !529, file: !529, line: 26, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!529 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!530 = !DISubroutineType(types: !531)
!531 = !{!195, !52}
!532 = distinct !DICompileUnit(language: DW_LANG_C99, file: !533, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !534, splitDebugInlining: false, nameTableKind: None)
!533 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!534 = !{!535}
!535 = !DISubprogram(name: "rpl_fclose", scope: !536, file: !536, line: 672, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!536 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!537 = !DISubroutineType(types: !538)
!538 = !{!52, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !540, file: !60, line: 51, baseType: !52, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !540, file: !60, line: 54, baseType: !48, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !540, file: !60, line: 55, baseType: !48, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !540, file: !60, line: 56, baseType: !48, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !540, file: !60, line: 57, baseType: !48, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !540, file: !60, line: 58, baseType: !48, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !540, file: !60, line: 59, baseType: !48, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !540, file: !60, line: 60, baseType: !48, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !540, file: !60, line: 61, baseType: !48, size: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !540, file: !60, line: 64, baseType: !48, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !540, file: !60, line: 65, baseType: !48, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !540, file: !60, line: 66, baseType: !48, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !540, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !540, file: !60, line: 70, baseType: !539, size: 64, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !540, file: !60, line: 72, baseType: !52, size: 32, offset: 896)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !540, file: !60, line: 73, baseType: !52, size: 32, offset: 928)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !540, file: !60, line: 74, baseType: !81, size: 64, offset: 960)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !540, file: !60, line: 77, baseType: !85, size: 16, offset: 1024)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !540, file: !60, line: 78, baseType: !87, size: 8, offset: 1040)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !540, file: !60, line: 79, baseType: !89, size: 8, offset: 1048)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !540, file: !60, line: 81, baseType: !93, size: 64, offset: 1088)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !540, file: !60, line: 89, baseType: !96, size: 64, offset: 1152)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !540, file: !60, line: 91, baseType: !98, size: 64, offset: 1216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !540, file: !60, line: 92, baseType: !101, size: 64, offset: 1280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !540, file: !60, line: 93, baseType: !539, size: 64, offset: 1344)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !540, file: !60, line: 94, baseType: !105, size: 64, offset: 1408)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !540, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !540, file: !60, line: 96, baseType: !52, size: 32, offset: 1536)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !540, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !573, splitDebugInlining: false, nameTableKind: None)
!572 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!573 = !{!574}
!574 = !DISubprogram(name: "setlocale_null_r", scope: !575, file: !575, line: 64, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!575 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!576 = !DISubroutineType(types: !577)
!577 = !{!52, !52, !48, !109}
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !580, retainedTypes: !967, splitDebugInlining: false, nameTableKind: None)
!579 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!580 = !{!581}
!581 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !582, line: 41, baseType: !6, size: 32, elements: !583)
!582 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966}
!584 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!585 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!586 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!587 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!588 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!589 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!590 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!591 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!592 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!593 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!594 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!595 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!596 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!597 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!598 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!599 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!600 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!601 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!602 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!603 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!604 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!605 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!606 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!607 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!608 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!609 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!610 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!611 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!612 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!613 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!614 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!615 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!616 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!617 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!618 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!619 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!620 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!621 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!622 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!623 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!624 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!625 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!626 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!627 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!628 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!629 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!630 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!631 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!632 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!633 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!692 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!695 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!696 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!697 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!698 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!699 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!700 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!701 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!702 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!703 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!704 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!705 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!706 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!779 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!852 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!853 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!854 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!855 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!856 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!857 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!858 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!859 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!860 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!861 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!862 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!863 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!864 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!865 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!866 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!868 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!869 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!870 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!871 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!872 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!873 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!899 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!900 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!901 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!902 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!903 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!908 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!909 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!910 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!911 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!967 = !{!968, !105}
!968 = !DISubprogram(name: "nl_langinfo", scope: !582, file: !582, line: 661, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!969 = !DISubroutineType(types: !970)
!970 = !{!48, !52}
!971 = distinct !DICompileUnit(language: DW_LANG_C99, file: !972, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !973, splitDebugInlining: false, nameTableKind: None)
!972 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!973 = !{!105, !119}
!974 = distinct !DICompileUnit(language: DW_LANG_C99, file: !975, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !976, splitDebugInlining: false, nameTableKind: None)
!975 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!976 = !{!977, !1012, !175, !1013}
!977 = !DISubprogram(name: "fileno", scope: !55, file: !55, line: 786, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!978 = !DISubroutineType(types: !979)
!979 = !{!52, !980}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !981, file: !60, line: 51, baseType: !52, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !981, file: !60, line: 54, baseType: !48, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !981, file: !60, line: 55, baseType: !48, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !981, file: !60, line: 56, baseType: !48, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !981, file: !60, line: 57, baseType: !48, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !981, file: !60, line: 58, baseType: !48, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !981, file: !60, line: 59, baseType: !48, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !981, file: !60, line: 60, baseType: !48, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !981, file: !60, line: 61, baseType: !48, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !981, file: !60, line: 64, baseType: !48, size: 64, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !981, file: !60, line: 65, baseType: !48, size: 64, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !981, file: !60, line: 66, baseType: !48, size: 64, offset: 704)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !981, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !981, file: !60, line: 70, baseType: !980, size: 64, offset: 832)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !981, file: !60, line: 72, baseType: !52, size: 32, offset: 896)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !981, file: !60, line: 73, baseType: !52, size: 32, offset: 928)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !981, file: !60, line: 74, baseType: !81, size: 64, offset: 960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !981, file: !60, line: 77, baseType: !85, size: 16, offset: 1024)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !981, file: !60, line: 78, baseType: !87, size: 8, offset: 1040)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !981, file: !60, line: 79, baseType: !89, size: 8, offset: 1048)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !981, file: !60, line: 81, baseType: !93, size: 64, offset: 1088)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !981, file: !60, line: 89, baseType: !96, size: 64, offset: 1152)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !981, file: !60, line: 91, baseType: !98, size: 64, offset: 1216)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !981, file: !60, line: 92, baseType: !101, size: 64, offset: 1280)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !981, file: !60, line: 93, baseType: !980, size: 64, offset: 1344)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !981, file: !60, line: 94, baseType: !105, size: 64, offset: 1408)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !981, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !981, file: !60, line: 96, baseType: !52, size: 32, offset: 1536)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !981, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!1012 = !DISubprogram(name: "fclose", scope: !55, file: !55, line: 213, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!1013 = !DISubprogram(name: "rpl_fflush", scope: !536, file: !536, line: 718, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!1014 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1015, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !1016, splitDebugInlining: false, nameTableKind: None)
!1015 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1016 = !{!105, !1017, !1052}
!1017 = !DISubprogram(name: "fflush", scope: !55, file: !55, line: 218, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!52, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1021, file: !60, line: 51, baseType: !52, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1021, file: !60, line: 54, baseType: !48, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1021, file: !60, line: 55, baseType: !48, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1021, file: !60, line: 56, baseType: !48, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1021, file: !60, line: 57, baseType: !48, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1021, file: !60, line: 58, baseType: !48, size: 64, offset: 320)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1021, file: !60, line: 59, baseType: !48, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1021, file: !60, line: 60, baseType: !48, size: 64, offset: 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1021, file: !60, line: 61, baseType: !48, size: 64, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1021, file: !60, line: 64, baseType: !48, size: 64, offset: 576)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1021, file: !60, line: 65, baseType: !48, size: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1021, file: !60, line: 66, baseType: !48, size: 64, offset: 704)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1021, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1021, file: !60, line: 70, baseType: !1020, size: 64, offset: 832)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1021, file: !60, line: 72, baseType: !52, size: 32, offset: 896)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1021, file: !60, line: 73, baseType: !52, size: 32, offset: 928)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1021, file: !60, line: 74, baseType: !81, size: 64, offset: 960)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1021, file: !60, line: 77, baseType: !85, size: 16, offset: 1024)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1021, file: !60, line: 78, baseType: !87, size: 8, offset: 1040)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1021, file: !60, line: 79, baseType: !89, size: 8, offset: 1048)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1021, file: !60, line: 81, baseType: !93, size: 64, offset: 1088)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1021, file: !60, line: 89, baseType: !96, size: 64, offset: 1152)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1021, file: !60, line: 91, baseType: !98, size: 64, offset: 1216)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1021, file: !60, line: 92, baseType: !101, size: 64, offset: 1280)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1021, file: !60, line: 93, baseType: !1020, size: 64, offset: 1344)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1021, file: !60, line: 94, baseType: !105, size: 64, offset: 1408)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1021, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1021, file: !60, line: 96, baseType: !52, size: 32, offset: 1536)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1021, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!1052 = !DISubprogram(name: "rpl_fseeko", scope: !536, file: !536, line: 1034, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!52, !1020, !83, !52}
!1055 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1056, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !1057, splitDebugInlining: false, nameTableKind: None)
!1056 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1057 = !{!105, !1058, !175, !1093}
!1058 = !DISubprogram(name: "fileno", scope: !55, file: !55, line: 786, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!52, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 49, size: 1728, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1062, file: !60, line: 51, baseType: !52, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1062, file: !60, line: 54, baseType: !48, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1062, file: !60, line: 55, baseType: !48, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1062, file: !60, line: 56, baseType: !48, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1062, file: !60, line: 57, baseType: !48, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1062, file: !60, line: 58, baseType: !48, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1062, file: !60, line: 59, baseType: !48, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1062, file: !60, line: 60, baseType: !48, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1062, file: !60, line: 61, baseType: !48, size: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1062, file: !60, line: 64, baseType: !48, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1062, file: !60, line: 65, baseType: !48, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1062, file: !60, line: 66, baseType: !48, size: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1062, file: !60, line: 68, baseType: !75, size: 64, offset: 768)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1062, file: !60, line: 70, baseType: !1061, size: 64, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1062, file: !60, line: 72, baseType: !52, size: 32, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1062, file: !60, line: 73, baseType: !52, size: 32, offset: 928)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1062, file: !60, line: 74, baseType: !81, size: 64, offset: 960)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1062, file: !60, line: 77, baseType: !85, size: 16, offset: 1024)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1062, file: !60, line: 78, baseType: !87, size: 8, offset: 1040)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1062, file: !60, line: 79, baseType: !89, size: 8, offset: 1048)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1062, file: !60, line: 81, baseType: !93, size: 64, offset: 1088)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1062, file: !60, line: 89, baseType: !96, size: 64, offset: 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1062, file: !60, line: 91, baseType: !98, size: 64, offset: 1216)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1062, file: !60, line: 92, baseType: !101, size: 64, offset: 1280)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1062, file: !60, line: 93, baseType: !1061, size: 64, offset: 1344)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1062, file: !60, line: 94, baseType: !105, size: 64, offset: 1408)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1062, file: !60, line: 95, baseType: !107, size: 64, offset: 1472)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1062, file: !60, line: 96, baseType: !52, size: 32, offset: 1536)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1062, file: !60, line: 98, baseType: !112, size: 160, offset: 1568)
!1093 = !DISubprogram(name: "fseeko", scope: !55, file: !55, line: 707, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !53)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!52, !1061, !83, !52}
!1096 = !{!"clang version 10.0.0 "}
!1097 = !{i32 7, !"Dwarf Version", i32 4}
!1098 = !{i32 2, !"Debug Info Version", i32 3}
!1099 = !{i32 1, !"wchar_size", i32 4}
!1100 = !{i32 7, !"PIC Level", i32 2}
!1101 = !{i32 7, !"PIE Level", i32 2}
!1102 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 64, type: !1103, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !52}
!1105 = !{!1106}
!1106 = !DILocalVariable(name: "status", arg: 1, scope: !1102, file: !3, line: 64, type: !52)
!1107 = !DILocalVariable(name: "infomap", scope: !1108, file: !1109, line: 636, type: !1121)
!1108 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1109, file: !1109, line: 634, type: !117, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1110)
!1109 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1110 = !{!1111, !1107, !1112, !1113, !1120}
!1111 = !DILocalVariable(name: "program", arg: 1, scope: !1108, file: !1109, line: 634, type: !50)
!1112 = !DILocalVariable(name: "node", scope: !1108, file: !1109, line: 646, type: !50)
!1113 = !DILocalVariable(name: "map_prog", scope: !1108, file: !1109, line: 647, type: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1108, file: !1109, line: 636, size: 128, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1116, file: !1109, line: 636, baseType: !50, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1116, file: !1109, line: 636, baseType: !50, size: 64, offset: 64)
!1120 = !DILocalVariable(name: "lc_messages", scope: !1108, file: !1109, line: 659, type: !50)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 896, elements: !201)
!1122 = !DILocation(line: 636, column: 67, scope: !1108, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 99, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 69, column: 5)
!1125 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 66, column: 7)
!1126 = !DILocation(line: 0, scope: !1102)
!1127 = !DILocation(line: 66, column: 14, scope: !1125)
!1128 = !DILocation(line: 66, column: 7, scope: !1102)
!1129 = !DILocation(line: 67, column: 5, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 67, column: 5)
!1131 = !{!1132, !1132, i64 0}
!1132 = !{!"any pointer", !1133, i64 0}
!1133 = !{!"omnipotent char", !1134, i64 0}
!1134 = !{!"Simple C/C++ TBAA"}
!1135 = !DILocation(line: 70, column: 7, scope: !1124)
!1136 = !DILocation(line: 71, column: 7, scope: !1124)
!1137 = !DILocation(line: 590, column: 3, scope: !1138, inlinedAt: !1139)
!1138 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1109, file: !1109, line: 588, type: !134, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!1139 = distinct !DILocation(line: 81, column: 7, scope: !1124)
!1140 = !DILocation(line: 83, column: 7, scope: !1124)
!1141 = !DILocation(line: 86, column: 7, scope: !1124)
!1142 = !DILocation(line: 89, column: 7, scope: !1124)
!1143 = !DILocation(line: 92, column: 7, scope: !1124)
!1144 = !DILocation(line: 93, column: 7, scope: !1124)
!1145 = !DILocation(line: 598, column: 3, scope: !1146, inlinedAt: !1147)
!1146 = distinct !DISubprogram(name: "emit_size_note", scope: !1109, file: !1109, line: 596, type: !134, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!1147 = distinct !DILocation(line: 94, column: 7, scope: !1124)
!1148 = !DILocation(line: 95, column: 7, scope: !1124)
!1149 = !DILocation(line: 0, scope: !1108, inlinedAt: !1123)
!1150 = !DILocation(line: 636, column: 3, scope: !1108, inlinedAt: !1123)
!1151 = !DILocation(line: 647, column: 36, scope: !1108, inlinedAt: !1123)
!1152 = !DILocation(line: 649, column: 3, scope: !1108, inlinedAt: !1123)
!1153 = !DILocation(line: 649, column: 33, scope: !1108, inlinedAt: !1123)
!1154 = !DILocation(line: 650, column: 13, scope: !1108, inlinedAt: !1123)
!1155 = !DILocation(line: 649, column: 20, scope: !1108, inlinedAt: !1123)
!1156 = !{!1157, !1132, i64 0}
!1157 = !{!"infomap", !1132, i64 0, !1132, i64 8}
!1158 = !DILocation(line: 649, column: 10, scope: !1108, inlinedAt: !1123)
!1159 = !DILocation(line: 649, column: 28, scope: !1108, inlinedAt: !1123)
!1160 = distinct !{!1160, !1152, !1154}
!1161 = !DILocation(line: 652, column: 17, scope: !1162, inlinedAt: !1123)
!1162 = distinct !DILexicalBlock(scope: !1108, file: !1109, line: 652, column: 7)
!1163 = !{!1157, !1132, i64 8}
!1164 = !DILocation(line: 652, column: 7, scope: !1162, inlinedAt: !1123)
!1165 = !DILocation(line: 652, column: 7, scope: !1108, inlinedAt: !1123)
!1166 = !DILocation(line: 655, column: 3, scope: !1108, inlinedAt: !1123)
!1167 = !DILocation(line: 659, column: 29, scope: !1108, inlinedAt: !1123)
!1168 = !DILocation(line: 660, column: 7, scope: !1169, inlinedAt: !1123)
!1169 = distinct !DILexicalBlock(scope: !1108, file: !1109, line: 660, column: 7)
!1170 = !DILocation(line: 660, column: 19, scope: !1169, inlinedAt: !1123)
!1171 = !DILocation(line: 660, column: 22, scope: !1169, inlinedAt: !1123)
!1172 = !DILocation(line: 660, column: 7, scope: !1108, inlinedAt: !1123)
!1173 = !DILocation(line: 666, column: 7, scope: !1174, inlinedAt: !1123)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !1109, line: 661, column: 5)
!1175 = !DILocation(line: 668, column: 5, scope: !1174, inlinedAt: !1123)
!1176 = !DILocation(line: 669, column: 3, scope: !1108, inlinedAt: !1123)
!1177 = !DILocation(line: 671, column: 3, scope: !1108, inlinedAt: !1123)
!1178 = !DILocation(line: 673, column: 1, scope: !1108, inlinedAt: !1123)
!1179 = !DILocation(line: 101, column: 3, scope: !1102)
!1180 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 202, type: !1181, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!52, !52, !503}
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1192, !1193, !1194, !1195, !1196, !1235, !1236, !1239, !1242}
!1184 = !DILocalVariable(name: "argc", arg: 1, scope: !1180, file: !3, line: 202, type: !52)
!1185 = !DILocalVariable(name: "argv", arg: 2, scope: !1180, file: !3, line: 202, type: !503)
!1186 = !DILocalVariable(name: "got_size", scope: !1180, file: !3, line: 204, type: !195)
!1187 = !DILocalVariable(name: "errors", scope: !1180, file: !3, line: 205, type: !195)
!1188 = !DILocalVariable(name: "size", scope: !1180, file: !3, line: 206, type: !155)
!1189 = !DILocalVariable(name: "rsize", scope: !1180, file: !3, line: 207, type: !155)
!1190 = !DILocalVariable(name: "rel_mode", scope: !1180, file: !3, line: 208, type: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !3, line: 61, baseType: !5)
!1192 = !DILocalVariable(name: "c", scope: !1180, file: !3, line: 209, type: !52)
!1193 = !DILocalVariable(name: "fd", scope: !1180, file: !3, line: 209, type: !52)
!1194 = !DILocalVariable(name: "oflags", scope: !1180, file: !3, line: 209, type: !52)
!1195 = !DILocalVariable(name: "fname", scope: !1180, file: !3, line: 210, type: !50)
!1196 = !DILocalVariable(name: "sb", scope: !1197, file: !3, line: 324, type: !1199)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 323, column: 5)
!1198 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 322, column: 7)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1200, line: 46, size: 1152, elements: !1201)
!1200 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!1201 = !{!1202, !1204, !1206, !1208, !1210, !1212, !1214, !1215, !1216, !1217, !1219, !1221, !1229, !1230, !1231}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1199, file: !1200, line: 48, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !82, line: 145, baseType: !109)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1199, file: !1200, line: 53, baseType: !1205, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !82, line: 148, baseType: !109)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1199, file: !1200, line: 61, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !82, line: 151, baseType: !109)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1199, file: !1200, line: 62, baseType: !1209, size: 32, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !82, line: 150, baseType: !6)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1199, file: !1200, line: 64, baseType: !1211, size: 32, offset: 224)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !82, line: 146, baseType: !6)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1199, file: !1200, line: 65, baseType: !1213, size: 32, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !82, line: 147, baseType: !6)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1199, file: !1200, line: 67, baseType: !52, size: 32, offset: 288)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1199, file: !1200, line: 69, baseType: !1203, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1199, file: !1200, line: 74, baseType: !81, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1199, file: !1200, line: 78, baseType: !1218, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !82, line: 174, baseType: !83)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1199, file: !1200, line: 80, baseType: !1220, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !82, line: 179, baseType: !83)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1199, file: !1200, line: 91, baseType: !1222, size: 128, offset: 576)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1223, line: 10, size: 128, elements: !1224)
!1223 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1224 = !{!1225, !1227}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1222, file: !1223, line: 12, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !82, line: 160, baseType: !83)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1222, file: !1223, line: 16, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !82, line: 196, baseType: !83)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1199, file: !1200, line: 92, baseType: !1222, size: 128, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1199, file: !1200, line: 93, baseType: !1222, size: 128, offset: 832)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1199, file: !1200, line: 106, baseType: !1232, size: 192, offset: 960)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1228, size: 192, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 3)
!1235 = !DILocalVariable(name: "file_size", scope: !1197, file: !3, line: 325, type: !155)
!1236 = !DILocalVariable(name: "ref_fd", scope: !1237, file: !3, line: 332, type: !52)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 331, column: 9)
!1238 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 328, column: 11)
!1239 = !DILocalVariable(name: "file_end", scope: !1240, file: !3, line: 335, type: !155)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 334, column: 13)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 333, column: 15)
!1242 = !DILocalVariable(name: "saved_errno", scope: !1240, file: !3, line: 336, type: !52)
!1243 = !DILocalVariable(name: "sb", scope: !1244, file: !3, line: 109, type: !1199)
!1244 = distinct !DISubprogram(name: "do_ftruncate", scope: !3, file: !3, line: 106, type: !1245, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1247)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!195, !52, !50, !155, !155, !1191}
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1243, !1253, !1254, !1258, !1259, !1262}
!1248 = !DILocalVariable(name: "fd", arg: 1, scope: !1244, file: !3, line: 106, type: !52)
!1249 = !DILocalVariable(name: "fname", arg: 2, scope: !1244, file: !3, line: 106, type: !50)
!1250 = !DILocalVariable(name: "ssize", arg: 3, scope: !1244, file: !3, line: 106, type: !155)
!1251 = !DILocalVariable(name: "rsize", arg: 4, scope: !1244, file: !3, line: 106, type: !155)
!1252 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !1244, file: !3, line: 107, type: !1191)
!1253 = !DILocalVariable(name: "nsize", scope: !1244, file: !3, line: 110, type: !155)
!1254 = !DILocalVariable(name: "blksize", scope: !1255, file: !3, line: 119, type: !1257)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 118, column: 5)
!1256 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 117, column: 7)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !108, line: 35, baseType: !83)
!1258 = !DILocalVariable(name: "ssize0", scope: !1255, file: !3, line: 120, type: !189)
!1259 = !DILocalVariable(name: "fsize", scope: !1260, file: !3, line: 132, type: !155)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 131, column: 5)
!1261 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 130, column: 7)
!1262 = !DILocalVariable(name: "r", scope: !1263, file: !3, line: 174, type: !155)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 172, column: 13)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 171, column: 15)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 170, column: 9)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 166, column: 16)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 164, column: 16)
!1268 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 162, column: 11)
!1269 = !DILocation(line: 109, column: 15, scope: !1244, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 378, column: 22, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 377, column: 9)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 376, column: 11)
!1273 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 359, column: 5)
!1274 = !DILocation(line: 0, scope: !1180)
!1275 = !DILocation(line: 213, column: 21, scope: !1180)
!1276 = !DILocation(line: 213, column: 3, scope: !1180)
!1277 = !DILocation(line: 214, column: 3, scope: !1180)
!1278 = !DILocation(line: 215, column: 3, scope: !1180)
!1279 = !DILocation(line: 216, column: 3, scope: !1180)
!1280 = !DILocation(line: 218, column: 3, scope: !1180)
!1281 = !DILocation(line: 220, column: 3, scope: !1180)
!1282 = !DILocation(line: 220, column: 15, scope: !1180)
!1283 = !DILocation(line: 238, column: 18, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 223, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 221, column: 5)
!1286 = !{!1133, !1133, i64 0}
!1287 = !{!1288, !1288, i64 0}
!1288 = !{!"short", !1133, i64 0}
!1289 = !DILocation(line: 238, column: 11, scope: !1284)
!1290 = !DILocation(line: 225, column: 21, scope: !1284)
!1291 = !DILocation(line: 226, column: 11, scope: !1284)
!1292 = !DILocation(line: 229, column: 22, scope: !1284)
!1293 = !DILocation(line: 230, column: 11, scope: !1284)
!1294 = !DILocation(line: 233, column: 22, scope: !1284)
!1295 = !DILocation(line: 233, column: 20, scope: !1284)
!1296 = !DILocation(line: 234, column: 11, scope: !1284)
!1297 = distinct !{!1297, !1281, !1298}
!1298 = !DILocation(line: 289, column: 5, scope: !1180)
!1299 = !DILocation(line: 239, column: 19, scope: !1284)
!1300 = distinct !{!1300, !1289, !1299}
!1301 = !DILocation(line: 240, column: 19, scope: !1284)
!1302 = !DILocation(line: 240, column: 11, scope: !1284)
!1303 = !DILocation(line: 244, column: 21, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 241, column: 13)
!1305 = !DILocation(line: 245, column: 15, scope: !1304)
!1306 = !DILocation(line: 248, column: 21, scope: !1304)
!1307 = !DILocation(line: 249, column: 15, scope: !1304)
!1308 = !DILocation(line: 252, column: 21, scope: !1304)
!1309 = !DILocation(line: 253, column: 15, scope: !1304)
!1310 = !DILocation(line: 256, column: 21, scope: !1304)
!1311 = !DILocation(line: 257, column: 15, scope: !1304)
!1312 = !DILocation(line: 0, scope: !1304)
!1313 = !DILocation(line: 260, column: 18, scope: !1284)
!1314 = !DILocation(line: 260, column: 11, scope: !1284)
!1315 = !DILocation(line: 261, column: 19, scope: !1284)
!1316 = distinct !{!1316, !1314, !1315}
!1317 = !DILocation(line: 262, column: 30, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 262, column: 15)
!1319 = !DILocation(line: 264, column: 19, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 264, column: 19)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 263, column: 13)
!1322 = !DILocation(line: 264, column: 19, scope: !1321)
!1323 = !DILocation(line: 266, column: 32, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 265, column: 17)
!1325 = !DILocation(line: 266, column: 19, scope: !1324)
!1326 = !DILocation(line: 268, column: 19, scope: !1324)
!1327 = !DILocation(line: 275, column: 30, scope: !1284)
!1328 = !DILocation(line: 274, column: 18, scope: !1284)
!1329 = !DILocation(line: 277, column: 35, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 277, column: 15)
!1331 = !DILocation(line: 277, column: 66, scope: !1330)
!1332 = !DILocation(line: 278, column: 13, scope: !1330)
!1333 = !DILocation(line: 282, column: 9, scope: !1284)
!1334 = !DILocation(line: 284, column: 9, scope: !1284)
!1335 = !DILocation(line: 287, column: 11, scope: !1284)
!1336 = !DILocation(line: 291, column: 11, scope: !1180)
!1337 = !{!1338, !1338, i64 0}
!1338 = !{!"int", !1133, i64 0}
!1339 = !DILocation(line: 291, column: 8, scope: !1180)
!1340 = !DILocation(line: 295, column: 8, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 295, column: 7)
!1342 = !DILocation(line: 295, column: 21, scope: !1341)
!1343 = !DILocation(line: 295, column: 17, scope: !1341)
!1344 = !DILocation(line: 297, column: 20, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 296, column: 5)
!1346 = !DILocation(line: 298, column: 14, scope: !1345)
!1347 = !DILocation(line: 298, column: 37, scope: !1345)
!1348 = !DILocation(line: 297, column: 7, scope: !1345)
!1349 = !DILocation(line: 299, column: 7, scope: !1345)
!1350 = !DILocation(line: 302, column: 32, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 302, column: 7)
!1352 = !DILocation(line: 302, column: 28, scope: !1351)
!1353 = !DILocation(line: 302, column: 16, scope: !1351)
!1354 = !DILocation(line: 304, column: 20, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 303, column: 5)
!1356 = !DILocation(line: 305, column: 14, scope: !1355)
!1357 = !DILocation(line: 305, column: 37, scope: !1355)
!1358 = !DILocation(line: 304, column: 7, scope: !1355)
!1359 = !DILocation(line: 306, column: 7, scope: !1355)
!1360 = !DILocation(line: 309, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 309, column: 7)
!1362 = !DILocation(line: 309, column: 18, scope: !1361)
!1363 = !DILocation(line: 311, column: 20, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 310, column: 5)
!1365 = !DILocation(line: 312, column: 14, scope: !1364)
!1366 = !DILocation(line: 312, column: 42, scope: !1364)
!1367 = !DILocation(line: 311, column: 7, scope: !1364)
!1368 = !DILocation(line: 313, column: 7, scope: !1364)
!1369 = !DILocation(line: 316, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 316, column: 7)
!1371 = !DILocation(line: 316, column: 7, scope: !1180)
!1372 = !DILocation(line: 318, column: 20, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 317, column: 5)
!1374 = !DILocation(line: 318, column: 7, scope: !1373)
!1375 = !DILocation(line: 319, column: 7, scope: !1373)
!1376 = !DILocation(line: 322, column: 7, scope: !1180)
!1377 = !DILocation(line: 324, column: 7, scope: !1197)
!1378 = !DILocation(line: 324, column: 19, scope: !1197)
!1379 = !DILocation(line: 0, scope: !1197)
!1380 = !DILocalVariable(name: "__path", arg: 1, scope: !1381, file: !1382, line: 453, type: !50)
!1381 = distinct !DISubprogram(name: "stat", scope: !1382, file: !1382, line: 453, type: !1383, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1382 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!52, !50, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1386 = !{!1380, !1387}
!1387 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1381, file: !1382, line: 453, type: !1385)
!1388 = !DILocation(line: 0, scope: !1381, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 326, column: 11, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 326, column: 11)
!1391 = !DILocation(line: 455, column: 10, scope: !1381, inlinedAt: !1389)
!1392 = !DILocation(line: 326, column: 32, scope: !1390)
!1393 = !DILocation(line: 326, column: 11, scope: !1197)
!1394 = !DILocation(line: 327, column: 9, scope: !1390)
!1395 = !DILocalVariable(name: "sb", arg: 1, scope: !1396, file: !1109, line: 705, type: !1399)
!1396 = distinct !DISubprogram(name: "usable_st_size", scope: !1109, file: !1109, line: 705, type: !1397, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1401)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!195, !1399}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1401 = !{!1395}
!1402 = !DILocation(line: 0, scope: !1396, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 328, column: 11, scope: !1238)
!1404 = !DILocation(line: 707, column: 11, scope: !1396, inlinedAt: !1403)
!1405 = !{!1406, !1338, i64 24}
!1406 = !{!"stat", !1407, i64 0, !1407, i64 8, !1407, i64 16, !1338, i64 24, !1338, i64 28, !1338, i64 32, !1338, i64 36, !1407, i64 40, !1407, i64 48, !1407, i64 56, !1407, i64 64, !1408, i64 72, !1408, i64 88, !1408, i64 104, !1133, i64 120}
!1407 = !{!"long", !1133, i64 0}
!1408 = !{!"timespec", !1407, i64 0, !1407, i64 8}
!1409 = !DILocation(line: 707, column: 33, scope: !1396, inlinedAt: !1403)
!1410 = !DILocation(line: 332, column: 30, scope: !1237)
!1411 = !DILocation(line: 332, column: 24, scope: !1237)
!1412 = !DILocation(line: 0, scope: !1237)
!1413 = !DILocation(line: 333, column: 17, scope: !1241)
!1414 = !DILocation(line: 333, column: 15, scope: !1237)
!1415 = !DILocation(line: 335, column: 32, scope: !1240)
!1416 = !DILocation(line: 0, scope: !1240)
!1417 = !DILocation(line: 336, column: 33, scope: !1240)
!1418 = !DILocation(line: 337, column: 15, scope: !1240)
!1419 = !DILocation(line: 338, column: 21, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 338, column: 19)
!1421 = !DILocation(line: 338, column: 19, scope: !1240)
!1422 = !DILocation(line: 343, column: 25, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 341, column: 17)
!1424 = !DILocation(line: 329, column: 24, scope: !1238)
!1425 = !{!1406, !1407, i64 48}
!1426 = !DILocation(line: 347, column: 21, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 347, column: 11)
!1428 = !DILocation(line: 347, column: 11, scope: !1197)
!1429 = !DILocation(line: 348, column: 9, scope: !1427)
!1430 = !DILocation(line: 354, column: 5, scope: !1198)
!1431 = !DILocation(line: 354, column: 5, scope: !1197)
!1432 = !DILocation(line: 356, column: 24, scope: !1180)
!1433 = !DILocation(line: 356, column: 49, scope: !1180)
!1434 = !DILocation(line: 358, column: 19, scope: !1180)
!1435 = !DILocation(line: 358, column: 28, scope: !1180)
!1436 = !DILocation(line: 358, column: 3, scope: !1180)
!1437 = !DILocation(line: 0, scope: !1244, inlinedAt: !1270)
!1438 = !DILocation(line: 0, scope: !1439, inlinedAt: !1270)
!1439 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 112, column: 7)
!1440 = !DILocation(line: 0, scope: !1255, inlinedAt: !1270)
!1441 = !DILocation(line: 0, scope: !1442, inlinedAt: !1270)
!1442 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 121, column: 11)
!1443 = !DILocation(line: 0, scope: !1261, inlinedAt: !1270)
!1444 = !DILocation(line: 0, scope: !1445, inlinedAt: !1270)
!1445 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 134, column: 11)
!1446 = !DILocation(line: 0, scope: !1396, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 138, column: 15, scope: !1448, inlinedAt: !1270)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 138, column: 15)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 137, column: 9)
!1450 = !DILocation(line: 0, scope: !1451, inlinedAt: !1270)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 139, column: 13)
!1452 = !DILocation(line: 358, column: 24, scope: !1180)
!1453 = !DILocation(line: 360, column: 17, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 360, column: 11)
!1455 = !DILocation(line: 360, column: 52, scope: !1454)
!1456 = !DILocation(line: 360, column: 11, scope: !1273)
!1457 = !DILocation(line: 366, column: 17, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 366, column: 15)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 361, column: 9)
!1460 = !DILocation(line: 0, scope: !1458)
!1461 = !DILocation(line: 366, column: 27, scope: !1458)
!1462 = !DILocation(line: 366, column: 30, scope: !1458)
!1463 = !DILocation(line: 366, column: 36, scope: !1458)
!1464 = !DILocation(line: 366, column: 15, scope: !1459)
!1465 = !DILocation(line: 368, column: 25, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 367, column: 13)
!1467 = !DILocation(line: 368, column: 32, scope: !1466)
!1468 = !DILocation(line: 369, column: 22, scope: !1466)
!1469 = !DILocation(line: 368, column: 15, scope: !1466)
!1470 = !DILocation(line: 371, column: 13, scope: !1466)
!1471 = distinct !{!1471, !1436, !1472}
!1472 = !DILocation(line: 385, column: 5, scope: !1180)
!1473 = !DILocation(line: 109, column: 3, scope: !1244, inlinedAt: !1270)
!1474 = !DILocation(line: 112, column: 8, scope: !1439, inlinedAt: !1270)
!1475 = !DILocation(line: 112, column: 19, scope: !1439, inlinedAt: !1270)
!1476 = !DILocalVariable(name: "__fd", arg: 1, scope: !1477, file: !1382, line: 467, type: !52)
!1477 = distinct !DISubprogram(name: "fstat", scope: !1382, file: !1382, line: 467, type: !1478, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!52, !52, !1385}
!1480 = !{!1476, !1481}
!1481 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1477, file: !1382, line: 467, type: !1385)
!1482 = !DILocation(line: 0, scope: !1477, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 112, column: 50, scope: !1439, inlinedAt: !1270)
!1484 = !DILocation(line: 469, column: 10, scope: !1477, inlinedAt: !1483)
!1485 = !DILocation(line: 112, column: 66, scope: !1439, inlinedAt: !1270)
!1486 = !DILocation(line: 112, column: 7, scope: !1244, inlinedAt: !1270)
!1487 = !DILocation(line: 114, column: 17, scope: !1488, inlinedAt: !1270)
!1488 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 113, column: 5)
!1489 = !DILocation(line: 114, column: 24, scope: !1488, inlinedAt: !1270)
!1490 = !DILocation(line: 114, column: 46, scope: !1488, inlinedAt: !1270)
!1491 = !DILocation(line: 114, column: 7, scope: !1488, inlinedAt: !1270)
!1492 = !DILocation(line: 115, column: 7, scope: !1488, inlinedAt: !1270)
!1493 = !DILocation(line: 117, column: 7, scope: !1256, inlinedAt: !1270)
!1494 = !DILocation(line: 117, column: 7, scope: !1244, inlinedAt: !1270)
!1495 = !DILocation(line: 119, column: 27, scope: !1255, inlinedAt: !1270)
!1496 = !{!1406, !1407, i64 56}
!1497 = !DILocation(line: 121, column: 11, scope: !1442, inlinedAt: !1270)
!1498 = !DILocation(line: 124, column: 18, scope: !1499, inlinedAt: !1270)
!1499 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 122, column: 9)
!1500 = !DILocation(line: 126, column: 35, scope: !1499, inlinedAt: !1270)
!1501 = !DILocation(line: 123, column: 11, scope: !1499, inlinedAt: !1270)
!1502 = !DILocation(line: 130, column: 7, scope: !1244, inlinedAt: !1270)
!1503 = !DILocation(line: 134, column: 11, scope: !1260, inlinedAt: !1270)
!1504 = !DILocation(line: 707, column: 11, scope: !1396, inlinedAt: !1447)
!1505 = !DILocation(line: 707, column: 33, scope: !1396, inlinedAt: !1447)
!1506 = !DILocation(line: 140, column: 26, scope: !1451, inlinedAt: !1270)
!1507 = !DILocation(line: 0, scope: !1260, inlinedAt: !1270)
!1508 = !DILocation(line: 141, column: 25, scope: !1509, inlinedAt: !1270)
!1509 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 141, column: 19)
!1510 = !DILocation(line: 141, column: 19, scope: !1451, inlinedAt: !1270)
!1511 = !DILocation(line: 145, column: 32, scope: !1512, inlinedAt: !1270)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 142, column: 17)
!1513 = !DILocation(line: 146, column: 26, scope: !1512, inlinedAt: !1270)
!1514 = !DILocation(line: 145, column: 19, scope: !1512, inlinedAt: !1270)
!1515 = !DILocation(line: 147, column: 19, scope: !1512, inlinedAt: !1270)
!1516 = !DILocation(line: 152, column: 23, scope: !1517, inlinedAt: !1270)
!1517 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 151, column: 13)
!1518 = !DILocation(line: 153, column: 25, scope: !1519, inlinedAt: !1270)
!1519 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 153, column: 19)
!1520 = !DILocation(line: 153, column: 19, scope: !1517, inlinedAt: !1270)
!1521 = !DILocation(line: 155, column: 29, scope: !1522, inlinedAt: !1270)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 154, column: 17)
!1523 = !DILocation(line: 155, column: 36, scope: !1522, inlinedAt: !1270)
!1524 = !DILocation(line: 156, column: 26, scope: !1522, inlinedAt: !1270)
!1525 = !DILocation(line: 155, column: 19, scope: !1522, inlinedAt: !1270)
!1526 = !DILocation(line: 157, column: 19, scope: !1522, inlinedAt: !1270)
!1527 = !DILocation(line: 162, column: 11, scope: !1260, inlinedAt: !1270)
!1528 = !DILocation(line: 163, column: 17, scope: !1268, inlinedAt: !1270)
!1529 = !DILocation(line: 163, column: 9, scope: !1268, inlinedAt: !1270)
!1530 = !DILocation(line: 165, column: 17, scope: !1267, inlinedAt: !1270)
!1531 = !DILocation(line: 165, column: 9, scope: !1267, inlinedAt: !1270)
!1532 = !DILocation(line: 168, column: 31, scope: !1266, inlinedAt: !1270)
!1533 = !DILocation(line: 168, column: 23, scope: !1266, inlinedAt: !1270)
!1534 = !DILocation(line: 168, column: 9, scope: !1266, inlinedAt: !1270)
!1535 = !DILocation(line: 174, column: 31, scope: !1263, inlinedAt: !1270)
!1536 = !DILocation(line: 0, scope: !1263, inlinedAt: !1270)
!1537 = !DILocation(line: 175, column: 25, scope: !1263, inlinedAt: !1270)
!1538 = !DILocation(line: 175, column: 23, scope: !1263, inlinedAt: !1270)
!1539 = !DILocation(line: 176, column: 13, scope: !1263, inlinedAt: !1270)
!1540 = !DILocation(line: 177, column: 15, scope: !1541, inlinedAt: !1270)
!1541 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 177, column: 15)
!1542 = !DILocation(line: 177, column: 15, scope: !1265, inlinedAt: !1270)
!1543 = !DILocation(line: 179, column: 28, scope: !1544, inlinedAt: !1270)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 178, column: 13)
!1545 = !DILocation(line: 180, column: 22, scope: !1544, inlinedAt: !1270)
!1546 = !DILocation(line: 179, column: 15, scope: !1544, inlinedAt: !1270)
!1547 = !DILocation(line: 181, column: 15, scope: !1544, inlinedAt: !1270)
!1548 = !DILocation(line: 187, column: 7, scope: !1244, inlinedAt: !1270)
!1549 = !DILocation(line: 190, column: 7, scope: !1550, inlinedAt: !1270)
!1550 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 190, column: 7)
!1551 = !DILocation(line: 190, column: 29, scope: !1550, inlinedAt: !1270)
!1552 = !DILocation(line: 190, column: 7, scope: !1244, inlinedAt: !1270)
!1553 = !DILocation(line: 192, column: 17, scope: !1554, inlinedAt: !1270)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 191, column: 5)
!1555 = !DILocation(line: 193, column: 14, scope: !1554, inlinedAt: !1270)
!1556 = !DILocation(line: 193, column: 64, scope: !1554, inlinedAt: !1270)
!1557 = !DILocation(line: 192, column: 7, scope: !1554, inlinedAt: !1270)
!1558 = !DILocation(line: 195, column: 7, scope: !1554, inlinedAt: !1270)
!1559 = !DILocation(line: 199, column: 1, scope: !1244, inlinedAt: !1270)
!1560 = !DILocation(line: 378, column: 18, scope: !1271)
!1561 = !DILocation(line: 379, column: 15, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 379, column: 15)
!1563 = !DILocation(line: 379, column: 26, scope: !1562)
!1564 = !DILocation(line: 379, column: 15, scope: !1271)
!1565 = !DILocation(line: 381, column: 25, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 380, column: 13)
!1567 = !DILocation(line: 381, column: 32, scope: !1566)
!1568 = !DILocation(line: 381, column: 57, scope: !1566)
!1569 = !DILocation(line: 381, column: 15, scope: !1566)
!1570 = !DILocation(line: 383, column: 13, scope: !1566)
!1571 = !DILocation(line: 387, column: 10, scope: !1180)
!1572 = !DILocation(line: 388, column: 1, scope: !1180)
!1573 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !213, file: !213, line: 51, type: !117, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1574)
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "file", arg: 1, scope: !1573, file: !213, line: 51, type: !50)
!1576 = !DILocation(line: 0, scope: !1573)
!1577 = !DILocation(line: 53, column: 13, scope: !1573)
!1578 = !DILocation(line: 54, column: 1, scope: !1573)
!1579 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !213, file: !213, line: 88, type: !1580, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !195}
!1582 = !{!1583}
!1583 = !DILocalVariable(name: "ignore", arg: 1, scope: !1579, file: !213, line: 88, type: !195)
!1584 = !DILocation(line: 0, scope: !1579)
!1585 = !DILocation(line: 90, column: 16, scope: !1579)
!1586 = !{!1587, !1587, i64 0}
!1587 = !{!"_Bool", !1133, i64 0}
!1588 = !DILocation(line: 91, column: 1, scope: !1579)
!1589 = distinct !DISubprogram(name: "close_stdout", scope: !213, file: !213, line: 117, type: !134, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1590)
!1590 = !{!1591}
!1591 = !DILocalVariable(name: "write_error", scope: !1592, file: !213, line: 122, type: !50)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !213, line: 121, column: 5)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !213, line: 119, column: 7)
!1594 = !DILocation(line: 119, column: 21, scope: !1593)
!1595 = !DILocation(line: 119, column: 7, scope: !1593)
!1596 = !DILocation(line: 119, column: 29, scope: !1593)
!1597 = !DILocation(line: 120, column: 7, scope: !1593)
!1598 = !DILocation(line: 120, column: 12, scope: !1593)
!1599 = !{i8 0, i8 2}
!1600 = !DILocation(line: 120, column: 25, scope: !1593)
!1601 = !DILocation(line: 120, column: 28, scope: !1593)
!1602 = !DILocation(line: 120, column: 34, scope: !1593)
!1603 = !DILocation(line: 119, column: 7, scope: !1589)
!1604 = !DILocation(line: 122, column: 33, scope: !1592)
!1605 = !DILocation(line: 0, scope: !1592)
!1606 = !DILocation(line: 123, column: 11, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1592, file: !213, line: 123, column: 11)
!1608 = !DILocation(line: 0, scope: !1607)
!1609 = !DILocation(line: 123, column: 11, scope: !1592)
!1610 = !DILocation(line: 124, column: 36, scope: !1607)
!1611 = !DILocation(line: 124, column: 9, scope: !1607)
!1612 = !DILocation(line: 127, column: 9, scope: !1607)
!1613 = !DILocation(line: 129, column: 14, scope: !1592)
!1614 = !DILocation(line: 129, column: 7, scope: !1592)
!1615 = !DILocation(line: 134, column: 42, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1589, file: !213, line: 134, column: 7)
!1617 = !DILocation(line: 134, column: 28, scope: !1616)
!1618 = !DILocation(line: 134, column: 50, scope: !1616)
!1619 = !DILocation(line: 134, column: 7, scope: !1589)
!1620 = !DILocation(line: 135, column: 12, scope: !1616)
!1621 = !DILocation(line: 135, column: 5, scope: !1616)
!1622 = !DILocation(line: 136, column: 1, scope: !1589)
!1623 = distinct !DISubprogram(name: "set_program_name", scope: !264, file: !264, line: 39, type: !117, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !1624)
!1624 = !{!1625, !1626, !1627}
!1625 = !DILocalVariable(name: "argv0", arg: 1, scope: !1623, file: !264, line: 39, type: !50)
!1626 = !DILocalVariable(name: "slash", scope: !1623, file: !264, line: 46, type: !50)
!1627 = !DILocalVariable(name: "base", scope: !1623, file: !264, line: 47, type: !50)
!1628 = !DILocation(line: 0, scope: !1623)
!1629 = !DILocation(line: 51, column: 13, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1623, file: !264, line: 51, column: 7)
!1631 = !DILocation(line: 51, column: 7, scope: !1623)
!1632 = !DILocation(line: 55, column: 14, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1630, file: !264, line: 52, column: 5)
!1634 = !DILocation(line: 54, column: 7, scope: !1633)
!1635 = !DILocation(line: 56, column: 7, scope: !1633)
!1636 = !DILocation(line: 59, column: 11, scope: !1623)
!1637 = !DILocation(line: 60, column: 17, scope: !1623)
!1638 = !DILocation(line: 60, column: 11, scope: !1623)
!1639 = !DILocation(line: 61, column: 12, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1623, file: !264, line: 61, column: 7)
!1641 = !DILocation(line: 61, column: 20, scope: !1640)
!1642 = !DILocation(line: 61, column: 25, scope: !1640)
!1643 = !DILocation(line: 61, column: 42, scope: !1640)
!1644 = !DILocation(line: 61, column: 28, scope: !1640)
!1645 = !DILocation(line: 61, column: 61, scope: !1640)
!1646 = !DILocation(line: 61, column: 7, scope: !1623)
!1647 = !DILocation(line: 64, column: 11, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !264, line: 64, column: 11)
!1649 = distinct !DILexicalBlock(scope: !1640, file: !264, line: 62, column: 5)
!1650 = !DILocation(line: 64, column: 36, scope: !1648)
!1651 = !DILocation(line: 64, column: 11, scope: !1649)
!1652 = !DILocation(line: 66, column: 24, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !264, line: 65, column: 9)
!1654 = !DILocation(line: 70, column: 41, scope: !1653)
!1655 = !DILocation(line: 72, column: 9, scope: !1653)
!1656 = !DILocation(line: 84, column: 16, scope: !1623)
!1657 = !DILocation(line: 90, column: 27, scope: !1623)
!1658 = !DILocation(line: 92, column: 1, scope: !1623)
!1659 = distinct !DISubprogram(name: "clone_quoting_options", scope: !305, file: !305, line: 122, type: !1660, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1663)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!1662, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!1663 = !{!1664, !1665, !1666}
!1664 = !DILocalVariable(name: "o", arg: 1, scope: !1659, file: !305, line: 122, type: !1662)
!1665 = !DILocalVariable(name: "e", scope: !1659, file: !305, line: 124, type: !52)
!1666 = !DILocalVariable(name: "p", scope: !1659, file: !305, line: 125, type: !1662)
!1667 = !DILocation(line: 0, scope: !1659)
!1668 = !DILocation(line: 124, column: 11, scope: !1659)
!1669 = !DILocation(line: 125, column: 40, scope: !1659)
!1670 = !DILocation(line: 125, column: 31, scope: !1659)
!1671 = !DILocation(line: 127, column: 9, scope: !1659)
!1672 = !DILocation(line: 128, column: 3, scope: !1659)
!1673 = distinct !DISubprogram(name: "get_quoting_style", scope: !305, file: !305, line: 133, type: !1674, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!29, !323}
!1676 = !{!1677}
!1677 = !DILocalVariable(name: "o", arg: 1, scope: !1673, file: !305, line: 133, type: !323)
!1678 = !DILocation(line: 0, scope: !1673)
!1679 = !DILocation(line: 135, column: 11, scope: !1673)
!1680 = !DILocation(line: 135, column: 46, scope: !1673)
!1681 = !{!1682, !1133, i64 0}
!1682 = !{!"quoting_options", !1133, i64 0, !1338, i64 4, !1133, i64 8, !1132, i64 40, !1132, i64 48}
!1683 = !DILocation(line: 135, column: 3, scope: !1673)
!1684 = distinct !DISubprogram(name: "set_quoting_style", scope: !305, file: !305, line: 141, type: !1685, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1662, !29}
!1687 = !{!1688, !1689}
!1688 = !DILocalVariable(name: "o", arg: 1, scope: !1684, file: !305, line: 141, type: !1662)
!1689 = !DILocalVariable(name: "s", arg: 2, scope: !1684, file: !305, line: 141, type: !29)
!1690 = !DILocation(line: 0, scope: !1684)
!1691 = !DILocation(line: 143, column: 4, scope: !1684)
!1692 = !DILocation(line: 143, column: 39, scope: !1684)
!1693 = !DILocation(line: 143, column: 45, scope: !1684)
!1694 = !DILocation(line: 144, column: 1, scope: !1684)
!1695 = distinct !DISubprogram(name: "set_char_quoting", scope: !305, file: !305, line: 152, type: !1696, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!52, !1662, !49, !52}
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1705, !1706}
!1699 = !DILocalVariable(name: "o", arg: 1, scope: !1695, file: !305, line: 152, type: !1662)
!1700 = !DILocalVariable(name: "c", arg: 2, scope: !1695, file: !305, line: 152, type: !49)
!1701 = !DILocalVariable(name: "i", arg: 3, scope: !1695, file: !305, line: 152, type: !52)
!1702 = !DILocalVariable(name: "uc", scope: !1695, file: !305, line: 154, type: !182)
!1703 = !DILocalVariable(name: "p", scope: !1695, file: !305, line: 155, type: !1704)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1705 = !DILocalVariable(name: "shift", scope: !1695, file: !305, line: 157, type: !52)
!1706 = !DILocalVariable(name: "r", scope: !1695, file: !305, line: 158, type: !52)
!1707 = !DILocation(line: 0, scope: !1695)
!1708 = !DILocation(line: 156, column: 6, scope: !1695)
!1709 = !DILocation(line: 156, column: 62, scope: !1695)
!1710 = !DILocation(line: 156, column: 57, scope: !1695)
!1711 = !DILocation(line: 157, column: 15, scope: !1695)
!1712 = !DILocation(line: 158, column: 12, scope: !1695)
!1713 = !DILocation(line: 158, column: 15, scope: !1695)
!1714 = !DILocation(line: 158, column: 25, scope: !1695)
!1715 = !DILocation(line: 159, column: 13, scope: !1695)
!1716 = !DILocation(line: 159, column: 18, scope: !1695)
!1717 = !DILocation(line: 159, column: 23, scope: !1695)
!1718 = !DILocation(line: 159, column: 6, scope: !1695)
!1719 = !DILocation(line: 160, column: 3, scope: !1695)
!1720 = distinct !DISubprogram(name: "set_quoting_flags", scope: !305, file: !305, line: 168, type: !1721, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1723)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!52, !1662, !52}
!1723 = !{!1724, !1725, !1726}
!1724 = !DILocalVariable(name: "o", arg: 1, scope: !1720, file: !305, line: 168, type: !1662)
!1725 = !DILocalVariable(name: "i", arg: 2, scope: !1720, file: !305, line: 168, type: !52)
!1726 = !DILocalVariable(name: "r", scope: !1720, file: !305, line: 170, type: !52)
!1727 = !DILocation(line: 0, scope: !1720)
!1728 = !DILocation(line: 171, column: 8, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1720, file: !305, line: 171, column: 7)
!1730 = !DILocation(line: 171, column: 7, scope: !1720)
!1731 = !DILocation(line: 173, column: 10, scope: !1720)
!1732 = !{!1682, !1338, i64 4}
!1733 = !DILocation(line: 174, column: 12, scope: !1720)
!1734 = !DILocation(line: 175, column: 3, scope: !1720)
!1735 = distinct !DISubprogram(name: "set_custom_quoting", scope: !305, file: !305, line: 179, type: !1736, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1662, !50, !50}
!1738 = !{!1739, !1740, !1741}
!1739 = !DILocalVariable(name: "o", arg: 1, scope: !1735, file: !305, line: 179, type: !1662)
!1740 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1735, file: !305, line: 180, type: !50)
!1741 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1735, file: !305, line: 180, type: !50)
!1742 = !DILocation(line: 0, scope: !1735)
!1743 = !DILocation(line: 182, column: 8, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1735, file: !305, line: 182, column: 7)
!1745 = !DILocation(line: 182, column: 7, scope: !1735)
!1746 = !DILocation(line: 184, column: 6, scope: !1735)
!1747 = !DILocation(line: 184, column: 12, scope: !1735)
!1748 = !DILocation(line: 185, column: 8, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1735, file: !305, line: 185, column: 7)
!1750 = !DILocation(line: 185, column: 23, scope: !1749)
!1751 = !DILocation(line: 185, column: 19, scope: !1749)
!1752 = !DILocation(line: 186, column: 5, scope: !1749)
!1753 = !DILocation(line: 187, column: 6, scope: !1735)
!1754 = !DILocation(line: 187, column: 17, scope: !1735)
!1755 = !{!1682, !1132, i64 40}
!1756 = !DILocation(line: 188, column: 6, scope: !1735)
!1757 = !DILocation(line: 188, column: 18, scope: !1735)
!1758 = !{!1682, !1132, i64 48}
!1759 = !DILocation(line: 189, column: 1, scope: !1735)
!1760 = distinct !DISubprogram(name: "quotearg_buffer", scope: !305, file: !305, line: 784, type: !1761, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!107, !48, !107, !50, !107, !323}
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771}
!1764 = !DILocalVariable(name: "buffer", arg: 1, scope: !1760, file: !305, line: 784, type: !48)
!1765 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1760, file: !305, line: 784, type: !107)
!1766 = !DILocalVariable(name: "arg", arg: 3, scope: !1760, file: !305, line: 785, type: !50)
!1767 = !DILocalVariable(name: "argsize", arg: 4, scope: !1760, file: !305, line: 785, type: !107)
!1768 = !DILocalVariable(name: "o", arg: 5, scope: !1760, file: !305, line: 786, type: !323)
!1769 = !DILocalVariable(name: "p", scope: !1760, file: !305, line: 788, type: !323)
!1770 = !DILocalVariable(name: "e", scope: !1760, file: !305, line: 789, type: !52)
!1771 = !DILocalVariable(name: "r", scope: !1760, file: !305, line: 790, type: !107)
!1772 = !DILocation(line: 0, scope: !1760)
!1773 = !DILocation(line: 788, column: 37, scope: !1760)
!1774 = !DILocation(line: 789, column: 11, scope: !1760)
!1775 = !DILocation(line: 791, column: 43, scope: !1760)
!1776 = !DILocation(line: 791, column: 53, scope: !1760)
!1777 = !DILocation(line: 791, column: 60, scope: !1760)
!1778 = !DILocation(line: 792, column: 43, scope: !1760)
!1779 = !DILocation(line: 792, column: 58, scope: !1760)
!1780 = !DILocation(line: 790, column: 14, scope: !1760)
!1781 = !DILocation(line: 793, column: 9, scope: !1760)
!1782 = !DILocation(line: 794, column: 3, scope: !1760)
!1783 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !305, file: !305, line: 256, type: !1784, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !1788)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!107, !48, !107, !50, !107, !29, !52, !1786, !50, !50}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1813, !1814, !1815, !1816, !1817, !1820, !1821, !1827, !1830, !1831, !1838, !1841, !1842, !1843, !1844, !1845, !1846}
!1789 = !DILocalVariable(name: "buffer", arg: 1, scope: !1783, file: !305, line: 256, type: !48)
!1790 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1783, file: !305, line: 256, type: !107)
!1791 = !DILocalVariable(name: "arg", arg: 3, scope: !1783, file: !305, line: 257, type: !50)
!1792 = !DILocalVariable(name: "argsize", arg: 4, scope: !1783, file: !305, line: 257, type: !107)
!1793 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1783, file: !305, line: 258, type: !29)
!1794 = !DILocalVariable(name: "flags", arg: 6, scope: !1783, file: !305, line: 258, type: !52)
!1795 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1783, file: !305, line: 259, type: !1786)
!1796 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1783, file: !305, line: 260, type: !50)
!1797 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1783, file: !305, line: 261, type: !50)
!1798 = !DILocalVariable(name: "i", scope: !1783, file: !305, line: 263, type: !107)
!1799 = !DILocalVariable(name: "len", scope: !1783, file: !305, line: 264, type: !107)
!1800 = !DILocalVariable(name: "orig_buffersize", scope: !1783, file: !305, line: 265, type: !107)
!1801 = !DILocalVariable(name: "quote_string", scope: !1783, file: !305, line: 266, type: !50)
!1802 = !DILocalVariable(name: "quote_string_len", scope: !1783, file: !305, line: 267, type: !107)
!1803 = !DILocalVariable(name: "backslash_escapes", scope: !1783, file: !305, line: 268, type: !195)
!1804 = !DILocalVariable(name: "unibyte_locale", scope: !1783, file: !305, line: 269, type: !195)
!1805 = !DILocalVariable(name: "elide_outer_quotes", scope: !1783, file: !305, line: 270, type: !195)
!1806 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1783, file: !305, line: 271, type: !195)
!1807 = !DILocalVariable(name: "encountered_single_quote", scope: !1783, file: !305, line: 272, type: !195)
!1808 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1783, file: !305, line: 273, type: !195)
!1809 = !DILocalVariable(name: "c", scope: !1810, file: !305, line: 402, type: !182)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !305, line: 401, column: 5)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !305, line: 400, column: 3)
!1812 = distinct !DILexicalBlock(scope: !1783, file: !305, line: 400, column: 3)
!1813 = !DILocalVariable(name: "esc", scope: !1810, file: !305, line: 403, type: !182)
!1814 = !DILocalVariable(name: "is_right_quote", scope: !1810, file: !305, line: 404, type: !195)
!1815 = !DILocalVariable(name: "escaping", scope: !1810, file: !305, line: 405, type: !195)
!1816 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1810, file: !305, line: 406, type: !195)
!1817 = !DILocalVariable(name: "m", scope: !1818, file: !305, line: 610, type: !107)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 608, column: 11)
!1819 = distinct !DILexicalBlock(scope: !1810, file: !305, line: 426, column: 9)
!1820 = !DILocalVariable(name: "printable", scope: !1818, file: !305, line: 612, type: !195)
!1821 = !DILocalVariable(name: "mbstate", scope: !1822, file: !305, line: 621, type: !1824)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !305, line: 620, column: 15)
!1823 = distinct !DILexicalBlock(scope: !1818, file: !305, line: 614, column: 17)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1825, line: 6, baseType: !1826)
!1825 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !347, line: 21, baseType: !346)
!1827 = !DILocalVariable(name: "w", scope: !1828, file: !305, line: 631, type: !1829)
!1828 = distinct !DILexicalBlock(scope: !1822, file: !305, line: 630, column: 19)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !108, line: 74, baseType: !52)
!1830 = !DILocalVariable(name: "bytes", scope: !1828, file: !305, line: 632, type: !107)
!1831 = !DILocalVariable(name: "j", scope: !1832, file: !305, line: 657, type: !107)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !305, line: 656, column: 27)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !305, line: 654, column: 29)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !305, line: 649, column: 23)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !305, line: 641, column: 30)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !305, line: 636, column: 30)
!1837 = distinct !DILexicalBlock(scope: !1828, file: !305, line: 634, column: 25)
!1838 = !DILocalVariable(name: "ilim", scope: !1839, file: !305, line: 684, type: !107)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !305, line: 681, column: 15)
!1840 = distinct !DILexicalBlock(scope: !1818, file: !305, line: 680, column: 17)
!1841 = !DILabel(scope: !1783, name: "process_input", file: !305, line: 314)
!1842 = !DILabel(scope: !1819, name: "c_and_shell_escape", file: !305, line: 512)
!1843 = !DILabel(scope: !1819, name: "c_escape", file: !305, line: 517)
!1844 = !DILabel(scope: !1810, name: "store_escape", file: !305, line: 719)
!1845 = !DILabel(scope: !1810, name: "store_c", file: !305, line: 722)
!1846 = !DILabel(scope: !1783, name: "force_outer_quoting_style", file: !305, line: 763)
!1847 = !DILocation(line: 0, scope: !1783)
!1848 = !DILocation(line: 269, column: 25, scope: !1783)
!1849 = !DILocation(line: 269, column: 36, scope: !1783)
!1850 = !DILocation(line: 270, column: 8, scope: !1783)
!1851 = !DILocation(line: 0, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 526, column: 15)
!1853 = !DILocation(line: 0, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !305, line: 462, column: 19)
!1855 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 455, column: 13)
!1856 = !DILocation(line: 0, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !305, line: 449, column: 20)
!1858 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 428, column: 15)
!1859 = !DILocation(line: 0, scope: !1822)
!1860 = !DILocation(line: 0, scope: !1828)
!1861 = !DILocation(line: 0, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1810, file: !305, line: 712, column: 11)
!1863 = !DILocation(line: 273, column: 3, scope: !1783)
!1864 = !DILocation(line: 265, column: 10, scope: !1783)
!1865 = !DILocation(line: 266, column: 15, scope: !1783)
!1866 = !DILocation(line: 267, column: 10, scope: !1783)
!1867 = !DILocation(line: 268, column: 8, scope: !1783)
!1868 = !DILocation(line: 271, column: 8, scope: !1783)
!1869 = !DILocation(line: 272, column: 8, scope: !1783)
!1870 = !DILocation(line: 273, column: 8, scope: !1783)
!1871 = !DILocation(line: 314, column: 2, scope: !1783)
!1872 = !DILocation(line: 316, column: 3, scope: !1783)
!1873 = !DILocation(line: 323, column: 11, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1783, file: !305, line: 317, column: 5)
!1875 = !DILocation(line: 323, column: 12, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1874, file: !305, line: 323, column: 11)
!1877 = !DILocation(line: 324, column: 9, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !305, line: 324, column: 9)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !305, line: 324, column: 9)
!1880 = !DILocation(line: 324, column: 9, scope: !1879)
!1881 = !DILocation(line: 362, column: 26, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !305, line: 340, column: 11)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !305, line: 339, column: 13)
!1884 = distinct !DILexicalBlock(scope: !1874, file: !305, line: 338, column: 7)
!1885 = !DILocation(line: 363, column: 27, scope: !1882)
!1886 = !DILocation(line: 364, column: 11, scope: !1882)
!1887 = !DILocation(line: 365, column: 14, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1884, file: !305, line: 365, column: 13)
!1889 = !DILocation(line: 365, column: 13, scope: !1884)
!1890 = !DILocation(line: 366, column: 43, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !305, line: 366, column: 11)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !305, line: 366, column: 11)
!1893 = !DILocation(line: 366, column: 11, scope: !1892)
!1894 = !DILocation(line: 367, column: 13, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !305, line: 367, column: 13)
!1896 = distinct !DILexicalBlock(scope: !1891, file: !305, line: 367, column: 13)
!1897 = !DILocation(line: 367, column: 13, scope: !1896)
!1898 = !DILocation(line: 366, column: 70, scope: !1891)
!1899 = distinct !{!1899, !1893, !1900}
!1900 = !DILocation(line: 367, column: 13, scope: !1892)
!1901 = !DILocation(line: 264, column: 10, scope: !1783)
!1902 = !DILocation(line: 370, column: 28, scope: !1884)
!1903 = !DILocation(line: 372, column: 7, scope: !1874)
!1904 = !DILocation(line: 376, column: 7, scope: !1874)
!1905 = !DILocation(line: 379, column: 7, scope: !1874)
!1906 = !DILocation(line: 381, column: 12, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1874, file: !305, line: 381, column: 11)
!1908 = !DILocation(line: 381, column: 11, scope: !1874)
!1909 = !DILocation(line: 386, column: 12, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1874, file: !305, line: 386, column: 11)
!1911 = !DILocation(line: 386, column: 11, scope: !1874)
!1912 = !DILocation(line: 387, column: 9, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !305, line: 387, column: 9)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !305, line: 387, column: 9)
!1915 = !DILocation(line: 387, column: 9, scope: !1914)
!1916 = !DILocation(line: 394, column: 7, scope: !1874)
!1917 = !DILocation(line: 397, column: 7, scope: !1874)
!1918 = !DILocation(line: 0, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1810, file: !305, line: 408, column: 11)
!1920 = !DILocation(line: 0, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !305, line: 419, column: 15)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !305, line: 418, column: 9)
!1923 = !DILocation(line: 0, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 556, column: 15)
!1925 = !DILocation(line: 0, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 548, column: 15)
!1927 = !DILocation(line: 0, scope: !1833)
!1928 = !DILocation(line: 0, scope: !1840)
!1929 = !DILocation(line: 0, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 509, column: 15)
!1931 = !DILocation(line: 400, column: 8, scope: !1812)
!1932 = !DILocation(line: 0, scope: !1812)
!1933 = !DILocation(line: 400, column: 27, scope: !1811)
!1934 = !DILocation(line: 400, column: 19, scope: !1811)
!1935 = !DILocation(line: 400, column: 41, scope: !1811)
!1936 = !DILocation(line: 400, column: 48, scope: !1811)
!1937 = !DILocation(line: 400, column: 3, scope: !1812)
!1938 = !DILocation(line: 400, column: 60, scope: !1811)
!1939 = !DILocation(line: 0, scope: !1810)
!1940 = !DILocation(line: 409, column: 11, scope: !1919)
!1941 = !DILocation(line: 411, column: 17, scope: !1919)
!1942 = !DILocation(line: 412, column: 39, scope: !1919)
!1943 = !DILocation(line: 416, column: 32, scope: !1919)
!1944 = !DILocation(line: 412, column: 19, scope: !1919)
!1945 = !DILocation(line: 412, column: 15, scope: !1919)
!1946 = !DILocation(line: 417, column: 11, scope: !1919)
!1947 = !DILocation(line: 417, column: 26, scope: !1919)
!1948 = !DILocation(line: 417, column: 14, scope: !1919)
!1949 = !DILocation(line: 417, column: 63, scope: !1919)
!1950 = !DILocation(line: 408, column: 11, scope: !1810)
!1951 = !DILocation(line: 424, column: 11, scope: !1810)
!1952 = !DILocation(line: 425, column: 7, scope: !1810)
!1953 = !DILocation(line: 428, column: 15, scope: !1819)
!1954 = !DILocation(line: 430, column: 15, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !305, line: 430, column: 15)
!1956 = distinct !DILexicalBlock(scope: !1858, file: !305, line: 429, column: 13)
!1957 = !DILocation(line: 430, column: 15, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !305, line: 430, column: 15)
!1959 = !DILocation(line: 430, column: 15, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !305, line: 430, column: 15)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !305, line: 430, column: 15)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !305, line: 430, column: 15)
!1963 = !DILocation(line: 430, column: 15, scope: !1961)
!1964 = !DILocation(line: 430, column: 15, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !305, line: 430, column: 15)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !305, line: 430, column: 15)
!1967 = !DILocation(line: 430, column: 15, scope: !1966)
!1968 = !DILocation(line: 430, column: 15, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !305, line: 430, column: 15)
!1970 = distinct !DILexicalBlock(scope: !1962, file: !305, line: 430, column: 15)
!1971 = !DILocation(line: 430, column: 15, scope: !1970)
!1972 = !DILocation(line: 430, column: 15, scope: !1962)
!1973 = !DILocation(line: 430, column: 15, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !305, line: 430, column: 15)
!1975 = distinct !DILexicalBlock(scope: !1955, file: !305, line: 430, column: 15)
!1976 = !DILocation(line: 430, column: 15, scope: !1975)
!1977 = !DILocation(line: 438, column: 19, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1956, file: !305, line: 437, column: 19)
!1979 = !DILocation(line: 438, column: 24, scope: !1978)
!1980 = !DILocation(line: 438, column: 28, scope: !1978)
!1981 = !DILocation(line: 438, column: 38, scope: !1978)
!1982 = !DILocation(line: 438, column: 48, scope: !1978)
!1983 = !DILocation(line: 438, column: 59, scope: !1978)
!1984 = !DILocation(line: 440, column: 19, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !305, line: 440, column: 19)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !305, line: 440, column: 19)
!1987 = distinct !DILexicalBlock(scope: !1978, file: !305, line: 439, column: 17)
!1988 = !DILocation(line: 440, column: 19, scope: !1986)
!1989 = !DILocation(line: 441, column: 19, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !305, line: 441, column: 19)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !305, line: 441, column: 19)
!1992 = !DILocation(line: 441, column: 19, scope: !1991)
!1993 = !DILocation(line: 442, column: 17, scope: !1987)
!1994 = !DILocation(line: 449, column: 20, scope: !1858)
!1995 = !DILocation(line: 454, column: 11, scope: !1819)
!1996 = !DILocation(line: 457, column: 19, scope: !1855)
!1997 = !DILocation(line: 463, column: 19, scope: !1854)
!1998 = !DILocation(line: 463, column: 24, scope: !1854)
!1999 = !DILocation(line: 463, column: 28, scope: !1854)
!2000 = !DILocation(line: 463, column: 38, scope: !1854)
!2001 = !DILocation(line: 463, column: 47, scope: !1854)
!2002 = !DILocation(line: 463, column: 41, scope: !1854)
!2003 = !DILocation(line: 463, column: 52, scope: !1854)
!2004 = !DILocation(line: 462, column: 19, scope: !1855)
!2005 = !DILocation(line: 464, column: 25, scope: !1854)
!2006 = !DILocation(line: 464, column: 17, scope: !1854)
!2007 = !DILocation(line: 471, column: 25, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1854, file: !305, line: 465, column: 19)
!2009 = !DILocation(line: 475, column: 21, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !305, line: 475, column: 21)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !305, line: 475, column: 21)
!2012 = !DILocation(line: 475, column: 21, scope: !2011)
!2013 = !DILocation(line: 476, column: 21, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !305, line: 476, column: 21)
!2015 = distinct !DILexicalBlock(scope: !2008, file: !305, line: 476, column: 21)
!2016 = !DILocation(line: 476, column: 21, scope: !2015)
!2017 = !DILocation(line: 477, column: 21, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !305, line: 477, column: 21)
!2019 = distinct !DILexicalBlock(scope: !2008, file: !305, line: 477, column: 21)
!2020 = !DILocation(line: 477, column: 21, scope: !2019)
!2021 = !DILocation(line: 478, column: 21, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !305, line: 478, column: 21)
!2023 = distinct !DILexicalBlock(scope: !2008, file: !305, line: 478, column: 21)
!2024 = !DILocation(line: 478, column: 21, scope: !2023)
!2025 = !DILocation(line: 479, column: 21, scope: !2008)
!2026 = !DILocation(line: 492, column: 31, scope: !1819)
!2027 = !DILocation(line: 493, column: 31, scope: !1819)
!2028 = !DILocation(line: 495, column: 31, scope: !1819)
!2029 = !DILocation(line: 496, column: 31, scope: !1819)
!2030 = !DILocation(line: 497, column: 31, scope: !1819)
!2031 = !DILocation(line: 500, column: 15, scope: !1819)
!2032 = !DILocation(line: 502, column: 19, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !305, line: 501, column: 13)
!2034 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 500, column: 15)
!2035 = !DILocation(line: 509, column: 33, scope: !1930)
!2036 = !DILocation(line: 0, scope: !1819)
!2037 = !DILocation(line: 512, column: 9, scope: !1819)
!2038 = !DILocation(line: 514, column: 15, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 513, column: 15)
!2040 = !DILocation(line: 517, column: 9, scope: !1819)
!2041 = !DILocation(line: 518, column: 15, scope: !1819)
!2042 = !DILocation(line: 526, column: 15, scope: !1819)
!2043 = !DILocation(line: 526, column: 40, scope: !1852)
!2044 = !DILocation(line: 526, column: 47, scope: !1852)
!2045 = !DILocation(line: 526, column: 18, scope: !1852)
!2046 = !DILocation(line: 530, column: 17, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1819, file: !305, line: 530, column: 15)
!2048 = !DILocation(line: 530, column: 15, scope: !1819)
!2049 = !DILocation(line: 535, column: 11, scope: !1819)
!2050 = !DILocation(line: 549, column: 15, scope: !1926)
!2051 = !DILocation(line: 556, column: 15, scope: !1819)
!2052 = !DILocation(line: 558, column: 19, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1924, file: !305, line: 557, column: 13)
!2054 = !DILocation(line: 561, column: 19, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2053, file: !305, line: 561, column: 19)
!2056 = !DILocation(line: 561, column: 35, scope: !2055)
!2057 = !DILocation(line: 561, column: 30, scope: !2055)
!2058 = !DILocation(line: 570, column: 15, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !305, line: 570, column: 15)
!2060 = distinct !DILexicalBlock(scope: !2053, file: !305, line: 570, column: 15)
!2061 = !DILocation(line: 570, column: 15, scope: !2060)
!2062 = !DILocation(line: 571, column: 15, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !305, line: 571, column: 15)
!2064 = distinct !DILexicalBlock(scope: !2053, file: !305, line: 571, column: 15)
!2065 = !DILocation(line: 571, column: 15, scope: !2064)
!2066 = !DILocation(line: 572, column: 15, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !305, line: 572, column: 15)
!2068 = distinct !DILexicalBlock(scope: !2053, file: !305, line: 572, column: 15)
!2069 = !DILocation(line: 572, column: 15, scope: !2068)
!2070 = !DILocation(line: 574, column: 13, scope: !2053)
!2071 = !DILocation(line: 614, column: 17, scope: !1818)
!2072 = !DILocation(line: 0, scope: !1818)
!2073 = !DILocation(line: 617, column: 29, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1823, file: !305, line: 615, column: 15)
!2075 = !DILocation(line: 617, column: 27, scope: !2074)
!2076 = !DILocation(line: 618, column: 15, scope: !2074)
!2077 = !DILocation(line: 621, column: 17, scope: !1822)
!2078 = !DILocation(line: 621, column: 27, scope: !1822)
!2079 = !DILocalVariable(name: "__dest", arg: 1, scope: !2080, file: !2081, line: 59, type: !105)
!2080 = distinct !DISubprogram(name: "memset", scope: !2081, file: !2081, line: 59, type: !2082, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2084)
!2081 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!105, !105, !52, !107}
!2084 = !{!2079, !2085, !2086}
!2085 = !DILocalVariable(name: "__ch", arg: 2, scope: !2080, file: !2081, line: 59, type: !52)
!2086 = !DILocalVariable(name: "__len", arg: 3, scope: !2080, file: !2081, line: 59, type: !107)
!2087 = !DILocation(line: 0, scope: !2080, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 622, column: 17, scope: !1822)
!2089 = !DILocation(line: 71, column: 10, scope: !2080, inlinedAt: !2088)
!2090 = !DILocation(line: 626, column: 29, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1822, file: !305, line: 626, column: 21)
!2092 = !DILocation(line: 626, column: 21, scope: !1822)
!2093 = !DILocation(line: 627, column: 29, scope: !2091)
!2094 = !DILocation(line: 627, column: 19, scope: !2091)
!2095 = !DILocation(line: 629, column: 17, scope: !1822)
!2096 = !DILocation(line: 624, column: 19, scope: !1822)
!2097 = !DILocation(line: 625, column: 27, scope: !1822)
!2098 = !DILocation(line: 631, column: 21, scope: !1828)
!2099 = !DILocation(line: 632, column: 56, scope: !1828)
!2100 = !DILocation(line: 632, column: 50, scope: !1828)
!2101 = !DILocation(line: 633, column: 53, scope: !1828)
!2102 = !DILocation(line: 632, column: 36, scope: !1828)
!2103 = !DILocation(line: 634, column: 25, scope: !1828)
!2104 = !DILocation(line: 644, column: 38, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1835, file: !305, line: 642, column: 23)
!2106 = !DILocation(line: 644, column: 48, scope: !2105)
!2107 = !DILocation(line: 644, column: 25, scope: !2105)
!2108 = !DILocation(line: 644, column: 51, scope: !2105)
!2109 = !DILocation(line: 645, column: 28, scope: !2105)
!2110 = !DILocation(line: 644, column: 34, scope: !2105)
!2111 = distinct !{!2111, !2107, !2109}
!2112 = !DILocation(line: 658, column: 43, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !305, line: 658, column: 29)
!2114 = distinct !DILexicalBlock(scope: !1832, file: !305, line: 658, column: 29)
!2115 = !DILocation(line: 655, column: 29, scope: !1833)
!2116 = !DILocation(line: 0, scope: !1832)
!2117 = !DILocation(line: 659, column: 49, scope: !2113)
!2118 = !DILocation(line: 659, column: 39, scope: !2113)
!2119 = !DILocation(line: 659, column: 31, scope: !2113)
!2120 = !DILocation(line: 658, column: 53, scope: !2113)
!2121 = !DILocation(line: 658, column: 29, scope: !2114)
!2122 = distinct !{!2122, !2121, !2123}
!2123 = !DILocation(line: 667, column: 33, scope: !2114)
!2124 = !DILocation(line: 674, column: 19, scope: !1822)
!2125 = !DILocation(line: 670, column: 41, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1834, file: !305, line: 670, column: 29)
!2127 = !DILocation(line: 670, column: 31, scope: !2126)
!2128 = !DILocation(line: 670, column: 29, scope: !1834)
!2129 = !DILocation(line: 672, column: 27, scope: !1834)
!2130 = !DILocation(line: 675, column: 26, scope: !1822)
!2131 = !DILocation(line: 675, column: 24, scope: !1822)
!2132 = !DILocation(line: 674, column: 19, scope: !1828)
!2133 = distinct !{!2133, !2095, !2134}
!2134 = !DILocation(line: 675, column: 44, scope: !1822)
!2135 = !DILocation(line: 676, column: 15, scope: !1823)
!2136 = !DILocation(line: 0, scope: !1823)
!2137 = !DILocation(line: 678, column: 40, scope: !1818)
!2138 = !DILocation(line: 680, column: 19, scope: !1840)
!2139 = !DILocation(line: 680, column: 45, scope: !1840)
!2140 = !DILocation(line: 680, column: 23, scope: !1840)
!2141 = !DILocation(line: 684, column: 33, scope: !1839)
!2142 = !DILocation(line: 0, scope: !1839)
!2143 = !DILocation(line: 686, column: 17, scope: !1839)
!2144 = !DILocation(line: 405, column: 12, scope: !1810)
!2145 = !DILocation(line: 688, column: 43, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !305, line: 688, column: 25)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !305, line: 687, column: 19)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !305, line: 686, column: 17)
!2149 = distinct !DILexicalBlock(scope: !1839, file: !305, line: 686, column: 17)
!2150 = !DILocation(line: 690, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !305, line: 690, column: 25)
!2152 = distinct !DILexicalBlock(scope: !2146, file: !305, line: 689, column: 23)
!2153 = !DILocation(line: 690, column: 25, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2151, file: !305, line: 690, column: 25)
!2155 = !DILocation(line: 690, column: 25, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !305, line: 690, column: 25)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !305, line: 690, column: 25)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !305, line: 690, column: 25)
!2159 = !DILocation(line: 690, column: 25, scope: !2157)
!2160 = !DILocation(line: 690, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !305, line: 690, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !305, line: 690, column: 25)
!2163 = !DILocation(line: 690, column: 25, scope: !2162)
!2164 = !DILocation(line: 690, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !305, line: 690, column: 25)
!2166 = distinct !DILexicalBlock(scope: !2158, file: !305, line: 690, column: 25)
!2167 = !DILocation(line: 690, column: 25, scope: !2166)
!2168 = !DILocation(line: 690, column: 25, scope: !2158)
!2169 = !DILocation(line: 690, column: 25, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !305, line: 690, column: 25)
!2171 = distinct !DILexicalBlock(scope: !2151, file: !305, line: 690, column: 25)
!2172 = !DILocation(line: 690, column: 25, scope: !2171)
!2173 = !DILocation(line: 691, column: 25, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !305, line: 691, column: 25)
!2175 = distinct !DILexicalBlock(scope: !2152, file: !305, line: 691, column: 25)
!2176 = !DILocation(line: 691, column: 25, scope: !2175)
!2177 = !DILocation(line: 692, column: 25, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !305, line: 692, column: 25)
!2179 = distinct !DILexicalBlock(scope: !2152, file: !305, line: 692, column: 25)
!2180 = !DILocation(line: 692, column: 25, scope: !2179)
!2181 = !DILocation(line: 693, column: 38, scope: !2152)
!2182 = !DILocation(line: 693, column: 33, scope: !2152)
!2183 = !DILocation(line: 694, column: 23, scope: !2152)
!2184 = !DILocation(line: 695, column: 30, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2146, file: !305, line: 695, column: 30)
!2186 = !DILocation(line: 695, column: 30, scope: !2146)
!2187 = !DILocation(line: 697, column: 25, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !305, line: 697, column: 25)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !305, line: 697, column: 25)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !305, line: 696, column: 23)
!2191 = !DILocation(line: 697, column: 25, scope: !2189)
!2192 = !DILocation(line: 699, column: 23, scope: !2190)
!2193 = !DILocation(line: 700, column: 35, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2147, file: !305, line: 700, column: 25)
!2195 = !DILocation(line: 700, column: 30, scope: !2194)
!2196 = !DILocation(line: 700, column: 25, scope: !2147)
!2197 = !DILocation(line: 702, column: 21, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !305, line: 702, column: 21)
!2199 = distinct !DILexicalBlock(scope: !2147, file: !305, line: 702, column: 21)
!2200 = !DILocation(line: 702, column: 21, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !305, line: 702, column: 21)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !305, line: 702, column: 21)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !305, line: 702, column: 21)
!2204 = !DILocation(line: 702, column: 21, scope: !2202)
!2205 = !DILocation(line: 702, column: 21, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !305, line: 702, column: 21)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !305, line: 702, column: 21)
!2208 = !DILocation(line: 702, column: 21, scope: !2207)
!2209 = !DILocation(line: 702, column: 21, scope: !2203)
!2210 = !DILocation(line: 0, scope: !2147)
!2211 = !DILocation(line: 703, column: 21, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !305, line: 703, column: 21)
!2213 = distinct !DILexicalBlock(scope: !2147, file: !305, line: 703, column: 21)
!2214 = !DILocation(line: 703, column: 21, scope: !2213)
!2215 = !DILocation(line: 704, column: 25, scope: !2147)
!2216 = !DILocation(line: 686, column: 17, scope: !2148)
!2217 = distinct !{!2217, !2218, !2219}
!2218 = !DILocation(line: 686, column: 17, scope: !2149)
!2219 = !DILocation(line: 705, column: 19, scope: !2149)
!2220 = !DILocation(line: 416, column: 30, scope: !1919)
!2221 = !DILocation(line: 712, column: 34, scope: !1862)
!2222 = !DILocation(line: 715, column: 35, scope: !1862)
!2223 = !DILocation(line: 715, column: 17, scope: !1862)
!2224 = !DILocation(line: 715, column: 47, scope: !1862)
!2225 = !DILocation(line: 715, column: 65, scope: !1862)
!2226 = !DILocation(line: 716, column: 15, scope: !1862)
!2227 = !DILocation(line: 716, column: 11, scope: !1862)
!2228 = !DILocation(line: 712, column: 11, scope: !1810)
!2229 = !DILocation(line: 400, column: 10, scope: !1812)
!2230 = !DILocation(line: 719, column: 5, scope: !1810)
!2231 = !DILocation(line: 720, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1810, file: !305, line: 720, column: 7)
!2233 = !DILocation(line: 720, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2232, file: !305, line: 720, column: 7)
!2235 = !DILocation(line: 720, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !305, line: 720, column: 7)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !305, line: 720, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !305, line: 720, column: 7)
!2239 = !DILocation(line: 720, column: 7, scope: !2237)
!2240 = !DILocation(line: 720, column: 7, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !305, line: 720, column: 7)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !305, line: 720, column: 7)
!2243 = !DILocation(line: 720, column: 7, scope: !2242)
!2244 = !DILocation(line: 720, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !305, line: 720, column: 7)
!2246 = distinct !DILexicalBlock(scope: !2238, file: !305, line: 720, column: 7)
!2247 = !DILocation(line: 720, column: 7, scope: !2246)
!2248 = !DILocation(line: 720, column: 7, scope: !2238)
!2249 = !DILocation(line: 720, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !305, line: 720, column: 7)
!2251 = distinct !DILexicalBlock(scope: !2232, file: !305, line: 720, column: 7)
!2252 = !DILocation(line: 720, column: 7, scope: !2251)
!2253 = !DILocation(line: 722, column: 5, scope: !1810)
!2254 = !DILocation(line: 723, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !305, line: 723, column: 7)
!2256 = distinct !DILexicalBlock(scope: !1810, file: !305, line: 723, column: 7)
!2257 = !DILocation(line: 424, column: 9, scope: !1810)
!2258 = !DILocation(line: 723, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !305, line: 723, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !305, line: 723, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2255, file: !305, line: 723, column: 7)
!2262 = !DILocation(line: 723, column: 7, scope: !2260)
!2263 = !DILocation(line: 723, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !305, line: 723, column: 7)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !305, line: 723, column: 7)
!2266 = !DILocation(line: 723, column: 7, scope: !2265)
!2267 = !DILocation(line: 723, column: 7, scope: !2261)
!2268 = !DILocation(line: 724, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !305, line: 724, column: 7)
!2270 = distinct !DILexicalBlock(scope: !1810, file: !305, line: 724, column: 7)
!2271 = !DILocation(line: 724, column: 7, scope: !2270)
!2272 = !DILocation(line: 726, column: 13, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !1810, file: !305, line: 726, column: 11)
!2274 = !DILocation(line: 726, column: 11, scope: !1810)
!2275 = !DILocation(line: 728, column: 5, scope: !1811)
!2276 = !DILocation(line: 400, column: 75, scope: !1811)
!2277 = !DILocation(line: 400, column: 3, scope: !1811)
!2278 = distinct !{!2278, !1937, !2279}
!2279 = !DILocation(line: 728, column: 5, scope: !1812)
!2280 = !DILocation(line: 730, column: 11, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !1783, file: !305, line: 730, column: 7)
!2282 = !DILocation(line: 730, column: 16, scope: !2281)
!2283 = !DILocation(line: 738, column: 51, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !1783, file: !305, line: 738, column: 7)
!2285 = !DILocation(line: 739, column: 10, scope: !2284)
!2286 = !DILocation(line: 741, column: 11, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !305, line: 741, column: 11)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !305, line: 740, column: 5)
!2289 = !DILocation(line: 741, column: 11, scope: !2288)
!2290 = !DILocation(line: 742, column: 16, scope: !2287)
!2291 = !DILocation(line: 742, column: 9, scope: !2287)
!2292 = !DILocation(line: 746, column: 18, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2287, file: !305, line: 746, column: 16)
!2294 = !DILocation(line: 746, column: 32, scope: !2293)
!2295 = !DILocation(line: 746, column: 29, scope: !2293)
!2296 = !DILocation(line: 755, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !1783, file: !305, line: 755, column: 7)
!2298 = !DILocation(line: 755, column: 20, scope: !2297)
!2299 = !DILocation(line: 756, column: 12, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !305, line: 756, column: 5)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !305, line: 756, column: 5)
!2302 = !DILocation(line: 756, column: 5, scope: !2301)
!2303 = !DILocation(line: 757, column: 7, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !305, line: 757, column: 7)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !305, line: 757, column: 7)
!2306 = !DILocation(line: 757, column: 7, scope: !2305)
!2307 = !DILocation(line: 756, column: 39, scope: !2300)
!2308 = distinct !{!2308, !2302, !2309}
!2309 = !DILocation(line: 757, column: 7, scope: !2301)
!2310 = !DILocation(line: 759, column: 11, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !1783, file: !305, line: 759, column: 7)
!2312 = !DILocation(line: 759, column: 7, scope: !1783)
!2313 = !DILocation(line: 760, column: 5, scope: !2311)
!2314 = !DILocation(line: 760, column: 17, scope: !2311)
!2315 = !DILocation(line: 763, column: 2, scope: !1783)
!2316 = !DILocation(line: 766, column: 51, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !1783, file: !305, line: 766, column: 7)
!2318 = !DILocation(line: 766, column: 21, scope: !2317)
!2319 = !DILocation(line: 770, column: 42, scope: !1783)
!2320 = !DILocation(line: 768, column: 10, scope: !1783)
!2321 = !DILocation(line: 768, column: 3, scope: !1783)
!2322 = !DILocation(line: 772, column: 1, scope: !1783)
!2323 = distinct !DISubprogram(name: "gettext_quote", scope: !305, file: !305, line: 207, type: !2324, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!50, !50, !29}
!2326 = !{!2327, !2328, !2329, !2330}
!2327 = !DILocalVariable(name: "msgid", arg: 1, scope: !2323, file: !305, line: 207, type: !50)
!2328 = !DILocalVariable(name: "s", arg: 2, scope: !2323, file: !305, line: 207, type: !29)
!2329 = !DILocalVariable(name: "translation", scope: !2323, file: !305, line: 209, type: !50)
!2330 = !DILocalVariable(name: "locale_code", scope: !2323, file: !305, line: 210, type: !50)
!2331 = !DILocation(line: 0, scope: !2323)
!2332 = !DILocation(line: 209, column: 29, scope: !2323)
!2333 = !DILocation(line: 212, column: 19, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2323, file: !305, line: 212, column: 7)
!2335 = !DILocation(line: 212, column: 7, scope: !2323)
!2336 = !DILocation(line: 233, column: 17, scope: !2323)
!2337 = !DILocalVariable(name: "s1", arg: 1, scope: !2338, file: !2339, line: 160, type: !50)
!2338 = distinct !DISubprogram(name: "strcaseeq0", scope: !2339, file: !2339, line: 160, type: !2340, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2342)
!2339 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!52, !50, !50, !49, !49, !49, !49, !49, !49, !49, !49, !49}
!2342 = !{!2337, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352}
!2343 = !DILocalVariable(name: "s2", arg: 2, scope: !2338, file: !2339, line: 160, type: !50)
!2344 = !DILocalVariable(name: "s20", arg: 3, scope: !2338, file: !2339, line: 160, type: !49)
!2345 = !DILocalVariable(name: "s21", arg: 4, scope: !2338, file: !2339, line: 160, type: !49)
!2346 = !DILocalVariable(name: "s22", arg: 5, scope: !2338, file: !2339, line: 160, type: !49)
!2347 = !DILocalVariable(name: "s23", arg: 6, scope: !2338, file: !2339, line: 160, type: !49)
!2348 = !DILocalVariable(name: "s24", arg: 7, scope: !2338, file: !2339, line: 160, type: !49)
!2349 = !DILocalVariable(name: "s25", arg: 8, scope: !2338, file: !2339, line: 160, type: !49)
!2350 = !DILocalVariable(name: "s26", arg: 9, scope: !2338, file: !2339, line: 160, type: !49)
!2351 = !DILocalVariable(name: "s27", arg: 10, scope: !2338, file: !2339, line: 160, type: !49)
!2352 = !DILocalVariable(name: "s28", arg: 11, scope: !2338, file: !2339, line: 160, type: !49)
!2353 = !DILocation(line: 0, scope: !2338, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 234, column: 7, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2323, file: !305, line: 234, column: 7)
!2356 = !DILocation(line: 162, column: 7, scope: !2357, inlinedAt: !2354)
!2357 = distinct !DILexicalBlock(scope: !2338, file: !2339, line: 162, column: 7)
!2358 = !DILocalVariable(name: "s1", arg: 1, scope: !2359, file: !2339, line: 146, type: !50)
!2359 = distinct !DISubprogram(name: "strcaseeq1", scope: !2339, file: !2339, line: 146, type: !2360, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!52, !50, !50, !49, !49, !49, !49, !49, !49, !49, !49}
!2362 = !{!2358, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371}
!2363 = !DILocalVariable(name: "s2", arg: 2, scope: !2359, file: !2339, line: 146, type: !50)
!2364 = !DILocalVariable(name: "s21", arg: 3, scope: !2359, file: !2339, line: 146, type: !49)
!2365 = !DILocalVariable(name: "s22", arg: 4, scope: !2359, file: !2339, line: 146, type: !49)
!2366 = !DILocalVariable(name: "s23", arg: 5, scope: !2359, file: !2339, line: 146, type: !49)
!2367 = !DILocalVariable(name: "s24", arg: 6, scope: !2359, file: !2339, line: 146, type: !49)
!2368 = !DILocalVariable(name: "s25", arg: 7, scope: !2359, file: !2339, line: 146, type: !49)
!2369 = !DILocalVariable(name: "s26", arg: 8, scope: !2359, file: !2339, line: 146, type: !49)
!2370 = !DILocalVariable(name: "s27", arg: 9, scope: !2359, file: !2339, line: 146, type: !49)
!2371 = !DILocalVariable(name: "s28", arg: 10, scope: !2359, file: !2339, line: 146, type: !49)
!2372 = !DILocation(line: 0, scope: !2359, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 167, column: 16, scope: !2374, inlinedAt: !2354)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !2339, line: 164, column: 11)
!2375 = distinct !DILexicalBlock(scope: !2357, file: !2339, line: 163, column: 5)
!2376 = !DILocation(line: 148, column: 7, scope: !2377, inlinedAt: !2373)
!2377 = distinct !DILexicalBlock(scope: !2359, file: !2339, line: 148, column: 7)
!2378 = !DILocalVariable(name: "s1", arg: 1, scope: !2379, file: !2339, line: 132, type: !50)
!2379 = distinct !DISubprogram(name: "strcaseeq2", scope: !2339, file: !2339, line: 132, type: !2380, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!52, !50, !50, !49, !49, !49, !49, !49, !49, !49}
!2382 = !{!2378, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390}
!2383 = !DILocalVariable(name: "s2", arg: 2, scope: !2379, file: !2339, line: 132, type: !50)
!2384 = !DILocalVariable(name: "s22", arg: 3, scope: !2379, file: !2339, line: 132, type: !49)
!2385 = !DILocalVariable(name: "s23", arg: 4, scope: !2379, file: !2339, line: 132, type: !49)
!2386 = !DILocalVariable(name: "s24", arg: 5, scope: !2379, file: !2339, line: 132, type: !49)
!2387 = !DILocalVariable(name: "s25", arg: 6, scope: !2379, file: !2339, line: 132, type: !49)
!2388 = !DILocalVariable(name: "s26", arg: 7, scope: !2379, file: !2339, line: 132, type: !49)
!2389 = !DILocalVariable(name: "s27", arg: 8, scope: !2379, file: !2339, line: 132, type: !49)
!2390 = !DILocalVariable(name: "s28", arg: 9, scope: !2379, file: !2339, line: 132, type: !49)
!2391 = !DILocation(line: 0, scope: !2379, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 153, column: 16, scope: !2393, inlinedAt: !2373)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !2339, line: 150, column: 11)
!2394 = distinct !DILexicalBlock(scope: !2377, file: !2339, line: 149, column: 5)
!2395 = !DILocation(line: 134, column: 7, scope: !2396, inlinedAt: !2392)
!2396 = distinct !DILexicalBlock(scope: !2379, file: !2339, line: 134, column: 7)
!2397 = !DILocalVariable(name: "s1", arg: 1, scope: !2398, file: !2339, line: 118, type: !50)
!2398 = distinct !DISubprogram(name: "strcaseeq3", scope: !2339, file: !2339, line: 118, type: !2399, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!52, !50, !50, !49, !49, !49, !49, !49, !49}
!2401 = !{!2397, !2402, !2403, !2404, !2405, !2406, !2407, !2408}
!2402 = !DILocalVariable(name: "s2", arg: 2, scope: !2398, file: !2339, line: 118, type: !50)
!2403 = !DILocalVariable(name: "s23", arg: 3, scope: !2398, file: !2339, line: 118, type: !49)
!2404 = !DILocalVariable(name: "s24", arg: 4, scope: !2398, file: !2339, line: 118, type: !49)
!2405 = !DILocalVariable(name: "s25", arg: 5, scope: !2398, file: !2339, line: 118, type: !49)
!2406 = !DILocalVariable(name: "s26", arg: 6, scope: !2398, file: !2339, line: 118, type: !49)
!2407 = !DILocalVariable(name: "s27", arg: 7, scope: !2398, file: !2339, line: 118, type: !49)
!2408 = !DILocalVariable(name: "s28", arg: 8, scope: !2398, file: !2339, line: 118, type: !49)
!2409 = !DILocation(line: 0, scope: !2398, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 139, column: 16, scope: !2411, inlinedAt: !2392)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !2339, line: 136, column: 11)
!2412 = distinct !DILexicalBlock(scope: !2396, file: !2339, line: 135, column: 5)
!2413 = !DILocation(line: 120, column: 7, scope: !2414, inlinedAt: !2410)
!2414 = distinct !DILexicalBlock(scope: !2398, file: !2339, line: 120, column: 7)
!2415 = !DILocation(line: 120, column: 7, scope: !2398, inlinedAt: !2410)
!2416 = !DILocalVariable(name: "s1", arg: 1, scope: !2417, file: !2339, line: 104, type: !50)
!2417 = distinct !DISubprogram(name: "strcaseeq4", scope: !2339, file: !2339, line: 104, type: !2418, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!52, !50, !50, !49, !49, !49, !49, !49}
!2420 = !{!2416, !2421, !2422, !2423, !2424, !2425, !2426}
!2421 = !DILocalVariable(name: "s2", arg: 2, scope: !2417, file: !2339, line: 104, type: !50)
!2422 = !DILocalVariable(name: "s24", arg: 3, scope: !2417, file: !2339, line: 104, type: !49)
!2423 = !DILocalVariable(name: "s25", arg: 4, scope: !2417, file: !2339, line: 104, type: !49)
!2424 = !DILocalVariable(name: "s26", arg: 5, scope: !2417, file: !2339, line: 104, type: !49)
!2425 = !DILocalVariable(name: "s27", arg: 6, scope: !2417, file: !2339, line: 104, type: !49)
!2426 = !DILocalVariable(name: "s28", arg: 7, scope: !2417, file: !2339, line: 104, type: !49)
!2427 = !DILocation(line: 0, scope: !2417, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 125, column: 16, scope: !2429, inlinedAt: !2410)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !2339, line: 122, column: 11)
!2430 = distinct !DILexicalBlock(scope: !2414, file: !2339, line: 121, column: 5)
!2431 = !DILocation(line: 106, column: 7, scope: !2432, inlinedAt: !2428)
!2432 = distinct !DILexicalBlock(scope: !2417, file: !2339, line: 106, column: 7)
!2433 = !DILocation(line: 106, column: 7, scope: !2417, inlinedAt: !2428)
!2434 = !DILocalVariable(name: "s1", arg: 1, scope: !2435, file: !2339, line: 90, type: !50)
!2435 = distinct !DISubprogram(name: "strcaseeq5", scope: !2339, file: !2339, line: 90, type: !2436, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!52, !50, !50, !49, !49, !49, !49}
!2438 = !{!2434, !2439, !2440, !2441, !2442, !2443}
!2439 = !DILocalVariable(name: "s2", arg: 2, scope: !2435, file: !2339, line: 90, type: !50)
!2440 = !DILocalVariable(name: "s25", arg: 3, scope: !2435, file: !2339, line: 90, type: !49)
!2441 = !DILocalVariable(name: "s26", arg: 4, scope: !2435, file: !2339, line: 90, type: !49)
!2442 = !DILocalVariable(name: "s27", arg: 5, scope: !2435, file: !2339, line: 90, type: !49)
!2443 = !DILocalVariable(name: "s28", arg: 6, scope: !2435, file: !2339, line: 90, type: !49)
!2444 = !DILocation(line: 0, scope: !2435, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 111, column: 16, scope: !2446, inlinedAt: !2428)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !2339, line: 108, column: 11)
!2447 = distinct !DILexicalBlock(scope: !2432, file: !2339, line: 107, column: 5)
!2448 = !DILocation(line: 92, column: 7, scope: !2449, inlinedAt: !2445)
!2449 = distinct !DILexicalBlock(scope: !2435, file: !2339, line: 92, column: 7)
!2450 = !DILocation(line: 92, column: 7, scope: !2435, inlinedAt: !2445)
!2451 = !DILocation(line: 235, column: 12, scope: !2355)
!2452 = !DILocation(line: 235, column: 21, scope: !2355)
!2453 = !DILocation(line: 235, column: 5, scope: !2355)
!2454 = !DILocation(line: 0, scope: !2359, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 167, column: 16, scope: !2374, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 236, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2323, file: !305, line: 236, column: 7)
!2458 = !DILocation(line: 148, column: 7, scope: !2377, inlinedAt: !2455)
!2459 = !DILocation(line: 0, scope: !2379, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 153, column: 16, scope: !2393, inlinedAt: !2455)
!2461 = !DILocation(line: 134, column: 7, scope: !2396, inlinedAt: !2460)
!2462 = !DILocation(line: 134, column: 7, scope: !2379, inlinedAt: !2460)
!2463 = !DILocation(line: 0, scope: !2398, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 139, column: 16, scope: !2411, inlinedAt: !2460)
!2465 = !DILocation(line: 120, column: 7, scope: !2414, inlinedAt: !2464)
!2466 = !DILocation(line: 120, column: 7, scope: !2398, inlinedAt: !2464)
!2467 = !DILocation(line: 0, scope: !2417, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 125, column: 16, scope: !2429, inlinedAt: !2464)
!2469 = !DILocation(line: 106, column: 7, scope: !2432, inlinedAt: !2468)
!2470 = !DILocation(line: 106, column: 7, scope: !2417, inlinedAt: !2468)
!2471 = !DILocation(line: 0, scope: !2435, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 111, column: 16, scope: !2446, inlinedAt: !2468)
!2473 = !DILocation(line: 92, column: 7, scope: !2449, inlinedAt: !2472)
!2474 = !DILocation(line: 92, column: 7, scope: !2435, inlinedAt: !2472)
!2475 = !DILocalVariable(name: "s1", arg: 1, scope: !2476, file: !2339, line: 76, type: !50)
!2476 = distinct !DISubprogram(name: "strcaseeq6", scope: !2339, file: !2339, line: 76, type: !2477, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!52, !50, !50, !49, !49, !49}
!2479 = !{!2475, !2480, !2481, !2482, !2483}
!2480 = !DILocalVariable(name: "s2", arg: 2, scope: !2476, file: !2339, line: 76, type: !50)
!2481 = !DILocalVariable(name: "s26", arg: 3, scope: !2476, file: !2339, line: 76, type: !49)
!2482 = !DILocalVariable(name: "s27", arg: 4, scope: !2476, file: !2339, line: 76, type: !49)
!2483 = !DILocalVariable(name: "s28", arg: 5, scope: !2476, file: !2339, line: 76, type: !49)
!2484 = !DILocation(line: 0, scope: !2476, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 97, column: 16, scope: !2486, inlinedAt: !2472)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !2339, line: 94, column: 11)
!2487 = distinct !DILexicalBlock(scope: !2449, file: !2339, line: 93, column: 5)
!2488 = !DILocation(line: 78, column: 7, scope: !2489, inlinedAt: !2485)
!2489 = distinct !DILexicalBlock(scope: !2476, file: !2339, line: 78, column: 7)
!2490 = !DILocation(line: 78, column: 7, scope: !2476, inlinedAt: !2485)
!2491 = !DILocalVariable(name: "s1", arg: 1, scope: !2492, file: !2339, line: 62, type: !50)
!2492 = distinct !DISubprogram(name: "strcaseeq7", scope: !2339, file: !2339, line: 62, type: !2493, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!52, !50, !50, !49, !49}
!2495 = !{!2491, !2496, !2497, !2498}
!2496 = !DILocalVariable(name: "s2", arg: 2, scope: !2492, file: !2339, line: 62, type: !50)
!2497 = !DILocalVariable(name: "s27", arg: 3, scope: !2492, file: !2339, line: 62, type: !49)
!2498 = !DILocalVariable(name: "s28", arg: 4, scope: !2492, file: !2339, line: 62, type: !49)
!2499 = !DILocation(line: 0, scope: !2492, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 83, column: 16, scope: !2501, inlinedAt: !2485)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !2339, line: 80, column: 11)
!2502 = distinct !DILexicalBlock(scope: !2489, file: !2339, line: 79, column: 5)
!2503 = !DILocation(line: 64, column: 7, scope: !2504, inlinedAt: !2500)
!2504 = distinct !DILexicalBlock(scope: !2492, file: !2339, line: 64, column: 7)
!2505 = !DILocation(line: 236, column: 7, scope: !2323)
!2506 = !DILocation(line: 237, column: 12, scope: !2457)
!2507 = !DILocation(line: 237, column: 21, scope: !2457)
!2508 = !DILocation(line: 237, column: 5, scope: !2457)
!2509 = !DILocation(line: 239, column: 13, scope: !2323)
!2510 = !DILocation(line: 239, column: 11, scope: !2323)
!2511 = !DILocation(line: 239, column: 3, scope: !2323)
!2512 = !DILocation(line: 240, column: 1, scope: !2323)
!2513 = distinct !DISubprogram(name: "quotearg_alloc", scope: !305, file: !305, line: 799, type: !2514, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!48, !50, !107, !323}
!2516 = !{!2517, !2518, !2519}
!2517 = !DILocalVariable(name: "arg", arg: 1, scope: !2513, file: !305, line: 799, type: !50)
!2518 = !DILocalVariable(name: "argsize", arg: 2, scope: !2513, file: !305, line: 799, type: !107)
!2519 = !DILocalVariable(name: "o", arg: 3, scope: !2513, file: !305, line: 800, type: !323)
!2520 = !DILocation(line: 0, scope: !2513)
!2521 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !305, line: 812, type: !50)
!2522 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !305, file: !305, line: 812, type: !2523, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!48, !50, !107, !471, !323}
!2525 = !{!2521, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2526 = !DILocalVariable(name: "argsize", arg: 2, scope: !2522, file: !305, line: 812, type: !107)
!2527 = !DILocalVariable(name: "size", arg: 3, scope: !2522, file: !305, line: 812, type: !471)
!2528 = !DILocalVariable(name: "o", arg: 4, scope: !2522, file: !305, line: 813, type: !323)
!2529 = !DILocalVariable(name: "p", scope: !2522, file: !305, line: 815, type: !323)
!2530 = !DILocalVariable(name: "e", scope: !2522, file: !305, line: 816, type: !52)
!2531 = !DILocalVariable(name: "flags", scope: !2522, file: !305, line: 818, type: !52)
!2532 = !DILocalVariable(name: "bufsize", scope: !2522, file: !305, line: 819, type: !107)
!2533 = !DILocalVariable(name: "buf", scope: !2522, file: !305, line: 823, type: !48)
!2534 = !DILocation(line: 0, scope: !2522, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 802, column: 10, scope: !2513)
!2536 = !DILocation(line: 815, column: 37, scope: !2522, inlinedAt: !2535)
!2537 = !DILocation(line: 816, column: 11, scope: !2522, inlinedAt: !2535)
!2538 = !DILocation(line: 818, column: 18, scope: !2522, inlinedAt: !2535)
!2539 = !DILocation(line: 818, column: 24, scope: !2522, inlinedAt: !2535)
!2540 = !DILocation(line: 819, column: 69, scope: !2522, inlinedAt: !2535)
!2541 = !DILocation(line: 820, column: 53, scope: !2522, inlinedAt: !2535)
!2542 = !DILocation(line: 821, column: 49, scope: !2522, inlinedAt: !2535)
!2543 = !DILocation(line: 822, column: 49, scope: !2522, inlinedAt: !2535)
!2544 = !DILocation(line: 819, column: 20, scope: !2522, inlinedAt: !2535)
!2545 = !DILocation(line: 822, column: 62, scope: !2522, inlinedAt: !2535)
!2546 = !DILocalVariable(name: "n", arg: 1, scope: !2547, file: !314, line: 216, type: !107)
!2547 = distinct !DISubprogram(name: "xcharalloc", scope: !314, file: !314, line: 216, type: !2548, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!48, !107}
!2550 = !{!2546}
!2551 = !DILocation(line: 0, scope: !2547, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 823, column: 15, scope: !2522, inlinedAt: !2535)
!2553 = !DILocation(line: 218, column: 10, scope: !2547, inlinedAt: !2552)
!2554 = !DILocation(line: 824, column: 60, scope: !2522, inlinedAt: !2535)
!2555 = !DILocation(line: 826, column: 32, scope: !2522, inlinedAt: !2535)
!2556 = !DILocation(line: 826, column: 47, scope: !2522, inlinedAt: !2535)
!2557 = !DILocation(line: 824, column: 3, scope: !2522, inlinedAt: !2535)
!2558 = !DILocation(line: 827, column: 9, scope: !2522, inlinedAt: !2535)
!2559 = !DILocation(line: 802, column: 3, scope: !2513)
!2560 = !DILocation(line: 0, scope: !2522)
!2561 = !DILocation(line: 815, column: 37, scope: !2522)
!2562 = !DILocation(line: 816, column: 11, scope: !2522)
!2563 = !DILocation(line: 818, column: 18, scope: !2522)
!2564 = !DILocation(line: 818, column: 27, scope: !2522)
!2565 = !DILocation(line: 818, column: 24, scope: !2522)
!2566 = !DILocation(line: 819, column: 69, scope: !2522)
!2567 = !DILocation(line: 820, column: 53, scope: !2522)
!2568 = !DILocation(line: 821, column: 49, scope: !2522)
!2569 = !DILocation(line: 822, column: 49, scope: !2522)
!2570 = !DILocation(line: 819, column: 20, scope: !2522)
!2571 = !DILocation(line: 822, column: 62, scope: !2522)
!2572 = !DILocation(line: 0, scope: !2547, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 823, column: 15, scope: !2522)
!2574 = !DILocation(line: 218, column: 10, scope: !2547, inlinedAt: !2573)
!2575 = !DILocation(line: 824, column: 60, scope: !2522)
!2576 = !DILocation(line: 826, column: 32, scope: !2522)
!2577 = !DILocation(line: 826, column: 47, scope: !2522)
!2578 = !DILocation(line: 824, column: 3, scope: !2522)
!2579 = !DILocation(line: 827, column: 9, scope: !2522)
!2580 = !DILocation(line: 828, column: 7, scope: !2522)
!2581 = !DILocation(line: 829, column: 11, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2522, file: !305, line: 828, column: 7)
!2583 = !{!1407, !1407, i64 0}
!2584 = !DILocation(line: 829, column: 5, scope: !2582)
!2585 = !DILocation(line: 830, column: 3, scope: !2522)
!2586 = distinct !DISubprogram(name: "quotearg_free", scope: !305, file: !305, line: 848, type: !134, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2587)
!2587 = !{!2588, !2589}
!2588 = !DILocalVariable(name: "sv", scope: !2586, file: !305, line: 850, type: !401)
!2589 = !DILocalVariable(name: "i", scope: !2586, file: !305, line: 851, type: !52)
!2590 = !DILocation(line: 850, column: 24, scope: !2586)
!2591 = !DILocation(line: 0, scope: !2586)
!2592 = !DILocation(line: 852, column: 19, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !305, line: 852, column: 3)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !305, line: 852, column: 3)
!2595 = !DILocation(line: 852, column: 17, scope: !2593)
!2596 = !DILocation(line: 852, column: 3, scope: !2594)
!2597 = !DILocation(line: 853, column: 17, scope: !2593)
!2598 = !{!2599, !1132, i64 8}
!2599 = !{!"slotvec", !1407, i64 0, !1132, i64 8}
!2600 = !DILocation(line: 853, column: 5, scope: !2593)
!2601 = !DILocation(line: 852, column: 28, scope: !2593)
!2602 = distinct !{!2602, !2596, !2603}
!2603 = !DILocation(line: 853, column: 20, scope: !2594)
!2604 = !DILocation(line: 854, column: 13, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2586, file: !305, line: 854, column: 7)
!2606 = !DILocation(line: 854, column: 17, scope: !2605)
!2607 = !DILocation(line: 854, column: 7, scope: !2586)
!2608 = !DILocation(line: 856, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !305, line: 855, column: 5)
!2610 = !DILocation(line: 857, column: 21, scope: !2609)
!2611 = !{!2599, !1407, i64 0}
!2612 = !DILocation(line: 858, column: 20, scope: !2609)
!2613 = !DILocation(line: 859, column: 5, scope: !2609)
!2614 = !DILocation(line: 860, column: 10, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2586, file: !305, line: 860, column: 7)
!2616 = !DILocation(line: 860, column: 7, scope: !2586)
!2617 = !DILocation(line: 862, column: 13, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !305, line: 861, column: 5)
!2619 = !DILocation(line: 862, column: 7, scope: !2618)
!2620 = !DILocation(line: 863, column: 15, scope: !2618)
!2621 = !DILocation(line: 864, column: 5, scope: !2618)
!2622 = !DILocation(line: 865, column: 10, scope: !2586)
!2623 = !DILocation(line: 866, column: 1, scope: !2586)
!2624 = distinct !DISubprogram(name: "quotearg_n", scope: !305, file: !305, line: 931, type: !121, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2625)
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !305, line: 931, type: !52)
!2627 = !DILocalVariable(name: "arg", arg: 2, scope: !2624, file: !305, line: 931, type: !50)
!2628 = !DILocation(line: 0, scope: !2624)
!2629 = !DILocation(line: 933, column: 10, scope: !2624)
!2630 = !DILocation(line: 933, column: 3, scope: !2624)
!2631 = distinct !DISubprogram(name: "quotearg_n_options", scope: !305, file: !305, line: 877, type: !2632, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!48, !52, !50, !107, !323}
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2644, !2645, !2647, !2648, !2649}
!2635 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !305, line: 877, type: !52)
!2636 = !DILocalVariable(name: "arg", arg: 2, scope: !2631, file: !305, line: 877, type: !50)
!2637 = !DILocalVariable(name: "argsize", arg: 3, scope: !2631, file: !305, line: 877, type: !107)
!2638 = !DILocalVariable(name: "options", arg: 4, scope: !2631, file: !305, line: 878, type: !323)
!2639 = !DILocalVariable(name: "e", scope: !2631, file: !305, line: 880, type: !52)
!2640 = !DILocalVariable(name: "sv", scope: !2631, file: !305, line: 882, type: !401)
!2641 = !DILocalVariable(name: "preallocated", scope: !2642, file: !305, line: 889, type: !195)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !305, line: 888, column: 5)
!2643 = distinct !DILexicalBlock(scope: !2631, file: !305, line: 887, column: 7)
!2644 = !DILocalVariable(name: "nmax", scope: !2642, file: !305, line: 890, type: !52)
!2645 = !DILocalVariable(name: "size", scope: !2646, file: !305, line: 903, type: !107)
!2646 = distinct !DILexicalBlock(scope: !2631, file: !305, line: 902, column: 3)
!2647 = !DILocalVariable(name: "val", scope: !2646, file: !305, line: 904, type: !48)
!2648 = !DILocalVariable(name: "flags", scope: !2646, file: !305, line: 906, type: !52)
!2649 = !DILocalVariable(name: "qsize", scope: !2646, file: !305, line: 907, type: !107)
!2650 = !DILocation(line: 0, scope: !2631)
!2651 = !DILocation(line: 880, column: 11, scope: !2631)
!2652 = !DILocation(line: 882, column: 24, scope: !2631)
!2653 = !DILocation(line: 884, column: 9, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2631, file: !305, line: 884, column: 7)
!2655 = !DILocation(line: 884, column: 7, scope: !2631)
!2656 = !DILocation(line: 885, column: 5, scope: !2654)
!2657 = !DILocation(line: 887, column: 7, scope: !2643)
!2658 = !DILocation(line: 887, column: 14, scope: !2643)
!2659 = !DILocation(line: 887, column: 7, scope: !2631)
!2660 = !DILocation(line: 889, column: 31, scope: !2642)
!2661 = !DILocation(line: 0, scope: !2642)
!2662 = !DILocation(line: 892, column: 16, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2642, file: !305, line: 892, column: 11)
!2664 = !DILocation(line: 892, column: 11, scope: !2642)
!2665 = !DILocation(line: 893, column: 9, scope: !2663)
!2666 = !DILocation(line: 895, column: 32, scope: !2642)
!2667 = !DILocation(line: 895, column: 61, scope: !2642)
!2668 = !DILocation(line: 895, column: 58, scope: !2642)
!2669 = !DILocation(line: 895, column: 66, scope: !2642)
!2670 = !DILocation(line: 895, column: 22, scope: !2642)
!2671 = !DILocation(line: 895, column: 15, scope: !2642)
!2672 = !DILocation(line: 896, column: 11, scope: !2642)
!2673 = !DILocation(line: 897, column: 15, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2642, file: !305, line: 896, column: 11)
!2675 = !{i64 0, i64 8, !2583, i64 8, i64 8, !1131}
!2676 = !DILocation(line: 897, column: 9, scope: !2674)
!2677 = !DILocation(line: 898, column: 20, scope: !2642)
!2678 = !DILocation(line: 898, column: 18, scope: !2642)
!2679 = !DILocation(line: 898, column: 15, scope: !2642)
!2680 = !DILocation(line: 898, column: 38, scope: !2642)
!2681 = !DILocation(line: 898, column: 31, scope: !2642)
!2682 = !DILocation(line: 898, column: 48, scope: !2642)
!2683 = !DILocation(line: 0, scope: !2080, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 898, column: 7, scope: !2642)
!2685 = !DILocation(line: 71, column: 10, scope: !2080, inlinedAt: !2684)
!2686 = !DILocation(line: 899, column: 14, scope: !2642)
!2687 = !DILocation(line: 900, column: 5, scope: !2642)
!2688 = !DILocation(line: 903, column: 19, scope: !2646)
!2689 = !DILocation(line: 903, column: 25, scope: !2646)
!2690 = !DILocation(line: 0, scope: !2646)
!2691 = !DILocation(line: 904, column: 23, scope: !2646)
!2692 = !DILocation(line: 906, column: 26, scope: !2646)
!2693 = !DILocation(line: 906, column: 32, scope: !2646)
!2694 = !DILocation(line: 908, column: 55, scope: !2646)
!2695 = !DILocation(line: 909, column: 46, scope: !2646)
!2696 = !DILocation(line: 910, column: 55, scope: !2646)
!2697 = !DILocation(line: 911, column: 55, scope: !2646)
!2698 = !DILocation(line: 907, column: 20, scope: !2646)
!2699 = !DILocation(line: 913, column: 14, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2646, file: !305, line: 913, column: 9)
!2701 = !DILocation(line: 913, column: 9, scope: !2646)
!2702 = !DILocation(line: 915, column: 35, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !305, line: 914, column: 7)
!2704 = !DILocation(line: 915, column: 20, scope: !2703)
!2705 = !DILocation(line: 916, column: 17, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !305, line: 916, column: 13)
!2707 = !DILocation(line: 916, column: 13, scope: !2703)
!2708 = !DILocation(line: 917, column: 11, scope: !2706)
!2709 = !DILocation(line: 0, scope: !2547, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 918, column: 27, scope: !2703)
!2711 = !DILocation(line: 218, column: 10, scope: !2547, inlinedAt: !2710)
!2712 = !DILocation(line: 918, column: 19, scope: !2703)
!2713 = !DILocation(line: 919, column: 69, scope: !2703)
!2714 = !DILocation(line: 921, column: 44, scope: !2703)
!2715 = !DILocation(line: 922, column: 44, scope: !2703)
!2716 = !DILocation(line: 919, column: 9, scope: !2703)
!2717 = !DILocation(line: 923, column: 7, scope: !2703)
!2718 = !DILocation(line: 925, column: 11, scope: !2646)
!2719 = !DILocation(line: 926, column: 5, scope: !2646)
!2720 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !305, file: !305, line: 937, type: !2721, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!48, !52, !50, !107}
!2723 = !{!2724, !2725, !2726}
!2724 = !DILocalVariable(name: "n", arg: 1, scope: !2720, file: !305, line: 937, type: !52)
!2725 = !DILocalVariable(name: "arg", arg: 2, scope: !2720, file: !305, line: 937, type: !50)
!2726 = !DILocalVariable(name: "argsize", arg: 3, scope: !2720, file: !305, line: 937, type: !107)
!2727 = !DILocation(line: 0, scope: !2720)
!2728 = !DILocation(line: 939, column: 10, scope: !2720)
!2729 = !DILocation(line: 939, column: 3, scope: !2720)
!2730 = distinct !DISubprogram(name: "quotearg", scope: !305, file: !305, line: 943, type: !127, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2731)
!2731 = !{!2732}
!2732 = !DILocalVariable(name: "arg", arg: 1, scope: !2730, file: !305, line: 943, type: !50)
!2733 = !DILocation(line: 0, scope: !2730)
!2734 = !DILocation(line: 0, scope: !2624, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 945, column: 10, scope: !2730)
!2736 = !DILocation(line: 933, column: 10, scope: !2624, inlinedAt: !2735)
!2737 = !DILocation(line: 945, column: 3, scope: !2730)
!2738 = distinct !DISubprogram(name: "quotearg_mem", scope: !305, file: !305, line: 949, type: !2739, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!48, !50, !107}
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "arg", arg: 1, scope: !2738, file: !305, line: 949, type: !50)
!2743 = !DILocalVariable(name: "argsize", arg: 2, scope: !2738, file: !305, line: 949, type: !107)
!2744 = !DILocation(line: 0, scope: !2738)
!2745 = !DILocation(line: 0, scope: !2720, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 951, column: 10, scope: !2738)
!2747 = !DILocation(line: 939, column: 10, scope: !2720, inlinedAt: !2746)
!2748 = !DILocation(line: 951, column: 3, scope: !2738)
!2749 = distinct !DISubprogram(name: "quotearg_n_style", scope: !305, file: !305, line: 955, type: !2750, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!48, !52, !29, !50}
!2752 = !{!2753, !2754, !2755, !2756}
!2753 = !DILocalVariable(name: "n", arg: 1, scope: !2749, file: !305, line: 955, type: !52)
!2754 = !DILocalVariable(name: "s", arg: 2, scope: !2749, file: !305, line: 955, type: !29)
!2755 = !DILocalVariable(name: "arg", arg: 3, scope: !2749, file: !305, line: 955, type: !50)
!2756 = !DILocalVariable(name: "o", scope: !2749, file: !305, line: 957, type: !324)
!2757 = !DILocation(line: 0, scope: !2749)
!2758 = !DILocation(line: 957, column: 3, scope: !2749)
!2759 = !DILocation(line: 957, column: 32, scope: !2749)
!2760 = !DILocalVariable(name: "style", arg: 1, scope: !2761, file: !305, line: 193, type: !29)
!2761 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !305, file: !305, line: 193, type: !2762, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!325, !29}
!2764 = !{!2760, !2765}
!2765 = !DILocalVariable(name: "o", scope: !2761, file: !305, line: 195, type: !325)
!2766 = !DILocation(line: 0, scope: !2761, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 957, column: 36, scope: !2749)
!2768 = !DILocation(line: 195, column: 26, scope: !2761, inlinedAt: !2767)
!2769 = !{!2770}
!2770 = distinct !{!2770, !2771, !"quoting_options_from_style: argument 0"}
!2771 = distinct !{!2771, !"quoting_options_from_style"}
!2772 = !DILocation(line: 196, column: 13, scope: !2773, inlinedAt: !2767)
!2773 = distinct !DILexicalBlock(scope: !2761, file: !305, line: 196, column: 7)
!2774 = !DILocation(line: 196, column: 7, scope: !2761, inlinedAt: !2767)
!2775 = !DILocation(line: 197, column: 5, scope: !2773, inlinedAt: !2767)
!2776 = !DILocation(line: 198, column: 5, scope: !2761, inlinedAt: !2767)
!2777 = !DILocation(line: 198, column: 11, scope: !2761, inlinedAt: !2767)
!2778 = !DILocation(line: 958, column: 10, scope: !2749)
!2779 = !DILocation(line: 959, column: 1, scope: !2749)
!2780 = !DILocation(line: 958, column: 3, scope: !2749)
!2781 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !305, file: !305, line: 962, type: !2782, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!48, !52, !29, !50, !107}
!2784 = !{!2785, !2786, !2787, !2788, !2789}
!2785 = !DILocalVariable(name: "n", arg: 1, scope: !2781, file: !305, line: 962, type: !52)
!2786 = !DILocalVariable(name: "s", arg: 2, scope: !2781, file: !305, line: 962, type: !29)
!2787 = !DILocalVariable(name: "arg", arg: 3, scope: !2781, file: !305, line: 963, type: !50)
!2788 = !DILocalVariable(name: "argsize", arg: 4, scope: !2781, file: !305, line: 963, type: !107)
!2789 = !DILocalVariable(name: "o", scope: !2781, file: !305, line: 965, type: !324)
!2790 = !DILocation(line: 0, scope: !2781)
!2791 = !DILocation(line: 965, column: 3, scope: !2781)
!2792 = !DILocation(line: 965, column: 32, scope: !2781)
!2793 = !DILocation(line: 0, scope: !2761, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 965, column: 36, scope: !2781)
!2795 = !DILocation(line: 195, column: 26, scope: !2761, inlinedAt: !2794)
!2796 = !{!2797}
!2797 = distinct !{!2797, !2798, !"quoting_options_from_style: argument 0"}
!2798 = distinct !{!2798, !"quoting_options_from_style"}
!2799 = !DILocation(line: 196, column: 13, scope: !2773, inlinedAt: !2794)
!2800 = !DILocation(line: 196, column: 7, scope: !2761, inlinedAt: !2794)
!2801 = !DILocation(line: 197, column: 5, scope: !2773, inlinedAt: !2794)
!2802 = !DILocation(line: 198, column: 5, scope: !2761, inlinedAt: !2794)
!2803 = !DILocation(line: 198, column: 11, scope: !2761, inlinedAt: !2794)
!2804 = !DILocation(line: 966, column: 10, scope: !2781)
!2805 = !DILocation(line: 967, column: 1, scope: !2781)
!2806 = !DILocation(line: 966, column: 3, scope: !2781)
!2807 = distinct !DISubprogram(name: "quotearg_style", scope: !305, file: !305, line: 970, type: !169, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2808)
!2808 = !{!2809, !2810}
!2809 = !DILocalVariable(name: "s", arg: 1, scope: !2807, file: !305, line: 970, type: !29)
!2810 = !DILocalVariable(name: "arg", arg: 2, scope: !2807, file: !305, line: 970, type: !50)
!2811 = !DILocation(line: 195, column: 26, scope: !2761, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 957, column: 36, scope: !2749, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 972, column: 10, scope: !2807)
!2814 = !DILocation(line: 957, column: 32, scope: !2749, inlinedAt: !2813)
!2815 = !DILocation(line: 0, scope: !2807)
!2816 = !DILocation(line: 0, scope: !2749, inlinedAt: !2813)
!2817 = !DILocation(line: 957, column: 3, scope: !2749, inlinedAt: !2813)
!2818 = !DILocation(line: 0, scope: !2761, inlinedAt: !2812)
!2819 = !{!2820}
!2820 = distinct !{!2820, !2821, !"quoting_options_from_style: argument 0"}
!2821 = distinct !{!2821, !"quoting_options_from_style"}
!2822 = !DILocation(line: 196, column: 13, scope: !2773, inlinedAt: !2812)
!2823 = !DILocation(line: 196, column: 7, scope: !2761, inlinedAt: !2812)
!2824 = !DILocation(line: 197, column: 5, scope: !2773, inlinedAt: !2812)
!2825 = !DILocation(line: 198, column: 5, scope: !2761, inlinedAt: !2812)
!2826 = !DILocation(line: 198, column: 11, scope: !2761, inlinedAt: !2812)
!2827 = !DILocation(line: 958, column: 10, scope: !2749, inlinedAt: !2813)
!2828 = !DILocation(line: 959, column: 1, scope: !2749, inlinedAt: !2813)
!2829 = !DILocation(line: 972, column: 3, scope: !2807)
!2830 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !305, file: !305, line: 976, type: !2831, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!48, !29, !50, !107}
!2833 = !{!2834, !2835, !2836}
!2834 = !DILocalVariable(name: "s", arg: 1, scope: !2830, file: !305, line: 976, type: !29)
!2835 = !DILocalVariable(name: "arg", arg: 2, scope: !2830, file: !305, line: 976, type: !50)
!2836 = !DILocalVariable(name: "argsize", arg: 3, scope: !2830, file: !305, line: 976, type: !107)
!2837 = !DILocation(line: 195, column: 26, scope: !2761, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 965, column: 36, scope: !2781, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 978, column: 10, scope: !2830)
!2840 = !DILocation(line: 965, column: 32, scope: !2781, inlinedAt: !2839)
!2841 = !DILocation(line: 0, scope: !2830)
!2842 = !DILocation(line: 0, scope: !2781, inlinedAt: !2839)
!2843 = !DILocation(line: 965, column: 3, scope: !2781, inlinedAt: !2839)
!2844 = !DILocation(line: 0, scope: !2761, inlinedAt: !2838)
!2845 = !{!2846}
!2846 = distinct !{!2846, !2847, !"quoting_options_from_style: argument 0"}
!2847 = distinct !{!2847, !"quoting_options_from_style"}
!2848 = !DILocation(line: 196, column: 13, scope: !2773, inlinedAt: !2838)
!2849 = !DILocation(line: 196, column: 7, scope: !2761, inlinedAt: !2838)
!2850 = !DILocation(line: 197, column: 5, scope: !2773, inlinedAt: !2838)
!2851 = !DILocation(line: 198, column: 5, scope: !2761, inlinedAt: !2838)
!2852 = !DILocation(line: 198, column: 11, scope: !2761, inlinedAt: !2838)
!2853 = !DILocation(line: 966, column: 10, scope: !2781, inlinedAt: !2839)
!2854 = !DILocation(line: 967, column: 1, scope: !2781, inlinedAt: !2839)
!2855 = !DILocation(line: 978, column: 3, scope: !2830)
!2856 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !305, file: !305, line: 982, type: !2857, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!48, !50, !107, !49}
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DILocalVariable(name: "arg", arg: 1, scope: !2856, file: !305, line: 982, type: !50)
!2861 = !DILocalVariable(name: "argsize", arg: 2, scope: !2856, file: !305, line: 982, type: !107)
!2862 = !DILocalVariable(name: "ch", arg: 3, scope: !2856, file: !305, line: 982, type: !49)
!2863 = !DILocalVariable(name: "options", scope: !2856, file: !305, line: 984, type: !325)
!2864 = !DILocation(line: 0, scope: !2856)
!2865 = !DILocation(line: 984, column: 3, scope: !2856)
!2866 = !DILocation(line: 984, column: 26, scope: !2856)
!2867 = !DILocation(line: 985, column: 13, scope: !2856)
!2868 = !{i64 0, i64 4, !1286, i64 4, i64 4, !1337, i64 8, i64 32, !1286, i64 40, i64 8, !1131, i64 48, i64 8, !1131}
!2869 = !DILocation(line: 0, scope: !1695, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 986, column: 3, scope: !2856)
!2871 = !DILocation(line: 156, column: 62, scope: !1695, inlinedAt: !2870)
!2872 = !DILocation(line: 156, column: 57, scope: !1695, inlinedAt: !2870)
!2873 = !DILocation(line: 157, column: 15, scope: !1695, inlinedAt: !2870)
!2874 = !DILocation(line: 158, column: 12, scope: !1695, inlinedAt: !2870)
!2875 = !DILocation(line: 158, column: 15, scope: !1695, inlinedAt: !2870)
!2876 = !DILocation(line: 158, column: 25, scope: !1695, inlinedAt: !2870)
!2877 = !DILocation(line: 159, column: 18, scope: !1695, inlinedAt: !2870)
!2878 = !DILocation(line: 159, column: 23, scope: !1695, inlinedAt: !2870)
!2879 = !DILocation(line: 159, column: 6, scope: !1695, inlinedAt: !2870)
!2880 = !DILocation(line: 987, column: 10, scope: !2856)
!2881 = !DILocation(line: 988, column: 1, scope: !2856)
!2882 = !DILocation(line: 987, column: 3, scope: !2856)
!2883 = distinct !DISubprogram(name: "quotearg_char", scope: !305, file: !305, line: 991, type: !2884, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!48, !50, !49}
!2886 = !{!2887, !2888}
!2887 = !DILocalVariable(name: "arg", arg: 1, scope: !2883, file: !305, line: 991, type: !50)
!2888 = !DILocalVariable(name: "ch", arg: 2, scope: !2883, file: !305, line: 991, type: !49)
!2889 = !DILocation(line: 984, column: 26, scope: !2856, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 993, column: 10, scope: !2883)
!2891 = !DILocation(line: 0, scope: !2883)
!2892 = !DILocation(line: 0, scope: !2856, inlinedAt: !2890)
!2893 = !DILocation(line: 984, column: 3, scope: !2856, inlinedAt: !2890)
!2894 = !DILocation(line: 985, column: 13, scope: !2856, inlinedAt: !2890)
!2895 = !DILocation(line: 0, scope: !1695, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 986, column: 3, scope: !2856, inlinedAt: !2890)
!2897 = !DILocation(line: 156, column: 62, scope: !1695, inlinedAt: !2896)
!2898 = !DILocation(line: 156, column: 57, scope: !1695, inlinedAt: !2896)
!2899 = !DILocation(line: 157, column: 15, scope: !1695, inlinedAt: !2896)
!2900 = !DILocation(line: 158, column: 12, scope: !1695, inlinedAt: !2896)
!2901 = !DILocation(line: 158, column: 15, scope: !1695, inlinedAt: !2896)
!2902 = !DILocation(line: 158, column: 25, scope: !1695, inlinedAt: !2896)
!2903 = !DILocation(line: 159, column: 18, scope: !1695, inlinedAt: !2896)
!2904 = !DILocation(line: 159, column: 23, scope: !1695, inlinedAt: !2896)
!2905 = !DILocation(line: 159, column: 6, scope: !1695, inlinedAt: !2896)
!2906 = !DILocation(line: 987, column: 10, scope: !2856, inlinedAt: !2890)
!2907 = !DILocation(line: 988, column: 1, scope: !2856, inlinedAt: !2890)
!2908 = !DILocation(line: 993, column: 3, scope: !2883)
!2909 = distinct !DISubprogram(name: "quotearg_colon", scope: !305, file: !305, line: 997, type: !127, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2910)
!2910 = !{!2911}
!2911 = !DILocalVariable(name: "arg", arg: 1, scope: !2909, file: !305, line: 997, type: !50)
!2912 = !DILocation(line: 984, column: 26, scope: !2856, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 993, column: 10, scope: !2883, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 999, column: 10, scope: !2909)
!2915 = !DILocation(line: 0, scope: !2909)
!2916 = !DILocation(line: 0, scope: !2883, inlinedAt: !2914)
!2917 = !DILocation(line: 0, scope: !2856, inlinedAt: !2913)
!2918 = !DILocation(line: 984, column: 3, scope: !2856, inlinedAt: !2913)
!2919 = !DILocation(line: 985, column: 13, scope: !2856, inlinedAt: !2913)
!2920 = !DILocation(line: 0, scope: !1695, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 986, column: 3, scope: !2856, inlinedAt: !2913)
!2922 = !DILocation(line: 156, column: 57, scope: !1695, inlinedAt: !2921)
!2923 = !DILocation(line: 158, column: 12, scope: !1695, inlinedAt: !2921)
!2924 = !DILocation(line: 159, column: 6, scope: !1695, inlinedAt: !2921)
!2925 = !DILocation(line: 987, column: 10, scope: !2856, inlinedAt: !2913)
!2926 = !DILocation(line: 988, column: 1, scope: !2856, inlinedAt: !2913)
!2927 = !DILocation(line: 999, column: 3, scope: !2909)
!2928 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !305, file: !305, line: 1003, type: !2739, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2929)
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "arg", arg: 1, scope: !2928, file: !305, line: 1003, type: !50)
!2931 = !DILocalVariable(name: "argsize", arg: 2, scope: !2928, file: !305, line: 1003, type: !107)
!2932 = !DILocation(line: 984, column: 26, scope: !2856, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 1005, column: 10, scope: !2928)
!2934 = !DILocation(line: 0, scope: !2928)
!2935 = !DILocation(line: 0, scope: !2856, inlinedAt: !2933)
!2936 = !DILocation(line: 984, column: 3, scope: !2856, inlinedAt: !2933)
!2937 = !DILocation(line: 985, column: 13, scope: !2856, inlinedAt: !2933)
!2938 = !DILocation(line: 0, scope: !1695, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 986, column: 3, scope: !2856, inlinedAt: !2933)
!2940 = !DILocation(line: 156, column: 57, scope: !1695, inlinedAt: !2939)
!2941 = !DILocation(line: 158, column: 12, scope: !1695, inlinedAt: !2939)
!2942 = !DILocation(line: 159, column: 6, scope: !1695, inlinedAt: !2939)
!2943 = !DILocation(line: 987, column: 10, scope: !2856, inlinedAt: !2933)
!2944 = !DILocation(line: 988, column: 1, scope: !2856, inlinedAt: !2933)
!2945 = !DILocation(line: 1005, column: 3, scope: !2928)
!2946 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !305, file: !305, line: 1009, type: !2750, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2947)
!2947 = !{!2948, !2949, !2950, !2951}
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2946, file: !305, line: 1009, type: !52)
!2949 = !DILocalVariable(name: "s", arg: 2, scope: !2946, file: !305, line: 1009, type: !29)
!2950 = !DILocalVariable(name: "arg", arg: 3, scope: !2946, file: !305, line: 1009, type: !50)
!2951 = !DILocalVariable(name: "options", scope: !2946, file: !305, line: 1011, type: !325)
!2952 = !DILocation(line: 195, column: 26, scope: !2761, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 1012, column: 13, scope: !2946)
!2954 = !DILocation(line: 0, scope: !2946)
!2955 = !DILocation(line: 1011, column: 3, scope: !2946)
!2956 = !DILocation(line: 1011, column: 26, scope: !2946)
!2957 = !DILocation(line: 1012, column: 13, scope: !2946)
!2958 = !DILocation(line: 0, scope: !2761, inlinedAt: !2953)
!2959 = !{!2960}
!2960 = distinct !{!2960, !2961, !"quoting_options_from_style: argument 0"}
!2961 = distinct !{!2961, !"quoting_options_from_style"}
!2962 = !DILocation(line: 196, column: 13, scope: !2773, inlinedAt: !2953)
!2963 = !DILocation(line: 196, column: 7, scope: !2761, inlinedAt: !2953)
!2964 = !DILocation(line: 197, column: 5, scope: !2773, inlinedAt: !2953)
!2965 = !DILocation(line: 0, scope: !1695, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 1013, column: 3, scope: !2946)
!2967 = !DILocation(line: 156, column: 57, scope: !1695, inlinedAt: !2966)
!2968 = !DILocation(line: 158, column: 12, scope: !1695, inlinedAt: !2966)
!2969 = !DILocation(line: 159, column: 6, scope: !1695, inlinedAt: !2966)
!2970 = !DILocation(line: 1014, column: 10, scope: !2946)
!2971 = !DILocation(line: 1015, column: 1, scope: !2946)
!2972 = !DILocation(line: 1014, column: 3, scope: !2946)
!2973 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !305, file: !305, line: 1018, type: !2974, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!48, !52, !50, !50, !50}
!2976 = !{!2977, !2978, !2979, !2980}
!2977 = !DILocalVariable(name: "n", arg: 1, scope: !2973, file: !305, line: 1018, type: !52)
!2978 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2973, file: !305, line: 1018, type: !50)
!2979 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2973, file: !305, line: 1019, type: !50)
!2980 = !DILocalVariable(name: "arg", arg: 4, scope: !2973, file: !305, line: 1019, type: !50)
!2981 = !DILocalVariable(name: "o", scope: !2982, file: !305, line: 1030, type: !325)
!2982 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !305, file: !305, line: 1026, type: !2983, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!48, !52, !50, !50, !50, !107}
!2985 = !{!2986, !2987, !2988, !2989, !2990, !2981}
!2986 = !DILocalVariable(name: "n", arg: 1, scope: !2982, file: !305, line: 1026, type: !52)
!2987 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2982, file: !305, line: 1026, type: !50)
!2988 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2982, file: !305, line: 1027, type: !50)
!2989 = !DILocalVariable(name: "arg", arg: 4, scope: !2982, file: !305, line: 1028, type: !50)
!2990 = !DILocalVariable(name: "argsize", arg: 5, scope: !2982, file: !305, line: 1028, type: !107)
!2991 = !DILocation(line: 1030, column: 26, scope: !2982, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 1021, column: 10, scope: !2973)
!2993 = !DILocation(line: 0, scope: !2973)
!2994 = !DILocation(line: 0, scope: !2982, inlinedAt: !2992)
!2995 = !DILocation(line: 1030, column: 3, scope: !2982, inlinedAt: !2992)
!2996 = !DILocation(line: 1030, column: 30, scope: !2982, inlinedAt: !2992)
!2997 = !DILocation(line: 0, scope: !1735, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 1031, column: 3, scope: !2982, inlinedAt: !2992)
!2999 = !DILocation(line: 184, column: 6, scope: !1735, inlinedAt: !2998)
!3000 = !DILocation(line: 184, column: 12, scope: !1735, inlinedAt: !2998)
!3001 = !DILocation(line: 185, column: 8, scope: !1749, inlinedAt: !2998)
!3002 = !DILocation(line: 185, column: 23, scope: !1749, inlinedAt: !2998)
!3003 = !DILocation(line: 185, column: 19, scope: !1749, inlinedAt: !2998)
!3004 = !DILocation(line: 186, column: 5, scope: !1749, inlinedAt: !2998)
!3005 = !DILocation(line: 187, column: 6, scope: !1735, inlinedAt: !2998)
!3006 = !DILocation(line: 187, column: 17, scope: !1735, inlinedAt: !2998)
!3007 = !DILocation(line: 188, column: 6, scope: !1735, inlinedAt: !2998)
!3008 = !DILocation(line: 188, column: 18, scope: !1735, inlinedAt: !2998)
!3009 = !DILocation(line: 1032, column: 10, scope: !2982, inlinedAt: !2992)
!3010 = !DILocation(line: 1033, column: 1, scope: !2982, inlinedAt: !2992)
!3011 = !DILocation(line: 1021, column: 3, scope: !2973)
!3012 = !DILocation(line: 0, scope: !2982)
!3013 = !DILocation(line: 1030, column: 3, scope: !2982)
!3014 = !DILocation(line: 1030, column: 26, scope: !2982)
!3015 = !DILocation(line: 1030, column: 30, scope: !2982)
!3016 = !DILocation(line: 0, scope: !1735, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 1031, column: 3, scope: !2982)
!3018 = !DILocation(line: 184, column: 6, scope: !1735, inlinedAt: !3017)
!3019 = !DILocation(line: 184, column: 12, scope: !1735, inlinedAt: !3017)
!3020 = !DILocation(line: 185, column: 8, scope: !1749, inlinedAt: !3017)
!3021 = !DILocation(line: 185, column: 23, scope: !1749, inlinedAt: !3017)
!3022 = !DILocation(line: 185, column: 19, scope: !1749, inlinedAt: !3017)
!3023 = !DILocation(line: 186, column: 5, scope: !1749, inlinedAt: !3017)
!3024 = !DILocation(line: 187, column: 6, scope: !1735, inlinedAt: !3017)
!3025 = !DILocation(line: 187, column: 17, scope: !1735, inlinedAt: !3017)
!3026 = !DILocation(line: 188, column: 6, scope: !1735, inlinedAt: !3017)
!3027 = !DILocation(line: 188, column: 18, scope: !1735, inlinedAt: !3017)
!3028 = !DILocation(line: 1032, column: 10, scope: !2982)
!3029 = !DILocation(line: 1033, column: 1, scope: !2982)
!3030 = !DILocation(line: 1032, column: 3, scope: !2982)
!3031 = distinct !DISubprogram(name: "quotearg_custom", scope: !305, file: !305, line: 1036, type: !3032, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!48, !50, !50, !50}
!3034 = !{!3035, !3036, !3037}
!3035 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3031, file: !305, line: 1036, type: !50)
!3036 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3031, file: !305, line: 1036, type: !50)
!3037 = !DILocalVariable(name: "arg", arg: 3, scope: !3031, file: !305, line: 1037, type: !50)
!3038 = !DILocation(line: 1030, column: 26, scope: !2982, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1021, column: 10, scope: !2973, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 1039, column: 10, scope: !3031)
!3041 = !DILocation(line: 0, scope: !3031)
!3042 = !DILocation(line: 0, scope: !2973, inlinedAt: !3040)
!3043 = !DILocation(line: 0, scope: !2982, inlinedAt: !3039)
!3044 = !DILocation(line: 1030, column: 3, scope: !2982, inlinedAt: !3039)
!3045 = !DILocation(line: 1030, column: 30, scope: !2982, inlinedAt: !3039)
!3046 = !DILocation(line: 0, scope: !1735, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1031, column: 3, scope: !2982, inlinedAt: !3039)
!3048 = !DILocation(line: 184, column: 6, scope: !1735, inlinedAt: !3047)
!3049 = !DILocation(line: 184, column: 12, scope: !1735, inlinedAt: !3047)
!3050 = !DILocation(line: 185, column: 8, scope: !1749, inlinedAt: !3047)
!3051 = !DILocation(line: 185, column: 23, scope: !1749, inlinedAt: !3047)
!3052 = !DILocation(line: 185, column: 19, scope: !1749, inlinedAt: !3047)
!3053 = !DILocation(line: 186, column: 5, scope: !1749, inlinedAt: !3047)
!3054 = !DILocation(line: 187, column: 6, scope: !1735, inlinedAt: !3047)
!3055 = !DILocation(line: 187, column: 17, scope: !1735, inlinedAt: !3047)
!3056 = !DILocation(line: 188, column: 6, scope: !1735, inlinedAt: !3047)
!3057 = !DILocation(line: 188, column: 18, scope: !1735, inlinedAt: !3047)
!3058 = !DILocation(line: 1032, column: 10, scope: !2982, inlinedAt: !3039)
!3059 = !DILocation(line: 1033, column: 1, scope: !2982, inlinedAt: !3039)
!3060 = !DILocation(line: 1039, column: 3, scope: !3031)
!3061 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !305, file: !305, line: 1043, type: !3062, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!48, !50, !50, !50, !107}
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3061, file: !305, line: 1043, type: !50)
!3066 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3061, file: !305, line: 1043, type: !50)
!3067 = !DILocalVariable(name: "arg", arg: 3, scope: !3061, file: !305, line: 1044, type: !50)
!3068 = !DILocalVariable(name: "argsize", arg: 4, scope: !3061, file: !305, line: 1044, type: !107)
!3069 = !DILocation(line: 1030, column: 26, scope: !2982, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 1046, column: 10, scope: !3061)
!3071 = !DILocation(line: 0, scope: !3061)
!3072 = !DILocation(line: 0, scope: !2982, inlinedAt: !3070)
!3073 = !DILocation(line: 1030, column: 3, scope: !2982, inlinedAt: !3070)
!3074 = !DILocation(line: 1030, column: 30, scope: !2982, inlinedAt: !3070)
!3075 = !DILocation(line: 0, scope: !1735, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 1031, column: 3, scope: !2982, inlinedAt: !3070)
!3077 = !DILocation(line: 184, column: 6, scope: !1735, inlinedAt: !3076)
!3078 = !DILocation(line: 184, column: 12, scope: !1735, inlinedAt: !3076)
!3079 = !DILocation(line: 185, column: 8, scope: !1749, inlinedAt: !3076)
!3080 = !DILocation(line: 185, column: 23, scope: !1749, inlinedAt: !3076)
!3081 = !DILocation(line: 185, column: 19, scope: !1749, inlinedAt: !3076)
!3082 = !DILocation(line: 186, column: 5, scope: !1749, inlinedAt: !3076)
!3083 = !DILocation(line: 187, column: 6, scope: !1735, inlinedAt: !3076)
!3084 = !DILocation(line: 187, column: 17, scope: !1735, inlinedAt: !3076)
!3085 = !DILocation(line: 188, column: 6, scope: !1735, inlinedAt: !3076)
!3086 = !DILocation(line: 188, column: 18, scope: !1735, inlinedAt: !3076)
!3087 = !DILocation(line: 1032, column: 10, scope: !2982, inlinedAt: !3070)
!3088 = !DILocation(line: 1033, column: 1, scope: !2982, inlinedAt: !3070)
!3089 = !DILocation(line: 1046, column: 3, scope: !3061)
!3090 = distinct !DISubprogram(name: "quote_n_mem", scope: !305, file: !305, line: 1061, type: !3091, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!50, !52, !50, !107}
!3093 = !{!3094, !3095, !3096}
!3094 = !DILocalVariable(name: "n", arg: 1, scope: !3090, file: !305, line: 1061, type: !52)
!3095 = !DILocalVariable(name: "arg", arg: 2, scope: !3090, file: !305, line: 1061, type: !50)
!3096 = !DILocalVariable(name: "argsize", arg: 3, scope: !3090, file: !305, line: 1061, type: !107)
!3097 = !DILocation(line: 0, scope: !3090)
!3098 = !DILocation(line: 1063, column: 10, scope: !3090)
!3099 = !DILocation(line: 1063, column: 3, scope: !3090)
!3100 = distinct !DISubprogram(name: "quote_mem", scope: !305, file: !305, line: 1067, type: !3101, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!50, !50, !107}
!3103 = !{!3104, !3105}
!3104 = !DILocalVariable(name: "arg", arg: 1, scope: !3100, file: !305, line: 1067, type: !50)
!3105 = !DILocalVariable(name: "argsize", arg: 2, scope: !3100, file: !305, line: 1067, type: !107)
!3106 = !DILocation(line: 0, scope: !3100)
!3107 = !DILocation(line: 0, scope: !3090, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 1069, column: 10, scope: !3100)
!3109 = !DILocation(line: 1063, column: 10, scope: !3090, inlinedAt: !3108)
!3110 = !DILocation(line: 1069, column: 3, scope: !3100)
!3111 = distinct !DISubprogram(name: "quote_n", scope: !305, file: !305, line: 1073, type: !166, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3112)
!3112 = !{!3113, !3114}
!3113 = !DILocalVariable(name: "n", arg: 1, scope: !3111, file: !305, line: 1073, type: !52)
!3114 = !DILocalVariable(name: "arg", arg: 2, scope: !3111, file: !305, line: 1073, type: !50)
!3115 = !DILocation(line: 0, scope: !3111)
!3116 = !DILocation(line: 0, scope: !3090, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 1075, column: 10, scope: !3111)
!3118 = !DILocation(line: 1063, column: 10, scope: !3090, inlinedAt: !3117)
!3119 = !DILocation(line: 1075, column: 3, scope: !3111)
!3120 = distinct !DISubprogram(name: "quote", scope: !305, file: !305, line: 1079, type: !506, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3121)
!3121 = !{!3122}
!3122 = !DILocalVariable(name: "arg", arg: 1, scope: !3120, file: !305, line: 1079, type: !50)
!3123 = !DILocation(line: 0, scope: !3120)
!3124 = !DILocation(line: 0, scope: !3111, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 1081, column: 10, scope: !3120)
!3126 = !DILocation(line: 0, scope: !3090, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 1075, column: 10, scope: !3111, inlinedAt: !3125)
!3128 = !DILocation(line: 1063, column: 10, scope: !3090, inlinedAt: !3127)
!3129 = !DILocation(line: 1081, column: 3, scope: !3120)
!3130 = distinct !DISubprogram(name: "version_etc_arn", scope: !423, file: !423, line: 61, type: !3131, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !3137)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !3133, !50, !50, !50, !3136, !107}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3135, line: 7, baseType: !433)
!3135 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!3137 = !{!3138, !3139, !3140, !3141, !3142, !3143}
!3138 = !DILocalVariable(name: "stream", arg: 1, scope: !3130, file: !423, line: 61, type: !3133)
!3139 = !DILocalVariable(name: "command_name", arg: 2, scope: !3130, file: !423, line: 62, type: !50)
!3140 = !DILocalVariable(name: "package", arg: 3, scope: !3130, file: !423, line: 62, type: !50)
!3141 = !DILocalVariable(name: "version", arg: 4, scope: !3130, file: !423, line: 63, type: !50)
!3142 = !DILocalVariable(name: "authors", arg: 5, scope: !3130, file: !423, line: 64, type: !3136)
!3143 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3130, file: !423, line: 64, type: !107)
!3144 = !DILocation(line: 0, scope: !3130)
!3145 = !DILocation(line: 66, column: 7, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3130, file: !423, line: 66, column: 7)
!3147 = !DILocation(line: 66, column: 7, scope: !3130)
!3148 = !DILocation(line: 67, column: 5, scope: !3146)
!3149 = !DILocation(line: 69, column: 5, scope: !3146)
!3150 = !DILocation(line: 83, column: 3, scope: !3130)
!3151 = !DILocation(line: 85, column: 3, scope: !3130)
!3152 = !DILocation(line: 88, column: 3, scope: !3130)
!3153 = !DILocation(line: 95, column: 3, scope: !3130)
!3154 = !DILocation(line: 97, column: 3, scope: !3130)
!3155 = !DILocation(line: 105, column: 7, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3130, file: !423, line: 98, column: 5)
!3157 = !DILocation(line: 106, column: 7, scope: !3156)
!3158 = !DILocation(line: 109, column: 7, scope: !3156)
!3159 = !DILocation(line: 110, column: 7, scope: !3156)
!3160 = !DILocation(line: 113, column: 7, scope: !3156)
!3161 = !DILocation(line: 115, column: 7, scope: !3156)
!3162 = !DILocation(line: 120, column: 7, scope: !3156)
!3163 = !DILocation(line: 122, column: 7, scope: !3156)
!3164 = !DILocation(line: 127, column: 7, scope: !3156)
!3165 = !DILocation(line: 129, column: 7, scope: !3156)
!3166 = !DILocation(line: 134, column: 7, scope: !3156)
!3167 = !DILocation(line: 137, column: 7, scope: !3156)
!3168 = !DILocation(line: 142, column: 7, scope: !3156)
!3169 = !DILocation(line: 145, column: 7, scope: !3156)
!3170 = !DILocation(line: 150, column: 7, scope: !3156)
!3171 = !DILocation(line: 154, column: 7, scope: !3156)
!3172 = !DILocation(line: 159, column: 7, scope: !3156)
!3173 = !DILocation(line: 163, column: 7, scope: !3156)
!3174 = !DILocation(line: 170, column: 7, scope: !3156)
!3175 = !DILocation(line: 174, column: 7, scope: !3156)
!3176 = !DILocation(line: 176, column: 1, scope: !3130)
!3177 = distinct !DISubprogram(name: "version_etc_ar", scope: !423, file: !423, line: 183, type: !3178, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !3133, !50, !50, !50, !3136}
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3186}
!3181 = !DILocalVariable(name: "stream", arg: 1, scope: !3177, file: !423, line: 183, type: !3133)
!3182 = !DILocalVariable(name: "command_name", arg: 2, scope: !3177, file: !423, line: 184, type: !50)
!3183 = !DILocalVariable(name: "package", arg: 3, scope: !3177, file: !423, line: 184, type: !50)
!3184 = !DILocalVariable(name: "version", arg: 4, scope: !3177, file: !423, line: 185, type: !50)
!3185 = !DILocalVariable(name: "authors", arg: 5, scope: !3177, file: !423, line: 185, type: !3136)
!3186 = !DILocalVariable(name: "n_authors", scope: !3177, file: !423, line: 187, type: !107)
!3187 = !DILocation(line: 0, scope: !3177)
!3188 = !DILocation(line: 189, column: 8, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3177, file: !423, line: 189, column: 3)
!3190 = !DILocation(line: 0, scope: !3189)
!3191 = !DILocation(line: 189, column: 23, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3189, file: !423, line: 189, column: 3)
!3193 = !DILocation(line: 189, column: 3, scope: !3189)
!3194 = !DILocation(line: 189, column: 52, scope: !3192)
!3195 = distinct !{!3195, !3193, !3196}
!3196 = !DILocation(line: 190, column: 5, scope: !3189)
!3197 = !DILocation(line: 191, column: 3, scope: !3177)
!3198 = !DILocation(line: 192, column: 1, scope: !3177)
!3199 = distinct !DISubprogram(name: "version_etc_va", scope: !423, file: !423, line: 199, type: !3200, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !3209)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{null, !3133, !50, !50, !50, !3202}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !423, line: 192, size: 192, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3208}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3203, file: !423, line: 192, baseType: !6, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3203, file: !423, line: 192, baseType: !6, size: 32, offset: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3203, file: !423, line: 192, baseType: !105, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3203, file: !423, line: 192, baseType: !105, size: 64, offset: 128)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216}
!3210 = !DILocalVariable(name: "stream", arg: 1, scope: !3199, file: !423, line: 199, type: !3133)
!3211 = !DILocalVariable(name: "command_name", arg: 2, scope: !3199, file: !423, line: 200, type: !50)
!3212 = !DILocalVariable(name: "package", arg: 3, scope: !3199, file: !423, line: 200, type: !50)
!3213 = !DILocalVariable(name: "version", arg: 4, scope: !3199, file: !423, line: 201, type: !50)
!3214 = !DILocalVariable(name: "authors", arg: 5, scope: !3199, file: !423, line: 201, type: !3202)
!3215 = !DILocalVariable(name: "n_authors", scope: !3199, file: !423, line: 203, type: !107)
!3216 = !DILocalVariable(name: "authtab", scope: !3199, file: !423, line: 204, type: !3217)
!3217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !388)
!3218 = !DILocation(line: 0, scope: !3199)
!3219 = !DILocation(line: 204, column: 3, scope: !3199)
!3220 = !DILocation(line: 204, column: 15, scope: !3199)
!3221 = !DILocation(line: 0, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !423, line: 206, column: 3)
!3223 = distinct !DILexicalBlock(scope: !3199, file: !423, line: 206, column: 3)
!3224 = !DILocation(line: 208, column: 35, scope: !3222)
!3225 = !DILocation(line: 208, column: 14, scope: !3222)
!3226 = !DILocation(line: 208, column: 33, scope: !3222)
!3227 = !DILocation(line: 208, column: 67, scope: !3222)
!3228 = !DILocation(line: 206, column: 3, scope: !3223)
!3229 = !DILocation(line: 0, scope: !3223)
!3230 = !DILocation(line: 211, column: 3, scope: !3199)
!3231 = !DILocation(line: 213, column: 1, scope: !3199)
!3232 = distinct !DISubprogram(name: "version_etc", scope: !423, file: !423, line: 230, type: !3233, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{null, !3133, !50, !50, !50, null}
!3235 = !{!3236, !3237, !3238, !3239, !3240}
!3236 = !DILocalVariable(name: "stream", arg: 1, scope: !3232, file: !423, line: 230, type: !3133)
!3237 = !DILocalVariable(name: "command_name", arg: 2, scope: !3232, file: !423, line: 231, type: !50)
!3238 = !DILocalVariable(name: "package", arg: 3, scope: !3232, file: !423, line: 231, type: !50)
!3239 = !DILocalVariable(name: "version", arg: 4, scope: !3232, file: !423, line: 232, type: !50)
!3240 = !DILocalVariable(name: "authors", scope: !3232, file: !423, line: 234, type: !3241)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !55, line: 52, baseType: !3242)
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3243, line: 32, baseType: !3244)
!3243 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !423, line: 234, baseType: !3245)
!3245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3203, size: 192, elements: !90)
!3246 = !DILocation(line: 0, scope: !3232)
!3247 = !DILocation(line: 234, column: 3, scope: !3232)
!3248 = !DILocation(line: 234, column: 11, scope: !3232)
!3249 = !DILocation(line: 236, column: 3, scope: !3232)
!3250 = !DILocation(line: 237, column: 3, scope: !3232)
!3251 = !DILocation(line: 238, column: 3, scope: !3232)
!3252 = !DILocation(line: 239, column: 1, scope: !3232)
!3253 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !423, file: !423, line: 242, type: !134, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !53)
!3254 = !DILocation(line: 244, column: 3, scope: !3253)
!3255 = !DILocation(line: 249, column: 3, scope: !3253)
!3256 = !DILocation(line: 255, column: 3, scope: !3253)
!3257 = !DILocation(line: 260, column: 3, scope: !3253)
!3258 = !DILocation(line: 262, column: 1, scope: !3253)
!3259 = distinct !DISubprogram(name: "xnmalloc", scope: !314, file: !314, line: 99, type: !3260, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!105, !107, !107}
!3262 = !{!3263, !3264}
!3263 = !DILocalVariable(name: "n", arg: 1, scope: !3259, file: !314, line: 99, type: !107)
!3264 = !DILocalVariable(name: "s", arg: 2, scope: !3259, file: !314, line: 99, type: !107)
!3265 = !DILocation(line: 0, scope: !3259)
!3266 = !DILocation(line: 101, column: 7, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3259, file: !314, line: 101, column: 7)
!3268 = !DILocation(line: 101, column: 7, scope: !3259)
!3269 = !DILocation(line: 102, column: 5, scope: !3267)
!3270 = !DILocation(line: 103, column: 21, scope: !3259)
!3271 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !465, line: 39, type: !107)
!3272 = distinct !DISubprogram(name: "xmalloc", scope: !465, file: !465, line: 39, type: !3273, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!105, !107}
!3275 = !{!3271, !3276}
!3276 = !DILocalVariable(name: "p", scope: !3272, file: !465, line: 41, type: !105)
!3277 = !DILocation(line: 0, scope: !3272, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 103, column: 10, scope: !3259)
!3279 = !DILocation(line: 41, column: 13, scope: !3272, inlinedAt: !3278)
!3280 = !DILocation(line: 42, column: 8, scope: !3281, inlinedAt: !3278)
!3281 = distinct !DILexicalBlock(scope: !3272, file: !465, line: 42, column: 7)
!3282 = !DILocation(line: 42, column: 15, scope: !3281, inlinedAt: !3278)
!3283 = !DILocation(line: 42, column: 10, scope: !3281, inlinedAt: !3278)
!3284 = !DILocation(line: 43, column: 5, scope: !3281, inlinedAt: !3278)
!3285 = !DILocation(line: 103, column: 3, scope: !3259)
!3286 = !DILocation(line: 0, scope: !3272)
!3287 = !DILocation(line: 41, column: 13, scope: !3272)
!3288 = !DILocation(line: 42, column: 8, scope: !3281)
!3289 = !DILocation(line: 42, column: 15, scope: !3281)
!3290 = !DILocation(line: 42, column: 10, scope: !3281)
!3291 = !DILocation(line: 43, column: 5, scope: !3281)
!3292 = !DILocation(line: 44, column: 3, scope: !3272)
!3293 = distinct !DISubprogram(name: "xnrealloc", scope: !314, file: !314, line: 112, type: !3294, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!105, !105, !107, !107}
!3296 = !{!3297, !3298, !3299}
!3297 = !DILocalVariable(name: "p", arg: 1, scope: !3293, file: !314, line: 112, type: !105)
!3298 = !DILocalVariable(name: "n", arg: 2, scope: !3293, file: !314, line: 112, type: !107)
!3299 = !DILocalVariable(name: "s", arg: 3, scope: !3293, file: !314, line: 112, type: !107)
!3300 = !DILocation(line: 0, scope: !3293)
!3301 = !DILocation(line: 114, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3293, file: !314, line: 114, column: 7)
!3303 = !DILocation(line: 114, column: 7, scope: !3293)
!3304 = !DILocation(line: 115, column: 5, scope: !3302)
!3305 = !DILocation(line: 116, column: 25, scope: !3293)
!3306 = !DILocalVariable(name: "p", arg: 1, scope: !3307, file: !465, line: 51, type: !105)
!3307 = distinct !DISubprogram(name: "xrealloc", scope: !465, file: !465, line: 51, type: !3308, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!105, !105, !107}
!3310 = !{!3306, !3311}
!3311 = !DILocalVariable(name: "n", arg: 2, scope: !3307, file: !465, line: 51, type: !107)
!3312 = !DILocation(line: 0, scope: !3307, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 116, column: 10, scope: !3293)
!3314 = !DILocation(line: 53, column: 8, scope: !3315, inlinedAt: !3313)
!3315 = distinct !DILexicalBlock(scope: !3307, file: !465, line: 53, column: 7)
!3316 = !DILocation(line: 53, column: 13, scope: !3315, inlinedAt: !3313)
!3317 = !DILocation(line: 53, column: 10, scope: !3315, inlinedAt: !3313)
!3318 = !DILocation(line: 57, column: 7, scope: !3319, inlinedAt: !3313)
!3319 = distinct !DILexicalBlock(scope: !3315, file: !465, line: 54, column: 5)
!3320 = !DILocation(line: 58, column: 7, scope: !3319, inlinedAt: !3313)
!3321 = !DILocation(line: 61, column: 7, scope: !3307, inlinedAt: !3313)
!3322 = !DILocation(line: 62, column: 8, scope: !3323, inlinedAt: !3313)
!3323 = distinct !DILexicalBlock(scope: !3307, file: !465, line: 62, column: 7)
!3324 = !DILocation(line: 62, column: 13, scope: !3323, inlinedAt: !3313)
!3325 = !DILocation(line: 62, column: 10, scope: !3323, inlinedAt: !3313)
!3326 = !DILocation(line: 63, column: 5, scope: !3323, inlinedAt: !3313)
!3327 = !DILocation(line: 116, column: 3, scope: !3293)
!3328 = !DILocation(line: 0, scope: !3307)
!3329 = !DILocation(line: 53, column: 8, scope: !3315)
!3330 = !DILocation(line: 53, column: 13, scope: !3315)
!3331 = !DILocation(line: 53, column: 10, scope: !3315)
!3332 = !DILocation(line: 57, column: 7, scope: !3319)
!3333 = !DILocation(line: 58, column: 7, scope: !3319)
!3334 = !DILocation(line: 61, column: 7, scope: !3307)
!3335 = !DILocation(line: 62, column: 8, scope: !3323)
!3336 = !DILocation(line: 62, column: 13, scope: !3323)
!3337 = !DILocation(line: 62, column: 10, scope: !3323)
!3338 = !DILocation(line: 63, column: 5, scope: !3323)
!3339 = !DILocation(line: 65, column: 1, scope: !3307)
!3340 = !DILocation(line: 0, scope: !468)
!3341 = !DILocation(line: 176, column: 14, scope: !468)
!3342 = !DILocation(line: 178, column: 9, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !468, file: !314, line: 178, column: 7)
!3344 = !DILocation(line: 178, column: 7, scope: !468)
!3345 = !DILocation(line: 180, column: 13, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !314, line: 180, column: 11)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !314, line: 179, column: 5)
!3348 = !DILocation(line: 180, column: 11, scope: !3347)
!3349 = !DILocation(line: 188, column: 30, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !314, line: 181, column: 9)
!3351 = !DILocation(line: 189, column: 16, scope: !3350)
!3352 = !DILocation(line: 189, column: 13, scope: !3350)
!3353 = !DILocation(line: 190, column: 9, scope: !3350)
!3354 = !DILocation(line: 191, column: 11, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3347, file: !314, line: 191, column: 11)
!3356 = !DILocation(line: 191, column: 11, scope: !3347)
!3357 = !DILocation(line: 206, column: 7, scope: !468)
!3358 = !DILocation(line: 207, column: 25, scope: !468)
!3359 = !DILocation(line: 0, scope: !3307, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 207, column: 10, scope: !468)
!3361 = !DILocation(line: 53, column: 10, scope: !3315, inlinedAt: !3360)
!3362 = !DILocation(line: 192, column: 9, scope: !3355)
!3363 = !DILocation(line: 200, column: 69, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !314, line: 200, column: 11)
!3365 = distinct !DILexicalBlock(scope: !3343, file: !314, line: 195, column: 5)
!3366 = !DILocation(line: 201, column: 11, scope: !3364)
!3367 = !DILocation(line: 200, column: 11, scope: !3365)
!3368 = !DILocation(line: 202, column: 9, scope: !3364)
!3369 = !DILocation(line: 203, column: 14, scope: !3365)
!3370 = !DILocation(line: 203, column: 18, scope: !3365)
!3371 = !DILocation(line: 203, column: 9, scope: !3365)
!3372 = !DILocation(line: 53, column: 8, scope: !3315, inlinedAt: !3360)
!3373 = !DILocation(line: 57, column: 7, scope: !3319, inlinedAt: !3360)
!3374 = !DILocation(line: 58, column: 7, scope: !3319, inlinedAt: !3360)
!3375 = !DILocation(line: 61, column: 7, scope: !3307, inlinedAt: !3360)
!3376 = !DILocation(line: 62, column: 8, scope: !3323, inlinedAt: !3360)
!3377 = !DILocation(line: 62, column: 13, scope: !3323, inlinedAt: !3360)
!3378 = !DILocation(line: 62, column: 10, scope: !3323, inlinedAt: !3360)
!3379 = !DILocation(line: 63, column: 5, scope: !3323, inlinedAt: !3360)
!3380 = !DILocation(line: 207, column: 3, scope: !468)
!3381 = distinct !DISubprogram(name: "xcharalloc", scope: !314, file: !314, line: 216, type: !2548, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3382)
!3382 = !{!3383}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !314, line: 216, type: !107)
!3384 = !DILocation(line: 0, scope: !3381)
!3385 = !DILocation(line: 0, scope: !3272, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 218, column: 10, scope: !3381)
!3387 = !DILocation(line: 41, column: 13, scope: !3272, inlinedAt: !3386)
!3388 = !DILocation(line: 42, column: 8, scope: !3281, inlinedAt: !3386)
!3389 = !DILocation(line: 42, column: 15, scope: !3281, inlinedAt: !3386)
!3390 = !DILocation(line: 42, column: 10, scope: !3281, inlinedAt: !3386)
!3391 = !DILocation(line: 43, column: 5, scope: !3281, inlinedAt: !3386)
!3392 = !DILocation(line: 218, column: 3, scope: !3381)
!3393 = distinct !DISubprogram(name: "x2realloc", scope: !465, file: !465, line: 74, type: !3394, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!105, !105, !471}
!3396 = !{!3397, !3398}
!3397 = !DILocalVariable(name: "p", arg: 1, scope: !3393, file: !465, line: 74, type: !105)
!3398 = !DILocalVariable(name: "pn", arg: 2, scope: !3393, file: !465, line: 74, type: !471)
!3399 = !DILocation(line: 0, scope: !3393)
!3400 = !DILocation(line: 0, scope: !468, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 76, column: 10, scope: !3393)
!3402 = !DILocation(line: 176, column: 14, scope: !468, inlinedAt: !3401)
!3403 = !DILocation(line: 178, column: 9, scope: !3343, inlinedAt: !3401)
!3404 = !DILocation(line: 178, column: 7, scope: !468, inlinedAt: !3401)
!3405 = !DILocation(line: 180, column: 13, scope: !3346, inlinedAt: !3401)
!3406 = !DILocation(line: 180, column: 11, scope: !3347, inlinedAt: !3401)
!3407 = !DILocation(line: 191, column: 11, scope: !3355, inlinedAt: !3401)
!3408 = !DILocation(line: 191, column: 11, scope: !3347, inlinedAt: !3401)
!3409 = !DILocation(line: 206, column: 7, scope: !468, inlinedAt: !3401)
!3410 = !DILocation(line: 0, scope: !3307, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 207, column: 10, scope: !468, inlinedAt: !3401)
!3412 = !DILocation(line: 53, column: 10, scope: !3315, inlinedAt: !3411)
!3413 = !DILocation(line: 192, column: 9, scope: !3355, inlinedAt: !3401)
!3414 = !DILocation(line: 201, column: 11, scope: !3364, inlinedAt: !3401)
!3415 = !DILocation(line: 200, column: 11, scope: !3365, inlinedAt: !3401)
!3416 = !DILocation(line: 202, column: 9, scope: !3364, inlinedAt: !3401)
!3417 = !DILocation(line: 203, column: 14, scope: !3365, inlinedAt: !3401)
!3418 = !DILocation(line: 203, column: 18, scope: !3365, inlinedAt: !3401)
!3419 = !DILocation(line: 203, column: 9, scope: !3365, inlinedAt: !3401)
!3420 = !DILocation(line: 53, column: 8, scope: !3315, inlinedAt: !3411)
!3421 = !DILocation(line: 57, column: 7, scope: !3319, inlinedAt: !3411)
!3422 = !DILocation(line: 58, column: 7, scope: !3319, inlinedAt: !3411)
!3423 = !DILocation(line: 61, column: 7, scope: !3307, inlinedAt: !3411)
!3424 = !DILocation(line: 62, column: 8, scope: !3323, inlinedAt: !3411)
!3425 = !DILocation(line: 62, column: 13, scope: !3323, inlinedAt: !3411)
!3426 = !DILocation(line: 62, column: 10, scope: !3323, inlinedAt: !3411)
!3427 = !DILocation(line: 63, column: 5, scope: !3323, inlinedAt: !3411)
!3428 = !DILocation(line: 76, column: 3, scope: !3393)
!3429 = distinct !DISubprogram(name: "xzalloc", scope: !465, file: !465, line: 84, type: !3273, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3430)
!3430 = !{!3431}
!3431 = !DILocalVariable(name: "n", arg: 1, scope: !3429, file: !465, line: 84, type: !107)
!3432 = !DILocation(line: 0, scope: !3429)
!3433 = !DILocalVariable(name: "n", arg: 1, scope: !3434, file: !465, line: 93, type: !107)
!3434 = distinct !DISubprogram(name: "xcalloc", scope: !465, file: !465, line: 93, type: !3260, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3435)
!3435 = !{!3433, !3436, !3437}
!3436 = !DILocalVariable(name: "s", arg: 2, scope: !3434, file: !465, line: 93, type: !107)
!3437 = !DILocalVariable(name: "p", scope: !3434, file: !465, line: 95, type: !105)
!3438 = !DILocation(line: 0, scope: !3434, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 86, column: 10, scope: !3429)
!3440 = !DILocation(line: 100, column: 7, scope: !3441, inlinedAt: !3439)
!3441 = distinct !DILexicalBlock(scope: !3434, file: !465, line: 100, column: 7)
!3442 = !DILocation(line: 101, column: 7, scope: !3441, inlinedAt: !3439)
!3443 = !DILocation(line: 101, column: 18, scope: !3441, inlinedAt: !3439)
!3444 = !DILocation(line: 101, column: 16, scope: !3441, inlinedAt: !3439)
!3445 = !DILocation(line: 100, column: 7, scope: !3434, inlinedAt: !3439)
!3446 = !DILocation(line: 102, column: 5, scope: !3441, inlinedAt: !3439)
!3447 = !DILocation(line: 86, column: 3, scope: !3429)
!3448 = !DILocation(line: 0, scope: !3434)
!3449 = !DILocation(line: 100, column: 7, scope: !3441)
!3450 = !DILocation(line: 101, column: 7, scope: !3441)
!3451 = !DILocation(line: 101, column: 18, scope: !3441)
!3452 = !DILocation(line: 101, column: 16, scope: !3441)
!3453 = !DILocation(line: 100, column: 7, scope: !3434)
!3454 = !DILocation(line: 102, column: 5, scope: !3441)
!3455 = !DILocation(line: 103, column: 3, scope: !3434)
!3456 = distinct !DISubprogram(name: "xmemdup", scope: !465, file: !465, line: 111, type: !3457, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!105, !317, !107}
!3459 = !{!3460, !3461}
!3460 = !DILocalVariable(name: "p", arg: 1, scope: !3456, file: !465, line: 111, type: !317)
!3461 = !DILocalVariable(name: "s", arg: 2, scope: !3456, file: !465, line: 111, type: !107)
!3462 = !DILocation(line: 0, scope: !3456)
!3463 = !DILocation(line: 0, scope: !3272, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 113, column: 18, scope: !3456)
!3465 = !DILocation(line: 41, column: 13, scope: !3272, inlinedAt: !3464)
!3466 = !DILocation(line: 42, column: 8, scope: !3281, inlinedAt: !3464)
!3467 = !DILocation(line: 42, column: 15, scope: !3281, inlinedAt: !3464)
!3468 = !DILocation(line: 42, column: 10, scope: !3281, inlinedAt: !3464)
!3469 = !DILocation(line: 43, column: 5, scope: !3281, inlinedAt: !3464)
!3470 = !DILocalVariable(name: "__dest", arg: 1, scope: !3471, file: !2081, line: 31, type: !3474)
!3471 = distinct !DISubprogram(name: "memcpy", scope: !2081, file: !2081, line: 31, type: !3472, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3476)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!105, !3474, !3475, !107}
!3474 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!3475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !317)
!3476 = !{!3470, !3477, !3478}
!3477 = !DILocalVariable(name: "__src", arg: 2, scope: !3471, file: !2081, line: 31, type: !3475)
!3478 = !DILocalVariable(name: "__len", arg: 3, scope: !3471, file: !2081, line: 31, type: !107)
!3479 = !DILocation(line: 0, scope: !3471, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 113, column: 10, scope: !3456)
!3481 = !DILocation(line: 34, column: 10, scope: !3471, inlinedAt: !3480)
!3482 = !DILocation(line: 113, column: 3, scope: !3456)
!3483 = distinct !DISubprogram(name: "xstrdup", scope: !465, file: !465, line: 119, type: !127, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3484)
!3484 = !{!3485}
!3485 = !DILocalVariable(name: "string", arg: 1, scope: !3483, file: !465, line: 119, type: !50)
!3486 = !DILocation(line: 0, scope: !3483)
!3487 = !DILocation(line: 121, column: 27, scope: !3483)
!3488 = !DILocation(line: 121, column: 43, scope: !3483)
!3489 = !DILocation(line: 0, scope: !3456, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 121, column: 10, scope: !3483)
!3491 = !DILocation(line: 0, scope: !3272, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 113, column: 18, scope: !3456, inlinedAt: !3490)
!3493 = !DILocation(line: 41, column: 13, scope: !3272, inlinedAt: !3492)
!3494 = !DILocation(line: 42, column: 8, scope: !3281, inlinedAt: !3492)
!3495 = !DILocation(line: 42, column: 15, scope: !3281, inlinedAt: !3492)
!3496 = !DILocation(line: 42, column: 10, scope: !3281, inlinedAt: !3492)
!3497 = !DILocation(line: 43, column: 5, scope: !3281, inlinedAt: !3492)
!3498 = !DILocation(line: 0, scope: !3471, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 113, column: 10, scope: !3456, inlinedAt: !3490)
!3500 = !DILocation(line: 34, column: 10, scope: !3471, inlinedAt: !3499)
!3501 = !DILocation(line: 121, column: 3, scope: !3483)
!3502 = distinct !DISubprogram(name: "xalloc_die", scope: !486, file: !486, line: 32, type: !134, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !53)
!3503 = !DILocation(line: 34, column: 10, scope: !3502)
!3504 = !DILocation(line: 34, column: 33, scope: !3502)
!3505 = !DILocation(line: 34, column: 3, scope: !3502)
!3506 = !DILocation(line: 40, column: 3, scope: !3502)
!3507 = distinct !DISubprogram(name: "xnumtoimax", scope: !3508, file: !3508, line: 36, type: !3509, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3511)
!3508 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!189, !50, !52, !189, !189, !50, !50, !52}
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3521}
!3512 = !DILocalVariable(name: "n_str", arg: 1, scope: !3507, file: !3508, line: 36, type: !50)
!3513 = !DILocalVariable(name: "base", arg: 2, scope: !3507, file: !3508, line: 36, type: !52)
!3514 = !DILocalVariable(name: "min", arg: 3, scope: !3507, file: !3508, line: 36, type: !189)
!3515 = !DILocalVariable(name: "max", arg: 4, scope: !3507, file: !3508, line: 36, type: !189)
!3516 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3507, file: !3508, line: 37, type: !50)
!3517 = !DILocalVariable(name: "err", arg: 6, scope: !3507, file: !3508, line: 37, type: !50)
!3518 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3507, file: !3508, line: 37, type: !52)
!3519 = !DILocalVariable(name: "s_err", scope: !3507, file: !3508, line: 39, type: !3520)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !492, line: 38, baseType: !491)
!3521 = !DILocalVariable(name: "tnum", scope: !3507, file: !3508, line: 41, type: !189)
!3522 = !DILocation(line: 0, scope: !3507)
!3523 = !DILocation(line: 41, column: 3, scope: !3507)
!3524 = !DILocation(line: 42, column: 11, scope: !3507)
!3525 = !DILocation(line: 44, column: 7, scope: !3507)
!3526 = !DILocation(line: 69, column: 50, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !3508, line: 67, column: 5)
!3528 = distinct !DILexicalBlock(scope: !3507, file: !3508, line: 66, column: 7)
!3529 = !DILocation(line: 46, column: 11, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !3508, line: 46, column: 11)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !3508, line: 45, column: 5)
!3532 = distinct !DILexicalBlock(scope: !3507, file: !3508, line: 44, column: 7)
!3533 = !DILocation(line: 46, column: 16, scope: !3530)
!3534 = !DILocation(line: 46, column: 29, scope: !3530)
!3535 = !DILocation(line: 46, column: 22, scope: !3530)
!3536 = !DILocation(line: 51, column: 20, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !3508, line: 51, column: 15)
!3538 = distinct !DILexicalBlock(scope: !3530, file: !3508, line: 47, column: 9)
!3539 = !DILocation(line: 51, column: 15, scope: !3538)
!3540 = !DILocation(line: 52, column: 13, scope: !3537)
!3541 = !DILocation(line: 52, column: 19, scope: !3537)
!3542 = !DILocation(line: 66, column: 7, scope: !3507)
!3543 = !DILocation(line: 54, column: 25, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3537, file: !3508, line: 54, column: 20)
!3545 = !DILocation(line: 0, scope: !3544)
!3546 = !DILocation(line: 54, column: 20, scope: !3537)
!3547 = !DILocation(line: 55, column: 19, scope: !3544)
!3548 = !DILocation(line: 58, column: 19, scope: !3544)
!3549 = !DILocation(line: 62, column: 5, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3532, file: !3508, line: 61, column: 12)
!3551 = !DILocation(line: 62, column: 11, scope: !3550)
!3552 = !DILocation(line: 64, column: 5, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3550, file: !3508, line: 63, column: 12)
!3554 = !DILocation(line: 64, column: 11, scope: !3553)
!3555 = !DILocation(line: 69, column: 14, scope: !3527)
!3556 = !DILocation(line: 69, column: 56, scope: !3527)
!3557 = !DILocation(line: 70, column: 29, scope: !3527)
!3558 = !DILocation(line: 69, column: 7, scope: !3527)
!3559 = !DILocation(line: 73, column: 10, scope: !3507)
!3560 = !DILocation(line: 71, column: 5, scope: !3527)
!3561 = !DILocation(line: 74, column: 1, scope: !3507)
!3562 = !DILocation(line: 73, column: 3, scope: !3507)
!3563 = distinct !DISubprogram(name: "xdectoimax", scope: !3508, file: !3508, line: 82, type: !3564, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!189, !50, !189, !189, !50, !50, !52}
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572}
!3567 = !DILocalVariable(name: "n_str", arg: 1, scope: !3563, file: !3508, line: 82, type: !50)
!3568 = !DILocalVariable(name: "min", arg: 2, scope: !3563, file: !3508, line: 82, type: !189)
!3569 = !DILocalVariable(name: "max", arg: 3, scope: !3563, file: !3508, line: 82, type: !189)
!3570 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3563, file: !3508, line: 83, type: !50)
!3571 = !DILocalVariable(name: "err", arg: 5, scope: !3563, file: !3508, line: 83, type: !50)
!3572 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3563, file: !3508, line: 83, type: !52)
!3573 = !DILocation(line: 0, scope: !3563)
!3574 = !DILocation(line: 85, column: 10, scope: !3563)
!3575 = !DILocation(line: 85, column: 3, scope: !3563)
!3576 = distinct !DISubprogram(name: "xstrtoimax", scope: !3577, file: !3577, line: 76, type: !3578, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !3581)
!3577 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!3520, !50, !503, !52, !3580, !50}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3594, !3595}
!3582 = !DILocalVariable(name: "s", arg: 1, scope: !3576, file: !3577, line: 76, type: !50)
!3583 = !DILocalVariable(name: "ptr", arg: 2, scope: !3576, file: !3577, line: 76, type: !503)
!3584 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3576, file: !3577, line: 76, type: !52)
!3585 = !DILocalVariable(name: "val", arg: 4, scope: !3576, file: !3577, line: 77, type: !3580)
!3586 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3576, file: !3577, line: 77, type: !50)
!3587 = !DILocalVariable(name: "t_ptr", scope: !3576, file: !3577, line: 79, type: !48)
!3588 = !DILocalVariable(name: "p", scope: !3576, file: !3577, line: 80, type: !503)
!3589 = !DILocalVariable(name: "tmp", scope: !3576, file: !3577, line: 81, type: !189)
!3590 = !DILocalVariable(name: "err", scope: !3576, file: !3577, line: 82, type: !3520)
!3591 = !DILocalVariable(name: "base", scope: !3592, file: !3577, line: 129, type: !52)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !3577, line: 128, column: 5)
!3593 = distinct !DILexicalBlock(scope: !3576, file: !3577, line: 127, column: 7)
!3594 = !DILocalVariable(name: "suffixes", scope: !3592, file: !3577, line: 130, type: !52)
!3595 = !DILocalVariable(name: "overflow", scope: !3592, file: !3577, line: 131, type: !3520)
!3596 = !DILocation(line: 0, scope: !3576)
!3597 = !DILocation(line: 79, column: 3, scope: !3576)
!3598 = !DILocation(line: 84, column: 3, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !3577, line: 84, column: 3)
!3600 = distinct !DILexicalBlock(scope: !3576, file: !3577, line: 84, column: 3)
!3601 = !DILocation(line: 86, column: 8, scope: !3576)
!3602 = !DILocation(line: 88, column: 3, scope: !3576)
!3603 = !DILocation(line: 88, column: 9, scope: !3576)
!3604 = !DILocalVariable(name: "nptr", arg: 1, scope: !3605, file: !3606, line: 324, type: !3609)
!3605 = distinct !DISubprogram(name: "strtoimax", scope: !3606, file: !3606, line: 324, type: !3607, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !3611)
!3606 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!189, !3609, !3610, !52}
!3609 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3610 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !503)
!3611 = !{!3604, !3612, !3613}
!3612 = !DILocalVariable(name: "endptr", arg: 2, scope: !3605, file: !3606, line: 324, type: !3610)
!3613 = !DILocalVariable(name: "base", arg: 3, scope: !3605, file: !3606, line: 324, type: !52)
!3614 = !DILocation(line: 0, scope: !3605, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 100, column: 9, scope: !3576)
!3616 = !DILocation(line: 327, column: 10, scope: !3605, inlinedAt: !3615)
!3617 = !DILocation(line: 102, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3576, file: !3577, line: 102, column: 7)
!3619 = !DILocation(line: 102, column: 10, scope: !3618)
!3620 = !DILocation(line: 102, column: 7, scope: !3576)
!3621 = !DILocation(line: 106, column: 11, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3577, line: 106, column: 11)
!3623 = distinct !DILexicalBlock(scope: !3618, file: !3577, line: 103, column: 5)
!3624 = !DILocation(line: 106, column: 26, scope: !3622)
!3625 = !DILocation(line: 106, column: 29, scope: !3622)
!3626 = !DILocation(line: 106, column: 33, scope: !3622)
!3627 = !DILocation(line: 106, column: 36, scope: !3622)
!3628 = !DILocation(line: 106, column: 11, scope: !3623)
!3629 = !DILocation(line: 111, column: 12, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3618, file: !3577, line: 111, column: 12)
!3631 = !DILocation(line: 111, column: 12, scope: !3618)
!3632 = !DILocation(line: 116, column: 5, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3630, file: !3577, line: 112, column: 5)
!3634 = !DILocation(line: 121, column: 8, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3576, file: !3577, line: 121, column: 7)
!3636 = !DILocation(line: 121, column: 7, scope: !3576)
!3637 = !DILocation(line: 123, column: 12, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3635, file: !3577, line: 122, column: 5)
!3639 = !DILocation(line: 124, column: 7, scope: !3638)
!3640 = !DILocation(line: 127, column: 7, scope: !3593)
!3641 = !DILocation(line: 127, column: 11, scope: !3593)
!3642 = !DILocation(line: 127, column: 7, scope: !3576)
!3643 = !DILocation(line: 0, scope: !3592)
!3644 = !DILocation(line: 133, column: 12, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3592, file: !3577, line: 133, column: 11)
!3646 = !DILocation(line: 133, column: 11, scope: !3592)
!3647 = !DILocation(line: 135, column: 16, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3645, file: !3577, line: 134, column: 9)
!3649 = !DILocation(line: 136, column: 22, scope: !3648)
!3650 = !DILocation(line: 136, column: 11, scope: !3648)
!3651 = !DILocation(line: 139, column: 7, scope: !3592)
!3652 = !DILocation(line: 151, column: 15, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !3577, line: 151, column: 15)
!3654 = distinct !DILexicalBlock(scope: !3592, file: !3577, line: 140, column: 9)
!3655 = !DILocation(line: 151, column: 15, scope: !3654)
!3656 = !DILocation(line: 152, column: 21, scope: !3653)
!3657 = !DILocation(line: 152, column: 13, scope: !3653)
!3658 = !DILocation(line: 155, column: 21, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3577, line: 155, column: 21)
!3660 = distinct !DILexicalBlock(scope: !3653, file: !3577, line: 153, column: 15)
!3661 = !DILocation(line: 155, column: 29, scope: !3659)
!3662 = !DILocation(line: 155, column: 21, scope: !3660)
!3663 = !DILocation(line: 163, column: 17, scope: !3660)
!3664 = !DILocation(line: 167, column: 7, scope: !3592)
!3665 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3666, file: !3577, line: 48, type: !52)
!3666 = distinct !DISubprogram(name: "bkm_scale", scope: !3577, file: !3577, line: 48, type: !3667, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!3520, !3580, !52}
!3669 = !{!3670, !3665}
!3670 = !DILocalVariable(name: "x", arg: 1, scope: !3666, file: !3577, line: 48, type: !3580)
!3671 = !DILocation(line: 0, scope: !3666, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 170, column: 22, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3592, file: !3577, line: 168, column: 9)
!3674 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3672)
!3675 = distinct !DILexicalBlock(scope: !3666, file: !3577, line: 50, column: 7)
!3676 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3672)
!3677 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3672)
!3678 = distinct !DILexicalBlock(scope: !3666, file: !3577, line: 55, column: 7)
!3679 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3672)
!3680 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3672)
!3681 = !DILocation(line: 0, scope: !3666, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 177, column: 22, scope: !3673)
!3683 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3682)
!3684 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3682)
!3685 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3682)
!3686 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3682)
!3687 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3682)
!3688 = !DILocalVariable(name: "base", arg: 2, scope: !3689, file: !3577, line: 65, type: !52)
!3689 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3577, file: !3577, line: 65, type: !3690, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!3520, !3580, !52, !52}
!3692 = !{!3693, !3688, !3694, !3695}
!3693 = !DILocalVariable(name: "x", arg: 1, scope: !3689, file: !3577, line: 65, type: !3580)
!3694 = !DILocalVariable(name: "power", arg: 3, scope: !3689, file: !3577, line: 65, type: !52)
!3695 = !DILocalVariable(name: "err", scope: !3689, file: !3577, line: 67, type: !3520)
!3696 = !DILocation(line: 0, scope: !3689, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 185, column: 22, scope: !3673)
!3698 = !DILocation(line: 0, scope: !3675, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 69, column: 12, scope: !3689, inlinedAt: !3697)
!3700 = !DILocation(line: 0, scope: !3666, inlinedAt: !3699)
!3701 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3699)
!3702 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3699)
!3703 = !DILocation(line: 55, column: 24, scope: !3678, inlinedAt: !3699)
!3704 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3699)
!3705 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3699)
!3706 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3699)
!3707 = !DILocation(line: 0, scope: !3689, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 190, column: 22, scope: !3673)
!3709 = !DILocation(line: 0, scope: !3675, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 69, column: 12, scope: !3689, inlinedAt: !3708)
!3711 = !DILocation(line: 0, scope: !3666, inlinedAt: !3710)
!3712 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3710)
!3713 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3710)
!3714 = !DILocation(line: 55, column: 24, scope: !3678, inlinedAt: !3710)
!3715 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3710)
!3716 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3710)
!3717 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3710)
!3718 = !DILocation(line: 0, scope: !3689, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 195, column: 22, scope: !3673)
!3720 = !DILocation(line: 0, scope: !3675, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 69, column: 12, scope: !3689, inlinedAt: !3719)
!3722 = !DILocation(line: 0, scope: !3666, inlinedAt: !3721)
!3723 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3721)
!3724 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3721)
!3725 = !DILocation(line: 55, column: 24, scope: !3678, inlinedAt: !3721)
!3726 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3721)
!3727 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3721)
!3728 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3721)
!3729 = !DILocation(line: 0, scope: !3689, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 200, column: 22, scope: !3673)
!3731 = !DILocation(line: 0, scope: !3675, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 69, column: 12, scope: !3689, inlinedAt: !3730)
!3733 = !DILocation(line: 0, scope: !3666, inlinedAt: !3732)
!3734 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3732)
!3735 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3732)
!3736 = !DILocation(line: 55, column: 24, scope: !3678, inlinedAt: !3732)
!3737 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3732)
!3738 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3732)
!3739 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3732)
!3740 = !DILocation(line: 0, scope: !3689, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 204, column: 22, scope: !3673)
!3742 = !DILocation(line: 0, scope: !3675, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 69, column: 12, scope: !3689, inlinedAt: !3741)
!3744 = !DILocation(line: 0, scope: !3666, inlinedAt: !3743)
!3745 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3743)
!3746 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3743)
!3747 = !DILocation(line: 55, column: 24, scope: !3678, inlinedAt: !3743)
!3748 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3743)
!3749 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3743)
!3750 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3743)
!3751 = !DILocation(line: 0, scope: !3689, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 209, column: 22, scope: !3673)
!3753 = !DILocation(line: 0, scope: !3675, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 69, column: 12, scope: !3689, inlinedAt: !3752)
!3755 = !DILocation(line: 0, scope: !3666, inlinedAt: !3754)
!3756 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3754)
!3757 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3754)
!3758 = !DILocation(line: 55, column: 24, scope: !3678, inlinedAt: !3754)
!3759 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3754)
!3760 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3754)
!3761 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3754)
!3762 = !DILocation(line: 0, scope: !3666, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 213, column: 22, scope: !3673)
!3764 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3763)
!3765 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3763)
!3766 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3763)
!3767 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3763)
!3768 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3763)
!3769 = !DILocation(line: 0, scope: !3689, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 217, column: 22, scope: !3673)
!3771 = !DILocation(line: 0, scope: !3675, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 69, column: 12, scope: !3689, inlinedAt: !3770)
!3773 = !DILocation(line: 0, scope: !3666, inlinedAt: !3772)
!3774 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3772)
!3775 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3772)
!3776 = !DILocation(line: 55, column: 24, scope: !3678, inlinedAt: !3772)
!3777 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3772)
!3778 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3772)
!3779 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3772)
!3780 = !DILocation(line: 0, scope: !3689, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 221, column: 22, scope: !3673)
!3782 = !DILocation(line: 0, scope: !3675, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 69, column: 12, scope: !3689, inlinedAt: !3781)
!3784 = !DILocation(line: 0, scope: !3666, inlinedAt: !3783)
!3785 = !DILocation(line: 50, column: 38, scope: !3675, inlinedAt: !3783)
!3786 = !DILocation(line: 50, column: 7, scope: !3666, inlinedAt: !3783)
!3787 = !DILocation(line: 55, column: 24, scope: !3678, inlinedAt: !3783)
!3788 = !DILocation(line: 55, column: 39, scope: !3678, inlinedAt: !3783)
!3789 = !DILocation(line: 60, column: 6, scope: !3666, inlinedAt: !3783)
!3790 = !DILocation(line: 55, column: 7, scope: !3666, inlinedAt: !3783)
!3791 = !DILocation(line: 225, column: 16, scope: !3673)
!3792 = !DILocation(line: 226, column: 22, scope: !3673)
!3793 = !DILocation(line: 226, column: 11, scope: !3673)
!3794 = !DILocation(line: 0, scope: !3673)
!3795 = !DILocation(line: 229, column: 11, scope: !3592)
!3796 = !DILocation(line: 230, column: 10, scope: !3592)
!3797 = !DILocation(line: 231, column: 11, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3592, file: !3577, line: 231, column: 11)
!3799 = !DILocation(line: 232, column: 13, scope: !3798)
!3800 = !DILocation(line: 231, column: 11, scope: !3592)
!3801 = !DILocation(line: 107, column: 13, scope: !3622)
!3802 = !DILocation(line: 82, column: 16, scope: !3576)
!3803 = !DILocation(line: 235, column: 8, scope: !3576)
!3804 = !DILocation(line: 236, column: 3, scope: !3576)
!3805 = !DILocation(line: 237, column: 1, scope: !3576)
!3806 = !DILocation(line: 69, column: 9, scope: !3689, inlinedAt: !3697)
!3807 = !DILocation(line: 69, column: 9, scope: !3689, inlinedAt: !3708)
!3808 = !DILocation(line: 69, column: 9, scope: !3689, inlinedAt: !3730)
!3809 = !DILocation(line: 69, column: 9, scope: !3689, inlinedAt: !3741)
!3810 = !DILocation(line: 69, column: 9, scope: !3689, inlinedAt: !3752)
!3811 = !DILocation(line: 69, column: 9, scope: !3689, inlinedAt: !3770)
!3812 = !DILocation(line: 69, column: 9, scope: !3689, inlinedAt: !3781)
!3813 = distinct !DISubprogram(name: "rpl_calloc", scope: !511, file: !511, line: 42, type: !3260, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !510, retainedNodes: !3814)
!3814 = !{!3815, !3816, !3817, !3818}
!3815 = !DILocalVariable(name: "n", arg: 1, scope: !3813, file: !511, line: 42, type: !107)
!3816 = !DILocalVariable(name: "s", arg: 2, scope: !3813, file: !511, line: 42, type: !107)
!3817 = !DILocalVariable(name: "result", scope: !3813, file: !511, line: 44, type: !105)
!3818 = !DILocalVariable(name: "bytes", scope: !3819, file: !511, line: 56, type: !107)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !511, line: 53, column: 5)
!3820 = distinct !DILexicalBlock(scope: !3813, file: !511, line: 47, column: 7)
!3821 = !DILocation(line: 0, scope: !3813)
!3822 = !DILocation(line: 47, column: 9, scope: !3820)
!3823 = !DILocation(line: 47, column: 19, scope: !3820)
!3824 = !DILocation(line: 47, column: 14, scope: !3820)
!3825 = !DILocation(line: 0, scope: !3819)
!3826 = !DILocation(line: 57, column: 21, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3819, file: !511, line: 57, column: 11)
!3828 = !DILocation(line: 57, column: 11, scope: !3819)
!3829 = !DILocation(line: 59, column: 11, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3827, file: !511, line: 58, column: 9)
!3831 = !DILocation(line: 59, column: 17, scope: !3830)
!3832 = !DILocation(line: 65, column: 12, scope: !3813)
!3833 = !DILocation(line: 72, column: 3, scope: !3813)
!3834 = !DILocation(line: 73, column: 1, scope: !3813)
!3835 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !514, file: !514, line: 86, type: !3836, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !3842)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!107, !3838, !50, !107, !3839}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1825, line: 6, baseType: !3841)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !347, line: 21, baseType: !520)
!3842 = !{!3843, !3844, !3845, !3846, !3847, !3848, !3849}
!3843 = !DILocalVariable(name: "pwc", arg: 1, scope: !3835, file: !514, line: 86, type: !3838)
!3844 = !DILocalVariable(name: "s", arg: 2, scope: !3835, file: !514, line: 86, type: !50)
!3845 = !DILocalVariable(name: "n", arg: 3, scope: !3835, file: !514, line: 86, type: !107)
!3846 = !DILocalVariable(name: "ps", arg: 4, scope: !3835, file: !514, line: 86, type: !3839)
!3847 = !DILocalVariable(name: "ret", scope: !3835, file: !514, line: 88, type: !107)
!3848 = !DILocalVariable(name: "wc", scope: !3835, file: !514, line: 89, type: !1829)
!3849 = !DILocalVariable(name: "uc", scope: !3850, file: !514, line: 156, type: !182)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !514, line: 155, column: 5)
!3851 = distinct !DILexicalBlock(scope: !3835, file: !514, line: 154, column: 7)
!3852 = !DILocation(line: 0, scope: !3835)
!3853 = !DILocation(line: 89, column: 3, scope: !3835)
!3854 = !DILocation(line: 105, column: 9, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3835, file: !514, line: 105, column: 7)
!3856 = !DILocation(line: 105, column: 7, scope: !3835)
!3857 = !DILocation(line: 145, column: 9, scope: !3835)
!3858 = !DILocation(line: 154, column: 19, scope: !3851)
!3859 = !DILocation(line: 154, column: 31, scope: !3851)
!3860 = !DILocation(line: 154, column: 26, scope: !3851)
!3861 = !DILocation(line: 154, column: 41, scope: !3851)
!3862 = !DILocation(line: 154, column: 7, scope: !3835)
!3863 = !DILocation(line: 156, column: 26, scope: !3850)
!3864 = !DILocation(line: 0, scope: !3850)
!3865 = !DILocation(line: 157, column: 14, scope: !3850)
!3866 = !DILocation(line: 157, column: 12, scope: !3850)
!3867 = !DILocation(line: 163, column: 1, scope: !3835)
!3868 = distinct !DISubprogram(name: "close_stream", scope: !533, file: !533, line: 56, type: !3869, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !3873)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!52, !3871}
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3135, line: 7, baseType: !540)
!3873 = !{!3874, !3875, !3877, !3878}
!3874 = !DILocalVariable(name: "stream", arg: 1, scope: !3868, file: !533, line: 56, type: !3871)
!3875 = !DILocalVariable(name: "some_pending", scope: !3868, file: !533, line: 58, type: !3876)
!3876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!3877 = !DILocalVariable(name: "prev_fail", scope: !3868, file: !533, line: 59, type: !3876)
!3878 = !DILocalVariable(name: "fclose_fail", scope: !3868, file: !533, line: 60, type: !3876)
!3879 = !DILocation(line: 0, scope: !3868)
!3880 = !DILocation(line: 58, column: 30, scope: !3868)
!3881 = !DILocalVariable(name: "__stream", arg: 1, scope: !3882, file: !3883, line: 135, type: !3871)
!3882 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3883, file: !3883, line: 135, type: !3869, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !3884)
!3883 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3884 = !{!3881}
!3885 = !DILocation(line: 0, scope: !3882, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 59, column: 27, scope: !3868)
!3887 = !DILocation(line: 137, column: 10, scope: !3882, inlinedAt: !3886)
!3888 = !{!3889, !1338, i64 0}
!3889 = !{!"_IO_FILE", !1338, i64 0, !1132, i64 8, !1132, i64 16, !1132, i64 24, !1132, i64 32, !1132, i64 40, !1132, i64 48, !1132, i64 56, !1132, i64 64, !1132, i64 72, !1132, i64 80, !1132, i64 88, !1132, i64 96, !1132, i64 104, !1338, i64 112, !1338, i64 116, !1407, i64 120, !1288, i64 128, !1133, i64 130, !1133, i64 131, !1132, i64 136, !1407, i64 144, !1132, i64 152, !1132, i64 160, !1132, i64 168, !1132, i64 176, !1407, i64 184, !1338, i64 192, !1133, i64 196}
!3890 = !DILocation(line: 59, column: 43, scope: !3868)
!3891 = !DILocation(line: 60, column: 29, scope: !3868)
!3892 = !DILocation(line: 60, column: 45, scope: !3868)
!3893 = !DILocation(line: 70, column: 17, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3868, file: !533, line: 70, column: 7)
!3895 = !DILocation(line: 58, column: 50, scope: !3868)
!3896 = !DILocation(line: 70, column: 33, scope: !3894)
!3897 = !DILocation(line: 70, column: 53, scope: !3894)
!3898 = !DILocation(line: 70, column: 59, scope: !3894)
!3899 = !DILocation(line: 70, column: 7, scope: !3868)
!3900 = !DILocation(line: 72, column: 11, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3894, file: !533, line: 71, column: 5)
!3902 = !DILocation(line: 73, column: 9, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3901, file: !533, line: 72, column: 11)
!3904 = !DILocation(line: 73, column: 15, scope: !3903)
!3905 = !DILocation(line: 78, column: 1, scope: !3868)
!3906 = distinct !DISubprogram(name: "hard_locale", scope: !572, file: !572, line: 27, type: !530, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3907)
!3907 = !{!3908, !3909}
!3908 = !DILocalVariable(name: "category", arg: 1, scope: !3906, file: !572, line: 27, type: !52)
!3909 = !DILocalVariable(name: "locale", scope: !3906, file: !572, line: 29, type: !3910)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2056, elements: !3911)
!3911 = !{!3912}
!3912 = !DISubrange(count: 257)
!3913 = !DILocation(line: 0, scope: !3906)
!3914 = !DILocation(line: 29, column: 3, scope: !3906)
!3915 = !DILocation(line: 29, column: 8, scope: !3906)
!3916 = !DILocation(line: 31, column: 7, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3906, file: !572, line: 31, column: 7)
!3918 = !DILocation(line: 31, column: 7, scope: !3906)
!3919 = !DILocation(line: 34, column: 12, scope: !3906)
!3920 = !DILocation(line: 34, column: 38, scope: !3906)
!3921 = !DILocation(line: 34, column: 41, scope: !3906)
!3922 = !DILocation(line: 34, column: 66, scope: !3906)
!3923 = !DILocation(line: 35, column: 1, scope: !3906)
!3924 = distinct !DISubprogram(name: "locale_charset", scope: !579, file: !579, line: 831, type: !370, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3925)
!3925 = !{!3926}
!3926 = !DILocalVariable(name: "codeset", scope: !3924, file: !579, line: 833, type: !50)
!3927 = !DILocation(line: 847, column: 13, scope: !3924)
!3928 = !DILocation(line: 0, scope: !3924)
!3929 = !DILocation(line: 911, column: 15, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3924, file: !579, line: 911, column: 7)
!3931 = !DILocation(line: 911, column: 7, scope: !3924)
!3932 = !DILocation(line: 1070, column: 13, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !579, line: 1070, column: 13)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !579, line: 1060, column: 7)
!3935 = distinct !DILexicalBlock(scope: !3924, file: !579, line: 1019, column: 3)
!3936 = !DILocation(line: 1070, column: 24, scope: !3933)
!3937 = !DILocation(line: 1070, column: 13, scope: !3934)
!3938 = !DILocation(line: 1158, column: 3, scope: !3924)
!3939 = distinct !DISubprogram(name: "setlocale_null_r", scope: !972, file: !972, line: 269, type: !3940, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !3942)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!52, !52, !48, !107}
!3942 = !{!3943, !3944, !3945}
!3943 = !DILocalVariable(name: "category", arg: 1, scope: !3939, file: !972, line: 269, type: !52)
!3944 = !DILocalVariable(name: "buf", arg: 2, scope: !3939, file: !972, line: 269, type: !48)
!3945 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3939, file: !972, line: 269, type: !107)
!3946 = !DILocation(line: 0, scope: !3939)
!3947 = !DILocalVariable(name: "category", arg: 1, scope: !3948, file: !972, line: 91, type: !52)
!3948 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !972, file: !972, line: 91, type: !3940, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !3949)
!3949 = !{!3947, !3950, !3951, !3952, !3953}
!3950 = !DILocalVariable(name: "buf", arg: 2, scope: !3948, file: !972, line: 91, type: !48)
!3951 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3948, file: !972, line: 91, type: !107)
!3952 = !DILocalVariable(name: "result", scope: !3948, file: !972, line: 140, type: !50)
!3953 = !DILocalVariable(name: "length", scope: !3954, file: !972, line: 154, type: !107)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !972, line: 153, column: 5)
!3955 = distinct !DILexicalBlock(scope: !3948, file: !972, line: 142, column: 7)
!3956 = !DILocation(line: 0, scope: !3948, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 274, column: 10, scope: !3939)
!3958 = !DILocalVariable(name: "category", arg: 1, scope: !3959, file: !972, line: 60, type: !52)
!3959 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !972, file: !972, line: 60, type: !3960, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!50, !52}
!3962 = !{!3958, !3963}
!3963 = !DILocalVariable(name: "result", scope: !3959, file: !972, line: 62, type: !50)
!3964 = !DILocation(line: 0, scope: !3959, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 140, column: 24, scope: !3948, inlinedAt: !3957)
!3966 = !DILocation(line: 62, column: 24, scope: !3959, inlinedAt: !3965)
!3967 = !DILocation(line: 142, column: 14, scope: !3955, inlinedAt: !3957)
!3968 = !DILocation(line: 142, column: 7, scope: !3948, inlinedAt: !3957)
!3969 = !DILocation(line: 145, column: 19, scope: !3970, inlinedAt: !3957)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !972, line: 145, column: 11)
!3971 = distinct !DILexicalBlock(scope: !3955, file: !972, line: 143, column: 5)
!3972 = !DILocation(line: 145, column: 11, scope: !3971, inlinedAt: !3957)
!3973 = !DILocation(line: 149, column: 16, scope: !3970, inlinedAt: !3957)
!3974 = !DILocation(line: 149, column: 9, scope: !3970, inlinedAt: !3957)
!3975 = !DILocation(line: 154, column: 23, scope: !3954, inlinedAt: !3957)
!3976 = !DILocation(line: 0, scope: !3954, inlinedAt: !3957)
!3977 = !DILocation(line: 155, column: 18, scope: !3978, inlinedAt: !3957)
!3978 = distinct !DILexicalBlock(scope: !3954, file: !972, line: 155, column: 11)
!3979 = !DILocation(line: 155, column: 11, scope: !3954, inlinedAt: !3957)
!3980 = !DILocation(line: 157, column: 39, scope: !3981, inlinedAt: !3957)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !972, line: 156, column: 9)
!3982 = !DILocalVariable(name: "__dest", arg: 1, scope: !3983, file: !2081, line: 31, type: !3474)
!3983 = distinct !DISubprogram(name: "memcpy", scope: !2081, file: !2081, line: 31, type: !3472, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !3984)
!3984 = !{!3982, !3985, !3986}
!3985 = !DILocalVariable(name: "__src", arg: 2, scope: !3983, file: !2081, line: 31, type: !3475)
!3986 = !DILocalVariable(name: "__len", arg: 3, scope: !3983, file: !2081, line: 31, type: !107)
!3987 = !DILocation(line: 0, scope: !3983, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 157, column: 11, scope: !3981, inlinedAt: !3957)
!3989 = !DILocation(line: 34, column: 10, scope: !3983, inlinedAt: !3988)
!3990 = !DILocation(line: 158, column: 11, scope: !3981, inlinedAt: !3957)
!3991 = !DILocation(line: 162, column: 23, scope: !3992, inlinedAt: !3957)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !972, line: 162, column: 15)
!3993 = distinct !DILexicalBlock(scope: !3978, file: !972, line: 161, column: 9)
!3994 = !DILocation(line: 162, column: 15, scope: !3993, inlinedAt: !3957)
!3995 = !DILocation(line: 167, column: 44, scope: !3996, inlinedAt: !3957)
!3996 = distinct !DILexicalBlock(scope: !3992, file: !972, line: 163, column: 13)
!3997 = !DILocation(line: 0, scope: !3983, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 167, column: 15, scope: !3996, inlinedAt: !3957)
!3999 = !DILocation(line: 34, column: 10, scope: !3983, inlinedAt: !3998)
!4000 = !DILocation(line: 168, column: 15, scope: !3996, inlinedAt: !3957)
!4001 = !DILocation(line: 168, column: 32, scope: !3996, inlinedAt: !3957)
!4002 = !DILocation(line: 169, column: 13, scope: !3996, inlinedAt: !3957)
!4003 = !DILocation(line: 0, scope: !3955, inlinedAt: !3957)
!4004 = !DILocation(line: 274, column: 3, scope: !3939)
!4005 = distinct !DISubprogram(name: "setlocale_null", scope: !972, file: !972, line: 301, type: !3960, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !4006)
!4006 = !{!4007}
!4007 = !DILocalVariable(name: "category", arg: 1, scope: !4005, file: !972, line: 301, type: !52)
!4008 = !DILocation(line: 0, scope: !4005)
!4009 = !DILocation(line: 0, scope: !3959, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 304, column: 10, scope: !4005)
!4011 = !DILocation(line: 62, column: 24, scope: !3959, inlinedAt: !4010)
!4012 = !DILocation(line: 304, column: 3, scope: !4005)
!4013 = distinct !DISubprogram(name: "rpl_fclose", scope: !975, file: !975, line: 58, type: !4014, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !4018)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!52, !4016}
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3135, line: 7, baseType: !981)
!4018 = !{!4019, !4020, !4021, !4022}
!4019 = !DILocalVariable(name: "fp", arg: 1, scope: !4013, file: !975, line: 58, type: !4016)
!4020 = !DILocalVariable(name: "saved_errno", scope: !4013, file: !975, line: 60, type: !52)
!4021 = !DILocalVariable(name: "fd", scope: !4013, file: !975, line: 61, type: !52)
!4022 = !DILocalVariable(name: "result", scope: !4013, file: !975, line: 62, type: !52)
!4023 = !DILocation(line: 0, scope: !4013)
!4024 = !DILocation(line: 65, column: 8, scope: !4013)
!4025 = !DILocation(line: 66, column: 10, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4013, file: !975, line: 66, column: 7)
!4027 = !DILocation(line: 66, column: 7, scope: !4013)
!4028 = !DILocation(line: 67, column: 12, scope: !4026)
!4029 = !DILocation(line: 67, column: 5, scope: !4026)
!4030 = !DILocation(line: 72, column: 9, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4013, file: !975, line: 72, column: 7)
!4032 = !DILocation(line: 72, column: 23, scope: !4031)
!4033 = !DILocation(line: 72, column: 33, scope: !4031)
!4034 = !DILocation(line: 72, column: 26, scope: !4031)
!4035 = !DILocation(line: 72, column: 59, scope: !4031)
!4036 = !DILocation(line: 73, column: 7, scope: !4031)
!4037 = !DILocation(line: 73, column: 10, scope: !4031)
!4038 = !DILocation(line: 72, column: 7, scope: !4013)
!4039 = !DILocation(line: 100, column: 12, scope: !4013)
!4040 = !DILocation(line: 105, column: 7, scope: !4013)
!4041 = !DILocation(line: 74, column: 19, scope: !4031)
!4042 = !DILocation(line: 105, column: 19, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4013, file: !975, line: 105, column: 7)
!4044 = !DILocation(line: 107, column: 13, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4043, file: !975, line: 106, column: 5)
!4046 = !DILocation(line: 109, column: 5, scope: !4045)
!4047 = !DILocation(line: 112, column: 1, scope: !4013)
!4048 = distinct !DISubprogram(name: "rpl_fflush", scope: !1015, file: !1015, line: 129, type: !4049, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4053)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!52, !4051}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3135, line: 7, baseType: !1021)
!4053 = !{!4054}
!4054 = !DILocalVariable(name: "stream", arg: 1, scope: !4048, file: !1015, line: 129, type: !4051)
!4055 = !DILocation(line: 0, scope: !4048)
!4056 = !DILocation(line: 150, column: 14, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4048, file: !1015, line: 150, column: 7)
!4058 = !DILocation(line: 150, column: 22, scope: !4057)
!4059 = !DILocation(line: 150, column: 27, scope: !4057)
!4060 = !DILocation(line: 150, column: 7, scope: !4048)
!4061 = !DILocation(line: 151, column: 12, scope: !4057)
!4062 = !DILocation(line: 151, column: 5, scope: !4057)
!4063 = !DILocalVariable(name: "fp", arg: 1, scope: !4064, file: !1015, line: 41, type: !4051)
!4064 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1015, file: !1015, line: 41, type: !4065, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{null, !4051}
!4067 = !{!4063}
!4068 = !DILocation(line: 0, scope: !4064, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 156, column: 3, scope: !4048)
!4070 = !DILocation(line: 43, column: 11, scope: !4071, inlinedAt: !4069)
!4071 = distinct !DILexicalBlock(scope: !4064, file: !1015, line: 43, column: 7)
!4072 = !DILocation(line: 43, column: 18, scope: !4071, inlinedAt: !4069)
!4073 = !DILocation(line: 43, column: 7, scope: !4064, inlinedAt: !4069)
!4074 = !DILocation(line: 45, column: 5, scope: !4071, inlinedAt: !4069)
!4075 = !DILocation(line: 158, column: 10, scope: !4048)
!4076 = !DILocation(line: 158, column: 3, scope: !4048)
!4077 = !DILocation(line: 235, column: 1, scope: !4048)
!4078 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1056, file: !1056, line: 28, type: !4079, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1055, retainedNodes: !4083)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!52, !4081, !155, !52}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3135, line: 7, baseType: !1062)
!4083 = !{!4084, !4085, !4086, !4087}
!4084 = !DILocalVariable(name: "fp", arg: 1, scope: !4078, file: !1056, line: 28, type: !4081)
!4085 = !DILocalVariable(name: "offset", arg: 2, scope: !4078, file: !1056, line: 28, type: !155)
!4086 = !DILocalVariable(name: "whence", arg: 3, scope: !4078, file: !1056, line: 28, type: !52)
!4087 = !DILocalVariable(name: "pos", scope: !4088, file: !1056, line: 117, type: !155)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !1056, line: 113, column: 5)
!4089 = distinct !DILexicalBlock(scope: !4078, file: !1056, line: 52, column: 7)
!4090 = !DILocation(line: 0, scope: !4078)
!4091 = !DILocation(line: 52, column: 11, scope: !4089)
!4092 = !{!3889, !1132, i64 16}
!4093 = !DILocation(line: 52, column: 31, scope: !4089)
!4094 = !{!3889, !1132, i64 8}
!4095 = !DILocation(line: 52, column: 24, scope: !4089)
!4096 = !DILocation(line: 53, column: 7, scope: !4089)
!4097 = !DILocation(line: 53, column: 14, scope: !4089)
!4098 = !{!3889, !1132, i64 40}
!4099 = !DILocation(line: 53, column: 35, scope: !4089)
!4100 = !{!3889, !1132, i64 32}
!4101 = !DILocation(line: 53, column: 28, scope: !4089)
!4102 = !DILocation(line: 54, column: 7, scope: !4089)
!4103 = !DILocation(line: 54, column: 14, scope: !4089)
!4104 = !{!3889, !1132, i64 72}
!4105 = !DILocation(line: 54, column: 28, scope: !4089)
!4106 = !DILocation(line: 52, column: 7, scope: !4078)
!4107 = !DILocation(line: 117, column: 26, scope: !4088)
!4108 = !DILocation(line: 117, column: 19, scope: !4088)
!4109 = !DILocation(line: 0, scope: !4088)
!4110 = !DILocation(line: 118, column: 15, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4088, file: !1056, line: 118, column: 11)
!4112 = !DILocation(line: 118, column: 11, scope: !4088)
!4113 = !DILocation(line: 129, column: 11, scope: !4088)
!4114 = !DILocation(line: 129, column: 18, scope: !4088)
!4115 = !DILocation(line: 130, column: 11, scope: !4088)
!4116 = !DILocation(line: 130, column: 19, scope: !4088)
!4117 = !{!3889, !1407, i64 144}
!4118 = !DILocation(line: 161, column: 7, scope: !4088)
!4119 = !DILocation(line: 163, column: 10, scope: !4078)
!4120 = !DILocation(line: 163, column: 3, scope: !4078)
!4121 = !DILocation(line: 164, column: 1, scope: !4078)
